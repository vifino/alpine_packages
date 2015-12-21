#!/bin/sh
exec docker run --rm -v `pwd`:/repo -it alpine sh -c 'cd /repo && ./run_build.sh'
