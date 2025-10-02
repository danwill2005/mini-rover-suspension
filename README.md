# Mini Rover Wheel + Suspension System

---

## Project Goal
Design, simulate, and analyze a functional **wheel + suspension assembly** inspired by Mars rovers.

**Focus areas**
- Terrain traversal over rocks and slopes  
- Withstanding dynamic loads and stress concentrations  
- Optimizing weight vs. strength trade-offs  

---

## Features
- **Six CAD wheel variants**: 3 treads (straight bars, chevrons, knobs) × 2 supports (spokes, honeycomb)
- **Structural analysis (FEA)**: Fusion 360 static stress on hubs/rims/support structures
- **Rocker-arm suspension**: kinematics + assembly
- **Weight distribution analysis**: MATLAB statics pass on the corner/suspension after selection
- **Traction analysis**: MATLAB terramechanics (drawbar vs. slip)
- **Motion study**: simple uneven-terrain traversal animation

---

## Tools Used
- **Fusion 360** → CAD, assemblies, FEA, motion study  
- **MATLAB** → Terramechanics traction model + weight distribution statics  
- **GitHub** → Version control, documentation, portfolio

---

## Experiment Plan

### Phase 1 — Support Structure Selection
**Goal:** Pick the internal support with best strength-to-weight.
- Methods: **Fusion 360 Static FEA** under vertical load
- Record: **mass**, **max von Mises**, **FoS**, **max displacement**
- Outputs: `Simulation/fea_wheels/` → screenshots + `FEA analysis.csv`
- Decision: Choose **one support structure**.

### Phase 2 — Suspension (Rocker Arm) + System Check
**Goal:** Integrate and validate.
- Build rocker arm + axle interface; set joints/constraints in Fusion 360.
- **Weight distribution** (MATLAB statics): re-check normal loads per wheel; update load cases.
- Optional: motion animation over a step/rock.

### Phase 3 — Tread Selection
**Goal:** Pick the tread with the best traction.
- Method: **MATLAB Terramechanics** → peak drawbar pull & slip-at-peak on a chosen soil model
- Outputs: `Simulation/traction/` → ramp GIFs, `results_drawbar_vs_slip.png`, `results_summary.csv`
---

## Repo Layout
```
CAD/
  wheels/                # six variants
  rocker_arm/            # chassis + wheel assembly
Simulation/
  traction/
    MATLAB/              # 
  fea_wheels/		 # FEA results summary table, MATLAB plots of FEA results, Results and Discussion 
  fea_assembly/
Docs/			 # Wheel Design Research and development
Media/
  renders/
  animations/
README.md
LICENSE
```

---

## How to Run Analyses

### Fusion 360 (FEA)
- Study: **Static Stress**.  
- Constraints: fix axle bore (or shaft), bonded contacts.  
- Loads: vertical 30 N (adjust to your rover).  
- Mesh: refine at spoke/hub junctions, honeycomb webs, tread roots.  
- Export screenshots + metrics table.

### MATLAB (Traction)

---

## Project Roadmap
- [x] **Research** Settled on spokes and honeycomb support, chevron, straight bar, and knob treads
- [x] **CAD** six wheel variants built (3 treads × 2 supports)  
- [x] **Phase 1: FEA (support structure choice)**  
  - [x] Fusion FEA on wheels  
  - [x] Stress vs displacement comparison
  - [x] Mass vs Factor of Safety comparison    
  - [x] Decide best **support**
- [ ] **Phase 2: Suspension & System**  
  - [x] Rocker arm CAD + joints
  - [ ] FEA on chassis 
  - [ ] MATLAB weight distribution update  
  - [ ] Optional motion study
- [ ] **Phase 3: Traction (tread choice)**   
  - [ ] MATLAB drawbar vs slip plots + summary CSV  
  - [ ] Decide best **tread**
- [ ] Final renders + documentation

---

## Preview
*(Add renders, simulation screenshots, and plots as you generate them.)*

### Six wheel support and tread variations

<img width="2365" height="1496" alt="Screenshot 2025-08-29 200200" src="https://github.com/user-attachments/assets/76664cc3-0141-495e-8f96-da3a880ac196" />
<img width="2359" height="1518" alt="Screenshot 2025-08-29 200050" src="https://github.com/user-attachments/assets/e0c8d819-a2ea-4fff-96e4-f41a2995c13e" />

### FEA Analysis of wheel variations

<img width="2349" height="1451" alt="Screenshot 2025-09-13 005555" src="https://github.com/user-attachments/assets/cb638cce-07fa-44b1-a895-32fa8862ddea" />
<img width="2364" height="1436" alt="Screenshot 2025-09-13 005708" src="https://github.com/user-attachments/assets/24f647f5-a20c-4f4e-a778-6eeab08740bc" />

### Rocker-bogie suspension

<img width="2346" height="1406" alt="Screenshot 2025-10-02 005725" src="https://github.com/user-attachments/assets/6e93c8d8-c7fd-48eb-9861-55b06dcd8999" />
<img width="2304" height="1308" alt="Screenshot 2025-10-02 005819" src="https://github.com/user-attachments/assets/c078ca56-ec72-456d-b1a6-e3dbd33df175" />
<img width="2249" height="1349" alt="Screenshot 2025-10-02 005848" src="https://github.com/user-attachments/assets/662d2782-7241-4b6f-8bd6-f3455452294e" />

---

## License
MIT License — see `LICENSE`.

---

## Author
Created by **Daniel Williams** — combining interests in **rovers, and motorsport suspension systems**.
