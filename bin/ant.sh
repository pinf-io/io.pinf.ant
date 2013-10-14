#!/bin/sh

# @credit http://stackoverflow.com/a/246128/330439
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
BASE_PATH="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


export CLASSPATH=$BASE_PATH/../node_modules/maven-ant-tasks/maven-ant-tasks-2.1.3.jar:$CLASSPATH

$BASE_PATH/../.sm/bin/ant $@
