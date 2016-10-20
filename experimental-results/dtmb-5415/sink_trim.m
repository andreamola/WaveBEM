clear all
close all
C = load('sink&trim.csv');

A15 = load('DTMB_Fr015_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink15 = mean(A15(100:end,4))/5.72
trim15 = mean(A15(100:end,6))

A20 = load('DTMB_Fr020_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink20 = mean(A20(300:end,4))/5.72
trim20 = mean(A20(300:end,6))

A22 = load('DTMB_Fr022_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink22 = mean(A22(100:end,4))/5.72
trim22 = mean(A22(100:end,6))

A24 = load('DTMB_Fr024_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink24 = mean(A24(300:end,4))/5.72
trim24 = mean(A24(300:end,6))

A26 = load('DTMB_Fr026_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink26 = mean(A26(300:end,4))/5.72
trim26 = mean(A26(300:end,6))

A28 = load('DTMB_Fr028_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink28 = mean(A28(300:end,4))/5.72
trim28 = mean(A28(300:end,6))

A30 = load('DTMB_Fr030_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink30 = mean(A30(300:end,4))/5.72
trim30 = mean(A30(300:end,6))

A32 = load('DTMB_Fr032_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink32 = mean(A32(300:end,4))/5.72
trim32 = mean(A32(300:end,6))

A34 = load('DTMB_Fr034_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink34 = mean(A34(200:end,4))/5.72
trim34 = mean(A34(200:end,6))

A36 = load('DTMB_Fr036_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink36 = mean(A36(100:end,4))/5.72
trim36 = mean(A36(100:end,6))

A38 = load('DTMB_Fr038_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink38 = mean(A38(100:end,4))/5.72
trim38 = mean(A38(100:end,6))

A40 = load('DTMB_Fr040_FSI_6dofs_symm_num_beach_phi_eta_dot_hull_motions.txt');
sink40 = mean(A40(40:end,4))/5.72
trim40 = mean(A40(40:end,6))

Fr = [0.15 0.2 0.22 0.24 0.26 0.28 0.3 0.32 0.34 0.36 0.38 0.40];
sink = [sink15 sink20 sink22 sink24 sink26 sink28 sink30 sink32 sink34 sink36 sink38 sink40];
trim = [trim15 trim20 trim22 trim24 trim26 trim28 trim30 trim32 trim34 trim36 trim38 trim40];

figure(1)
hold off
plot(C(:,1)/sqrt(9.81*5.72),-C(:,4)/1000,'o-','Linewidth',2)
hold on
grid on
plot(Fr,sink,'r*--','Linewidth',2)
legend('Experimental','WaveBEM')
title('DTMB-5415 Sink','Fontsize',18)
ylabel('Z^G/L_{pp}','Fontsize',14)
xlabel('Fr','Fontsize',14)
print -dpng -color sink_DTMB-5415.png

figure(2)
hold off
plot(C(:,2),C(:,3)*pi/180,'o-','Linewidth',2)
hold on
grid on
plot(Fr,trim,'r*--','Linewidth',2)
legend('Experimental','WaveBEM')
title('DTMB-5415 Trim Angle','Fontsize',18)
ylabel('\theta [rad]','Fontsize',14)
xlabel('Fr','Fontsize',14)
print -dpng -color trim_DTMB-5415.png
