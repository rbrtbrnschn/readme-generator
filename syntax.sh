#!/bin/bash
TEMP=".syntax"
FINAL="NEW_README.md"
CHECK=".temp"

CODE="s/CODE/\`/g"
CBLOCK="s/CBLOCK/\n\`\`\`\n/g"
CBLOCKLANG="s/CBLOCKLANG/\`\`\`/g"
BREAK="s/BREAK/\<hr\/\>/g"
BOLD="s/BOLD/\*\*/g"
ITALIC="s/ITALIC/\*/g"

REGEXES=($CODE $CBLOCK $CBLOCKLANG $BREAK $BOLD $ITALIC)
#REGEXES=( $REGEXES )

if [ -f $FILE ]; then rm $FILE; fi
for REG in ${REGEXES[@]}
do
	echo $REG
	perl -pe $REG $CHECK >> $TEMP
	cat $TEMP > $FINAL
	CHECK="$FINAL"
	rm $TEMP
done

rm $TEMP
