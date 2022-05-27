unused=$(pacman -Qdtq)
normal=$(tput sgr0)
bold=$(tput bold)
echo "${bold}info:${normal} checking for unused dependencies.."
if [[ -n $unused ]]; then
    echo "${bold}info:${normal} found following unused dependencies:"
    echo "$unused"
    read -p "Uninstall these dependencies? (y/N) " yn
    case $yn in
        [yY] ) echo "${bold}info:${normal} uninstalling packages..";
            sudo pacman -Rsn $(pacman -Qdtq);
            break;;
        [nN] ) echo "Ok, cancelled.";
            exit;;
        * ) echo "Cancelled.";
            exit;;
    esac
else
    echo "${bold}info:${normal} no unused dependencies found"
fi

