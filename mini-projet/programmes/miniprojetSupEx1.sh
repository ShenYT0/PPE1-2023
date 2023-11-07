#!/bin/bash
grep -oE '\w+' $1 | tr '[:upper:]' '[:lower:]'
