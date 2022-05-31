FILENAME="numFile"
cat numFile | tr ' ' '\n' | sort -nur | tr '\n' ' '
