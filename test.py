#!/usr/bin/env python
# -*- coding: UTF-8 -*-
import os
import time
import signal
import sys
import RPi.GPIO as GPIO
import datetime
#########################
sleepTime = 30  # Temps entre deux relevés de température
                # écriture d'un journal d'évenements
#########################
# Horodatage des messages de journal
def timeStamp():
    t = time.time()
    s = datetime.datetime.fromtimestamp(t).strftime('%Y/%m/%d %H:%M:%S - ')
    return s
  
# Ecriture de message au format standard
def printMsg(s):
    fileLog.write(timeStamp() + s + "\n")

#########################
print("Starting: run-fan")
print('\x1b[6;31;40m' + ' Pouet-Pouet ' + '\x1b[0m')
print('\x1b[6;30;42m' + ' Prout-Prout ' + '\x1b[0m')

import time
print('Bonjours tous le monde')
time.sleep(3)

bashCommand = "wall 'pouet will go down for 2 hours maintenance at 13:00 PM'"
os.system(bashCommand)
