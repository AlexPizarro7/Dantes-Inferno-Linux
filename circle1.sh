#!/bin/bash

echo ""
echo "~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~"
echo ""
echo "Virgil whispers, \"Behold, we have entered the 1st Circle of Hell. The place of Limbo."
echo ""

CIRCLE1_DESCRIPTION="\nVirgil says, \"Observe closely, for we now stand on the precipice of the First Circle. A dim expanse stretches before us, were twilight casts perpetual shadows, and a thick fog encapsulates all. Dead trees line in the horizon. The dwellers here are nothing but faint silhouettes, forever lost in contemplation.\" \n\nVirgil says, \"From here we are free to go any direction we wish such as: north, south, east, west.\"\n"

CIRCLE1_CLUE="\nVirgil calmly states, \"There seems to be no clue here. Let us move forward in our journey and seek answers elsewhere.\"\n"

while true; do
  read -p "Virgil asks, \"What would you like to do, or where would you like to go?\" " COMMAND
  case $COMMAND in

  look)
    echo -e "$CIRCLE1_DESCRIPTION"
    ;;
  search)
    echo -e "$CIRCLE1_CLUE"
    ;;
  north)
    ./circle8.sh
    exit
    ;;
  south)
    ./circle4.sh
    exit
    ;;
  east)
    ./circle6.sh
    exit
    ;;
  west)
    ./circle2.sh
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
