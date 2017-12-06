Docker phpVirtualBox
====================

# Introduction

DockerFile for phpVirtualBox (https://sourceforge.net/projects/phpvirtualbox/)

This image is based on `FROM php:5.6-apache`.

# Quick start

The easiest way to try this image is via docker compose:

```
services:
  vboxweb:
    image: andrespp/vboxweb
    volumes:
      - ./config.php-example:/var/www/html/config.php:ro
    ports:
     - "80:80"
```

# Avilable variables

Todo 
