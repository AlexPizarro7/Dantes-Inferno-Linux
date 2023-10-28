#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 6th Circle of Hell. The place of Heresy."
echo ""

CIRCLE6_DESCRIPTION="\nVirgil says, \"Behold the Sixth Circle, where flames dance around tombs sealing away the heretics. The ground is hard and cracked, warmed by the fires below. Whispers of past beliefs float in the air.\" \n\nVirgil adds, \"From here we can go to the following directions: north, south, west\"\n"
CIRCLE6_CLUE="\nVirgil looks around, \"There is no clue to be found amidst this hellfire. Let us move on and continue our quest.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE6_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE6_CLUE"
    ;;
  north)
    ./circle7.sh
    exit
    ;;
  south)
    ./circle5.sh
    exit
    ;;
  west)
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
