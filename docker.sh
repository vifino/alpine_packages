#!/bin/sh
exec docker run --rm -v `pwd`:/repo -it alpine $@
