#!/usr/bin/env bash

curl http://download.gna.org/wkhtmltopdf/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz --output wkhtmltox-0.12.4.tar.xz

tar xf wkhtmltox-0.12.4.tar.xz
cp -r wkhtmltox/* /usr/local/