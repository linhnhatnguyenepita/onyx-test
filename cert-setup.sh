#!/bin/sh
set -eu

CA_DIR=/usr/local/share/ca-certificates
mkdir -p "$CA_DIR"

download() {
  name="$1"
  url="$2"
  curl --fail --silent --show-error --location "$url" --output "$CA_DIR/$name.crt"
}

download gehealthcarerootca1 http://aia.ge-healthcare.net/gehealthcarerootca1.pem
download gehealthcarerootca2 http://aia.ge-healthcare.net/gehealthcarerootca2.pem
download gehealthcareintca1 http://aia.ge-healthcare.net/gehealthcareintca1.pem
download gehealthcareintca1g2 http://aia.ge-healthcare.net/GEHealthCareIntCA1G2.pem
download gehealthcareintca2 http://aia.ge-healthcare.net/gehealthcareintca2.pem
download gehealthcareintca2g2 http://aia.ge-healthcare.net/GEHealthCareIntCA2G2.pem
download gehealthcareserverca1 http://aia.ge-healthcare.net/gehealthcareserverca1.pem
download gehealthcareserverca1g2 http://aia.ge-healthcare.net/GEHealthCareServerCA1G2.pem
download gehealthcareserverca2 http://aia.ge-healthcare.net/gehealthcareserverca2.pem
download gehealthcareserverca2g2 http://aia.ge-healthcare.net/GEHealthCareServerCA2G2.pem

update-ca-certificates