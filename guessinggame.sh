# ! /usr/bin shell
count_total_files(){
    total_files=$(ls -l | wc -l)
    let total_files=total_files-1
}

count_total_files
while [[ true ]]
do
    echo "Guess number of files in current directory."
    read responce
    if [[ $responce -gt $total_files ]]
    then
    echo "Your Guess is Too Big"
    elif [[ $responce -lt $total_files ]]
    then
    echo "Your Guess is Too Small"
    else
    echo "Congratulations! your Guess is Correct"
    break
    fi
done