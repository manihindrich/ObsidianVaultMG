# Obsidian Vault Menu Generator

This project includes a Bash script for generating a menu on a Linux desktop panel that allows quick and elegant access to various [Obsidian](https://obsidian.md/) vaults. The script automates the process of creating executable files for individual vaults based on a list in a text file.

The usefulness of the generator depends on how you use Obsidian and, primarily, the number of vaults you manage. If, like me, you have multiple vaults for various personal and work-related matters, it can be beneficial to open a specific vault as needed rather than defaulting to the most recently opened one.

> Prefer to automate repetitive tasks whenever possible. 
> Vaults in a second brain system evolve organically as needed. 
> Tools and processes support rather than define the workflow.

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
   - **CREATE |** Create the `vault_names.txt` file in the root directory of the project. 
   - This file should contain one vault name per line. 
   - *Empty lines have no effect.*

2. **Running the `generate_menu.sh` Script**:
   - The script operates in `ObsidianVaultMG` directory.
   - Remove content of `vaults/` directory.
   - Reads vault names from the `vault_names.txt` file.
   - For each name, it creates a new executable file in the `vaults/` directory based on the `vault_template.sh` template.
   - Each executable file will contain the vault name, which you can then use to open the vault.
   - **UPDATE |** If you make changes in vaults, just update list of vaults names `vault_names.txt` and run `generate_menu.sh` again.

3. **Scripts Menu**:
   - I have good experience with the menu applet for starting scripts [Scripts Menu](https://cinnamon-spices.linuxmint.com/applets/view/185). But it is quite clear that there are many similar solutions for all systems.
   - create a new applet via the applet menu
   - right click on the created applet to configure
   - script directory - select `vaults/` subdirectory in project directory
   - **OPTIONAL |** custom icon `on`, icon - select `icon.ico` in the root directory of the project; show title `off`, but if you fill in the title before turning it off, it will be displayed when the mouse is hovered over

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
   xdg-open "obsidian://open?vault=${vault}"
   ```


## Requirements

- Bash shell
- Obsidian
- Scripts Menu (or something like that)

## Contributing

If you would like to contribute to this project, you can submit a pull request or create an issue for any problems or suggestions.

## License

This project is licensed under the MIT License.

---

This `README.md` should provide clear and comprehensive information about how the project works and how to use it. Let me know if there are any specific adjustments or additional details you’d like to include!