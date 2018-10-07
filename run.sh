#!/bin/sh
echo "get Google LLC networks by whois.arin.net"
curl -s 'http://whois.arin.net/rest/orgs;name=Google%20LLC' | xsltproc templateNets.xsl "/dev/stdin" | bash
