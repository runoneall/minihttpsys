#!/bin/sh

truncate -s $1 data.img
e2fsck -fy data.img
resize2fs data.img
