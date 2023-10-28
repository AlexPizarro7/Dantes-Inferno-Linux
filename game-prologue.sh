#!/bin/bash

echo "\"Midway upon the journey of our life, I found myself within a forest dark, for the straightforward path had been lost.\""
echo ""
echo "You are about to embark on a very dangerous journey. Once you enter the hellish maze you will not be able to escape unless you find the correct exit command."
echo ""
echo "3 clues have been hidden amongst the circles of hell to help you determine the exit command. Explore each circle with the 'look' command, and search each circle for clues with the 'search' command."
echo ""
echo "As you explore each circle, the poet Virgil will be your guide and will remind you of what direction you may travel next based on your current location."
echo ""
echo "You now thread deeper into the dark forest, and you come across an enormous gate with the following inscription: \"Abandon all hope, ye who enter here\""
echo ""

while true; do
  read -p "Are you sure you want to continue? (y/n): " COMMAND
  case $COMMAND in

  y)
    echo ""
    ./circle1.sh
    exit
    ;;
  n)
    ./game-start.sh
    exit
    ;;
  *)
    echo "Invalid command. Try again."
    ;;

  esac
done
