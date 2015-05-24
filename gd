#!/bin/bash
git diff | cat	| perl -pe 's/^[+]/\033[0;32m+/' 				| perl -pe 's/^[-]/\033[0;31m-/'
