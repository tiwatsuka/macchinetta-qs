#! /bin/bash
#
# Macchinetta Quick Start ver 1.3.0 2016.10.31
# 
# Usage:
#   macchinetta-qs groupId artifactId version
#
# Description:
#   A small script for making projects
#

USAGE='Usage: macchinetta-qs groupId artifactId version'

if [ $# -ne 3 ]; then
    echo "Error: Wrong number of arguments" >&2
    echo "$USAGE" >&2
    exit 1
fi

mvn archetype:generate -B -DarchetypeCatalog=http://repo.terasoluna.org/nexus/content/repositories/terasoluna-gfw-releases -DarchetypeGroupId=org.terasoluna.gfw.blank -DarchetypeArtifactId=terasoluna-gfw-multi-web-blank-mybatis3-archetype -DarchetypeVersion=5.2.0.RELEASE -DgroupId=$1 -DartifactId=$2 -Dversion=$3
