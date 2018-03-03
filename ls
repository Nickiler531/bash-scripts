#!/bin/bash
#This script prints ls in capital letters
var=$(ls)
echo ${var} | tr '[:lower:]' '[:upper:]'
