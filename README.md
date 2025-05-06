# ✈️ F104-Fighter-Nonlinear-Mathematical-Model  

This project is about building a **mathematical model** for the **F-104A aircraft** 🛩️. It contains two aspects:  
- **Theoretical** 📖  
- **Programming (MATLAB)** 💻  


![F-104 Starfighter](https://github.com/user-attachments/assets/3587fdd1-55ba-42a8-8c81-29d8c1a0cd85)  


## 🚀 How to Run the Code:  
1. Open `Aerodynamic_Dervatives.m` and run it. ▶️  
2. Open `F104_Project_With_Modifieng.slx` and run it. ▶️  
⚠️ *The other Simulink files can be deleted—they were mostly used for debugging.*  

## 📚 Equations & Resources:  
The equations in this code are derived from:  
1. 📘 *Performance Stability Dynamics and Control of Airplanes* – Bandu N. Pamadi (1998)  
2. 📙 *Airplane Flight Dynamics and Automatic Flight Control* – Jan Roskam, Part 1 (2001)  
3. 📕 *Flight Dynamics Principles* – Michael V. Cook (2007)  
4. 📗 *Dynamics of Flight Stability and Control* – Bernard Etkin (1996)  


![image](https://github.com/user-attachments/assets/daa6fecc-34af-4e30-9b1b-dcf01ecc987a)


## 🔍 Project Focus:  
1. ✍️ Writing fighter **equations of motion** in compact form (body coordinate system & Cartesian form).  
2. 📝 Deriving basic equations for **(ṗ, q̇, ṙ, u̇, v̇, ẇ)**.  
3. ⚖️ Identifying forces → nondimensional form → Taylor expansion → linking to **aerodynamic derivatives**.  
4. 🔄 Performing **axes transformation** & defining position/attitude laws in body coordinates.  
5. 🔬 Finding **dynamic derivatives** via analytical-experimental methods.  
6. 📉 Deriving **linear model** (small-perturbation method under turbulence) → state-space form (**A, B matrices**) → substituting derivatives → analyzing **longitudinal/lateral modes** (ξ, ω) at **α = 5°**.  
7. 📊 Representing motion equations as **block diagrams** (kinematic vs. force equations).  
8. 📈 Plotting **time-dependent curves** for dynamics outputs (position, attitude, velocities) under inputs:  
   - (1) δₑ = -2°  
   - (2) δᵣ = -5°  
   - (3) δₐ = -3°  

## 📝 Notes:  
- 🌍 Used MATLAB’s built-in **atmospheric model** (fixed altitude).  
- ⚡ Assumed **constant thrust** (2 × 15 kN).  

## 📋 Model Parameters & Specifications:  
Check the Word file: **`F104 Fighter Dynamic Model`** for:  
- 📊 Profile No. & Flying Parameters  
- 📏 Geometric Characteristics  
- 🦅 Wing & Tail Parameters  
- 📉 Aerodynamic Derivatives (Longitudinal & Lateral-Directional)  
- ➕ Helpful Equations  
