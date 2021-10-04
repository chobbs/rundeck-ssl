#!/usr/bin/env bash

## Adding ssl support ##################################
keytool -keystore etc/keystore \
        -alias rundeckssl \
        -genkey -keyalg RSA \
        -keypass adminadmin \
        -storepass adminadmin \
        -dname "C=us, S=ca, OU= rundeck, L=bayarea, O=cst, CN=rundeck"

cp etc/keystore etc/truststore

########################################################
