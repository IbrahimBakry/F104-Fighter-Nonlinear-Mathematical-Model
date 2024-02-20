function [CY]=CY(Alpha)
alpha=Alpha(1);

Alpha(2)=0;
Alpha(3)=0;
Mach=1.8;
CLa=2.466;
CLat=2.533;
CLav=1.273974;
CDu=0;
pi=22/7;
alphazero=-1.5/57.3;
theta0=2/57.3;
gamma=-9;
cr=12.538;
ct=4.921;
c_dash=9.55;
dCmf=0.015;
CDo=0.01;
Xcg=0.21;
Xac=0.25;
b=21.94;
Zw=1;
e=0.85;
bf=3.61;
S=196.1;
crt=6.269;
ctt=2.46;
ct_dash=4.364;
bt=10.97;
Zt=6.3;
etta_t=0.9;
crv=8.3;
ctv=6.2;
cv_dash=7.3;
K=0.95;
bv=6;
Zv=3;
Lv=(2.5).*(cv_dash);
Lt=(4.5).*(ct_dash);
Cm_delta_e=-0.1;
CmM=-0.01;
CDM=0;
CDa_dote=0;
CDq=0;
Cl_delta_e=0.52;
ClM=-0.2;
Cl_delta_a=0.017;
Cn_delta_a=0.0025;
Cy_delta_r=0.05;
Cl_delta_r=0.008;
Cn_delta_r=-0.04;
Cl_beta=-0.09;
segma_betta_a=-0.01;
segma_betta_gamma=-0.85;
segma_betta_wb=0.09;
Cn_beta=0.24;
Clr=0.15;
Cnr=-0.65;
lamdat=ctt/crt;
St=((bt/2).*crt.*(1+lamdat));
V1=(St.*Lt)/(S.*c_dash);
lamdav=ctv/crv;
Sv=((bv/2).*crv.*(1+lamdav));
A=(b^2)/S;
dw=((1.62).*(CLa))/((pi).*(A));
dCm=Xcg-Xac+(dCmf)-(CLat/CLa).*(1-dw).*V1.*(etta_t);
k=1/(pi.*A.*e);
CL=CLa.*(alpha-alphazero);
Z=Zv.*cos(alpha)-Lv.*sin(alpha);
Cy_betta_v=-K.*CLav.*(1.1778).*(Sv/S);
Cyp=(2.*(Z-Zv).*Cy_betta_v)/b;
Clp=(sqrt((2.*(Z/b).*((Z-Zv)/b))^2)).*Cy_betta_v;
Cnp=-(2/b).*(Lv.*cos(alpha)+Zv.*sin(alpha)).*((Z-Zv)/b).*Cy_betta_v;
Cyr=-(2/b).*(Lv.*cos(alpha)+Zv.*sin(alpha)).*Cy_betta_v;
Cy_phi=CL.*cos(theta0);
segma_beta=(segma_betta_a).*alpha+(segma_betta_gamma).*(gamma/57.3)+(segma_betta_wb);
Cy_betta_dote=2.*CLav.*(segma_beta).*(Sv/S).*((Lv.*cos(alpha)+Zv.*sin(alpha))/b);
Cl_betta_dote=(Cy_betta_dote).*((Zv.*cos(alpha)-Lv.*sin(alpha))/b);
Cn_betta_dote=(-Cy_betta_dote).*((Lv.*cos(alpha)+Zv.*sin(alpha))/b);

CY=[Cy_betta_v;
    Cy_betta_dote;
    Cyp;
    Cyr;
    Cy_phi;
    0];
end