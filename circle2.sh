#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 2nd Circle of Hell. The place of Envy."
echo ""

CIRCLE2_DESCRIPTION="\nVirgil says, \"Behold the Second Circle. The air is thick with stormy winds, relentlessly driving wayward souls like leaves in a tempest. Their cries and lamentations form an ever-present echo.\" \n\nVirgil adds, \"From here we can go to the following directions: north, south, east.\"\n"

CIRCLE2_CLUE="\nVirgil calmly states, \"Our search in the Second Circle yields no clue. We must press onward in our journey.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE2_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE2_CLUE"
    ;;
  north)
    ./circle9.sh
    exit
    ;;
  south)
    ./circle3.sh
    exit
    ;;
  east)
    ./circle1.sh
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
