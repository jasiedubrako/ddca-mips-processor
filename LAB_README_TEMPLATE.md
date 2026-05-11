# Lab N — [Lab Title]
### Digital Design & Computer Architecture — ETH Zürich (Spring 2018)

---

## Objectives

> What this lab set out to accomplish.

- [ ] Objective 1
- [ ] Objective 2
- [ ] Objective 3

---

## Background & Concepts

Brief explanation of the key concepts this lab covers — written in your own words. This is the "why it matters" section.

---

## Implementation

### Module: `module_name.v`

**What it does:** One clear sentence.

**Interface:**

| Port | Direction | Width | Description |
|------|-----------|-------|-------------|
| `clk` | Input | 1 | Clock signal |
| `reset` | Input | 1 | Synchronous reset |
| ... | ... | ... | ... |

**Design decisions:**
- Why you structured it this way
- Any tradeoffs made
- Anything non-obvious worth noting

---

## Simulation & Testing

**Testbench:** `tb_module_name.v`

**How to run:**
```bash
# Icarus Verilog
iverilog -o sim.vvp module_name.v tb_module_name.v
vvp sim.vvp
gtkwave dump.vcd

# ModelSim
vsim -do run.do
```

**Test cases covered:**
- Case 1: ...
- Case 2: ...
- Edge case: ...

**Waveform / Results:**
> *(Paste a screenshot or describe what you observed in simulation)*

---

## Results

What worked, what didn't, what surprised you.

---

## Key Takeaways

The 2-3 things you'll actually remember from this lab.

1. ...
2. ...
3. ...

---

## References

- Lecture slides: Lecture N — [Title]
- Harris & Harris: Chapter N
- Any other resource used

---

*Completed: [Date]*
