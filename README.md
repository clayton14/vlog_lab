# Verilog Seven Segment Simulation

Simulate addition and subtraction and displaying output on a seven segment display.

install [Icarus Verilog for Windows](https://bleyer.org/icarus/) or via system package manager

```bash 
$ sudo apt install iverilog gtkwave
```

to synthesise the simulation run: 

```bash 
$ iverilog sevenSeg_tb.v -o sevenSeg
```

to run the simulation run:
```bash 
$ vvp sevenSeg
```

Use GTKWave to view wavefrom:
```bash 
$ gtkwave sevenSeg
```
1. Select sevenSeg_tb under the SST window in GTKWave
2. click on the wire(s) and reg(s)
3. click append

You may need to adjust the **From** and **TO** times located at the top window in the toolbar. 