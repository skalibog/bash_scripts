#!/bin/bash

zip -r deployment.zip $2

aws lambda create-function \
           --function-name $1 \
           --zip-file fileb://./deployment.zip \
           --runtime ruby2.5 \
           --role arn:aws:iam::287947758836:role/Lambda-access \
           --handler handler


rm deployment.zip