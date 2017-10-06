#!/usr/bin/env bash

ldapsearch -H {{ server_uri }} -D {{ bind_dn }} -b {{ base_dn }} -w {{ bind_pw }} | awk '/uidNumber: / {print $2}' | sort | tail -n 1