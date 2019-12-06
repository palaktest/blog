# Makefile for deploying blog.aaronbieber.com.

OPTS=-rovz
EXCLUDE=--exclude '.git*' --exclude '.*' --exclude '\#*\#' --exclude Makefile
SRC=./public/
DEST=airborne@aaronbieber.com:/var/www/blog.aaronbieber.com/htdocs/

build:
	hugo

deploy: build
	rsync $(OPTS) $(EXCLUDE) $(SRC) $(DEST)
