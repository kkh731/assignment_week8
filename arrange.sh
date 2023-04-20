
for file in files/*.txt; do
    first_letter=$(basename "$file" .txt | cut -c1)
    
    if [[ "$first_letter" =~ [A-Z] ]]; then
        first_letter=${first_letter,,}
    fi

    mv "$file" "$first_letter"
done