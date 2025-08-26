# Mini Rover Wheel + Suspension System

## Project Goal
Design, simulate, and analyze a functional **wheel + suspension assembly** inspired by Mars rovers and Formula Student suspension systems.  
Focus areas:
- Terrain traversal over rocks and slopes  
- Withstanding dynamic loads and stress concentrations  
- Optimizing weight vs. strength trade-offs  

---

## Features
- **Non-pneumatic wheel** with honeycomb support structure  
- **Rocker-arm suspension** to articulate over uneven terrain  
- **Static FEA** on wheel hub + rocker arm (Fusion 360)  
- **Motion simulation** for terrain traversal  
- **MATLAB statics analysis** for weight distribution  

---

## Repository Structure
```
mini-rover-suspension/
│
├── CAD/                     # Fusion 360 (.f3d) and STEP files
│   ├── wheel_v1.f3d
│   ├── rocker_arm_v1.f3d
│   └── assembly_v1.step
│
├── Simulation/              # FEA results and MATLAB code
│   ├── wheel_stress.png
│   ├── rocker_arm_FEA.pdf
│   └── terrain_sim.m
│
├── Docs/                    # Notes, references, design decisions
│   ├── design_notes.md
│   └── references.md
│
├── Media/                   # Renders, diagrams, animations
│   ├── wheel_render.png
│   └── suspension_motion.gif
│
├── README.md                # This file
└── LICENSE                  # MIT or similar
```

---

## Tools Used
- **Fusion 360** → CAD modeling, assemblies, FEA simulation  
- **MATLAB** → (optional) terrain + statics simulation  
- **GitHub** → Version control, documentation, portfolio showcase  

---

## Project Roadmap
- [ ] Concept sketches (wheel + suspension)  
- [ ] CAD model of wheel with tread + hub  
- [ ] Rocker arm design + assembly  
- [ ] Static FEA on rocker arm under 10kg load  
- [ ] Motion simulation (uneven terrain traversal)  
- [ ] MATLAB statics analysis (weight distribution)  
- [ ] Final renders + documentation  

---

## Preview


---

## License
MIT License — feel free to use, remix, and build upon this project.  

---

## Author
Created by **Daniel Williams** — combining interests in **rovers, robotics, and motorsport suspension systems**.  
