clear all
close all
C = load('totalDrag.csv');
old_drag = load('DTMB-5415_old_waveBEM_drag.csv');

A15 = load('DTMB_Fr015_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag15 = mean(A15(100:end,2)-A15(100:end,5)+A15(100:end,8)+A15(100:end,11))

A20 = load('DTMB_Fr020_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag20 = mean(A20(300:end,2)-A20(300:end,5)+A20(300:end,8)+A20(300:end,11))

A22 = load('DTMB_Fr022_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag22 = mean(A22(100:end,2)-A22(100:end,5)+A22(100:end,8)+A22(100:end,11))

A24 = load('DTMB_Fr024_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag24 = mean(A24(300:end,2)-A24(300:end,5)+A24(300:end,8)+A24(300:end,11))

A26 = load('DTMB_Fr026_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag26 = mean(A26(300:end,2)-A26(300:end,5)+A26(300:end,8)+A26(300:end,11))

A28 = load('DTMB_Fr028_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag28 = mean(A28(300:end,2)-A28(300:end,5)+A28(300:end,8)+A28(300:end,11))

A30 = load('DTMB_Fr030_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag30 = mean(A30(300:end,2)-A30(300:end,5)+A30(300:end,8)+A30(300:end,11))

A32 = load('DTMB_Fr032_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag32 = mean(A32(300:end,2)-A32(300:end,5)+A32(300:end,8)+A32(300:end,11))

A34 = load('DTMB_Fr034_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag34 = mean(A34(200:end,2)-A34(200:end,5)+A34(200:end,8)+A34(200:end,11))

A36 = load('DTMB_Fr036_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag36 = mean(A36(100:end,2)-A36(100:end,5)+A36(100:end,8)+A36(100:end,11))

A38 = load('DTMB_Fr038_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag38 = mean(A38(100:end,2)-A38(100:end,5)+A38(100:end,8)+A38(100:end,11))

A40 = load('DTMB_Fr040_FSI_6dofs_symm_num_beach_phi_eta_dot_force.txt');
drag40 = mean(A40(40:end,2)-A40(40:end,5)+A40(40:end,8)+A40(40:end,11))

Fr = [0.15 0.2 0.22 0.24 0.26 0.28 0.3 0.32 0.34 0.36 0.38 0.40];
drag = [drag15 drag20 drag22 drag24 drag26 drag28 drag30 drag32 drag34 drag36 drag38 drag40];

figure(1)
plot(C(:,1)/sqrt(9.81*5.72),C(:,3)*9.81,'o-','Linewidth',2)
hold on
grid on
plot(Fr,drag,'r*--','Linewidth',2)
legend('Experimental','WaveBEM')
title('DTMB-5415 Total Resistance','Fontsize',18)
ylabel('R [N]','Fontsize',14)
xlabel('Fr','Fontsize',14)
print -dpng -color drag_DTMB-5415.png

figure(2)
plot(C(:,1)/sqrt(9.81*5.72),C(:,3)*9.81,'ko--','Linewidth',4)
hold on
grid on
plot(old_drag(:,1),9.81*old_drag(:,2),'kd-',"linewidth",4, "MarkerFaceColor", "k")
legend('Experimental','WaveBEM')
title('DTMB-5415 Total Resistance','Fontsize',18)
ylabel('R [N]','Fontsize',14)
xlabel('Fr','Fontsize',14)
axis([0.2 0.41 20 160])
print -dpng -color old_drag_DTMB-5415.png
