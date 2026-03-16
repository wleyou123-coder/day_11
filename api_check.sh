#!/bin/bash

api=$1

echo "API CHECK: $api:"
echo "HEAD"
curl -I $api

echo "GET"
curl -X GET $api

echo "TLS Info"
curl -v $api 2>&1 | grep "SSL"
