A comprehensive robotics engineering project implementing forward/inverse kinematics, dynamic equation of motion derivation, trajectory generation, and multi-paradigm control architectures for a SCARA robotic manipulator.

---

##  Project Overview
This repository provides full mathematical modeling and simulation for a SCARA robot arm:
- **Kinematic Analysis:** Direct and inverse kinematics, Jacobian matrix computation for velocity mapping.
- **Dynamic Modeling:** Equations of motion formulated via Lagrange-Euler / Newton-Euler mechanics.
- **Trajectory Planning:** Joint-space and operational-space path planning with continuous velocity and acceleration profiles.
- **Control Architectures:** Implementation and performance comparison of classical PID, computed torque control (inverse dynamics), and holistic control schemes in Simulink.

---

##  Implemented Control Strategies
- **Classical Control (`control_clasic`):** Independent joint decentralized PID/PD loops with feedback error compensation.
- **Inverse Dynamics Control (`control_invers`):** Computed torque control linearizing system dynamics through feedback cancellation.
- **Holistic / Advanced Control (`control_holist`):** Coupled multi-input multi-output (MIMO) dynamic control accounting for centrifugal and Coriolis inter-joint torques.

---

##  Repository Structure
```text
├── scripts/          # MATLAB Live Scripts (.mlx) and utility functions
│   ├── mainSCARA.mlx
│   ├── joint_desired_trajectories.mlx
│   └── FUNCTIILE_MELE/
├── models/           # Simulink simulation diagrams and sub-blocks
│   ├── control_clasic/
│   ├── control_invers/
│   └── control_holist/
├── data/             # Trajectory logs, dynamic coefficients, and workspace data (.mat)
└── .gitignore        # Filters Simulink build artifacts (slprj) and local caches