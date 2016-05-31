#!/bin/bash

main()
{
clear

    read -p "Please Press 1 to Install or 2 to Uninstall --> : " INPUT
    if [[ "$INPUT" == 1 ]]; then
            brew install dialog
	          sudo cp ./nemo /bin/
	          sudo chown root:root /bin/nemo
	          sudo chmod +x /bin/nemo
    elif [[ "$INPUT" == 2 ]]; then
          	sudo rm /bin/nemo
    elif [[ "$INPUT" != 1 || "$INPUT" != 2 ]] ; then
           echo "Please type 1 or 2."
           sleep 2
           main
    fi
}
main
