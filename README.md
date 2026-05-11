# Digital Design & Computer Architecture
### ETH Zürich — Design of Digital Circuits (Spring 2018)
### Instructor: Prof. Onur Mutlu

---

## Overview

This repository documents my self-directed journey through ETH Zürich's *Design of Digital Circuits* course, following Prof. Onur Mutlu's Spring 2018 offering. The course covers digital logic, RTL design in Verilog, and culminates in a fully working MIPS microprocessor.

I completed a 16-bit microprocessor project in a prior Logic Design course, and I'm using this as an opportunity to go deeper — with cleaner design practices, better documentation, and eventually more advanced architectural features.

> **Goal:** Build a solid foundation in RTL design and computer architecture, produce a well-documented portfolio project, and prepare for graduate-level Computer Architecture coursework.

---

## Course Structure & Progress

| Lab | Topic | Status |
|-----|-------|--------|
| Lab 2 | Verilog Basics & Combinational Logic | 🔲 Not Started |
| Lab 3 | Sequential Logic & FSMs | 🔲 Not Started |
| Lab 4 | Microarchitecture – Single Cycle MIPS | 🔲 Not Started |
| Lab 5 | Microarchitecture – Multi Cycle & Pipelining | 🔲 Not Started |
| Final Project | Fully Working MIPS Processor | 🔲 Not Started |

---

## Repository Structure

```
digital-design-ethz/
│
├── lab2/               # Verilog basics, combinational circuits
├── lab3/               # Sequential circuits, FSMs
├── lab4/               # Single-cycle MIPS datapath
├── lab5/               # Pipelining & hazard handling
├── final-project/      # Complete MIPS processor
│
└── README.md           # This file
```

---

## Tools & Environment

- **HDL:** Verilog (IEEE 1364-2001)
- **Simulation:** ModelSim / Icarus Verilog + GTKWave
- **Target:** Xilinx FPGA (Basys 3 / Nexys series)
- **Version Control:** Git, documented per lab

---

## Commit Convention

Every commit follows this format:

```
[lab2] Add 4-bit ripple carry adder with testbench

- Implemented full adder module
- Chained 4 instances for ripple carry
- Verified with exhaustive simulation
```

Format: `[labN] <short description>` followed by bullet points on what changed and why.

---

## Background

I'm an undergraduate student who completed a *Contemporary Logic Design* course in Fall 2024, where I designed and simulated a 16-bit microprocessor in Verilog as a final project. This repo is the next step — going through a more rigorous, structured curriculum to deepen my understanding of RTL design and computer architecture, with an eye toward a Computer Architecture course starting Fall 2025.

---

## References

- [ETH Zürich – Design of Digital Circuits (Spring 2018)](https://safari.ethz.ch/digitaltechnik/spring2018/doku.php)
- [Prof. Onur Mutlu's Teaching Page](https://people.inf.ethz.ch/omutlu/teaching.html)
- Patterson & Hennessy – *Computer Organization and Design*
- Harris & Harris – *Digital Design and Computer Architecture*

---

*Updated as labs are completed.*
