#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 9th Circle of Hell. The place of Treachery."
echo ""

CIRCLE9_DESCRIPTION="\nVirgil says, \"Stand at the edge of the Ninth Circle, where all is frigid and desolate. A vast frozen lake stretches before us, its icy surface imprisoning traitors in its cold grasp. The chill here is not just of temperature, but of the deepest betrayals ever known.\" \n\nVirgil adds, \"From here we can go to the following directions: south, east.\"\n"
CIRCLE9_CLUE="\nVirgil looks around, \"This frozen wasteland keeps its mysteries well guarded today. No hint or clue offers itself from the depths of treachery. We must continue our quest with the knowledge we've gathered.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE9_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE9_CLUE"
    ;;
  south)
    ./circle2.sh
    exit
    ;;
  east)
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
