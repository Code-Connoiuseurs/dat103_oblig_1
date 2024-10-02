#!/bin/bash
TASK1_BASH_PATH="./task1-bash"
CAST_TXT_FILEPATH="./task1-bash/cast.txt"
WOMEN_TXT_FILEPATH="./task1-bash/women.txt"
MEN_TXT_FILEPATH="./task1-bash/men.txt"

# Oppgave 1
if [ -d $TASK1_BASH_PATH ]; then
        rm -r $TASK1_BASH_PATH
fi

mkdir $TASK1_BASH_PATH

# Oppgave 2
cp ./jurassicParkCast.txt $CAST_TXT_FILEPATH

# Oppgave 3
ls $TASK1_BASH_PATH

# Oppgave 4
echo "-------------------------------------------------------------"

# Oppgave 5
tail -n +2 $CAST_TXT_FILEPATH | sort -t, -k5,5n

# Oppgave 6
echo "-------------------------------------------------------------"

# Oppgave 7
#grep "^L" ./task1-bash/cast.txt
awk -F, '$1 ~ /^L/ || $2 ~ /^L/ || $3 ~ /^L/' $CAST_TXT_FILEPATH
# Oppgave 8
echo "-------------------------------------------------------------"

# Oppgave 9
awk -F, '$4 ~ /^F/' ./task1-bash/cast.txt > ./task1-bash/women.txt
cat $WOMEN_TXT_FILEPATH

# Oppgave 10
echo "-------------------------------------------------------------"
# Oppgave 11
awk -F, '$4 ~ /^M/' ./task1-bash/cast.txt > ./task1-bash/men.txt
cat $MEN_TXT_FILEPATH

# Oppgave 12
echo "-------------------------------------------------------------"

# Oppgave 13
for file in ./task1-bash/*.txt; do
    baseName="${file%.txt}"
    cp "$file" "${baseName}-1.txt"
    cp "$file" "${baseName}-2.txt"
done
# Oppgave 14
wc ./task1-bash/*