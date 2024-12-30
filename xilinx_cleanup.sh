#!/bin/sh

killall hw_server >/dev/null 2>&1
rm -rf $HOME/vivado.jou
rm -rf $HOME/vivado.log
rm -rf $HOME/xrc.log
rm -rf $HOME/logs
rm -rf $HOME/vivado_*.backup.*o*
rm -rf $HOME/vivado_*.backup.*o*
rm -rf $HOME/vivado_pid*.str
rm -rf $HOME/.Xilinx/Vitis
rm -rf $HOME/.Xilinx/Vivado
