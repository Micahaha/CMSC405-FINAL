languages=("C" "C++" "R" "BASH" "Go")

echo "List of Programming Languages"

for i in "${languages[@]}"
do
   echo "$i"
done

read -p 'Would you like to update a language in the list? (press U) or add a new language to the list (U or A) :' userinput

if [ $userinput == 'U' ]
then

    read -p 'Enter the language to update':'' langupdate

    if [[ ${languages[@]} =~ $langupdate ]];  then 
        read -p 'New Language to be used to Update '$langupdate'': newlang

        for i in "${!languages[@]}"; do
        if [[ "${languages[$i]}" = "${langupdate}" ]]; then
             languages[$i]="${newlang}" 
        fi
        done

    else
        echo "'$langupdate' doesn't exist in the list of programming languages."
    fi

    for i in "${languages[@]}"
    do
        echo "$i"
    done

elif [ $userinput == 'A' ]
then
    read -p 'Language to be added': newlang

    languages+=(""$newlang"")
    echo "'$newlang' has been added"

    for i in "${languages[@]}"
    do
        echo "$i"
    done

else 
    echo 'Input must be U or A.'
fi