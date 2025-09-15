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
- **Traction analysis**: MATLAB terramechanics (drawbar vs. slip)
- **Rocker-arm suspension**: kinematics + assembly
- **Weight distribution analysis**: MATLAB statics pass on the corner/suspension after selection
- **Motion study**: simple uneven-terrain traversal animation

---

## Tools Used
- **Fusion 360** → CAD, assemblies, FEA, motion study  
- **MATLAB** → Terramechanics traction model + weight distribution statics  
- **GitHub** → Version control, documentation, portfolio

---

## Experiment Plan

### Phase 1 — Support Structure Selection (fix chosen tread)
**Goal:** Pick the internal support with best strength-to-weight.
- Methods: **Fusion 360 Static FEA** under vertical load
- Record: **mass**, **max von Mises**, **FoS**, **max displacement**
- Outputs: `Simulation/fea_wheels/` → screenshots + `FEA analysis.csv`
- Decision: Choose **one support structure**.

### Phase 2 — Tread Selection (hold support structure constant per pair)
**Goal:** Pick the tread with the best traction.
- Method: **MATLAB Terramechanics** → peak drawbar pull & slip-at-peak on a chosen soil model
- Outputs: `Simulation/traction/` → ramp GIFs, `results_drawbar_vs_slip.png`, `results_summary.csv`
- Decision: Choose **one tread** to carry forward.

### Phase 3 — Suspension (Rocker Arm) + System Check
**Goal:** Integrate and validate.
- Build rocker arm + axle interface; set joints/constraints in Fusion 360.
- **Weight distribution** (MATLAB statics): re-check normal loads per wheel; update load cases.
- Optional: coarse assembly FEA (wheel + rocker corner) and motion animation over a step/rock.

---

## Repo Layout
```
CAD/
  wheels/                # six variants
  rocker_arm/
Simulation/
  traction/
    MATLAB/              # 
  fea_wheels/		 # six FEA analyses, FEA results summary table, MATLAB plots of FEA results, Results and Discussion 
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
### MATLAB (Traction)
1. Place `rover_traction_compare.m` and `wheel_variants.csv` in `Simulation/traction/MATLAB/`.  
2. Edit soil parameters in the script (defaults = dry sand).  
3. Run:
   ```matlab
   rover_traction_compare
   ```
4. Collect: `results_drawbar_vs_slip.png`, `results_summary.csv`.

### Fusion 360 (FEA)
- Study: **Static Stress**.  
- Constraints: fix axle bore (or shaft), bonded contacts.  
- Loads: vertical ~100 N, lateral 50–80 N, drive torque 2–5 N·m (adjust to your rover).  
- Mesh: refine at spoke/hub junctions, honeycomb webs, tread roots.  
- Export screenshots + metrics table.

---

## Project Roadmap
- [x] **Research** Settled on spokes and honeycomb support, chevron, straight bar, and knob treads
- [x] **CAD** six wheel variants built (3 treads × 2 supports)  
- [ ] **Phase 1: FEA (support structure choice)**  
  - [ ] Fusion FEA on wheels  
  - [ ] Stress vs displacement comparison
  - [ ] Mass vs Factor of Safety comparison    
  - [ ] Decide best **support**
- [ ] **Phase 2: Traction (tread choice)**   
  - [ ] MATLAB drawbar vs slip plots + summary CSV  
  - [ ] Decide best **tread**
- [ ] **Phase 3: Suspension & System**  
  - [ ] Rocker arm CAD + joints  
  - [ ] MATLAB weight distribution update  
  - [ ] Optional corner FEA + motion study  
- [ ] Final renders + documentation

---

## Preview
*(Add renders, simulation screenshots, and plots as you generate them.)*
### Six wheel support and tread variations
<img width="2369" height="1456" alt="Screenshot 2025-08-29 200325" src="https://github.com/user-attachments/assets/ba4453a9-06e0-45d9-bf37-c011846ad612" />
<img width="2336" height="1487" alt="Screenshot 2025-08-29 200311" src="https://github.com/user-attachments/assets/1e4f4e9a-0d9e-4c73-8e98-ecd478bafc21" />
<img width="2350" height="1498" alt="Screenshot 2025-08-29 200259" src="https://github.com/user-attachments/assets/8af2e343-115f-4fad-b2c9-830bf900e531" />
<img width="2361" height="1505" alt="Screenshot 2025-08-29 200214" src="https://github.com/user-attachments/assets/cd5cfd2a-30e6-40da-a80a-dd4f1eb87ea9" />
<img width="2365" height="1496" alt="Screenshot 2025-08-29 200200" src="https://github.com/user-attachments/assets/76664cc3-0141-495e-8f96-da3a880ac196" />
<img width="2359" height="1518" alt="Screenshot 2025-08-29 200050" src="https://github.com/user-attachments/assets/e0c8d819-a2ea-4fff-96e4-f41a2995c13e" />

---

## License
MIT License — see `LICENSE`.

---

## Author
Created by **Daniel Williams** — combining interests in **rovers, robotics, and motorsport suspension systems**.
