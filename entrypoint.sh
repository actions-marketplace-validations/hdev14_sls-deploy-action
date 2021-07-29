#!/bin/sh -l

npm install

npx sls config credentials -p aws --key {{AWS_ACCESS_KEY_ID}} --secret {{AWS_SECRET_ACCESS_KEY}}

npx sls deploy -v

