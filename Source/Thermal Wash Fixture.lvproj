<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Config" Type="Folder">
			<Item Name="Config.ini" Type="Document" URL="../../Config/Config.ini"/>
		</Item>
		<Item Name="Data" Type="Folder">
			<Item Name="ProteinSimple.png" Type="Document" URL="../../Data/ProteinSimple.png"/>
		</Item>
		<Item Name="Protocols" Type="Folder">
			<Item Name="ThermalWash 45min" Type="Document" URL="../../Protocols/ThermalWash 45min"/>
			<Item Name="ThermalWash 60min" Type="Document" URL="../../Protocols/ThermalWash 60min"/>
			<Item Name="ThermalWash 90min" Type="Document" URL="../../Protocols/ThermalWash 90min"/>
			<Item Name="zTest Recipe Full Demo (H2O)" Type="Document" URL="../../Protocols/zTest Recipe Full Demo (H2O)"/>
		</Item>
		<Item Name="Python" Type="Folder">
			<Item Name="Dependencies" Type="Folder">
				<Item Name="pyscard-2.0.0.win32-py3.8.exe" Type="Document" URL="../../Python/Dependencies/pyscard-2.0.0.win32-py3.8.exe"/>
				<Item Name="python-3.8.6.exe" Type="Document" URL="../../Python/Dependencies/python-3.8.6.exe"/>
			</Item>
			<Item Name="src" Type="Folder">
				<Item Name="__pycache__" Type="Folder">
					<Item Name="nfcReaderManager.cpython-38.pyc" Type="Document" URL="../../Python/src/__pycache__/nfcReaderManager.cpython-38.pyc"/>
					<Item Name="read_card_with_serial.cpython-38.pyc" Type="Document" URL="../../Python/src/__pycache__/read_card_with_serial.cpython-38.pyc"/>
				</Item>
				<Item Name="nfc" Type="Folder">
					<Item Name="bionic_debian" Type="Folder">
						<Item Name="source" Type="Folder">
							<Item Name="format" Type="Document" URL="../../Python/src/nfc/bionic_debian/source/format"/>
							<Item Name="options" Type="Document" URL="../../Python/src/nfc/bionic_debian/source/options"/>
						</Item>
						<Item Name="cartridge_editor.service" Type="Document" URL="../../Python/src/nfc/bionic_debian/cartridge_editor.service"/>
						<Item Name="changelog" Type="Document" URL="../../Python/src/nfc/bionic_debian/changelog"/>
						<Item Name="compat" Type="Document" URL="../../Python/src/nfc/bionic_debian/compat"/>
						<Item Name="control" Type="Document" URL="../../Python/src/nfc/bionic_debian/control"/>
						<Item Name="copyright" Type="Document" URL="../../Python/src/nfc/bionic_debian/copyright"/>
						<Item Name="nfc.service" Type="Document" URL="../../Python/src/nfc/bionic_debian/nfc.service"/>
						<Item Name="overwrite_version" Type="Document" URL="../../Python/src/nfc/bionic_debian/overwrite_version"/>
						<Item Name="postinst" Type="Document" URL="../../Python/src/nfc/bionic_debian/postinst"/>
						<Item Name="rules" Type="Document" URL="../../Python/src/nfc/bionic_debian/rules"/>
					</Item>
					<Item Name="bionic_wheels" Type="Folder">
						<Item Name="argh-0.26.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/argh-0.26.2-py2.py3-none-any.whl"/>
						<Item Name="asn1crypto-0.24.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/asn1crypto-0.24.0-py2.py3-none-any.whl"/>
						<Item Name="astroid-1.6.6-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/astroid-1.6.6-py2.py3-none-any.whl"/>
						<Item Name="attrs-19.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/attrs-19.1.0-py2.py3-none-any.whl"/>
						<Item Name="autobahn-19.7.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/autobahn-19.7.1-py2.py3-none-any.whl"/>
						<Item Name="Automat-0.7.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/Automat-0.7.0-py2.py3-none-any.whl"/>
						<Item Name="backports.functools_lru_cache-1.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/backports.functools_lru_cache-1.5-py2.py3-none-any.whl"/>
						<Item Name="bitstring-3.1.6-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/bitstring-3.1.6-py2-none-any.whl"/>
						<Item Name="cbor-1.0.0-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/cbor-1.0.0-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="cbor2-4.1.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/cbor2-4.1.2-py2.py3-none-any.whl"/>
						<Item Name="certifi-2019.6.16-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/certifi-2019.6.16-py2.py3-none-any.whl"/>
						<Item Name="cffi-1.12.3-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/cffi-1.12.3-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="chardet-3.0.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/chardet-3.0.4-py2.py3-none-any.whl"/>
						<Item Name="Click-7.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/Click-7.0-py2.py3-none-any.whl"/>
						<Item Name="configparser-3.7.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/configparser-3.7.4-py2.py3-none-any.whl"/>
						<Item Name="constantly-15.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/constantly-15.1.0-py2.py3-none-any.whl"/>
						<Item Name="coverage-4.5.3-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/coverage-4.5.3-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="crossbar-18.4.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/crossbar-18.4.1-py2.py3-none-any.whl"/>
						<Item Name="cryptography-2.7-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/cryptography-2.7-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="entrypoints-0.3-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/entrypoints-0.3-py2.py3-none-any.whl"/>
						<Item Name="enum34-1.1.6-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/enum34-1.1.6-py2-none-any.whl"/>
						<Item Name="flake8-3.7.8-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/flake8-3.7.8-py2.py3-none-any.whl"/>
						<Item Name="flatbuffers-1.11-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/flatbuffers-1.11-py2.py3-none-any.whl"/>
						<Item Name="functools32-3.2.3.post2-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/functools32-3.2.3.post2-cp27-none-any.whl"/>
						<Item Name="futures-3.3.0-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/futures-3.3.0-py2-none-any.whl"/>
						<Item Name="h2-3.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/h2-3.1.0-py2.py3-none-any.whl"/>
						<Item Name="hpack-3.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/hpack-3.0.0-py2.py3-none-any.whl"/>
						<Item Name="hyperframe-5.2.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/hyperframe-5.2.0-py2.py3-none-any.whl"/>
						<Item Name="hyperlink-19.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/hyperlink-19.0.0-py2.py3-none-any.whl"/>
						<Item Name="idna-2.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/idna-2.5-py2.py3-none-any.whl"/>
						<Item Name="incremental-17.5.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/incremental-17.5.0-py2.py3-none-any.whl"/>
						<Item Name="ipaddress-1.0.22-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/ipaddress-1.0.22-py2.py3-none-any.whl"/>
						<Item Name="isort-4.3.21-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/isort-4.3.21-py2.py3-none-any.whl"/>
						<Item Name="Jinja2-2.10.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/Jinja2-2.10.1-py2.py3-none-any.whl"/>
						<Item Name="lazy_object_proxy-1.4.1-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/lazy_object_proxy-1.4.1-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="lmdb-0.96-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/lmdb-0.96-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="mccabe-0.6.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/mccabe-0.6.1-py2.py3-none-any.whl"/>
						<Item Name="mistune-0.8.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/mistune-0.8.4-py2.py3-none-any.whl"/>
						<Item Name="more_itertools-5.0.0-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/more_itertools-5.0.0-py2-none-any.whl"/>
						<Item Name="msgpack-0.6.1-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/msgpack-0.6.1-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="netaddr-0.7.19-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/netaddr-0.7.19-py2.py3-none-any.whl"/>
						<Item Name="nose-1.3.7-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/nose-1.3.7-py2-none-any.whl"/>
						<Item Name="passlib-1.7.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/passlib-1.7.1-py2.py3-none-any.whl"/>
						<Item Name="pathtools-0.1.2-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pathtools-0.1.2-cp27-none-any.whl"/>
						<Item Name="pip-19.1.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pip-19.1.1-py2.py3-none-any.whl"/>
						<Item Name="priority-1.3.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/priority-1.3.0-py2.py3-none-any.whl"/>
						<Item Name="psutil-5.6.3-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/psutil-5.6.3-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="py_ubjson-0.14.0-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/py_ubjson-0.14.0-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="pyasn1-0.4.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pyasn1-0.4.5-py2.py3-none-any.whl"/>
						<Item Name="pyasn1_modules-0.2.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pyasn1_modules-0.2.5-py2.py3-none-any.whl"/>
						<Item Name="pycodestyle-2.5.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pycodestyle-2.5.0-py2.py3-none-any.whl"/>
						<Item Name="pycparser-2.19-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pycparser-2.19-py2.py3-none-any.whl"/>
						<Item Name="pyflakes-2.1.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pyflakes-2.1.1-py2.py3-none-any.whl"/>
						<Item Name="Pygments-2.4.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/Pygments-2.4.2-py2.py3-none-any.whl"/>
						<Item Name="PyHamcrest-1.9.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/PyHamcrest-1.9.0-py2.py3-none-any.whl"/>
						<Item Name="pylint-1.9.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pylint-1.9.5-py2.py3-none-any.whl"/>
						<Item Name="PyNaCl-1.3.0-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/PyNaCl-1.3.0-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="pyOpenSSL-19.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pyOpenSSL-19.0.0-py2.py3-none-any.whl"/>
						<Item Name="PyQRCode-1.2.1-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/PyQRCode-1.2.1-cp27-none-any.whl"/>
						<Item Name="pyscard-1.9.8-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pyscard-1.9.8-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="python_dateutil-2.8.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/python_dateutil-2.8.0-py2.py3-none-any.whl"/>
						<Item Name="PyTrie-0.3.1-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/PyTrie-0.3.1-cp27-none-any.whl"/>
						<Item Name="pytz-2019.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/pytz-2019.1-py2.py3-none-any.whl"/>
						<Item Name="PyYAML-5.1.1-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/PyYAML-5.1.1-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="requests-2.22.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/requests-2.22.0-py2.py3-none-any.whl"/>
						<Item Name="sdnotify-0.3.2-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/sdnotify-0.3.2-cp27-none-any.whl"/>
						<Item Name="service_identity-18.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/service_identity-18.1.0-py2.py3-none-any.whl"/>
						<Item Name="setproctitle-1.1.10-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/setproctitle-1.1.10-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="setuptools-41.0.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/setuptools-41.0.1-py2.py3-none-any.whl"/>
						<Item Name="shutilwhich-1.1.0-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/shutilwhich-1.1.0-cp27-none-any.whl"/>
						<Item Name="singledispatch-3.4.0.3-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/singledispatch-3.4.0.3-py2.py3-none-any.whl"/>
						<Item Name="six-1.12.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/six-1.12.0-py2.py3-none-any.whl"/>
						<Item Name="sortedcontainers-2.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/sortedcontainers-2.1.0-py2.py3-none-any.whl"/>
						<Item Name="treq-18.6.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/treq-18.6.0-py2.py3-none-any.whl"/>
						<Item Name="Twisted-19.2.1-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/Twisted-19.2.1-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="txaio-18.8.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/txaio-18.8.1-py2.py3-none-any.whl"/>
						<Item Name="txtorcon-19.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/txtorcon-19.0.0-py2.py3-none-any.whl"/>
						<Item Name="typing-3.7.4-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/typing-3.7.4-py2-none-any.whl"/>
						<Item Name="tzlocal-2.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/tzlocal-2.0.0-py2.py3-none-any.whl"/>
						<Item Name="u_msgpack_python-2.5.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/u_msgpack_python-2.5.1-py2.py3-none-any.whl"/>
						<Item Name="ujson-1.35-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/ujson-1.35-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="urllib3-1.25.3-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/urllib3-1.25.3-py2.py3-none-any.whl"/>
						<Item Name="virtualenv-16.6.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/virtualenv-16.6.2-py2.py3-none-any.whl"/>
						<Item Name="watchdog-0.9.0-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/watchdog-0.9.0-cp27-none-any.whl"/>
						<Item Name="wheel-0.33.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/wheel-0.33.4-py2.py3-none-any.whl"/>
						<Item Name="wrapt-1.11.2-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/wrapt-1.11.2-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="zope.interface-4.6.0-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/bionic_wheels/zope.interface-4.6.0-cp27-cp27mu-manylinux1_x86_64.whl"/>
					</Item>
					<Item Name="doc" Type="Folder">
						<Item Name="pcsc" Type="Folder">
							<Item Name="pcsc1_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc1_v2.01.01.pdf"/>
							<Item Name="pcsc2_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc2_v2.01.01.pdf"/>
							<Item Name="pcsc3_v2.01.09.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc3_v2.01.09.pdf"/>
							<Item Name="pcsc3_v2.01.09_amd1.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc3_v2.01.09_amd1.pdf"/>
							<Item Name="pcsc3_v2.01.09_sup.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc3_v2.01.09_sup.pdf"/>
							<Item Name="pcsc3_v2.02.00_sup2.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc3_v2.02.00_sup2.pdf"/>
							<Item Name="pcsc4_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc4_v2.01.01.pdf"/>
							<Item Name="pcsc5_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc5_v2.01.01.pdf"/>
							<Item Name="pcsc6_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc6_v2.01.01.pdf"/>
							<Item Name="pcsc7_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc7_v2.01.01.pdf"/>
							<Item Name="pcsc8_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc8_v2.01.01.pdf"/>
							<Item Name="pcsc9_v2.01.01.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc9_v2.01.01.pdf"/>
							<Item Name="pcsc10_v2.02.02_sup.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc10_v2.02.02_sup.pdf"/>
							<Item Name="pcsc10_v2.02.08_amd1.1.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc10_v2.02.08_amd1.1.pdf"/>
							<Item Name="pcsc10_v2.02.09.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc10_v2.02.09.pdf"/>
							<Item Name="pcsc_addendum_v2.0.pdf" Type="Document" URL="../../Python/src/nfc/doc/pcsc/pcsc_addendum_v2.0.pdf"/>
						</Item>
						<Item Name="Atmel iso14443 application note.pdf" Type="Document" URL="../../Python/src/nfc/doc/Atmel iso14443 application note.pdf"/>
						<Item Name="Identiv Reference Manual 1.0.pdf" Type="Document" URL="../../Python/src/nfc/doc/Identiv Reference Manual 1.0.pdf"/>
						<Item Name="info_isoiec7816-4{ed2.0}en.pdf" Type="Document" URL="../../Python/src/nfc/doc/info_isoiec7816-4{ed2.0}en.pdf"/>
						<Item Name="iso14443-3.pdf" Type="Document" URL="../../Python/src/nfc/doc/iso14443-3.pdf"/>
						<Item Name="iso14443-4.pdf" Type="Document" URL="../../Python/src/nfc/doc/iso14443-4.pdf"/>
						<Item Name="Kifer Tags.pptx" Type="Document" URL="../../Python/src/nfc/doc/Kifer Tags.pptx"/>
						<Item Name="NFC_forum_digital_protocol.pdf" Type="Document" URL="../../Python/src/nfc/doc/NFC_forum_digital_protocol.pdf"/>
						<Item Name="NFCForum-TS-Type-2-Tag_1.1.pdf" Type="Document" URL="../../Python/src/nfc/doc/NFCForum-TS-Type-2-Tag_1.1.pdf"/>
						<Item Name="NTAG203F.pdf" Type="Document" URL="../../Python/src/nfc/doc/NTAG203F.pdf"/>
						<Item Name="NTAG213_215_216.pdf" Type="Document" URL="../../Python/src/nfc/doc/NTAG213_215_216.pdf"/>
						<Item Name="NXP_NTAG210_212.pdf" Type="Document" URL="../../Python/src/nfc/doc/NXP_NTAG210_212.pdf"/>
						<Item Name="PRE_NFC_0804-250 NFC Standards.pdf" Type="Document" URL="../../Python/src/nfc/doc/PRE_NFC_0804-250 NFC Standards.pdf"/>
						<Item Name="schema.ods" Type="Document" URL="../../Python/src/nfc/doc/schema.ods"/>
						<Item Name="Smart Card Tutorial.pdf" Type="Document" URL="../../Python/src/nfc/doc/Smart Card Tutorial.pdf"/>
					</Item>
					<Item Name="nfc" Type="Folder">
						<Item Name="__pycache__" Type="Folder">
							<Item Name="__init__.cpython-38.pyc" Type="Document" URL="../../Python/src/nfc/nfc/__pycache__/__init__.cpython-38.pyc"/>
							<Item Name="apdu.cpython-38.pyc" Type="Document" URL="../../Python/src/nfc/nfc/__pycache__/apdu.cpython-38.pyc"/>
							<Item Name="nfc_comm.cpython-38.pyc" Type="Document" URL="../../Python/src/nfc/nfc/__pycache__/nfc_comm.cpython-38.pyc"/>
							<Item Name="packet.cpython-38.pyc" Type="Document" URL="../../Python/src/nfc/nfc/__pycache__/packet.cpython-38.pyc"/>
							<Item Name="scard_wrapper.cpython-38.pyc" Type="Document" URL="../../Python/src/nfc/nfc/__pycache__/scard_wrapper.cpython-38.pyc"/>
						</Item>
						<Item Name="__init__.py" Type="Document" URL="../../Python/src/nfc/nfc/__init__.py"/>
						<Item Name="apdu.py" Type="Document" URL="../../Python/src/nfc/nfc/apdu.py"/>
						<Item Name="check_cartridge.py" Type="Document" URL="../../Python/src/nfc/nfc/check_cartridge.py"/>
						<Item Name="erase_tag.py" Type="Document" URL="../../Python/src/nfc/nfc/erase_tag.py"/>
						<Item Name="format_tag.py" Type="Document" URL="../../Python/src/nfc/nfc/format_tag.py"/>
						<Item Name="nfc_comm.py" Type="Document" URL="../../Python/src/nfc/nfc/nfc_comm.py"/>
						<Item Name="packet.py" Type="Document" URL="../../Python/src/nfc/nfc/packet.py"/>
						<Item Name="read_card.py" Type="Document" URL="../../Python/src/nfc/nfc/read_card.py"/>
						<Item Name="scard_wrapper.py" Type="Document" URL="../../Python/src/nfc/nfc/scard_wrapper.py"/>
						<Item Name="server.py" Type="Document" URL="../../Python/src/nfc/nfc/server.py"/>
						<Item Name="write_test.py" Type="Document" URL="../../Python/src/nfc/nfc/write_test.py"/>
					</Item>
					<Item Name="nodejs" Type="Folder">
						<Item Name="nodejs_10.19.0-1nodesource1_amd64.deb" Type="Document" URL="../../Python/src/nfc/nodejs/nodejs_10.19.0-1nodesource1_amd64.deb"/>
					</Item>
					<Item Name="pyscard" Type="Folder">
						<Item Name="pyscard-1.6.16.tar.gz" Type="Document" URL="../../Python/src/nfc/pyscard/pyscard-1.6.16.tar.gz"/>
						<Item Name="README.rst" Type="Document" URL="../../Python/src/nfc/pyscard/README.rst"/>
					</Item>
					<Item Name="tests" Type="Folder">
						<Item Name="test_nfc_comm.py" Type="Document" URL="../../Python/src/nfc/tests/test_nfc_comm.py"/>
						<Item Name="test_packet.py" Type="Document" URL="../../Python/src/nfc/tests/test_packet.py"/>
					</Item>
					<Item Name="trusty_debian" Type="Folder">
						<Item Name="source" Type="Folder">
							<Item Name="format" Type="Document" URL="../../Python/src/nfc/trusty_debian/source/format"/>
							<Item Name="options" Type="Document" URL="../../Python/src/nfc/trusty_debian/source/options"/>
						</Item>
						<Item Name="cartridge_editor.conf" Type="Document" URL="../../Python/src/nfc/trusty_debian/cartridge_editor.conf"/>
						<Item Name="changelog" Type="Document" URL="../../Python/src/nfc/trusty_debian/changelog"/>
						<Item Name="compat" Type="Document" URL="../../Python/src/nfc/trusty_debian/compat"/>
						<Item Name="control" Type="Document" URL="../../Python/src/nfc/trusty_debian/control"/>
						<Item Name="copyright" Type="Document" URL="../../Python/src/nfc/trusty_debian/copyright"/>
						<Item Name="install" Type="Document" URL="../../Python/src/nfc/trusty_debian/install"/>
						<Item Name="nfc.conf" Type="Document" URL="../../Python/src/nfc/trusty_debian/nfc.conf"/>
						<Item Name="overwrite_version" Type="Document" URL="../../Python/src/nfc/trusty_debian/overwrite_version"/>
						<Item Name="postinst" Type="Document" URL="../../Python/src/nfc/trusty_debian/postinst"/>
						<Item Name="rules" Type="Document" URL="../../Python/src/nfc/trusty_debian/rules"/>
					</Item>
					<Item Name="trusty_wheels" Type="Folder">
						<Item Name="argh-0.26.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/argh-0.26.2-py2.py3-none-any.whl"/>
						<Item Name="asn1crypto-0.24.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/asn1crypto-0.24.0-py2.py3-none-any.whl"/>
						<Item Name="astroid-1.6.6-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/astroid-1.6.6-py2.py3-none-any.whl"/>
						<Item Name="attrs-19.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/attrs-19.1.0-py2.py3-none-any.whl"/>
						<Item Name="autobahn-19.7.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/autobahn-19.7.1-py2.py3-none-any.whl"/>
						<Item Name="Automat-0.7.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/Automat-0.7.0-py2.py3-none-any.whl"/>
						<Item Name="backports.functools_lru_cache-1.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/backports.functools_lru_cache-1.5-py2.py3-none-any.whl"/>
						<Item Name="bitstring-3.1.6-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/bitstring-3.1.6-py2-none-any.whl"/>
						<Item Name="cbor-1.0.0-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/cbor-1.0.0-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="cbor2-4.1.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/cbor2-4.1.2-py2.py3-none-any.whl"/>
						<Item Name="certifi-2019.6.16-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/certifi-2019.6.16-py2.py3-none-any.whl"/>
						<Item Name="cffi-1.12.3-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/cffi-1.12.3-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="chardet-3.0.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/chardet-3.0.4-py2.py3-none-any.whl"/>
						<Item Name="Click-7.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/Click-7.0-py2.py3-none-any.whl"/>
						<Item Name="configparser-3.7.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/configparser-3.7.4-py2.py3-none-any.whl"/>
						<Item Name="constantly-15.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/constantly-15.1.0-py2.py3-none-any.whl"/>
						<Item Name="coverage-4.5.3-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/coverage-4.5.3-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="crossbar-18.4.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/crossbar-18.4.1-py2.py3-none-any.whl"/>
						<Item Name="cryptography-2.7-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/cryptography-2.7-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="entrypoints-0.3-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/entrypoints-0.3-py2.py3-none-any.whl"/>
						<Item Name="enum34-1.1.6-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/enum34-1.1.6-py2-none-any.whl"/>
						<Item Name="flake8-3.7.8-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/flake8-3.7.8-py2.py3-none-any.whl"/>
						<Item Name="flatbuffers-1.11-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/flatbuffers-1.11-py2.py3-none-any.whl"/>
						<Item Name="functools32-3.2.3.post2-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/functools32-3.2.3.post2-cp27-none-any.whl"/>
						<Item Name="futures-3.3.0-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/futures-3.3.0-py2-none-any.whl"/>
						<Item Name="h2-3.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/h2-3.1.0-py2.py3-none-any.whl"/>
						<Item Name="hpack-3.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/hpack-3.0.0-py2.py3-none-any.whl"/>
						<Item Name="hyperframe-5.2.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/hyperframe-5.2.0-py2.py3-none-any.whl"/>
						<Item Name="hyperlink-19.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/hyperlink-19.0.0-py2.py3-none-any.whl"/>
						<Item Name="idna-2.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/idna-2.5-py2.py3-none-any.whl"/>
						<Item Name="incremental-17.5.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/incremental-17.5.0-py2.py3-none-any.whl"/>
						<Item Name="ipaddress-1.0.22-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/ipaddress-1.0.22-py2.py3-none-any.whl"/>
						<Item Name="isort-4.3.21-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/isort-4.3.21-py2.py3-none-any.whl"/>
						<Item Name="Jinja2-2.10.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/Jinja2-2.10.1-py2.py3-none-any.whl"/>
						<Item Name="lazy_object_proxy-1.4.1-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/lazy_object_proxy-1.4.1-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="lmdb-0.96-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/lmdb-0.96-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/MarkupSafe-1.1.1-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="mccabe-0.6.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/mccabe-0.6.1-py2.py3-none-any.whl"/>
						<Item Name="mistune-0.8.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/mistune-0.8.4-py2.py3-none-any.whl"/>
						<Item Name="more_itertools-5.0.0-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/more_itertools-5.0.0-py2-none-any.whl"/>
						<Item Name="msgpack-0.6.1-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/msgpack-0.6.1-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="netaddr-0.7.19-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/netaddr-0.7.19-py2.py3-none-any.whl"/>
						<Item Name="nose-1.3.7-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/nose-1.3.7-py2-none-any.whl"/>
						<Item Name="passlib-1.7.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/passlib-1.7.1-py2.py3-none-any.whl"/>
						<Item Name="pathtools-0.1.2-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pathtools-0.1.2-cp27-none-any.whl"/>
						<Item Name="pip-19.1.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pip-19.1.1-py2.py3-none-any.whl"/>
						<Item Name="priority-1.3.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/priority-1.3.0-py2.py3-none-any.whl"/>
						<Item Name="psutil-5.6.3-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/psutil-5.6.3-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="py_ubjson-0.14.0-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/py_ubjson-0.14.0-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="pyasn1-0.4.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pyasn1-0.4.5-py2.py3-none-any.whl"/>
						<Item Name="pyasn1_modules-0.2.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pyasn1_modules-0.2.5-py2.py3-none-any.whl"/>
						<Item Name="pycodestyle-2.5.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pycodestyle-2.5.0-py2.py3-none-any.whl"/>
						<Item Name="pycparser-2.19-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pycparser-2.19-py2.py3-none-any.whl"/>
						<Item Name="pyflakes-2.1.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pyflakes-2.1.1-py2.py3-none-any.whl"/>
						<Item Name="Pygments-2.4.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/Pygments-2.4.2-py2.py3-none-any.whl"/>
						<Item Name="PyHamcrest-1.9.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/PyHamcrest-1.9.0-py2.py3-none-any.whl"/>
						<Item Name="pylint-1.9.5-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pylint-1.9.5-py2.py3-none-any.whl"/>
						<Item Name="PyNaCl-1.3.0-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/PyNaCl-1.3.0-cp27-cp27mu-manylinux1_x86_64.whl"/>
						<Item Name="pyOpenSSL-19.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pyOpenSSL-19.0.0-py2.py3-none-any.whl"/>
						<Item Name="PyQRCode-1.2.1-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/PyQRCode-1.2.1-cp27-none-any.whl"/>
						<Item Name="pyscard-1.9.8-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pyscard-1.9.8-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="python_dateutil-2.8.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/python_dateutil-2.8.0-py2.py3-none-any.whl"/>
						<Item Name="PyTrie-0.3.1-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/PyTrie-0.3.1-cp27-none-any.whl"/>
						<Item Name="pytz-2019.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/pytz-2019.1-py2.py3-none-any.whl"/>
						<Item Name="PyYAML-5.1.1-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/PyYAML-5.1.1-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="requests-2.22.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/requests-2.22.0-py2.py3-none-any.whl"/>
						<Item Name="sdnotify-0.3.2-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/sdnotify-0.3.2-cp27-none-any.whl"/>
						<Item Name="service_identity-18.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/service_identity-18.1.0-py2.py3-none-any.whl"/>
						<Item Name="setproctitle-1.1.10-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/setproctitle-1.1.10-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="setuptools-41.0.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/setuptools-41.0.1-py2.py3-none-any.whl"/>
						<Item Name="shutilwhich-1.1.0-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/shutilwhich-1.1.0-cp27-none-any.whl"/>
						<Item Name="singledispatch-3.4.0.3-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/singledispatch-3.4.0.3-py2.py3-none-any.whl"/>
						<Item Name="six-1.12.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/six-1.12.0-py2.py3-none-any.whl"/>
						<Item Name="sortedcontainers-2.1.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/sortedcontainers-2.1.0-py2.py3-none-any.whl"/>
						<Item Name="treq-18.6.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/treq-18.6.0-py2.py3-none-any.whl"/>
						<Item Name="Twisted-19.2.1-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/Twisted-19.2.1-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="txaio-18.8.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/txaio-18.8.1-py2.py3-none-any.whl"/>
						<Item Name="txtorcon-19.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/txtorcon-19.0.0-py2.py3-none-any.whl"/>
						<Item Name="typing-3.7.4-py2-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/typing-3.7.4-py2-none-any.whl"/>
						<Item Name="tzlocal-2.0.0-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/tzlocal-2.0.0-py2.py3-none-any.whl"/>
						<Item Name="u_msgpack_python-2.5.1-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/u_msgpack_python-2.5.1-py2.py3-none-any.whl"/>
						<Item Name="ujson-1.35-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/ujson-1.35-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="urllib3-1.25.3-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/urllib3-1.25.3-py2.py3-none-any.whl"/>
						<Item Name="virtualenv-16.6.2-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/virtualenv-16.6.2-py2.py3-none-any.whl"/>
						<Item Name="watchdog-0.9.0-cp27-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/watchdog-0.9.0-cp27-none-any.whl"/>
						<Item Name="wheel-0.33.4-py2.py3-none-any.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/wheel-0.33.4-py2.py3-none-any.whl"/>
						<Item Name="wrapt-1.11.2-cp27-cp27mu-linux_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/wrapt-1.11.2-cp27-cp27mu-linux_x86_64.whl"/>
						<Item Name="zope.interface-4.6.0-cp27-cp27mu-manylinux1_x86_64.whl" Type="Document" URL="../../Python/src/nfc/trusty_wheels/zope.interface-4.6.0-cp27-cp27mu-manylinux1_x86_64.whl"/>
					</Item>
					<Item Name="webapp" Type="Folder">
						<Item Name="crossbar" Type="Folder">
							<Item Name="cartridge_editor.json" Type="Document" URL="../../Python/src/nfc/webapp/crossbar/cartridge_editor.json"/>
							<Item Name="config.json" Type="Document" URL="../../Python/src/nfc/webapp/crossbar/config.json"/>
							<Item Name="dev.json" Type="Document" URL="../../Python/src/nfc/webapp/crossbar/dev.json"/>
						</Item>
						<Item Name="js" Type="Folder">
							<Item Name=".gitignore" Type="Document" URL="../../Python/src/nfc/webapp/js/.gitignore"/>
						</Item>
						<Item Name="static" Type="Folder">
							<Item Name="css" Type="Folder">
								<Item Name="bootstrap-theme.css" Type="Document" URL="../../Python/src/nfc/webapp/static/css/bootstrap-theme.css"/>
								<Item Name="bootstrap-theme.css.map" Type="Document" URL="../../Python/src/nfc/webapp/static/css/bootstrap-theme.css.map"/>
								<Item Name="bootstrap-theme.min.css" Type="Document" URL="../../Python/src/nfc/webapp/static/css/bootstrap-theme.min.css"/>
								<Item Name="bootstrap.css" Type="Document" URL="../../Python/src/nfc/webapp/static/css/bootstrap.css"/>
								<Item Name="bootstrap.css.map" Type="Document" URL="../../Python/src/nfc/webapp/static/css/bootstrap.css.map"/>
								<Item Name="bootstrap.min.css" Type="Document" URL="../../Python/src/nfc/webapp/static/css/bootstrap.min.css"/>
								<Item Name="custom.css" Type="Document" URL="../../Python/src/nfc/webapp/static/css/custom.css"/>
								<Item Name="react-widgets.css" Type="Document" URL="../../Python/src/nfc/webapp/static/css/react-widgets.css"/>
							</Item>
							<Item Name="fonts" Type="Folder">
								<Item Name="glyphicons-halflings-regular.eot" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/glyphicons-halflings-regular.eot"/>
								<Item Name="glyphicons-halflings-regular.svg" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/glyphicons-halflings-regular.svg"/>
								<Item Name="glyphicons-halflings-regular.ttf" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/glyphicons-halflings-regular.ttf"/>
								<Item Name="glyphicons-halflings-regular.woff" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/glyphicons-halflings-regular.woff"/>
								<Item Name="rw-widgets.eot" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/rw-widgets.eot"/>
								<Item Name="rw-widgets.svg" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/rw-widgets.svg"/>
								<Item Name="rw-widgets.ttf" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/rw-widgets.ttf"/>
								<Item Name="rw-widgets.woff" Type="Document" URL="../../Python/src/nfc/webapp/static/fonts/rw-widgets.woff"/>
							</Item>
							<Item Name="js" Type="Folder">
								<Item Name="bootstrap.js" Type="Document" URL="../../Python/src/nfc/webapp/static/js/bootstrap.js"/>
								<Item Name="bootstrap.min.js" Type="Document" URL="../../Python/src/nfc/webapp/static/js/bootstrap.min.js"/>
								<Item Name="npm.js" Type="Document" URL="../../Python/src/nfc/webapp/static/js/npm.js"/>
							</Item>
							<Item Name="index.html" Type="Document" URL="../../Python/src/nfc/webapp/static/index.html"/>
						</Item>
						<Item Name="gulpfile.js" Type="Document" URL="../../Python/src/nfc/webapp/gulpfile.js"/>
						<Item Name="main.jsx" Type="Document" URL="../../Python/src/nfc/webapp/main.jsx"/>
						<Item Name="package-lock.json" Type="Document" URL="../../Python/src/nfc/webapp/package-lock.json"/>
						<Item Name="package.json" Type="Document" URL="../../Python/src/nfc/webapp/package.json"/>
					</Item>
					<Item Name=".gitignore" Type="Document" URL="../../Python/src/nfc/.gitignore"/>
					<Item Name=".jshintrc" Type="Document" URL="../../Python/src/nfc/.jshintrc"/>
					<Item Name=".project" Type="Document" URL="../../Python/src/nfc/.project"/>
					<Item Name=".pydevproject" Type="Document" URL="../../Python/src/nfc/.pydevproject"/>
					<Item Name="bionic.proteinsimple.com.pub.asc" Type="Document" URL="../../Python/src/nfc/bionic.proteinsimple.com.pub.asc"/>
					<Item Name="build-deb" Type="Document" URL="../../Python/src/nfc/build-deb"/>
					<Item Name="build-requirements" Type="Document" URL="../../Python/src/nfc/build-requirements"/>
					<Item Name="build-wheels" Type="Document" URL="../../Python/src/nfc/build-wheels"/>
					<Item Name="build_wheels.Dockerfile" Type="Document" URL="../../Python/src/nfc/build_wheels.Dockerfile"/>
					<Item Name="crossbar_dev.sh" Type="Document" URL="../../Python/src/nfc/crossbar_dev.sh"/>
					<Item Name="dh-virtualenv_1.2~ps-1_all.deb" Type="Document" URL="../../Python/src/nfc/dh-virtualenv_1.2~ps-1_all.deb"/>
					<Item Name="Dockerfile" Type="Document" URL="../../Python/src/nfc/Dockerfile"/>
					<Item Name="Jenkinsfile" Type="Document" URL="../../Python/src/nfc/Jenkinsfile"/>
					<Item Name="README.rst" Type="Document" URL="../../Python/src/nfc/README.rst"/>
					<Item Name="requirements-to-freeze.txt" Type="Document" URL="../../Python/src/nfc/requirements-to-freeze.txt"/>
					<Item Name="requirements_bionic.txt" Type="Document" URL="../../Python/src/nfc/requirements_bionic.txt"/>
					<Item Name="requirements_trusty.txt" Type="Document" URL="../../Python/src/nfc/requirements_trusty.txt"/>
					<Item Name="run-tests" Type="Document" URL="../../Python/src/nfc/run-tests"/>
					<Item Name="setup.cfg" Type="Document" URL="../../Python/src/nfc/setup.cfg"/>
					<Item Name="setup.py" Type="Document" URL="../../Python/src/nfc/setup.py"/>
					<Item Name="setup_symlinks" Type="Document" URL="../../Python/src/nfc/setup_symlinks"/>
				</Item>
				<Item Name="nfcReaderManager.py" Type="Document" URL="../../Python/src/nfcReaderManager.py"/>
				<Item Name="read_card_with_serial.py" Type="Document" URL="../../Python/src/read_card_with_serial.py"/>
				<Item Name="test.py" Type="Document" URL="../../Python/src/test.py"/>
			</Item>
			<Item Name="requirements.txt" Type="Document" URL="../../Python/requirements.txt"/>
		</Item>
		<Item Name="Scripts" Type="Folder">
			<Item Name="Drain All Wells" Type="Document" URL="../../Scripts/Drain All Wells"/>
			<Item Name="Drain All Wells+Lines" Type="Document" URL="../../Scripts/Drain All Wells+Lines"/>
			<Item Name="Drain Well X" Type="Document" URL="../../Scripts/Drain Well X"/>
			<Item Name="Drain Well_X+Line_X" Type="Document" URL="../../Scripts/Drain Well_X+Line_X"/>
			<Item Name="Fill Well_X Reagent_X" Type="Document" URL="../../Scripts/Fill Well_X Reagent_X"/>
			<Item Name="Move to TW" Type="Document" URL="../../Scripts/Move to TW"/>
			<Item Name="Prime Input Lines" Type="Document" URL="../../Scripts/Prime Input Lines"/>
			<Item Name="Rinse All Wells" Type="Document" URL="../../Scripts/Rinse All Wells"/>
			<Item Name="Rinse Syringe" Type="Document" URL="../../Scripts/Rinse Syringe"/>
			<Item Name="Rinse Well X" Type="Document" URL="../../Scripts/Rinse Well X"/>
			<Item Name="Rinse Well X step1" Type="Document" URL="../../Scripts/Rinse Well X step1"/>
			<Item Name="Rinse Well X step2" Type="Document" URL="../../Scripts/Rinse Well X step2"/>
			<Item Name="Rinse Well X step3" Type="Document" URL="../../Scripts/Rinse Well X step3"/>
		</Item>
		<Item Name="16CH Denkovi Manager.vi" Type="VI" URL="../Hardware/16CH Denkovi Manager.vi"/>
		<Item Name="Cart Type Check.vi" Type="VI" URL="../Main/Cart Type Check.vi"/>
		<Item Name="Cartridge Mngr.vi" Type="VI" URL="../Main/Cartridge Mngr.vi"/>
		<Item Name="Convert to PSI.vi" Type="VI" URL="../Main/Convert to PSI.vi"/>
		<Item Name="DAQ - Initialize.vi" Type="VI" URL="../Hardware/DAQ/DAQ - Initialize.vi"/>
		<Item Name="DAQ Manager.vi" Type="VI" URL="../Hardware/DAQ Manager.vi"/>
		<Item Name="Denkovi Manager.vi" Type="VI" URL="../Hardware/Denkovi Manager.vi"/>
		<Item Name="FT_Get_Device_Description_By_Index.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Get_Device_Description_By_Index.vi"/>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Process Turbo.ctl" Type="VI" URL="../Main/Process Turbo.ctl"/>
		<Item Name="Scripting Mngr.vi" Type="VI" URL="../Main/Scripting Mngr.vi"/>
		<Item Name="SDS Process Mngr.vi" Type="VI" URL="../Main/SDS Process Mngr.vi"/>
		<Item Name="Tecan Mngr.vi" Type="VI" URL="../Hardware/Tecan Mngr.vi"/>
		<Item Name="Timing Specs.ctl" Type="VI" URL="../Main/Timing Specs.ctl"/>
		<Item Name="Utilities.lvlib" Type="Library" URL="../Lib/Utilities.lvlib"/>
		<Item Name="Zaber Manager.vi" Type="VI" URL="../Hardware/Zaber Manager.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="MGI Caller&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Caller&apos;s VI Reference.vi"/>
				<Item Name="MGI Close Window.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Close Window.vi"/>
				<Item Name="MGI Create Directory Chain Behavior Enum.ctl" Type="VI" URL="/&lt;userlib&gt;/_MGI/File/MGI Create Directory Chain Behavior Enum.ctl"/>
				<Item Name="MGI Create Directory Chain.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/File/MGI Create Directory Chain.vi"/>
				<Item Name="MGI Current VI&apos;s Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Current VI&apos;s Reference.vi"/>
				<Item Name="MGI Get Cluster Elements.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Cluster/MGI Get Cluster Elements.vi"/>
				<Item Name="MGI Hex Str to U8 Data.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Hex Str to U8 Data.vi"/>
				<Item Name="MGI Insert Reserved Error.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Error Handling/MGI Insert Reserved Error.vi"/>
				<Item Name="MGI Is Runtime.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Is Runtime.vi"/>
				<Item Name="MGI Level&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Level&apos;s VI Reference.vi"/>
				<Item Name="MGI Read Anything.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI Read Anything.vi"/>
				<Item Name="MGI RWA Anything to String.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Anything to String.vi"/>
				<Item Name="MGI RWA Build Array Name.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Build Array Name.vi"/>
				<Item Name="MGI RWA Build Line.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Build Line.vi"/>
				<Item Name="MGI RWA Convertion Direction Enum.ctl" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Convertion Direction Enum.ctl"/>
				<Item Name="MGI RWA Enque Top Level Data.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Enque Top Level Data.vi"/>
				<Item Name="MGI RWA Get Type Info.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Get Type Info.vi"/>
				<Item Name="MGI RWA Handle Tag or Refnum.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Handle Tag or Refnum.vi"/>
				<Item Name="MGI RWA INI Tag Lookup.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA INI Tag Lookup.vi"/>
				<Item Name="MGI RWA Options Cluster.ctl" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Options Cluster.ctl"/>
				<Item Name="MGI RWA Process Array Elements.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Process Array Elements.vi"/>
				<Item Name="MGI RWA Read Strings from File.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Read Strings from File.vi"/>
				<Item Name="MGI RWA Remove EOLs and Slashes.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Remove EOLs and Slashes.vi"/>
				<Item Name="MGI RWA Replace Characters.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Replace Characters.vi"/>
				<Item Name="MGI RWA String To Anything.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA String To Anything.vi"/>
				<Item Name="MGI RWA Tag Lookup Cluster.ctl" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Tag Lookup Cluster.ctl"/>
				<Item Name="MGI RWA Unprocess Array Elements.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Unprocess Array Elements.vi"/>
				<Item Name="MGI RWA Unreplace Characters.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Unreplace Characters.vi"/>
				<Item Name="MGI RWA Write Strings to File.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI RWA Write Strings to File.vi"/>
				<Item Name="MGI Scan From String (CDB).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String/MGI Scan From String (CDB).vi"/>
				<Item Name="MGI Scan From String (CDB[]).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String/MGI Scan From String (CDB[]).vi"/>
				<Item Name="MGI Scan From String (CSG).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String/MGI Scan From String (CSG).vi"/>
				<Item Name="MGI Scan From String (CSG[]).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String/MGI Scan From String (CSG[]).vi"/>
				<Item Name="MGI Scan From String (CXT).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String/MGI Scan From String (CXT).vi"/>
				<Item Name="MGI Scan From String (CXT[]).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String/MGI Scan From String (CXT[]).vi"/>
				<Item Name="MGI Scan From String (DBL[]).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String/MGI Scan From String (DBL[]).vi"/>
				<Item Name="MGI Scan From String.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Scan From String.vi"/>
				<Item Name="MGI Suppress Error Code (Array).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Error Handling/MGI Suppress Error Code/MGI Suppress Error Code (Array).vi"/>
				<Item Name="MGI Suppress Error Code (Scalar).vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Error Handling/MGI Suppress Error Code/MGI Suppress Error Code (Scalar).vi"/>
				<Item Name="MGI Suppress Error Code.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Error Handling/MGI Suppress Error Code.vi"/>
				<Item Name="MGI Top Level VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Top Level VI Reference.vi"/>
				<Item Name="MGI U8 Data to Hex Str.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI U8 Data to Hex Str.vi"/>
				<Item Name="MGI VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference.vi"/>
				<Item Name="MGI Windows Get Regional String.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Windows Get Regional String.vi"/>
				<Item Name="MGI Windows Regional Ring.ctl" Type="VI" URL="/&lt;userlib&gt;/_MGI/String/MGI Windows Get Regional String/MGI Windows Regional Ring.ctl"/>
				<Item Name="MGI Write Anything.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Read Write Anything/MGI Write Anything.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Control Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Control Task.vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (Power).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (Power).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/task.llb/DAQmx Create Task.vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Flatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Flatten Channel String.vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Power DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DTbl Empty Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Empty Digital.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="DWDT Empty Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Empty Digital.vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Is Path and Not Empty.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="16CH Data Array.vi" Type="VI" URL="../Hardware/16CH Data Array.vi"/>
			<Item Name="16CH Denkovi Mngr.ctl" Type="VI" URL="../Hardware/16CH Denkovi Mngr.ctl"/>
			<Item Name="16CH Relay Array.vi" Type="VI" URL="../Hardware/16CH Relay Array.vi"/>
			<Item Name="Analyze Vacuum Transition.vi" Type="VI" URL="../Main/Analyze Vacuum Transition.vi"/>
			<Item Name="Bottles.ctl" Type="VI" URL="../Lib/Time/Bottles.ctl"/>
			<Item Name="Calculate Rate.vi" Type="VI" URL="../Main/Calculate Rate.vi"/>
			<Item Name="Calculate Total Time.vi" Type="VI" URL="../Main/Calculate Total Time.vi"/>
			<Item Name="Cartridge #.ctl" Type="VI" URL="../Main/Cartridge #.ctl"/>
			<Item Name="Cartridge Mngr.ctl" Type="VI" URL="../Main/Cartridge Mngr.ctl"/>
			<Item Name="Cartridge state.ctl" Type="VI" URL="../Main/Cartridge state.ctl"/>
			<Item Name="Cartridge Status.ctl" Type="VI" URL="../Main/Cartridge Status.ctl"/>
			<Item Name="Cartridges.ctl" Type="VI" URL="../Main/Cartridges.ctl"/>
			<Item Name="Commands.ctl" Type="VI" URL="../Main/Commands.ctl"/>
			<Item Name="Config Mngr.ctl" Type="VI" URL="../Main/Config Mngr.ctl"/>
			<Item Name="Config Mngr.vi" Type="VI" URL="../Main/Config Mngr.vi"/>
			<Item Name="Convert to InHg.vi" Type="VI" URL="../Main/Convert to InHg.vi"/>
			<Item Name="Create Folder If Misssing.vi" Type="VI" URL="../Lib/File/Create Folder If Misssing.vi"/>
			<Item Name="Create Summary File.vi" Type="VI" URL="../Main/Create Summary File.vi"/>
			<Item Name="DAQ - Close.vi" Type="VI" URL="../Hardware/DAQ/DAQ - Close.vi"/>
			<Item Name="DAQ Globals.vi" Type="VI" URL="../Hardware/DAQ/DAQ Globals.vi"/>
			<Item Name="DAQ Mngr.ctl" Type="VI" URL="../Hardware/DAQ Mngr.ctl"/>
			<Item Name="Data Logger.vi" Type="VI" URL="../Main/Data Logger.vi"/>
			<Item Name="Delay with Cancel 2.vi" Type="VI" URL="../Lib/Time/Delay with Cancel 2.vi"/>
			<Item Name="Delay with Error Handling.vi" Type="VI" URL="../Lib/Time/Delay with Error Handling.vi"/>
			<Item Name="Delete Number of Lines.vi" Type="VI" URL="../Lib/String/Delete Number of Lines.vi"/>
			<Item Name="Denkovi Mngr.ctl" Type="VI" URL="../Hardware/Denkovi Mngr.ctl"/>
			<Item Name="Detect Transition to Load.vi" Type="VI" URL="../Main/Detect Transition to Load.vi"/>
			<Item Name="Detect Transition to TW.vi" Type="VI" URL="../Main/Detect Transition to TW.vi"/>
			<Item Name="Drain Valve.ctl" Type="VI" URL="../Main/Drain Valve.ctl"/>
			<Item Name="Error Logger.vi" Type="VI" URL="../Main/Error Logger.vi"/>
			<Item Name="Find DAQ yk.vi" Type="VI" URL="../Hardware/DAQ/Find DAQ yk.vi"/>
			<Item Name="Find Device Protocols.ctl" Type="VI" URL="../Lib/Serial/Find Device Protocols.ctl"/>
			<Item Name="Find Number of Lines.vi" Type="VI" URL="../Lib/String/Find Number of Lines.vi"/>
			<Item Name="Format Summary String.vi" Type="VI" URL="../Main/Format Summary String.vi"/>
			<Item Name="FT_Close_Device.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Close_Device.vi"/>
			<Item Name="FT_Get_Com_Port.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Get_Com_Port.vi"/>
			<Item Name="FT_Open_Device.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Open_Device.vi"/>
			<Item Name="FT_Read_Byte_Data.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Read_Byte_Data.vi"/>
			<Item Name="FT_Reset_Device.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Reset_Device.vi"/>
			<Item Name="FT_Set_Baud_Rate.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Set_Baud_Rate.vi"/>
			<Item Name="FT_Set_Bit_Mode.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Set_Bit_Mode.vi"/>
			<Item Name="FT_Set_Data_Characteristics.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Set_Data_Characteristics.vi"/>
			<Item Name="FT_Write_Byte_Data.vi" Type="VI" URL="../Hardware/Denkovi Relay 8ch/D2XX_Functions_7.0/FT_Write_Byte_Data.vi"/>
			<Item Name="FTD2XX.dll" Type="Document" URL="FTD2XX.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Hardware Globals.vi" Type="VI" URL="../Hardware/Hardware Globals.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Leak Test.vi" Type="VI" URL="../Main/Leak Test.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="Main Globals.vi" Type="VI" URL="../Main/Main Globals.vi"/>
			<Item Name="Main Refs.ctl" Type="VI" URL="../Main/Main Refs.ctl"/>
			<Item Name="Main Status Logger.vi" Type="VI" URL="../Main/Main Status Logger.vi"/>
			<Item Name="Mot Stage Mngr.ctl" Type="VI" URL="../Hardware/Mot Stage Mngr.ctl"/>
			<Item Name="NFC - Read SN.vi" Type="VI" URL="../Hardware/NFC reader/NFC - Read SN.vi"/>
			<Item Name="NFC Mngr.ctl" Type="VI" URL="../Hardware/NFC Mngr.ctl"/>
			<Item Name="NFC Mngr.vi" Type="VI" URL="../Hardware/NFC Mngr.vi"/>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Password Popup.vi" Type="VI" URL="../Main/Password Popup.vi"/>
			<Item Name="Pressure Output.ctl" Type="VI" URL="../Main/Pressure Output.ctl"/>
			<Item Name="Pressure Point.ctl" Type="VI" URL="../Main/Pressure Point.ctl"/>
			<Item Name="Process Mngr.ctl" Type="VI" URL="../Main/Process Mngr.ctl"/>
			<Item Name="Process State.ctl" Type="VI" URL="../Main/Process State.ctl"/>
			<Item Name="Pump Address.ctl" Type="VI" URL="../Hardware/Tecan/Pump Address.ctl"/>
			<Item Name="Pump Config.ctl" Type="VI" URL="../Hardware/Tecan/Pump Config.ctl"/>
			<Item Name="Pump Control.ctl" Type="VI" URL="../Hardware/Tecan/Pump Control.ctl"/>
			<Item Name="Pump Direction.ctl" Type="VI" URL="../Hardware/Tecan/Pump Direction.ctl"/>
			<Item Name="Pump Port.ctl" Type="VI" URL="../Main/Pump Port.ctl"/>
			<Item Name="Pump Script Step.ctl" Type="VI" URL="../Main/Pump Script Step.ctl"/>
			<Item Name="Results.ctl" Type="VI" URL="../Main/Results.ctl"/>
			<Item Name="Run Script.vi" Type="VI" URL="../Main/Run Script.vi"/>
			<Item Name="Script Mngr Action.ctl" Type="VI" URL="../Main/Script Mngr Action.ctl"/>
			<Item Name="Script Mngr Script choice.ctl" Type="VI" URL="../Main/Script Mngr Script choice.ctl"/>
			<Item Name="Script Step.ctl" Type="VI" URL="../Main/Script Step.ctl"/>
			<Item Name="status update.ctl" Type="VI" URL="../Main/status update.ctl"/>
			<Item Name="Tecan Send Command.vi" Type="VI" URL="../Hardware/Tecan/Tecan Send Command.vi"/>
			<Item Name="Tecan Set Valve.vi" Type="VI" URL="../Hardware/Tecan/Tecan Set Valve.vi"/>
			<Item Name="Tecan Start.vi" Type="VI" URL="../Hardware/Tecan/Tecan Start.vi"/>
			<Item Name="Test Leak Rate.vi" Type="VI" URL="../Main/Test Leak Rate.vi"/>
			<Item Name="Time elapsed.ctl" Type="VI" URL="../Main/Time elapsed.ctl"/>
			<Item Name="Time Left Calc.vi" Type="VI" URL="../Main/Time Left Calc.vi"/>
			<Item Name="Tricon Mngr.ctl" Type="VI" URL="../Hardware/Tricon Mngr.ctl"/>
			<Item Name="Tricon Wait until Finished.vi" Type="VI" URL="../Hardware/Tecan/Tricon Wait until Finished.vi"/>
			<Item Name="Turbo Process Mngr.vi" Type="VI" URL="../Main/Turbo Process Mngr.vi"/>
			<Item Name="Update 1 Cart Status.vi" Type="VI" URL="../Main/Update 1 Cart Status.vi"/>
			<Item Name="Update Cart Status.vi" Type="VI" URL="../Main/Update Cart Status.vi"/>
			<Item Name="Update Single Cart.ctl" Type="VI" URL="../Main/Update Single Cart.ctl"/>
			<Item Name="Vacuum Level Test.vi" Type="VI" URL="../Main/Vacuum Level Test.vi"/>
			<Item Name="Vacuum Output.ctl" Type="VI" URL="../Main/Vacuum Output.ctl"/>
			<Item Name="Vacuum Specs.ctl" Type="VI" URL="../Main/Vacuum Specs.ctl"/>
			<Item Name="Vacuum Test.ctl" Type="VI" URL="../Main/Vacuum Test.ctl"/>
			<Item Name="Valco - Close.vi" Type="VI" URL="../Hardware/Valco Valve/Valco - Close.vi"/>
			<Item Name="Valco Send Command.vi" Type="VI" URL="../Hardware/Valco Valve/Valco Send Command.vi"/>
			<Item Name="Valco Valve Config.ctl" Type="VI" URL="../Hardware/Valco Valve/Valco Valve Config.ctl"/>
			<Item Name="Valco Valve Mngr Action.ctl" Type="VI" URL="../Hardware/Valco Valve/Valco Valve Mngr Action.ctl"/>
			<Item Name="Valco Valve Mngr.vi" Type="VI" URL="../Hardware/Valco Valve Mngr.vi"/>
			<Item Name="Valve selector.ctl" Type="VI" URL="../Hardware/Tecan/Valve selector.ctl"/>
			<Item Name="Velocity Units.ctl" Type="VI" URL="../Hardware/Tecan/Velocity Units.ctl"/>
			<Item Name="Wash Step.ctl" Type="VI" URL="../Main/Wash Step.ctl"/>
			<Item Name="Wells.ctl" Type="VI" URL="../Lib/Time/Wells.ctl"/>
			<Item Name="Write Data.vi" Type="VI" URL="../File/Write Data.vi"/>
			<Item Name="Zaber A Series.lvlib" Type="Library" URL="../Hardware/Zaber/Zaber A Series.lvlib"/>
			<Item Name="Zaber Controls.ctl" Type="VI" URL="../Main/Zaber Controls.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Thermal Wash Fixture" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{ECE2CCE3-A94B-4B05-A6D3-5B0D0966DCFA}</Property>
				<Property Name="App_INI_GUID" Type="Str">{CDA6266E-3FA5-475B-961E-E323C87DF765}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{5F01EDF9-4A35-43E1-BF38-C28BA8EF78FF}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Thermal Wash Fixture</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{FDCDB119-5545-4221-AC6D-7513A6C3674A}</Property>
				<Property Name="Bld_version.build" Type="Int">50</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">TW Fixture GUI 1_2_3.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../build/TW Fixture GUI 1_2_3.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../build/dll</Property>
				<Property Name="Destination[2].destName" Type="Str">Config</Property>
				<Property Name="Destination[2].path" Type="Path">../build/Config</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[3].destName" Type="Str">Scripts</Property>
				<Property Name="Destination[3].path" Type="Path">../build/Scripts</Property>
				<Property Name="Destination[3].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[4].destName" Type="Str">Protocols</Property>
				<Property Name="Destination[4].path" Type="Path">../build/Protocols</Property>
				<Property Name="Destination[4].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[5].destName" Type="Str">Data</Property>
				<Property Name="Destination[5].path" Type="Path">../build/Data</Property>
				<Property Name="Destination[5].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[6].destName" Type="Str">Python</Property>
				<Property Name="Destination[6].path" Type="Path">../build/Python</Property>
				<Property Name="Destination[6].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="Source[0].itemID" Type="Str">{8ABE398B-4CF6-475D-B957-ECFE23D03856}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/Protocols/ThermalWash 90min</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/Protocols/zTest Recipe Full Demo (H2O)</Property>
				<Property Name="Source[12].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[12].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[12].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">6</Property>
				<Property Name="Source[12].itemID" Type="Ref">/My Computer/Python</Property>
				<Property Name="Source[12].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[12].type" Type="Str">Container</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Config</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">5</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Data</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[4].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[4].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Protocols</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="Source[5].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[5].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[5].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Scripts</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Container</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Config/Config.ini</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">5</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Data/ProteinSimple.png</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/Protocols/ThermalWash 45min</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Protocols/ThermalWash 60min</Property>
				<Property Name="SourceCount" Type="Int">13</Property>
				<Property Name="TgtF_companyName" Type="Str">ProteinSimple, Bio-Techne</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Thermal Wash Fixture</Property>
				<Property Name="TgtF_internalName" Type="Str">Thermal Wash Fixture</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2019 ProteinSimple, Bio-Techne</Property>
				<Property Name="TgtF_productName" Type="Str">Thermal Wash Fixture</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{48132B5A-D45B-4044-9074-BE16A5D5F942}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">TW Fixture GUI 1_2_3.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Thermal Wash Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Thermal Wash UI</Property>
				<Property Name="Destination[0].parent" Type="Str">{624309A2-B0CB-4149-B964-A0FF8B968B6A}</Property>
				<Property Name="Destination[0].tag" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">Config</Property>
				<Property Name="Destination[1].parent" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Destination[1].tag" Type="Str">{E7535FED-3E8F-4A79-AF70-310E972507C6}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">Logs</Property>
				<Property Name="Destination[2].parent" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Destination[2].tag" Type="Str">{5A1FCB33-9766-4968-BDA3-2C4F61732BE9}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="Destination[3].name" Type="Str">Protocols</Property>
				<Property Name="Destination[3].parent" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Destination[3].tag" Type="Str">{CE55C865-F19C-41A1-A779-B8B7C17DFD6A}</Property>
				<Property Name="Destination[3].type" Type="Str">userFolder</Property>
				<Property Name="Destination[4].name" Type="Str">Scripts</Property>
				<Property Name="Destination[4].parent" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Destination[4].tag" Type="Str">{E01EF360-1E1F-4101-8FF7-03DFB5E0D6E9}</Property>
				<Property Name="Destination[4].type" Type="Str">userFolder</Property>
				<Property Name="Destination[5].name" Type="Str">Data</Property>
				<Property Name="Destination[5].parent" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Destination[5].tag" Type="Str">{5145A3E3-57B6-479F-BE76-0025A8234DE4}</Property>
				<Property Name="Destination[5].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">6</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{CB6C2533-4926-42B8-AC21-04BB9679F818}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 20.0</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{990D2361-0AD6-4071-B4CB-E32698D4FC64}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-DAQmx Runtime 20.0</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{944CC86F-BDFB-4850-878C-370B9A7FF12C}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-VISA Runtime 20.0</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[3].productID" Type="Str">{CED05116-2329-4D0D-92CA-CEC520182EB0}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI LabVIEW Runtime 2020 f1</Property>
				<Property Name="DistPart[3].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[3].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[3].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[1].productName" Type="Str">NI Deployment Framework 2020</Property>
				<Property Name="DistPart[3].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[3].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[10].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[3].SoftDep[10].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[3].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[11].productName" Type="Str">NI TDM Streaming 19.0</Property>
				<Property Name="DistPart[3].SoftDep[11].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[3].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[2].productName" Type="Str">NI Error Reporting 2020</Property>
				<Property Name="DistPart[3].SoftDep[2].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[3].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2020</Property>
				<Property Name="DistPart[3].SoftDep[3].upgradeCode" Type="Str">{00D0B680-F876-4E42-A25F-52B65418C2A6}</Property>
				<Property Name="DistPart[3].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[4].productName" Type="Str">NI LabVIEW Runtime 2020 Non-English Support.</Property>
				<Property Name="DistPart[3].SoftDep[4].upgradeCode" Type="Str">{61FCC73D-8092-457D-8905-27C0060D88E1}</Property>
				<Property Name="DistPart[3].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[5].productName" Type="Str">NI Logos 20.0</Property>
				<Property Name="DistPart[3].SoftDep[5].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[3].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2020</Property>
				<Property Name="DistPart[3].SoftDep[6].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[3].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[7].productName" Type="Str">NI mDNS Responder 19.0</Property>
				<Property Name="DistPart[3].SoftDep[7].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[3].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[3].SoftDep[8].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[3].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[3].SoftDep[9].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[3].SoftDep[9].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[3].SoftDepCount" Type="Int">12</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{D84FC73F-D1E0-4C05-A30C-DB882CD1ABD8}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[4].productID" Type="Str">{AFDB5C72-F85F-4F01-8C7F-D61AA4756516}</Property>
				<Property Name="DistPart[4].productName" Type="Str">NI-DAQmx Runtime with Configuration Support 20.0</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{9856368A-ED47-4944-87BE-8EF3472AE39B}</Property>
				<Property Name="DistPartCount" Type="Int">5</Property>
				<Property Name="INST_author" Type="Str">ProteinSimple, Bio-Techne</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Thermal Wash Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="INST_installerName" Type="Str">setup.exe</Property>
				<Property Name="INST_productName" Type="Str">Thermal Wash Fixture_1_2_3</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.9</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">20008014</Property>
				<Property Name="MSI_arpCompany" Type="Str">ProteinSimple, Bio-Techne</Property>
				<Property Name="MSI_distID" Type="Str">{EDAF90C0-11C4-4586-A6C5-CEC19C2885DB}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{953BBF7E-DC43-43E4-8685-4770F6F1E7DF}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{C2CF3240-29EF-4F0B-B39F-E052DEB7EDEE}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">TW Fixture GUI 1_2_3.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">TW Fixture GUI</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{48132B5A-D45B-4044-9074-BE16A5D5F942}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Thermal Wash Fixture</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Thermal Wash Fixture</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{E7535FED-3E8F-4A79-AF70-310E972507C6}</Property>
				<Property Name="Source[1].name" Type="Str">Config.ini</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Config/Config.ini</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="Source[2].dest" Type="Str">{E01EF360-1E1F-4101-8FF7-03DFB5E0D6E9}</Property>
				<Property Name="Source[2].name" Type="Str">Rinse Well X</Property>
				<Property Name="Source[2].tag" Type="Ref">/My Computer/Scripts/Rinse Well X</Property>
				<Property Name="Source[2].type" Type="Str">File</Property>
				<Property Name="Source[3].dest" Type="Str">{E01EF360-1E1F-4101-8FF7-03DFB5E0D6E9}</Property>
				<Property Name="Source[3].name" Type="Str">Fill Well_X Reagent_X</Property>
				<Property Name="Source[3].tag" Type="Ref">/My Computer/Scripts/Fill Well_X Reagent_X</Property>
				<Property Name="Source[3].type" Type="Str">File</Property>
				<Property Name="Source[4].dest" Type="Str">{E01EF360-1E1F-4101-8FF7-03DFB5E0D6E9}</Property>
				<Property Name="Source[4].name" Type="Str">Move to TW</Property>
				<Property Name="Source[4].tag" Type="Ref">/My Computer/Scripts/Move to TW</Property>
				<Property Name="Source[4].type" Type="Str">File</Property>
				<Property Name="Source[5].dest" Type="Str">{E01EF360-1E1F-4101-8FF7-03DFB5E0D6E9}</Property>
				<Property Name="Source[5].name" Type="Str">Prime Input Lines</Property>
				<Property Name="Source[5].tag" Type="Ref">/My Computer/Scripts/Prime Input Lines</Property>
				<Property Name="Source[5].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">6</Property>
			</Item>
		</Item>
	</Item>
</Project>
