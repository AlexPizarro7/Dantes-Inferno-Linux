#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 4th Circle of Hell. The place of Avarice."
echo ""

CIRCLE4_DESCRIPTION="\nVirgil says, \"The 4th Circle, a realm of eternal discord. Huge boulders crash against one another, propelled by wretched souls who endlessly push them. The ground quakes with their ceaseless toil.\" \n\nVirgil adds, \"From here we can go to the following directions: north, east, west\"\n"
CIRCLE4_CLUE="\nVirgil looks around, \"Our search here proves fruitless. The Fourth Circle hides no secrets for us today. Let us move on and continue our quest.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE4_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE4_CLUE"
    ;;
  north)
    ./circle1.sh
    exit
    ;;
  east)
    ./circle5.sh
    exit
    ;;
  west)
    ./circle3.sh
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
