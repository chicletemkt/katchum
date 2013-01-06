#!/bin/bash

install_nginx() {
  add-apt-repository -y ppa:nginx/stable
  apt-get update
  apt-get -y install nginx

  cp ${modules}/nginx/nginx.conf /etc/nginx/nginx.conf
  cp ${modules}/nginx/sites-available/default /etc/nginx/sites-available/default

  mkdir /etc/nginx/defaults
  cp ${modules}/nginx/defaults/assets.conf /etc/nginx/defaults/assets.conf
  cp ${modules}/nginx/defaults/cache-busting.conf /etc/nginx/defaults/cache-busting.conf
  cp ${modules}/nginx/defaults/cross-domain-ajax.conf /etc/nginx/defaults/cross-domain-ajax.conf
  cp ${modules}/nginx/defaults/cross-domain-fonts.conf /etc/nginx/defaults/cross-domain-fonts.conf
  cp ${modules}/nginx/defaults/no-transform.conf /etc/nginx/defaults/no-transform.conf
  cp ${modules}/nginx/defaults/php.conf /etc/nginx/defaults/php.conf
  cp ${modules}/nginx/defaults/protect-system-files.conf /etc/nginx/defaults/protect-system-files.conf
  cp ${modules}/nginx/defaults/ruby.conf /etc/nginx/defaults/ruby.conf
  cp ${modules}/nginx/defaults/x-ua-compatible.conf /etc/nginx/defaults/x-ua-compatible.conf

  mkdir /var/log/nginx
  mkdir /usr/share/nginx/logs
}