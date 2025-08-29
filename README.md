# Mini Rover Wheel + Suspension System

## What Changed
This README reflects a clearer vision now that 6 wheel variants are modeled in CAD. The project is structured as an **experiment-driven study**: first choose the **best tread** by traction, then choose the **best internal support** by strength/weight, then design the **suspension**, and finally re-check **weight distribution** at system level.

---

## Project Goal
Design, simulate, and analyze a functional **wheel + suspension assembly** inspired by Mars rovers and Formula Student suspension systems.

**Focus areas**
- Terrain traversal over rocks and slopes  
- Withstanding dynamic loads and stress concentrations  
- Optimizing weight vs. strength trade-offs  

---

## Features
- **Six CAD wheel variants**: 3 treads (straight bars, chevrons, knobs) × 2 supports (spokes, honeycomb)
- **Traction analysis**: Fusion 360 ramp test **and** MATLAB terramechanics (drawbar vs. slip)
- **Structural analysis (FEA)**: Fusion 360 static stress on hubs/rims/support structures
- **Rocker-arm suspension**: kinematics + assembly
- **Weight distribution analysis**: MATLAB statics pass on the corner/suspension after selection
- **Motion study**: simple uneven-terrain traversal animation

---

## Tools Used
- **Fusion 360** → CAD, assemblies, FEA, ramp test/motion study  
- **MATLAB** → Terramechanics traction model + weight distribution statics  
- **GitHub** → Version control, documentation, portfolio

---

## Experiment Plan
### Phase 1 — Tread Selection (hold support structure constant per pair)
**Goal:** Pick the tread with the best traction.
- Methods:  
  1) **Fusion 360 Ramp Test** → angle at sustained slip (visual + comparable)  
  2) **MATLAB Terramechanics** → peak drawbar pull & slip-at-peak on a chosen soil model
- Outputs: `Simulation/traction/` → ramp GIFs, `results_drawbar_vs_slip.png`, `results_summary.csv`
- Decision: Choose **one tread** to carry forward.

### Phase 2 — Support Structure Selection (fix chosen tread)
**Goal:** Pick the internal support with best strength-to-weight.
- Methods: **Fusion 360 Static FEA** under three cases: vertical load, lateral scrub, drive torque
- Record: **mass**, **max von Mises**, **FoS**, **max deflection**
- Outputs: `Simulation/fea_wheels/` → screenshots + `wheel_fea_summary.csv`
- Decision: Choose **one support structure**.

### Phase 3 — Suspension (Rocker Arm) + System Check
**Goal:** Integrate and validate.
- Build rocker arm + axle interface; set joints/constraints in Fusion 360.
- **Weight distribution** (MATLAB statics): re-check normal loads per wheel; update load cases.
- Optional: coarse assembly FEA (wheel + rocker corner) and motion animation over a step/rock.

---

## Suggested Repo Layout
```
CAD/
  wheels/                # six variants
  rocker_arm/
Simulation/
  traction/
    MATLAB/              # rover_traction_compare.m, results_*.csv/png
    FusionRamp/          # ramp studies, GIFs
  fea_wheels/
  fea_assembly/
Docs/
  design_notes.md
  references.md
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

### Fusion 360 (Ramp Test)
- Assemble wheel + ramp, enable contact, assign friction.  
- Drive wheel (motor torque or angular velocity); increase ramp angle.  
- Record **max angle before continuous slip** → estimate μ ≈ tan(θ_max).

### Fusion 360 (FEA)
- Study: **Static Stress**.  
- Constraints: fix axle bore (or shaft), bonded contacts.  
- Loads: vertical ~100 N, lateral 50–80 N, drive torque 2–5 N·m (adjust to your rover).  
- Mesh: refine at spoke/hub junctions, honeycomb webs, tread roots.  
- Export screenshots + metrics table.

---

## Project Roadmap
- [x] **CAD** six wheel variants (3 treads × 2 supports)  
- [ ] **Phase 1: Traction (tread choice)**  
  - [ ] Fusion ramp tests recorded (GIF + θ_max)  
  - [ ] MATLAB drawbar vs slip plots + summary CSV  
  - [ ] Decide best **tread**
- [ ] **Phase 2: FEA (support structure choice)**  
  - [ ] Fusion FEA on wheels (3 cases)  
  - [ ] Mass vs FoS/deflection comparison  
  - [ ] Decide best **support**
- [ ] **Phase 3: Suspension & System**  
  - [ ] Rocker arm CAD + joints  
  - [ ] MATLAB weight distribution update  
  - [ ] Optional corner FEA + motion study  
- [ ] Final renders + documentation

---

## Preview
*(Add renders, simulation screenshots, and plots as you generate them.)*
###Six wheel support and tread variations
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
