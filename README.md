# Power System Fault Analysis Using MATLAB And MATLAB SIMULINK

## Overview

This repository contains a collection of laboratory experiments related to **Power System Analysis** using **MATLAB and Simulink**.  
The experiments focus on the modeling, analysis, and simulation of important components of electrical power systems such as transmission lines, protective relays, and symmetrical component analysis.

Through these experiments, different characteristics of power systems are studied, including transmission line parameters, relay operating time, and the behavior of balanced and unbalanced three-phase systems. MATLAB programming and Simulink simulations are used to perform calculations, visualize results, and analyze system performance under different operating conditions.

The experiments included in this repository cover:

- **Time-Delayed Overcurrent Relay Analysis** using MATLAB
- **Computation of Transmission Line Parameters** for short and medium transmission lines
- **Symmetrical Component Analysis** for studying unbalanced three-phase systems
- **Transmission Line Simulation** using MATLAB Simulink

These experiments help in understanding the theoretical concepts of power systems and applying them through practical simulation and computational tools.

---

## Tools & Technologies Used

- MATLAB
- MATLAB Simulink
- Markdown


# Experiment No: 01

## Name of Experiment
**Finding the Operation Time of a Time-Delayed Overcurrent Relay by using MATLAB**

---

## Theory
A relay is an electrically operated switch that is used to control one electrical circuit by another circuit.  
It allows the control of high power circuits using low power signals.  
The delay operation of a relay refers to the time interval between the moment the relay is triggered and the moment it switches state.  
The time is called **Operating Time** or **Delay Time**.

---

## Mathematical Equation

The various time-delayed relay are defined by the following general equation:

Where:

- **TSD** = Time Setting Dial  
- **t** = Time of operation of a relay  
- **α** = Constant which determines relay characteristics  
- **If** = Fault current = Line current  
- **Ip** = Pick-up current  

---

The various types of time-delayed overcurrent relays used in practice are described in succeeding sections.

---

## Some Extra Command

| Command | Purpose |
|--------|--------|
| semilogy | Semi logarithmic plot (log scale on Y axis) |
| legend | Add legend to graph |
| hold | Retain current plot when adding new plots |

---

## Problem

Find the **Operating Time of the Time-Delayed Overcurrent Relay** where:

- **TSD = α = 0.1 to 0.6**  
- **If = 0 to 100 A**  
- **Ip = 5 A**

# Figure 1ex

# Experiment No: 02

## Name of Experiment
**Computation of Transmission Line Parameters and Simulation using MATLAB with Simulink**

---

## Objective
The objective of this experiment is to simulate the behavior of the transmission line and analyze its performance under different operating conditions of **short and medium transmission lines**.

---

## Theory

A **transmission line** is a type of electrical circuit used to transport electrical power from one location to another.  
These lines are designed to minimize the losses that occur when electrical energy is transmitted over long distances.

Electrical power is transmitted at **high voltages** to reduce the current required for the same amount of power.  
This helps reduce the energy lost due to the resistance of the transmission lines. Transmission lines are often made of **high-conductivity materials** such as copper or aluminum to further minimize losses.

Transmission lines can also be used to transmit **data signals**. In this case, the signals are modulated onto a carrier wave and transmitted along the line. Examples include **radio broadcasting and telecommunications**.

A transmission line has three constants distributed uniformly along the entire length of the line:

- **R** → Resistance  
- **L** → Inductance  
- **C** → Capacitance  

The resistance and inductance form the **series impedance**, while the capacitance between conductors forms a **shunt path** along the line. Capacitance effects therefore introduce additional complexity in transmission line calculations.

---

## Classification of Transmission Lines

Transmission lines are classified according to their **length**:

### 1. Short Transmission Lines
- Length **less than 80 km (50 miles)**
- Used to connect generators to transformers or transformers to distribution networks
- Have low inductance and capacitance
- Approximated using a **lumped circuit model**

### 2. Medium Transmission Lines
- Length **80 km to 240 km (50–150 miles)**
- Used to connect parts of regional grids or substations
- Have moderate inductance and capacitance
- Approximated using a **distributed circuit model**

### 3. Long Transmission Lines
- Length **greater than 240 km (150 miles)**
- Used for long-distance power transmission between regions or countries
- Have significant inductance and capacitance
- Require **distributed parameter analysis**

These lines experience phenomena such as:

- Surge impedance loading
- Attenuation
- Signal distortion

---

## Methods for Medium Transmission Line Analysis

The most commonly used methods are:

1. **End Condenser Method**
2. **Nominal T Method**
3. **Nominal π (Pi) Method**

---

## Problem (Short Transmission Line)

A **3-phase transmission line** delivers **3600 kW** at a **power factor of 0.8 lagging** to a load.

Given:

- Sending end voltage = **33 kV**
- Resistance per conductor = **5.31 Ω**
- Reactance per conductor = **5.54 Ω**

Determine:

1. Receiving end voltage  
2. Line current  
3. Transmission efficiency
## Problem

A **single-phase overhead transmission line** delivers **1100 kW** at **33 kV** with a **power factor of 0.8 lagging**.

The line parameters are:

- Resistance per km = **1 Ω**
- Inductance per km = **4.77 mH**

### Tasks

Using **MATLAB**, determine:

1. **Sending End Voltage**
2. **Transmission Efficiency**
3. **Voltage Regulation**

### Given Data

| Parameter | Value |
|-----------|------|
| Power Delivered | 1100 kW |
| Receiving End Voltage | 33 kV |
| Power Factor | 0.8 lagging |
| Resistance per km | 1 Ω |
| Inductance per km | 4.77 mH |

### Tools Used

- MATLAB
- Simulink
- GitHub Markdown

# EX 2 output
----------------

## Problem for Medium Transmission Line

A **single-phase medium transmission line** of **100 km** length has the following parameters:

- Resistance per km = **0.25 Ω**
- Reactance per km = **0.8 Ω**
- Susceptance per km = **14 × 10⁻⁶ S**
- Receiving end voltage = **66,000 V**

The line delivers **15,000 kW** at **0.8 power factor lagging**.

Assume that the **total capacitance of the line is localized at the receiving end**.

The analysis is performed using the **End Condenser Method**.

---

## Determine

Using **MATLAB**, calculate the following:

1. **Sending End Current**
2. **Sending End Voltage**
3. **Voltage Regulation**
4. **Supply Power Factor**

---

## Given Data

| Parameter | Value |
|-----------|------|
| Line Length | 100 km |
| Resistance / km | 0.25 Ω |
| Reactance / km | 0.8 Ω |
| Susceptance / km | 14 × 10⁻⁶ S |
| Receiving End Voltage | 66,000 V |
| Power Delivered | 15,000 kW |
| Power Factor | 0.8 Lagging |

---

#imag 2_2


-----------
## Simulation using Simulink

A **three-phase, 60 Hz, 500 kV transmission line** is **300 km long**.

The transmission line parameters are:

- Inductance per phase = **0.97 mH/km**
- Capacitance per phase = **0.0115 µF/km**
- Assume the line is **lossless**.

---

## Receiving End Load

The receiving end rated load is:

- **Power = 800 MW**
- **Power Factor = 0.8 lagging**
- **Receiving End Voltage = 500 kV**

---

## Objective

Using **MATLAB Simulink**, simulate the transmission line and analyze:

1. Sending end voltage  
2. Line current  
3. Power flow in the transmission line  
4. Voltage profile of the line  

---

## Given Data

| Parameter | Value |
|-----------|------|
| System Type | 3-Phase |
| Frequency | 60 Hz |
| Line Voltage | 500 kV |
| Line Length | 300 km |
| Inductance / km / phase | 0.97 mH |
| Capacitance / km / phase | 0.0115 µF |
| Load Power | 800 MW |
| Power Factor | 0.8 lagging |

---

# Simulation copy from WORKSHEET

# Experiment No: 03

## Experiment Name
**Study of Symmetrical Component Analysis using MATLAB**

---

## Objective

The objective of this experiment is to study the concept of **symmetrical components** and analyze **unbalanced three-phase systems** using **MATLAB**.

---

## Theory

In a three-phase power system, faults or unbalanced loads can cause the system voltages and currents to become **unbalanced**.  
To simplify the analysis of such systems, the method of **symmetrical components** is used.

The symmetrical component method decomposes an unbalanced set of three-phase quantities into three balanced sets:

1. **Positive Sequence Components**
2. **Negative Sequence Components**
3. **Zero Sequence Components**

### Positive Sequence
Three phasors of equal magnitude displaced by **120°** and having the same phase sequence as the original system.

### Negative Sequence
Three phasors of equal magnitude displaced by **120°** but with the **reverse phase sequence**.

### Zero Sequence
Three phasors of equal magnitude that are **in phase with each other**.

Using these components, complicated **unbalanced power system problems** can be solved easily.

---

## MATLAB Application

Using **MATLAB**, the following can be performed:

- Calculation of symmetrical components
- Analysis of unbalanced three-phase voltages and currents
- Visualization of sequence components

---

#  Figure 3


------
## Simulation using Simulink

A **three-phase transmission line** operating at **60 Hz** with a rated voltage of **500 kV** has a total length of **300 km**.

The transmission line parameters per phase are:

- Inductance = **0.97 mH/km**
- Capacitance = **0.0115 µF/km**

Assume the transmission line is **lossless**.

---

## Receiving End Load

The receiving end load has the following rating:

- Rated Power = **800 MW**
- Power Factor = **0.8 lagging**
- Receiving End Voltage = **500 kV**

---

## Objective of Simulation

Using **MATLAB Simulink**, simulate the transmission line model and analyze:

1. **Sending end voltage**
2. **Line current**
3. **Power flow**
4. **Voltage profile along the line**

---

## Given Data

| Parameter | Value |
|-----------|------|
| System Type | Three Phase |
| Frequency | 60 Hz |
| Line Voltage | 500 kV |
| Line Length | 300 km |
| Inductance / km / phase | 0.97 mH |
| Capacitance / km / phase | 0.0115 µF |
| Load Power | 800 MW |
| Power Factor | 0.8 Lagging |

---


