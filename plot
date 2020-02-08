#!/bin/bash
clear
var=2
while [ $var==2 ];
do
  clear
  figlet Qplot
  echo "| =================================== | "
  echo "| ==== Qplot version v1.0.0 beta ==== | "
  echo "| ==== last updated 7 nov 2019 ====== | "
  echo "| ==== do not record this my code === | "
  echo "| =================================== | "
  sleep 3
  echo " __________________________________________"
  echo "|"
  echo "| 1 | DATA PEMASUKAN "
  echo "|"
  echo "| 2 | DATA PENGELUARAN"
  echo "|"
  echo "| 3 | DATA PEMASUKAN-PENGELUARAN"
  echo "|"
  echo "| 4 | VERSION"
  echo "|"
  echo "| 5 | DEVELOPER"
  echo "|"
  echo "| 0 | EXIT"
  echo "___________________________________________"
  read -p " [ ? ] input > " plot;
  if [ $plot == 1 ]; then
      echo "LOADING ...................."
      sleep 3
      clear
      read -p "[ ? ] YOUR COMPANY : " com;
      figlet $com
      python input/input.py
  elif [ $plot == 3 ]; then
      echo "LOADING ....................."
      sleep 3
      clear
      read -p "[ ? ] YOUR COMPANY : " com1;
      clear
      figlet $com1
      python input/input1.py
  elif [ $plot == 2 ]; then
      clear
      echo "LOADING ..............."
      sleep 3
      clear
      read -p "[ ? ] YOUR COMPANY : " com2;
      figlet $com2
      python input/input2.py
  elif [ $plot == 4 ]; then
      clear
      figlet V1.0.0beta
      sleep 7
      clear
  elif [ $plot == 5 ]; then
      clear
      echo "========== DIBUAT OLEH =========="
      sleep 3
      figlet Mr.Qywok
      sleep 3
      echo "================================="
      echo ""
      echo " [ ! ] FOLLOW ig gue @qywok_exploiter_357"
      sleep 5
  elif [ $plot == 0 ]; then
      read -p "[ ? ] ANDA YAKIN(y/n) > " abort;
      if [ $abort == "y" ]; then
          clear
          echo "[ ! ] ABORTING!!!!!!!....................."
          sleep 5
          cd $HOME
          exit
      elif [ $abort == "n" ]; then
          clear
      else 
          clear 
      fi
  else
      clear
      echo "LOADING ...................."
      sleep 3
      clear
      echo " WRONG .............."
      sleep 2
      clear
      echo " PILIHAN ANDA TIDAK SESUAI!!!!!!!!! "
      sleep 2
      clear
  fi
done
