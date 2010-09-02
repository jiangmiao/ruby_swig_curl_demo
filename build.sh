#!/bin/sh
swig -c++ -ruby curl.i &&
ruby extconf.rb &&
make
