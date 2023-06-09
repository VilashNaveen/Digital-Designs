@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.2.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Jun 09 12:56:52 +0530 2023
REM SW Build 2288692 on Thu Jul 26 18:24:02 MDT 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto a600c7158f914ab1898af0990eda49c3 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot MicroProcessor_sim_behav xil_defaultlib.MicroProcessor_sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
