#!/bin/bash -v

cd ~/dev/salt-reduce/rerun

mkdir -p /srv/salt/_runners/lib
touch /srv/salt/_runners/lib/__init__.py
mkdir -p /srv/salt/_returners/
mkdir -p /srv/salt/_modules/

cp -uv conf/master.conf /etc/salt/master.d/
cp -uv rerun_runner.py /srv/salt/_runners
cp -uv mapper.py /srv/salt/_runners/lib
cp -uv rerun_return.py /srv/salt/_returners
cp -uv mapit.py /srv/salt/_modules

salt \* saltutil.sync_returners
salt \* saltutil.sync_modules

