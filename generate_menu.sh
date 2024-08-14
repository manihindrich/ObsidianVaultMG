#!/bin/bash

# promazani adresare vaults
rm -rf vaults/*

# kontrola existence zasadnich souboru
if [ ! -f vault_names.txt ]; then
  echo "Soubor vault_names.txt neexistuje!"
  exit 1
fi

if [ ! -f vault_template.sh ]; then
  echo "Soubor vault_template.sh neexistuje!"
  exit 1
fi

# cteni radku ze souboru vault_names.txt
while IFS= read -r line; do

  # vylouceni prazdnych radku
  if [ -n "$line" ]; then

    # vytvoreni kopie z vault_template.sh
    cp vault_template.sh "vaults/${line}.sh"
    
    # content edit
    sed -i "s/\${vault}/${line}/g" "vaults/${line}.sh"

    # rights edit
    chmod +x vaults/${line}.sh

    # echo for fun
    echo "Vytvořeno: vaults/${line}.sh"
  fi
done < vault_names.txt


# vytvoreni _last.sh
cp vault_template.sh "vaults/_last.sh"
cat << EOF > vaults/_last.sh
#!/bin/bash

xdg-open "obsidian://open?"
EOF
chmod +x vaults/_last.sh