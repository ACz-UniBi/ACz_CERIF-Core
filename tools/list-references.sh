#!/bin/sh

# List references from *.md files to other *.md files, their frequencies and warn on those where the target is missing.
# To be run from the main directory of the CERIF-Core or a CERIF module repo.
#
# Parameters:
# - directories where the definitions could be also found.

(
find . "$@" -name \*.md | \
xargs grep -o -h -e '([-:./A-Z0-9a-z_]*\.md)' | \
sed -e 's/(\.\.*\//.\//' -e 's/)$//' \
    -e 's/(https:\/\/github.com\/[-A-Za-z0-9_.]*\/[-A-Za-z0-9_.]*\/blob\/[-A-Za-z0-9_.]*\//.\//' \
    -e '/\/XXX\.md/d' -e '/\/TEMPLATE_.*/d'
find . "$@" -name \*.puml | \
xargs grep -oh -e 'class "[A-Za-z0-9_]*"' -e 'datatype *( *"[A-Za-z0-9_]*" *)' | \
sed -e 's/^class "/.\/entities\//' -e 's/"$/.md/' \
    -e 's/^datatype( *"/.\/datatypes\//' -e 's/" *)$/.md/'
) | \
sort | uniq -c | \
while read N F ; do
  X=0 
  for D in . "$@"
  do
    if [ -f $D/$F ]
      then X=1
    fi
  done
  if [ $X == '1' ]
    then echo $N $F
    else echo $N $F - MISSING!
  fi
done

ls ./entities/*.md >${TMPDIR}/CERIF-entities-$$.txt
sed <README.md -e '1,/## Overview/d' -e '/^## /,$d' \
| grep -oh -e '\(./entities/[A-Za-z0-9_]*\.md\)' \
| sort \
| join -v2 - ${TMPDIR}/CERIF-entities-$$.txt >${TMPDIR}/CERIF-entities-undescribed-$$.txt
if [ -s ${TMPDIR}/CERIF-entities-undescribed-$$.txt ] ; then
	echo
	echo 'Entities missing from the Overview section in the README.md file:'
	cat ${TMPDIR}/CERIF-entities-undescribed-$$.txt
fi

