# DDCA MIPS Processor

A lab-driven project building a fully working MIPS-based processor in Verilog — from basic digital logic and combinational circuits, through FSMs and ALU design, to full CPU integration and performance analysis, with an eye toward FPGA deployment.

The project follows the structure of Prof. Onur Mutlu's *Digital Design and Computer Architecture* course at ETH Zürich.

---

## Overview

This repo documents the end-to-end process of building a MIPS processor from the ground up in Verilog. Each lab is a self-contained milestone — with its own implementation, testbenches, simulation results, and write-up — and the whole thing culminates in a fully integrated, functional processor capable of running real MIPS assembly programs.

The work here builds on prior RTL design experience from **ECE206: Contemporary Logic Design** (Princeton University), where a 16-bit microprocessor was designed and simulated as a final project. This is the deeper, more structured continuation of that — with cleaner design practices, better documentation, and eventually more advanced architectural features.

---

## Goals

- Build a working MIPS processor from basic digital design components
- Strengthen RTL design, simulation, and verification skills in Verilog
- Run MIPS assembly programs on the completed processor
- Deploy and validate the design on an FPGA
- Extend the baseline CPU with selected computer architecture enhancements

---

## Lab Progress

| Lab | Topic | Status |
|-----|-------|--------|
| Lab 1 | Drawing a Basic Circuit | ✅ Complete |
| Lab 2 | Mapping Your Circuit to FPGA | ✅ Complete |
| Lab 3 | Verilog for Combinational Circuits | 🔲 Not Started |
| Lab 4 | Finite State Machines | 🔲 Not Started |
| Lab 5 | Implementing an ALU | 🔲 Not Started |
| Lab 6 | Testing the ALU | 🔲 Not Started |
| Lab 7 | Writing Assembly Code | 🔲 Not Started |
| Lab 8 | Full System Integration (Parts I & II) | 🔲 Not Started |
| Lab 9 | The Performance of MIPS | 🔲 Not Started |

---

## Repository Structure

```
ddca-mips-processor/
│
├── lab2/               # Mapping circuits to FPGA
├── lab3/               # Verilog for combinational circuits
├── lab4/               # Finite state machines
├── lab5/               # ALU implementation
├── lab6/               # ALU testing
├── lab7/               # MIPS assembly programming
├── lab8/               # Full system integration
├── lab9/               # Performance analysis
├── final/              # Consolidated final processor
│
└── README.md
```

---

## Tools & Environment

- **HDL:** Verilog (IEEE 1364-2001)
- **IDE & Simulation:** Xilinx Vivado (built-in simulator — Vivado Simulator / xsim)
- **Target Hardware:** Xilinx FPGA (Basys 3)
- **Version Control:** Git / GitHub

---

## Commit Convention

```
[lab3] Add 4-bit ripple carry adder with testbench

- Implemented full adder module
- Chained 4 instances for ripple carry
- Verified with exhaustive simulation
```

Format: `[labN] <short description>` followed by bullet points on what was done and why.

---

## Background

ECE undergraduate at Princeton University. Prior RTL experience from **ECE206: Contemporary Logic Design**, where a 16-bit microprocessor was designed and simulated end-to-end in Verilog. This project is the natural next step — more documented, more structured to deepen my understanding of Digital/RTL design and computer architecture.

---

## References

- [Prof. Onur Mutlu — Design of Digital Circuits, ETH Zürich](https://safari.ethz.ch/digitaltechnik/spring2018/doku.php)
- [Prof. Onur Mutlu's Teaching Page](https://people.inf.ethz.ch/omutlu/teaching.html)
- Harris & Harris — *Digital Design and Computer Architecture*
- Patterson & Hennessy — *Computer Organization and Design*
