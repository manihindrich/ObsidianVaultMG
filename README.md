# Obsidian Vault Menu Generator

This project includes a Bash script for generating a menu on a Linux desktop panel that allows quick and elegant access to various Obsidian vaults. The script automates the process of creating executable files for individual vaults based on a list in a text file.

## Project Contents

- `generate_menu.sh`: The main Bash script for generating executable files for individual vaults.
- `vault_template.sh`: A template for vault executable files.
- `vault_names.txt`: A list of vault names that the script uses.
- `vaults/`: Directory for vault executable files.
- `vaults/_last.sh`: Open last opened vault. Obsidian default behavior.
- `icon.ico`: Default icon for the menu.
- `.gitignore`: Ignore build, temp, and config files.
- `README.md`: This documentation file.
- `LICENSE`: License file.


## How It Works

1. **Setup**:
   - Create the `vault_names.txt` file in the root directory of the project. 
   - This file should contain one vault name per line. 
   - Avoid empty lines.

2. **Running the `generate_menu.sh` Script**:
   - The script reads vault names from the `vault_names.txt` file.
   - For each name, it creates a new executable file in the `OVMG/vaults/` directory based on the `vault_template.sh` template.
   - Each executable file will contain the vault name, which you can then use to open the vault.
   - If you make changes in vaults, just remove content of `OVMG/vaults/` directory and run `generate_menu.sh` again.

3. **Scripts Menu**:
   - I have good experience with the menu applet for starting scripts https://cinnamon-spices.linuxmint.com/applets/view/185 I recommend using it or finding something similar.
   - create a new applet via the applet menu
   - right click on the created applet to configure
   - script directory - select `vaults` subdirectory in project directory
   - *optional* - custom icon `on`, icon - select `icon.ico` in the root directory of the project; show title `off`, but if you fill in the title before turning it off, it will be displayed when the mouse is hovered over

3. **Usage**:
   - You can add these executable files to your desktop panel.
   - Clicking on the Obsidian icon in the panel will display a list of vaults.
   - Select the vault you wish to open, and it will open in Obsidian.

![picture of the obsidian menu](https://i.imgur.com/rX6QEl8.png)


## Examples

1. **Generating Executable Files**:
   ```bash
   ./generate_menu.sh
   ```

2. **Format of `vault_names.txt`**:
   ```
   PKM_Default
   PKM_ICT
   PKM_Psychology
   LIB_Psychology
   SharedProjectX
   
   ```

3. **Format of `vault_template.sh`**:
   ```bash
   #!/bin/bash
   obsidian "/home/$(whoami)/Documents/Vaults/${name}"
   ```

   The `vault_template.sh` script is a template that you can modify according to your needs. Ensure it is set to launch the Obsidian application with the appropriate path to the vault.

## Requirements

- Bash shell
- Obsidian
- Vaults stored in `~/Documents/Vaults/`

## Contributing

If you would like to contribute to this project, you can submit a pull request or create an issue for any problems or suggestions.

## License

This project is licensed under the MIT License.

---

This `README.md` should provide clear and comprehensive information about how the project works and how to use it. Let me know if there are any specific adjustments or additional details you’d like to include!