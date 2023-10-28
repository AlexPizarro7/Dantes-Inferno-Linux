#!/bin/bash

echo ""
echo "Dante's Inferno: The Game"
echo "Programmed by Alex Pizarro"
echo ""
echo "Main Menu: "
echo "start"
echo "exit"
echo ""

while true; do
  read -p "Type your menu choice: " COMMAND
  case $COMMAND in

  start)
    echo ""
    ./game-prologue.sh
    exit
    ;;
  exit)
    exit
    ;;
  *)
    echo "Invalid option. Try again."
    ;;

  esac
done
