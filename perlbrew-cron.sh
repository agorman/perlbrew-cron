#!/bin/bash
#
# This software is copyright (c) 2013 by Andy Gorman.
#
# This is free software; you can redistribute it and/or modify it under the same
# terms as the Perl 5 programming language system itself.

COMMAND=${1:+"$@"}

PERLBREW_HOME=${PERLBREW_HOME:=$HOME/.perlbrew}

function error() {
    echo $1
    exit 1;
}

if [ -z "$COMMAND" ]; then
    error "Usage: perlbrew-cron <command>"
fi

if [ ! -f "$PERLBREW_HOME/init" ]; then
    error "no such file: $PERLBREW_HOME/init";
fi

source $"$PERLBREW_HOME/init"

if [ -z $PERLBREW_ROOT ]; then
    error "unable to load PERLBREW_ROOT environment variable"
fi

BASHRC="$PERLBREW_ROOT/etc/bashrc"

if [ ! -f $BASHRC ]; then
    error "no such file $PERLBREW_ROOT/etc/bashrc"
fi

source $BASHRC

exec perlbrew exec "$@"
