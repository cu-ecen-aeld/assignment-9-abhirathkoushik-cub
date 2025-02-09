#!/bin/sh

#  Copyright (C) 2025 by Abhirath Koushik

#  Redistribution, modification or use of this software in source or binary
#  forms is permitted as long as the files maintain this copyright. Users are
#  permitted to modify this and use it to learn about the field of embedded
#  software. Abhirath Koushik and the University of Colorado are not liable for
#  any misuse of this material.

#  @file    Makefile
#  @brief   This script is used to automate the distclean step for the buildroot directory.

#  @author  Abhirath Koushik
#  @date    02-09-2025

cd buildroot && make distclean
