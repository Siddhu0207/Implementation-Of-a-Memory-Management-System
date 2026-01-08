# Implementation of a Memory Management Simulator

A comprehensive simulation of an Operating System's memory management unit. This project models physical memory allocation, dynamic strategies (First Fit, Best Fit, Worst Fit), multilevel CPU caching, and virtual memory paging.

## Overview

Memory management is a fundamental responsibility of an operating system. This simulator is designed to:
* [cite_start]Model how an OS manages physical and virtual memory[cite: 4].
* [cite_start]Simulate memory allocation and deallocation at runtime[cite: 11].
* [cite_start]Analyze fragmentation (internal and external) and memory utilization[cite: 10, 63].
* (Optional) [cite_start]Simulate multilevel CPU caches and virtual memory paging[cite: 5].

[cite_start]**Note:** The goal is not to build a real OS kernel, but to accurately model algorithmic behavior and performance trade-offs in user space[cite: 6].

##Features

### 1. Physical Memory Simulation
* [cite_start]Simulates a contiguous block of physical memory with configurable size[cite: 17].
* [cite_start]Tracks allocated and free blocks explicitly[cite: 28].
* [cite_start]Automatically coalesces adjacent free blocks upon deallocation to reduce fragmentation[cite: 32].

### 2. Allocation Strategies
[cite_start]Implements the following dynamic allocation algorithms[cite: 21]:
* **First Fit**
* **Best Fit**
* **Worst Fit**
### 3. Multilevel Cache Simulation
* [cite_start]Simulates L1 and L2 caches (L3 optional)[cite: 71].
* Configurable block size and associativity.
* [cite_start]**Replacement Policies:** FIFO, LRU, LFU [cite: 83-88].
* [cite_start]Reports cache hits, misses, and penalties[cite: 90].

### 4. Virtual Memory (Paging)
* [cite_start]Implements Page Tables for address translation[cite: 101].
* [cite_start]Handles page faults and evictions[cite: 108].
* [cite_start]**Page Replacement Policies:** FIFO, LRU, Clock[cite: 102].

##Project Structure

[cite_start]The repository follows a modular structure separating allocation logic, caching, and reporting [cite: 159-172].

```text
memory-simulator/
├── src/
│   ├── allocator/      # Allocation algorithms (First/Best/Worst Fit)
│   ├── buddy/          # Buddy system implementation
│   ├── cache/          # Cache hierarchy and replacement policies
│   ├── virtual_memory/ # Paging and address translation
│   └── main.cpp        # CLI Interface and entry point
├── include/            # Header files
├── tests/              # Input workloads and test scripts
├── docs/               # Design documentation and diagrams
└── Makefile            # Build instructions
