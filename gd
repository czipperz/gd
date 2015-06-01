#!/bin/bash
printf "\033[0;37mFiles: "$(if [ $# == 0 ]; then echo '*'; else echo "$@"; fi)"\033[0m\n"
git diff $@ | cat \
	| perl -pe 's/^(\+{3}|\-{3}).*\n//' \
	| perl -pe 's/^\-(.*)/\033[0;31m<- $1\033[0m/' \
	| perl -pe 's/^\+(.*)/\033[0;36m-> $1\033[0m/' \
	| perl -pe 's/^(\@{2}.*?\@{2})/\033[0;37m$1\033[0m/' \
	| perl -pe 's/^diff --git a\/(.*?) b\/(.*)/\n\033[0;37mFile: $1/' \
	| perl -pe 's/^([^\s+-].*|\@{2}.*)/\033[0;37m$1\033[0m/' \
	| perl -pe 's/^(\s)(.+)/==$1$2/'
