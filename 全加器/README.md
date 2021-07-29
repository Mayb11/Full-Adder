# 2-bit by 3-bit Multiplier Assessment

This repository is where you will develop a 2-bit by 3-bit Multiplier

The following files are provided:

| File | Purpose |
| ---  | --- |
| `Multiplier2x3.v`         | Main Module for 2bit x 3bit Multiplier |
| `MultiplerFirstRow.v`     | Submodule which comprises first row of multiplier |
| `MultiplerRemainingRow.v` | Submodule which comprises remaining rows of multiplier |
| `Multiplier2x3.sdc`       | Generic timing constraints file |
| `Structure/*`             | Diagrams of the multiplier structure |

update in 16/2/2020
The purpose of this experiment is to write a 2x3 multiplier.
1.Create a new project, add the files in the project library from github repository, a total of five.
2.First complete the design of the first row of modules. Connect the input and output ports of the first row of modules with the input and output ports of the full adder.
3.Then complete the design of the second row of modules. The steps are the same as above, connect all ports between the full adder and the module.
4.In all the above module designs, additional wire variables need to be added to the port connection to ensure that each interface has another interface to link with.
5.Combine the above modules in the final 2x3 module. According to the flow chart, first create M1-M4, C1-C3, Q1-Q4, S_P 12 variables (representing output or ports used to connect between modules).
6.According to the flowchart, output the corresponding value into the corresponding p bit.
7.Run A&S.
8.Check RTL viewer.
