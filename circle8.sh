#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 8th Circle of Hell. The place of Fraud."
echo ""

CIRCLE8_DESCRIPTION="\nVirgil says, \"Behold the Eighth Circle, a labyrinth of ditches filled with a myriad of torments. Deceptive lights flicker, casting eerie shadows that twist and turn, mirroring the deceit of its inhabitants.\" \n\nVirgil adds, \"From here we can go to the following directions: west, south, east.\"\n"
CIRCLE8_CLUE="\nVirgil looks around, \"'It seems this place, so rife with deception, hides its secrets well today. No clue unveils itself to us here. We must press onward.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE8_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE8_CLUE"
    ;;
  south)
    ./circle1.sh
    exit
    ;;
  east)
    ./circle7.sh
    exit
    ;;
  west)
    ./circle9.sh
    exit
    ;;
  hope)
    ./game-epilogue.sh
    exit
    ;;
  *)
    echo -e "\nVirgil shakes his head, \"That is not a valid option.\"\n"
    ;;

  esac
done
