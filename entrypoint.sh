#!/bin/sh -l

AWS_ACCESS_KEY_ID="$1"
AWS_SECRET_ACCESS_KEY="$2"
STAGE="$3"
REGION="$4"

npm install

npx sls config credentials -p aws --key $AWS_ACCESS_KEY_ID --secret $AWS_SECRET_ACCESS_KEY

npx sls deploy --stage $STAGE --region $REGION -v

