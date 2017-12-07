Docker phpVirtualBox
====================

# Introduction

DockerFile for phpVirtualBox (https://sourceforge.net/projects/phpvirtualbox/)

This image is based on `FROM php:7.2-apache`.

# Quick start

The easiest way to try this image is via docker compose:

```
version: '3.1'

services:
  vboxweb:
    image: andrespp/vboxweb
    volumes:
      - ./config.php-example:/var/www/html/config.php:ro
    ports:
     - "80:80"
```

Make sure `config.php-example` is readable: `chmod 644 config.php-example.php`

# Avilable variables

Todo 
