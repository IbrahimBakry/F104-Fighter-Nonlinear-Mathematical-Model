# F104-Fighter-Nonlinear-Mathematical-Model
This project is about building a mathematical model for the F-104A aircraft. It contains two aspects theoretical and programming using MATLAB.

How to run the code:
1. open Aerodynamic_Dervatives.m and eun it.
2. open F104_Project_With_Modifieng.slx and run it.
The other simulink codes can be deleted, they mostly build to debug the different parts of main simulink code: F104_Project_With_Modifieng.slx

The equations in this code are mostly from the following resources:
1.  Performance Stability Dynamics and Control of Airplanes, Bandu N. Pamadi, 1998.
2.  Airplane Flight Dynamics and Automatic Flight Control, Jan Roskam, Part1, 2001.
3.  Flight Dynamics Principles, Michael V. Cook, 2007.
4.  Dynamics of Flight stability and control, Bernard Etkin, 1996.

The Project was focusing on the following:
1. Writing the fighter equations of motion in the compact form, in the body system of coordinate and in the cartesian form.
2. Writing the basic equations of motion for (p_dot, q_dot, r_dot, u_dot, v_dot, and w_dot).
3. Identifying the forces acting on the aircraft and place them in the nondimensional form and then deploying the nondimensional form in Taylor to associate it with aerodynamic derivatives.
4. Performing axes transformation and defining the laws of calculating position and attitude in the body coordinate system.
5. Finding dynamic derivatives in demand (3) by means of analytical-experimental equations.
6. Finding the linear model by the method of small-perturbations when the aircraft is subjected to turbulence on the angle of attack. Then writing the linear model in matrix form (state space module), leave the matrices (A,B) as function of aerodynamic derivatives. Then substituting the aerodynamic derivatives calculated in section (5) into these matrices and determine the longitudinal and Lateral modes of motion (ξ,ω) (consider here α=5 degree, only while calculating the derivatives).
7. Representing the equations of motion (in subsections 2, 3 and 4) in the form of box diagrams with their integration and isolation within two boxes, a box for kinematic equations (kinetic) and a box for force equations.
8. Presenting the output of dynamics (position, attitude, linear and angular velocities) in the form of time-dependent curves, for the following inputs in degrees for one second:
δ_e=-2 ,(2):δ_r=-5,(3):δ_a=-3

Notes:
- A ready-made atmospheric model from the MATLAB library (for the given altitude) was used.
- A fixed value for thrust (2 X 15 KN) was used.

Model Parameters and specifications:
Check the word file: F104 Fighter Dynamic Model
- Profile Num.	Flying Parameters
- Geometric Characteristics
- Wing Parameters
- Longitudinal Tail Parameters 
- Vertical Tail Parameter
- The Aerodynamic Derivatives
- Longitudinal Derivatives
- Lateral - Directional Stability
- Helpful equations. 
