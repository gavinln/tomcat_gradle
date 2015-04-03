#!/bin/bash

CUR_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cp $CUR_DIR/../java/simple-war/simple.war $CUR_DIR/../docker/tomcat
