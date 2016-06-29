#!/bin/sh

ps auxw | grep node | grep -v grep > /dev/null

if [ $? != 0 ]
then
        service nodes start > /dev/null
fi
