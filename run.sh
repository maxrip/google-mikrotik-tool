#!/bin/bash

programs=("xsltproc" "ipcalc")
notFound=0
for prog in "${programs[@]}"; do
    if ! command -v $prog &> /dev/null; then
        echo "$prog is not installed"
	notFound=1
    fi
done

if [ $notFound -eq 1 ]; then exit ; fi

echo "get Google LLC networks by whois.arin.net"
curl -s 'http://whois.arin.net/rest/orgs;name=Google*' | xsltproc templateNets.xsl "/dev/stdin" | bash
