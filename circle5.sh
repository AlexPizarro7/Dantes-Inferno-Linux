#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 5th Circle of Hell. The place of Wrath."
echo ""

CIRCLE5_DESCRIPTION="\nVirgil says, \"Peer into the Fifth Circle, where the waters of the River Styx stagnate. Its murky depths hide souls submerged. Above, spirits float, eternally battling in rage. The air here is thick with tension and resentful murmurs.\" \n\nVirgil adds, \"From here we can go to the following directions: north, west\"\n"
CIRCLE5_CLUE="\nVirgil gasps, \"Look closely! In the dark river a scroll emerges. It reads: ['Even though we were told to abandon it, we must not.'] This may hold the key to the exit command. We should keep it safe.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE5_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE5_CLUE"
    ;;
  north)
    ./circle6.sh
    exit
    ;;
  west)
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
