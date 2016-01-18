# osx-screenshot-to-ftp
Bash script for OS X to move screenshot to FTP.

## How to use
1. Run Atomator
2. Create new "Folder Action"
3. Choose Desctop folder
4. Add "Find Finder Items" action
5. Config action: "Name" › "Contains" › "Screen Shot"
6. Add "Run Shell Script" action
7. Config "Shell": /bin/sh
8. Config "Pass input": "as arguments"
9. Paste script from "script.sh"
10. Done!

Now each new screenshot that you make by keyboard shortcut will move to FTP and URL to him will be placed in your clip board.

Additionally you can add "Display Notification" action.
