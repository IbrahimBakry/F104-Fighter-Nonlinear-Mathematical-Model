%% Donee
clear all

%% Plane Parameters
W = 16300;
Ix = 3549;
Iy = 58611;
Iz = 59669;
% Ixz = 325;
Ixz=0;
% Ixz=0;
Q= [Ix 0 -Ixz;0 Iy 0;-Ixz 0 Iz]; 

% Wing Parameters;
b_w=21.94 ; % [ft]
a0_w=0.1*57.3 ; %[1/rad]
Cr_w=12.538 ; % [ft]
Ct_w=4.921 ; % [ft]
S_w=(Cr_w + Ct_w)*b_w/4 ; %[ft^2]
% S_w=196;
Lambda_LE=17/57.3 ; %[Rad]
e=0.85 ; %Ozwald
% alpha= Var form inside; % [Rad]
alpha_0=-1.5/57.3 ; %[rad]
C=9.55 ; % Mean Aerodynamic Chord
% Xcg=0.21*9.55 ; 
Xcg=0.22*9.55;
Xac=0.25*9.55 ;
CmoCL_f=0.015 ;
z_w=1 ; % [ft]
dfmax=3.61 ; % [ft]
Gamma= -9/57.3; % [Rad] Dihedral Angle 
M=1.8;

% Tail Parameters;
a0_t=0.05*57.3 ; %[1/Rad]
b_t=10.97 ; % [ft]
Cr_t=6.269 ; % [ft]
Ct_t=2.46 ;  % [ft]
S_t=(Cr_t + Ct_t)*b_t/4 ; %[ft^2]
Eta_t= 0.9;
l_t=4.5*4.364 ; % Distance Between Xcg and Tail Xac;
Ky=0.95;
z_t=6.3 ;


% Vertical Tail Parameters;
A_eff=0.9 ;
b_vt=6 ;  % [ft]
Cr_vt=8.3 ;  % [ft]
Ct_vt=6.2 ;  % [ft]
S_v=(Cr_vt + Ct_vt)*b_vt/4 ; %[ft^2]
a0_v=0.05*57.3 ;
z_v=3 ; % [ft]
l_v=2.5*7.3 ; % [ft]
Sigma_beta_alpha=-0.01 ;
Sigma_beta_gamma=-0.85 ;
Sigma_beta_WB=0.09 ;

% Aerodynamic Dervatives;
CL_M=0 ;
% Cm_M=-0.01 ;
CD_M=0 ;
% CL_M=0;
Cm_M=0;
% CD_M=0;

Cm_delta_elevator= -0.2;
CL_delta_elevator= 0.52;

Cl_delta_aileron=0.017;
Cn_delta_aileron=0.0025;
Cy_delta_rudder=0.05;
Cl_delta_rudder=0.008;
Cn_delta_rudder=-0.04;
% Cl_beta=-0.09;
% Cn_beta=0.0024;
% Cl_r=0.15;
% Cn_r=-0.65;






