#!/bin/bash
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.1.1/g' package/base-files/files/bin/config_generate

# Delete default Password
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
