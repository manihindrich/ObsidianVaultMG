#!/bin/bash

while IFS= read -r name; do
    cp vault_template.sh "vaults/${name}.sh"
    echo "${name}" >> "vaults/${name}.sh"
done < vault_names.txt