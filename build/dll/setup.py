"""Near Field Communication (NFC) application and support library

See:
https://github.com/ProteinSimple/nfc
"""
from __future__ import print_function
from setuptools import setup, find_packages
from codecs import open
from os import path
import distutils
import distutils.command.build
import distutils.command.install_data
import os
import subprocess

APP_DIR = 'webapp'
HERE = path.abspath(path.dirname(__file__))

# Get the long description from the relevant file
with open(path.join(HERE, 'README.rst'), encoding='utf-8') as f:
    long_description = f.read()


def walk_data_files(src_path, abs_dest_root):
    save_dir = os.getcwd()
    parent_dir = path.normpath(path.join(src_path, '..'))
    src_dir = path.split(src_path)[1]
    os.chdir(parent_dir)
    file_tuples = []
    for dir_, _subdirs, files in os.walk(src_dir):
        for name in files:
            file_tuples.append((path.join(abs_dest_root, dir_),
                               [path.join(parent_dir, dir_, name)]))
    os.chdir(save_dir)
    return file_tuples


class Gulp(distutils.cmd.Command):
    description = 'run gulp'
    sub_commands = []
    user_options = []

    def initialize_options(self):
        pass

    def finalize_options(self):
        pass

    def run(self):
        webapp_dir = path.join(HERE, 'webapp')
        gulp_cmd = path.join(HERE, 'webapp', 'node_modules', '.bin', 'gulp')
        print("Running %s from %s" % (gulp_cmd, webapp_dir))
        subprocess.check_output([gulp_cmd, 'build'], cwd=webapp_dir)


class BuildJS(distutils.command.build.build):

    def run(self):
        self.run_command('gulp')
        distutils.command.build.build.run(self)


class InstallJS(distutils.command.install_data.install_data):

    def initialize_options(self):
        distutils.command.install_data.install_data.initialize_options(self)
        self.data_files.append(
            ('webapp/static/js', ['webapp/static/js/bundle.js']))


setup(
    name='nfc',
    cmdclass={
        'build': BuildJS,
        'gulp': Gulp,
        'install_data': InstallJS},
    description='NFC library and editor',
    long_description=long_description,
    url='https://github.com/ProteinSimple/nfc',
    author='Mark Kohler',
    author_email='mark.kohler@proteinsimple.com',
    license='All rights reserved',

    packages=find_packages(exclude=['contrib', 'docs', 'tests*']),
    package_data={'': ['*.html', '*.css', '*.js']},
    data_files=(
        walk_data_files('webapp/static', APP_DIR) +
        walk_data_files('webapp/crossbar', APP_DIR)),

    extras_require={
        'dev': ['setuptools_git'],
    },

    # To provide executable scripts, use entry points in preference to the
    # "scripts" keyword. Entry points provide cross-platform support and allow
    # pip to create the appropriate form of executable for the target platform.
    entry_points={
        'console_scripts': [
            'nfc-erase-tag=nfc.erase_tag:main',
            'nfc-format-tag=nfc.format_tag:main',
            'nfc-read-card=nfc.read_card:main',
            'nfc-write-test=nfc.write_test:main',
            'nfc-check-cartridge=nfc.check_cartridge:main',
        ],
    },
)
