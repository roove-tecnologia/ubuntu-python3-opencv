#!/usr/bin/env bash


curl http://ftp.br.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb --output ttf-mscorefonts-installer_3.6_all.deb
gdebi --option=APT::Get::force-yes=1,APT::Get::Assume-Yes=1 -n ttf-mscorefonts-installer_3.6_all.deb
fc-cache
fc-match Arial

curl http://download.gna.org/wkhtmltopdf/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz --output wkhtmltox-0.12.4.tar.xz

tar xf wkhtmltox-0.12.4.tar.xz
cp -r wkhtmltox/* /usr/local/