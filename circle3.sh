#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 3rd Circle of Hell. The place of Gluttony."
echo ""

CIRCLE3_DESCRIPTION="\nVirgil says, \"Step cautiously into the Third Circle. A realm of endless rain, cold and heavy, mingled with foul slush underfoot. The sky is dark, forever pouring its lament. Grotesque figures lie in the muck, their forms barely distinguishable.\" \n\nVirgil adds, \"From here we can go to the following directions: north, east.\"\n"
CIRCLE3_CLUE="\nVirgil points out, \"Over there, hidden among the rocks, is a parchment. It reads, '[Four letters, begins with H, ends with E.]' Remember this; it may guide us out of this inferno.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE3_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE3_CLUE"
    ;;
  north)
    ./circle2.sh
    exit
    ;;
  east)
    ./circle4.sh
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
