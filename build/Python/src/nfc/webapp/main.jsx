'use strict';

/* global
    require: false
 */

var React = require('react');
var _ = require('lodash');
var autobahn = require('autobahn');
var moment = require('moment');
var rb = require('react-bootstrap');

var DATE_FORMATS = ['YYYY-M-D HH:mm', 'M/D/YYYY HH:mm'];


var toInt = function(str) {
    return _.parseInt(str, 10);
};

var toMoment = function(str) {
    return moment.utc(str, DATE_FORMATS);
};

var toHex = function(num) {
    return ('00' + num.toString(16)).slice(-2);
};

var formatUID = function(uid) {
    return _(uid).map(toHex).join(':');
};

var isInteger = function(val) {
    return  (_.isNumber(val) && (! _.isNaN(val)) && (val % 1 === 0));
};

var isSerialNumber = function(str) {
    return typeof(str) === 'string' && /\d{10}/.test(str);
};

var isSignedByte = function(val) {
    return isInteger(val) && val > -Math.pow(2, 7) && val < Math.pow(2, 7);
};

var isSignedShort = function(val) {
    return isInteger(val) && val > -Math.pow(2, 15) && val < Math.pow(2, 15);
};

var isUnsignedByte = function(val) {
    return isInteger(val) && val >= 0 && val < Math.pow(2, 8);
};

var isUnsignedShort = function(val) {
    return isInteger(val) && val >= 0 && val < Math.pow(2, 16);
};

var isUnixDate = function(val) {
    return isInteger(val) && val >= 0;
};

var unixToMoment = function(utc_secs_since_epoch) {
    return moment.utc(utc_secs_since_epoch * 1000);
};

var momentToUnix = function(moment_obj) {
    return moment_obj.utc().unix();
};

var isCardDate = function(val) {
    /* Can this date be stored on the NFC card? */
    return isUnixDate(val) && unixToMoment(val).year() >= 2015;
};

var strToUnixDate = function(str) {
    return momentToUnix(toMoment(str));
};

if (momentToUnix(unixToMoment(987654321)) !== 987654321) {
    alert('Date functions failed test.');
}

var validateDate = function(str) {
    var mom = toMoment(str);
    return mom.isValid() && isCardDate(momentToUnix(mom));
};

var validators = {
        'version': function(val) { return val === 1;},
        'type': isSignedByte,
        'serial_number': isSerialNumber,
        'expiration_date': isCardDate,
        'guaranteed_injections': isUnsignedShort,
        'max_injections': isUnsignedShort,
        'max_injections_per_batch': isUnsignedShort,
        'max_batches': isUnsignedShort,
        'num_batches': isUnsignedShort,
        'num_injections': isUnsignedShort,
        'batch_dates': function(val) { return true;},
        'batch_injections': function(val) { return true;},
};

var MonthPulldown = React.createClass({
    update: function(eventKey, href) {
        this.props.setMonth(+href);
    },
    render: function() {
        var monthMenuItems = moment.months().map(
            function(currentValue, index) {
                return (<rb.MenuItem eventKey={index} key={index}>
                            {currentValue}
                        </rb.MenuItem>);
        });
        return (<rb.DropdownButton
                    id='month'
                    title={this.props.date.format('MMMM')}
                    key={this.props.date.month()}
                    onSelect={this.update}>
                    {monthMenuItems}
                </rb.DropdownButton>);
    }
});

var YearPulldown = React.createClass({
    update: function(eventKey, href) {
        this.props.setYear(+href);
    },
    render: function() {
        var yearMenuItems = _.range(
            moment().year(), moment().year() + 10).map(
                function(currentValue, index) {
                    return (<rb.MenuItem eventKey={currentValue} key={index}>
                                {currentValue}
                            </rb.MenuItem>);
        });
        return (<rb.DropdownButton
                    id='year'
                    title={this.props.date.format('YYYY')}
                    key={this.props.date.year()}
                    onSelect={this.update}>
                    {yearMenuItems}
                </rb.DropdownButton>);
    }
});

var ExpirationDate = React.createClass({
    setMonth: function(month) {
        var year = unixToMoment(this.props.unixtime).year();
        var new_date = moment({y: year, M: month, d: 1, h: 6});
        this.props.setField('expiration_date', momentToUnix(new_date));
    },

    setYear: function(year) {
        var month = unixToMoment(this.props.unixtime).month();
        var new_date = moment({y: year, M: month, d: 1, h: 6});
        this.props.setField('expiration_date', momentToUnix(new_date));
    },

    render: function() {
        var date = unixToMoment(this.props.unixtime);

        return (
            <div className='form-group'>
                <label>Expires
                <rb.ButtonToolbar>
                    <MonthPulldown date={date} setMonth={this.setMonth} />
                    <YearPulldown date={date} setYear={this.setYear} />
                </rb.ButtonToolbar>
                </label>
            </div>);
    }
});

var NumericField = React.createClass({
    propTypes: {
        fieldName: React.PropTypes.string,
        fieldLabel: React.PropTypes.string,
    },

    componentWillMount: function() {
        this.setField = this.props.setFields.bind(null, this.props.fieldName);
    },

    update: function(event) {
        this.props.setEdited(this.props.fieldName);

        // If it validates, save the number to the fields state.
        // If not, just save the string.
        var userString = event.target.value;

        if (this.props.fieldType === 'string') {
            this.setField(userString);
            return;
        }

        var maybeInt = toInt(userString);

        if (validators[this.props.fieldName](maybeInt)) {
            this.setField(maybeInt);
        } else {
            this.setField(userString);
        }
    },

    setEnforce: function(event, href) {
        this.props.setEdited(this.props.fieldName);
        this.props.fields.enforce[this.props.fieldName] = event.target.checked;
    },

    render: function() {
        var count = this.props.fields[this.props.fieldName];
        var isValid = validators[this.props.fieldName](count);
        var style = isValid ? 'success' : 'error';
        var wasEdited = this.props.fieldsEdited[this.props.fieldName];
        var enforce = this.props.fields.enforce;
        var fieldName = this.props.fieldName;
        if (_.contains(Object.keys(enforce), this.props.fieldName)) {
            var checkbox = (
                <rb.Input type='checkbox'
                    name={fieldName + '_checkbox'}
                    label='Enforce limit' 
                    checked={enforce[fieldName]}
                    onChange={this.setEnforce}
                />);
        }
        return (
            <div className='form-group'>
                <label>{this.props.fieldLabel}
                    <rb.Input {...this.props}
                     type='text'
                     value={count}
                     bsStyle={style}
                     hasFeedback={wasEdited}
                     ref='input'
                     groupClassName='group-class'
                     wrapperClassName='wrapper-class'
                     labelClassName='label-class'
                     onChange={this.update}
                     />
                    {checkbox}
                </label>
           </div>);
    }
});

var CartridgeType = React.createClass({
    update: function(eventkey, href) {
        this.props.setField('type', +href);
    },
    render: function() {
        /* The keys are the actual numbers that get written to the cartridge.
         * Thus new numbers may be added, but the meaning of each number must
         * not change.
         * Keep in sync with embedded instrument/nfc_manager.py and compass data/CartridgeType.java
         * 2 and 5 are being hidden but will remain defined.
         */
        var titles = {
            1: 'cIEF',
            2: 'cIEF - Fluorescence Only',
            3: 'CE-SDS',
            4: 'Calibration Tool',
            5: 'cIEF - Absorbance Only',
            6: 'CE-SDS PLUS',
        };
        var menuOrder = [1, 3, 6, 4];

        var menuItems = menuOrder.map(
            function(index) {
                return (
                    <rb.MenuItem eventKey={index} key={index}>
                        {titles[index]}
                    </rb.MenuItem>
                );
            });
        return (
            <div className='form-group' className='defaults_panel'>
                <rb.DropdownButton
                    id='cartridge-type'
                    className='form-control'
                    title={titles[this.props.type]}
                    key={this.props.type}
                    onSelect={this.update}
                    >
                    {menuItems}
                </rb.DropdownButton>
            </div>);
    }
});

var UID = React.createClass({
    render: function() {
        var uidStr = formatUID(this.props.uid);
        return (<label id='uid'>
                    Tag UID
                    <rb.Well bsSize='small'>{uidStr}</rb.Well>
                </label>);
    }
});

var BatchDateField = React.createClass({
    update: function(event) {
        this.props.setDate(event.target.value);
    },

    render: function() {
        return (<rb.Input
                    type='text'
                    value={this.props.date}
                    onChange={this.update} />);
    }
});

var BatchInjectionsField = React.createClass({
    update: function(event) {
        var maybeInt = toInt(event.target.value);
        if (isUnsignedByte(maybeInt)) {
            this.props.setInjections(maybeInt);
        } else {
            this.props.setInjections(event.target.value);
        }
    },

    render: function() {
        return (<rb.Input
                    type='text'
                    value={this.props.injections}
                    onChange={this.update} />);
    }
});

var BatchCheckbox = React.createClass({
    render: function() {
        if ('set' in this.props) {
            return (
                <rb.Input type='checkbox'
                    name={this.props.name}
                    checked={this.props.isChecked}
                    onChange={this.props.set}
                    wrapperClassName='col-xs-offset-2 col-xs-2' />);
        } else {
            return (
                <rb.Input type='checkbox' name={this.props.name}
                    readOnly
                    checked={this.props.isChecked}
                    wrapperClassName='col-xs-offset-2 col-xs-2' />);
        }
    }
});


var BatchAdd = React.createClass({
    getInitialState: function() {
        return {
            date: '',
            injections: '',
            clean: false,
            error: false
        };
    },

    setClean: function(event) {
        this.setState({clean: event.target.checked});
    },

    setDate: function(date) {
        this.setState({date: date});
    },

    setError: function(event) {
        this.setState({error: event.target.checked});
    },

    setInjections: function(injections) {
        this.setState({injections: injections});
    },

    handleAdd: function() {
        this.props.addBatch({
            'date': strToUnixDate(this.state.date),
            'injections': this.state.injections,
            'clean': this.state.clean,
            'error': this.state.error});
        this.setState(this.getInitialState());
    },

    render: function() {
        var isValid = validateDate(this.state.date) &&
            isUnsignedByte(this.state.injections);
        return (
            <tr>
                <td>{this.props.index}</td>
                <td><BatchDateField
                    setDate={this.setDate}
                    date={this.state.date} /></td>
                <td><BatchInjectionsField
                    setInjections={this.setInjections}
                    injections={this.state.injections} />
                </td>
                <td>
                    <BatchCheckbox name='clean'
                        isChecked={this.state.clean}
                        set={this.setClean} />
                </td>
                <td>
                    <BatchCheckbox name='error'
                        isChecked={this.state.error}
                        set={this.setError} />
                </td>
                <td><rb.Button
                        bsStyle='primary'
                        disabled={!isValid}
                        onClick={this.handleAdd} >
                        Add
                    </rb.Button>
                </td>
            </tr>
        );
    }
});

var BatchRow = React.createClass({
    handleDel: function(index) {
        this.props.delBatch(index);
    },
    render: function() {
        var batch = this.props.batch;
        var momentDate = unixToMoment(batch.date);
        return (
            <tr>
                <td>{this.props.index + 1}</td>
                <td>{momentDate.utc().format('YYYY-MM-DD')}</td>
                <td>{batch.injections}</td>
                <td><BatchCheckbox name='clean' isChecked={batch.clean} /></td>
                <td><BatchCheckbox name='error' isChecked={batch.error} /></td>
                <td><rb.Button
                    eventKey={this.props.index}
                    onClick={_.partial(this.handleDel, [this.props.index])}>
                    Del
                    </rb.Button>
                </td>
            </tr>
        );
    }
});

var BatchTable = React.createClass({
    handleAdd: function() {
        this.props.writeTag();
    },

    addBatch: function(batchEntry) {
        var log = this.props.fields.batch_log;
        log.push(batchEntry);
        this.props.setFields('batch_log', this.props.fields.batch_log);
        this.props.writeTag();
    },

    delBatch: function(index) {
        this.props.fields.batch_log.splice(index, 1);
        this.props.setFields('batch_log', this.props.fields.batch_log);
        this.props.writeTag();
    },

    render: function() {
        var that = this;
        var batches = this.props.fields.batch_log;
        var rows = [];
        var addRow;

        _.each(batches, function(batch, index) {
            rows.push(
                <BatchRow
                 batch={batch}
                 index={index}
                 key={index}
                 delBatch={that.delBatch}
                 />);
        });
        var max_log_entries = 38;
        if (batches.length < max_log_entries) {
            addRow = <BatchAdd addBatch={this.addBatch} />;
        }

        return (
            <rb.Table striped condensed hover>
                <thead>
                    <tr>
                        <th>Batch</th>
                        <th>Date (YYYY-MM-DD)</th>
                        <th>Injections</th>
                        <th>Cleaning</th>
                        <th>Error</th>
                    </tr>
                </thead>
                <tbody>{rows}{addRow}</tbody>
            </rb.Table>
        );
    }
});


var Loading = React.createClass ({
    render: function() {
        return (
            <rb.Jumbotron>
                <h1>Loading...</h1>
            </rb.Jumbotron>
        );
    }

});

var NoReader = React.createClass ({
    render: function() {
        return (
            <rb.Jumbotron>
                <h1>The NFC reader is OFF.</h1>
                <p>The software turns off the NFC reader when the door is closed. 
                    Open the door to turn on the NFC reader.</p>
                <p>If the door is already open, you can try these
                    troubleshooting steps.</p>
                <ul>
                    <li>Restart the pcscd software from a terminal window.</li>
                    <li>Check the USB connection between the reader and the
                        embedded computer.</li>
                </ul>
            </rb.Jumbotron>
        );
    }
});

var ReaderWithoutCard = React.createClass ({
    render: function() {
        return (
            <rb.Jumbotron>
                <h1>No cartridge detected</h1>
            </rb.Jumbotron>
        );
    }
});

var CardEditor = React.createClass ({
    handleDefaultsClick: function(event) {
        var type = this.props.fields.type;
        this.props.getDefaults(type).then(this.props.setFieldsDefault);
    },

    handleWriteTagClick: function(event) {
        this.props.writeTag();
    },

    render: function() {
        var fields = this.props.fields;

        return (
            <div className='readerBox'>
                <UID uid={this.props.uid} />
                <NumericField {...this.props}
                    fieldLabel='Serial Number (10 decimal digits)'
                    fieldName='serial_number'
                    fieldType='string'
                    maxLength='10' />
                <rb.Panel header='Defaults'>
                    <CartridgeType
                        type={fields.type}
                        setField={this.props.setField} />
                    <rb.Button
                        id='defaults'
                        setField={this.props.setField}
                        onClick={this.handleDefaultsClick}>
                        Load defaults for this type of cartridge
                    </rb.Button>
                </rb.Panel>
                <rb.Panel header='Limits'>
                    <rb.Button
                        className='write_button'
                        bsStyle='primary'
                        disabled={! this.props.readyToWrite}
                        onClick={this.handleWriteTagClick} >
                        Write to Cartridge
                    </rb.Button>
                    <ExpirationDate
                        unixtime={fields.expiration_date}
                        setField={this.props.setField} />
                    <NumericField {...this.props}
                        fieldLabel='Guaranteed Injections'
                        fieldName='guaranteed_injections'
                        maxLength='5' />
                    <NumericField {...this.props}
                        fieldLabel='Maximum Injections'
                        fieldName='max_injections'
                        maxLength='5' />
                    <NumericField {...this.props}
                        fieldLabel='Maximum Injections Per Batch'
                        fieldName='max_injections_per_batch'
                        maxLength='5' />
                    <NumericField {...this.props}
                        fieldLabel='Maximum Batches'
                        fieldName='max_batches'
                        maxLength='5' />
                </rb.Panel>


                <rb.Panel header='History' id='history-panel'>
                    <rb.Button
                        className='write_button'
                        bsStyle='primary'
                        disabled={! this.props.readyToWrite}
                        onClick={this.handleWriteTagClick} >
                        Write to Cartridge
                    </rb.Button>
                    <NumericField {...this.props}
                        fieldLabel='Total Batches'
                        fieldName='num_batches'
                        maxLength='5' />
                    <NumericField {...this.props}
                        fieldLabel='Total Injections'
                        fieldName='num_injections'
                        maxLength='5' />
                    <BatchTable {...this.props}
                        dates={fields.batch_dates}
                        injections={fields.batch_injections} />
                </rb.Panel>
            </div>
        );
    }
});

var BlankCard = React.createClass ({
    handleClick: function(event) {
        this.props.getDefaults().then(this.props.formatTag);
    },

    render: function() {
        return (
                <rb.Jumbotron>
                    <UID uid={this.props.uid} />
                    <h1>Unformatted</h1>
                    <rb.Button
                        id='format_button'
                        bsStyle='primary'
                        onClick={this.handleClick}>
                        Format
                    </rb.Button>
                </rb.Jumbotron>
        );
    }
});

var wampConnect = function(onOpenCallback) {
    var connection = new autobahn.Connection({
       url: 'ws://' + location.host + '/ws',
       realm: 'nfc_realm'
    });
    connection.onopen = onOpenCallback;
    connection.open();
    return connection;
};

var fieldsNotEdited = function() {
    return {
        'version': false,
        'type': false,
        'serial_number': false,
        'expiration_date': false,
        'guaranteed_injections': false,
        'max_injections': false,
        'max_injections_per_batch': false,
        'max_batches': false,
        'batch_dates': false,
        'batch_injections': false,
        'num_batches': false,
        'num_injections': false,
    };
};

var Main = React.createClass({
    getInitialState: function() {
        return {
            wamp_connection: false,
            num_readers: 0,
            num_cards: 0,
            uid: 0,
            formatted: false,
            fields: {},
            fieldsEdited: fieldsNotEdited(),
            dirty: false,
            showEditor: false,
        };
    },

    allValid: function() {
        var that = this;
        var fieldsToCheck = [
            'serial_number', 'expiration_date', 'max_injections',
            'max_injections_per_batch', 'max_batches'];
        return _.reduce(
            fieldsToCheck,
            function(acc, key) {
                return acc && validators[key](that.state.fields[key]);
            },
            true);
    },

    formatTag: function(defaultFields) {
        this.setState({fields: defaultFields});
        this.setState({fieldsEdited: fieldsNotEdited()});
        this.setState({dirty: true});
        this.setState({showEditor: true});
    },

    getDefaults: function(cartridgeType) {
        return this.connection.session.call('v2_defaults', [cartridgeType]);
    },

    setEdited: function(name) {
        this.state.fieldsEdited[name] = true;
        this.setState({dirty: true});
    },

    setField: function(name, value) {
        var fields = this.state.fields;
        fields[name] = value;
        this.setState({fields: fields});
        this.setState({dirty: true});
    },

    setFields: function(name, value) {
        var fields = this.state.fields;
        fields[name] = value;
        this.setState({fields: fields});
        this.setState({dirty: true});
    },

    setFieldsDefault: function(defaultFields) {
        var oldFields = this.state.fields;
        var newFields = defaultFields;
        newFields.batch_dates = oldFields.batch_dates;
        newFields.batch_injections = oldFields.batch_injections;
        this.setState({fields: newFields});
        this.setState({fieldsEdited: fieldsNotEdited()});
        this.setState({dirty: true});
    },

    writeTag: function() {
        this.connection.session.call('write_tag', [this.state.fields]);
        this.setState({fieldsEdited: fieldsNotEdited()});
        this.setState({dirty: false});
    },

    componentDidMount: function() {
        var react_ctx = this;
        var last_msg_id = 0;
        function on_nfc_state(args) {
            var nfc_info = args[0];
            if (nfc_info.msg_id !== last_msg_id) {
                last_msg_id = nfc_info.msg_id;

                var num_readers = nfc_info.readers.length;
                var num_cards = nfc_info.cards.length;

                if (num_cards > 0) {
                    var card = nfc_info.cards[0];
                    react_ctx.setState({
                        wamp_connection: true,
                        num_readers: num_readers,
                        num_cards: num_cards,
                        uid: card.uid,
                        formatted: card.formatted,
                        fields: card.fields,
                        fieldsEdited: fieldsNotEdited(),
                        dirty: false,
                        showEditor: false
                    });
                } else {
                    react_ctx.setState({
                        wamp_connection: true,
                        num_cards: num_cards,
                        num_readers: num_readers});
                }
            }
        }

        this.connection = wampConnect(function(session) {
            session.subscribe('status', on_nfc_state);
        });
    },

    render: function() {
        if (!this.state.wamp_connection) {
           return (<Loading />);
        }
        if (this.state.num_readers === 0) {
           return (<NoReader />);
        }
        if (this.state.num_cards === 0) {
            return (<ReaderWithoutCard />);
        }
        if (this.state.formatted || this.state.showEditor) {
            return (<CardEditor
                uid={this.state.uid}
                formatted={this.state.formatted}
                fields={this.state.fields}
                fieldsEdited={this.state.fieldsEdited}
                getDefaults={this.getDefaults}
                setEdited={this.setEdited}
                setField={this.setField}
                setFields={this.setFields}
                setFieldsDefault={this.setFieldsDefault}
                writeTag={this.writeTag}
                readyToWrite={this.state.dirty && this.allValid()}
                />);
        }
        return (<BlankCard
            uid={this.state.uid}
            formatTag={this.formatTag}
            getDefaults={this.getDefaults}
            />);
    }
});

React.render(
    <Main />,
    document.getElementById('content')
);
