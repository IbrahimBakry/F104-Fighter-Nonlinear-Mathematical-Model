%% Aerodynamic Coefficients;
clc
Donee;

% Alpha Var.
Ia=-2/57.3;
Ea=2/57.3;

%% Longetudinal Dervatives;
% Calculating CL_alpha

A=b_w^2/S_w;
if M >= 1
    beta = sqrt(M^2 - 1);
else
    beta = sqrt(1 - M^2);
end
K_w = a0_w/(2*pi);
Kd= 1/(e*pi*A);
Lambda_C2 = atan(tan(Lambda_LE)-(Cr_w + Ct_w)/b_w);
Lambda_C4 = atan(tan(Lambda_LE)-(Cr_w + Ct_w)/(2*b_w));
% CL_alpha = (2*pi*A)/(2+sqrt(((A^2*beta^2)/K_w^2)*(1+tan(Lambda_C2)^2/beta^2)+4));
CL_alpha=2.466;

% Calculating CL
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
CL(i) = CL_alpha.*(alpha - alpha_0); 
end

% Calculating CD_alpha
CD_alpha = 2.*Kd.*CL.*CL_alpha;

% Calculating Cm_alpha
K_t = a0_t/(2*pi);
A_t=b_t^2/S_t;
Lambda_C2_t = atan(tan(Lambda_LE)-(Cr_t + Ct_t)/b_t);
V1=S_t*l_t/(S_w*C);
deoda=1.62*CL_alpha/(pi*A) ; % Downwash
CL_alpha_tail = (2*pi*A_t)/(2+sqrt(((A_t^2*beta^2)/K_t^2)*(1+tan(Lambda_C2_t)^2/beta^2)+4));
CmoCL = Xcg - Xac + CmoCL_f - (CL_alpha_tail/CL_alpha)*(1 - deoda)*Eta_t*V1;
Cm_alpha=CL_alpha*CmoCL;

% Calculating CL_u, Cm_u and CD_u
if M >= 0.5
    CL_u = M*CL_M;
    Cm_u = M*Cm_M;
    CD_u = M*CD_M;

else
    CL_u = 0;
    Cm_u = 0;
    CD_u = 0;
end
% CL_u=0;
% Cm_u=0;
% CD_u=0;

% Calculating CL_q
CL_q = 2*CL_alpha_tail*V1*Eta_t;

% Calculating Cm_q
Cm_q = - CL_q * (l_t/C);

% Calculating CD_q
CD_q = 0;

% Calculating CL_alpha_dot
CL_alpha_dot = 2*CL_alpha_tail*V1*Eta_t*deoda;

% Calculating Cm_alpha_dot
Cm_alpha_dot = - CL_alpha_dot * (l_t/C);



%% Lateral_Directional Dervatives;
i=0;
for alpha=Ia:0.1/57.3:Ea
i=i+1;
Sigma_beta(i) = Sigma_beta_alpha * alpha + Sigma_beta_gamma * (Gamma/57.3) + Sigma_beta_WB;
end

% Calculating CL_alpha_vtail
i=0;
for beta = Ia:0.1/57.3:Ea
i=i+1;
K_v = a0_v/(2*pi);
Lambda_C2_vtail = atan(tan(Lambda_LE)-(Cr_vt + Ct_vt)/b_vt);
Lambda_C4_vtail = atan(tan(Lambda_LE)-(Cr_vt + Ct_vt)/(2*b_vt));
CL_alpha_vtail(i) = (2*pi*A_eff)/(2+sqrt(((A_eff^2*beta^2)/K_v^2)*(1+tan(Lambda_C2_vtail)^2/beta^2)+4));
end
% Calculating Cy_beta;
i=0;
for beta = Ia:0.1/57.3:Ea
i=i+1;
Sidewash = 0.724 + (3.06*(S_v/S_w))/(1 + cos(Lambda_C4_vtail) + 0.4*z_w/dfmax +A*(9*10^-4));
Cy_beta(i) = - Ky*CL_alpha_vtail(i)*Sidewash*S_v/S_w;
end

% Calculating Cl_p;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
z(i)=z_v.*cos(alpha)-l_v.*sin(alpha);
Cl_p(i) = abs(2.*(z(i)/b_w).*(z(i)-z_v)/b_w).*Cy_beta(i);
end

% Calculating Cn_p;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Tao(i) = l_v*cos(alpha)+z_v*sin(alpha);
Cn_p(i) = -(2/b_w).*((z(i)-z_v)/b_w).*Tao(i).*Cy_beta(i);
end

% Calculating Cy_r;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Cy_r(i) = -(2/b_w).*Tao(i).*Cy_beta(i);
end

% Calculating Cl_r;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Cl_r(i) = -(2/b_w^2).*Tao(i).*z(i).*Cy_beta(i);
end

% Calculating Cn_r;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Cn_r(i) = (2/b_w^2).*Tao(i)^2.*Cy_beta(i);
end

% Calculating Cy_beta_dot;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Cy_beta_dot(i) = 2.*CL_alpha_vtail(i).*Sigma_beta(i).*(S_v/S_w).*(Tao(i)./b_w);
end

% Calculating Cl_beta_dot;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Cl_beta_dot(i) = Cy_beta_dot(i)*((z_v.*cos(alpha)-l_v.*sin(alpha))/b_w);
end

% Calculating Cn_beta_dot;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Cn_beta_dot(i) = - Cy_beta_dot(i).*(Tao(i)/b_w);
end

% Calculating Cl_beta;
i=0;
for alpha = Ia:0.1/57.3:Ea
i=i+1;
Cl_beta(i) = - Ky.*CL_alpha_vtail(i).*Sidewash.*(S_v/S_w).*(z(i)./b_w);
end
% Calculating Cn_beta;
Cn_beta = 0.0024;


%% in Boody Axis System;

i=0;
for alpha = Ia:0.1/57.3:Ea
    i=i+1;
CD(i) = +0.01 +Kd*CL(i)^2;
CX_alpha(i) = CL(i) - CD_alpha(i);
CX_q = -CD_q;
CX_alpha_dot = 0;
CX_u(i) = -2*CD(i) - CD_u;

CX_delta_elevator = 0;

CZ_alpha(i) = -CL_alpha -CD(i);
CZ_q = -CL_q;
CZ_alpha_dot = - CL_alpha_dot;
CZ_u(i) = -2*CL(i) - CL_u;
CZ_delta_elevator = -CL_delta_elevator;

end

alpha = Ia:0.1/57.3:Ea;
beta = -1/57.3:0.1/57.3:3/57.3;








