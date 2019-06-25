#!/bin/bash

zip -r deployment.zip $2

aws lambda update-function-code --function-name $1 --zip-file fileb://./deployment.zip

rm deployment.zip
