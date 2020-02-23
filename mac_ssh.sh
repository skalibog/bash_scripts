#!/bin/bash
echo "=========================================="
echo "Set ssh id_rsa"
echo "=========================================="

cat id_rsa_macbook > ~/.ssh/id_rsa
chmod 700 ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa

echo "=========================================="
echo "Set ssh id_rsa successfully"
echo "=========================================="
