# arm

## Why?

One way to learn more about a processor is to learn its assembly
language. I have not found a need to write assembly code directly very
often, not even when doing new hardware bring-up. With few exceptions,
I have always found it easier and perfectly suitable to write C code. The
exceptions include a time when I needed some trampoline code to switch
memory banks on an 8085 system that had two different EEPROMs mapped to a
single address range, and another time when I was doing Unix bring-up on
a new computer where the compiler or machine simulator  wasn't finished
and I needed to control the specific instruction set that would execute
on the simulator.

Even though writing machine code is hardly ever necessary, it is often
useful to understand the machine code when debugging higher-level
code. Understanding the machine code means that you understand the
machine itself, and this knowledge makes it easier to debug certain
software-hardware interactions, or at least to make it possible to
single-step through assembly code in the debugger.
