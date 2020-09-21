#!/bin/bash
TEMP="$HOME/.syntax"
FINAL="$HOME/README.md"
CHECK="$HOME/.temp"

CODE="s/CODE/\`/g"
CBLOCK="s/CBLOCK/\`\`\`/g"
BREAK="s/BREAK/\<hr\/\>/g"
BOLD="s/BOLD/\*\*/g"
ITALIC="s/ITALIC/\*/g"

REGEXES=($CODE $CBLOCK $BREAK $BOLD $ITALIC)
#REGEXES=( $REGEXES )

#if [ -f $TEMP]; then rm $TEMP; fi
for REG in ${REGEXES[@]}
do
	perl -pe $REG $CHECK >> $TEMP
	cat $TEMP > $FINAL
	CHECK="$FINAL"
	rm $TEMP
done

