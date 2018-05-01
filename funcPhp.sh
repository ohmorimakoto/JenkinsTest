#!/bin/sh

MSG=`php phpTest.php`
echo "${MSG}"

cp bundle_info_android_157.sql /Users/oomorimakoto/Library/WebServer/tennis/public/asset_bundle/exportTestSpace
