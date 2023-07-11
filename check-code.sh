#!/usr/bin/env sh

mkdir -p .cache
cd .cache
if [ ! -f checkstyle-10.12.1-all.jar ]
then
    curl -LJO "https://github.com/checkstyle/checkstyle/releases/download/checkstyle-10.12.1/checkstyle-10.12.1-all.jar"
    chmod 755 checkstyle-10.12.1-all.jar
fi
cd ..

changed_java_files=$(git diff --cached --name-only --diff-filter=ACMR | grep ".*java$" )
echo $changed_java_files

if [ ! -f checkstyle.xml ]; then
  echo "Please ensure checkstyle.xml exists!"
  exit 1
fi

java -jar .cache/checkstyle-10.12.1-all.jar -c checkstyle.xml $changed_java_files

