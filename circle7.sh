#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 7th Circle of Hell. The place of Violence."
echo ""

CIRCLE7_DESCRIPTION="\nVirgil says, \"Venture carefully into the Seventh Circle, where a river of boiling blood and fire flows. The air is thick with the scent of burning, and the scorched lands crackle underfoot\" \n\nVirgil adds, \"From here we can go to the following directions: south, west\"\n"

CIRCLE7_CLUE="\nThere is a break in the heavens and a light appears. From this brilliance, an angel descends. 'Fear not', he says. The angel hands you a parchment with a clue, it reads: ['The exit command word is the opposite of despair']\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE7_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE7_CLUE"
    ;;
  south)
    ./circle6.sh
    exit
    ;;
  west)
    ./circle8.sh
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
