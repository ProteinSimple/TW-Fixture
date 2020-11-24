History and Terminology
-----------------------

First, there were smartcards, which were pocket-sized cards that had
contact pads for connecting to smartcard readers.

These evolved into contactless cards, which use RF induction to communicate
with a reader. Once contacts were not needed, other form factors became
possible, like fobs and tags.

Then smartphones acquired the ability to act as both contactless cards and
contactless card readers. This technology was called Near Field Communication
(NFC).

Because of this history, NFC devices are often called "cards", even though the
actual device may be a sticker, or a key fob, or even a phone.


Set Up Development Environment
------------------------------

#. Install Debian build-dependencies.::

    $ sudo mk-build-deps bionic_debian/control

   Or::

    $ sudo mk-build-deps trusty_debian/control

#. Create a virtualenv and install python dependencies.::

   $ mkvirtualenv test_nfc
   $ pip install -r requirements_{bionic|trusty}.txt

#. JavaScript dependencies are in the source tree, but you'll need to adjust
   your path to run JavaScript commands.::

    $ export PATH=./node_modules/.bin:$PATH

#. Run gulp. This will set up a watcher that will continuously build the source
   files into the single file, bundle.js.::

    $ cd webapp
    $ gulp

#. Install nfc package in development mode.::

   $ python setup.py develop

#. Run unit tests.::

   $ python setup.py test

#. Start crossbar. This, in turn, will start the static web server and
   server.py.::

    $ crossbar start --cbdir webapp/crossbar --config dev.json

#. In browser, open http://localhost:8085

JSX Development
---------------

Use jsxhint in the webapp/node_modules/.bin directory to lint main.jsx. It
should be clean using using the .jshintrc settings in the project root.

As of Dec 2015, the JSXHint README recommends using ESLint instead of JSXHint
when possible, so we should look into moving to that tool when it's convenient.


Versions, Backward, and Forward Compatibility
---------------------------------------------

v1 tags are automatically converted to v2 tags by the NFC server.


Andrew's setup notes
------------------------
I occaisonally come back here and try to follow these instrucitons, and find it helpful to know/remember
gulp makes the webserver go, crossbar makes it talk to the reader.
When I go to run gulp it's  nfc/webapp$ node_modules/.bin/gulp and if you simply & it, it still prints to the terminal
when I already have a virtualenv set up, 'workon' will list the virtualenvs and then workon name will select the right one.
In ubuntu 15 I had to pull the identiv-scx deb out of an installer packange and install it. pcscd and some of the libpcscdlite packages were installed at later versions by default.  the debugging symbols claimed an unresolveable dependency but hopefully aren't critical.
