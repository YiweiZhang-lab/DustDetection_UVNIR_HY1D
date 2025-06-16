% % File     :  sensiAnaly2_Fig3.m
% % Purpose  :  敏感性分析 
% % Date     :  25-Oct-2023, 23-Aug-2024
% % Coded by :  Y. Zhang
% % Note     :  接 sensiAnaly1.m，先运行 sensiAnaly1.m 保存变量，这个主要侧重绘图
% % 
clc;
tic;
wl = [385 412 443 490 520 565 670 750 865];
R_ta05_VZA05_Dust = [Rhorc385_ta05_SZA30_DRH90(2) Rhorc412_ta05_SZA30_DRH90(2) Rhorc443_ta05_SZA30_DRH90(2) Rhorc490_ta05_SZA30_DRH90(2) Rhorc520_ta05_SZA30_DRH90(2) Rhorc565_ta05_SZA30_DRH90(2) Rhorc670_ta05_SZA30_DRH90(2) Rhorc750_ta05_SZA30_DRH90(2) Rhorc860_ta05_SZA30_DRH90(2)]./Rhorc860_ta05_SZA30_DRH90(2);
R_ta05_VZA05_Mari = [Rhorc385_ta05_SZA30_Mari(2) Rhorc412_ta05_SZA30_Mari(2) Rhorc443_ta05_SZA30_Mari(2) Rhorc490_ta05_SZA30_Mari(2) Rhorc520_ta05_SZA30_Mari(2) Rhorc565_ta05_SZA30_Mari(2) Rhorc670_ta05_SZA30_Mari(2) Rhorc750_ta05_SZA30_Mari(2) Rhorc860_ta05_SZA30_Mari(2)]./Rhorc860_ta05_SZA30_Mari(2);
R_ta10_VZA05_Dust = [Rhorc385_ta10_SZA30_DRH90(2) Rhorc412_ta10_SZA30_DRH90(2) Rhorc443_ta10_SZA30_DRH90(2) Rhorc490_ta10_SZA30_DRH90(2) Rhorc520_ta10_SZA30_DRH90(2) Rhorc565_ta10_SZA30_DRH90(2) Rhorc670_ta10_SZA30_DRH90(2) Rhorc750_ta10_SZA30_DRH90(2) Rhorc860_ta10_SZA30_DRH90(2)]./Rhorc860_ta10_SZA30_DRH90(2);
R_ta10_VZA05_Mari = [Rhorc385_ta10_SZA30_Mari(2) Rhorc412_ta10_SZA30_Mari(2) Rhorc443_ta10_SZA30_Mari(2) Rhorc490_ta10_SZA30_Mari(2) Rhorc520_ta10_SZA30_Mari(2) Rhorc565_ta10_SZA30_Mari(2) Rhorc670_ta10_SZA30_Mari(2) Rhorc750_ta10_SZA30_Mari(2) Rhorc860_ta10_SZA30_Mari(2)]./Rhorc860_ta10_SZA30_Mari(2);
R_ta20_VZA05_Dust = [Rhorc385_ta20_SZA30_DRH90(2) Rhorc412_ta20_SZA30_DRH90(2) Rhorc443_ta20_SZA30_DRH90(2) Rhorc490_ta20_SZA30_DRH90(2) Rhorc520_ta20_SZA30_DRH90(2) Rhorc565_ta20_SZA30_DRH90(2) Rhorc670_ta20_SZA30_DRH90(2) Rhorc750_ta20_SZA30_DRH90(2) Rhorc860_ta20_SZA30_DRH90(2)]./Rhorc860_ta20_SZA30_DRH90(2);
R_ta20_VZA05_Mari = [Rhorc385_ta20_SZA30_Mari(2) Rhorc412_ta20_SZA30_Mari(2) Rhorc443_ta20_SZA30_Mari(2) Rhorc490_ta20_SZA30_Mari(2) Rhorc520_ta20_SZA30_Mari(2) Rhorc565_ta20_SZA30_Mari(2) Rhorc670_ta20_SZA30_Mari(2) Rhorc750_ta20_SZA30_Mari(2) Rhorc860_ta20_SZA30_Mari(2)]./Rhorc860_ta20_SZA30_Mari(2);

R_ta05_VZA20_Dust = [Rhorc385_ta05_SZA30_DRH90(5) Rhorc412_ta05_SZA30_DRH90(5) Rhorc443_ta05_SZA30_DRH90(5) Rhorc490_ta05_SZA30_DRH90(5) Rhorc520_ta05_SZA30_DRH90(5) Rhorc565_ta05_SZA30_DRH90(5) Rhorc670_ta05_SZA30_DRH90(5) Rhorc750_ta05_SZA30_DRH90(5) Rhorc860_ta05_SZA30_DRH90(5)]./Rhorc860_ta05_SZA30_DRH90(5);
R_ta05_VZA20_Mari = [Rhorc385_ta05_SZA30_Mari(5) Rhorc412_ta05_SZA30_Mari(5) Rhorc443_ta05_SZA30_Mari(5) Rhorc490_ta05_SZA30_Mari(5) Rhorc520_ta05_SZA30_Mari(5) Rhorc565_ta05_SZA30_Mari(5) Rhorc670_ta05_SZA30_Mari(5) Rhorc750_ta05_SZA30_Mari(5) Rhorc860_ta05_SZA30_Mari(5)]./Rhorc860_ta05_SZA30_Mari(5);
R_ta10_VZA20_Dust = [Rhorc385_ta10_SZA30_DRH90(5) Rhorc412_ta10_SZA30_DRH90(5) Rhorc443_ta10_SZA30_DRH90(5) Rhorc490_ta10_SZA30_DRH90(5) Rhorc520_ta10_SZA30_DRH90(5) Rhorc565_ta10_SZA30_DRH90(5) Rhorc670_ta10_SZA30_DRH90(5) Rhorc750_ta10_SZA30_DRH90(5) Rhorc860_ta10_SZA30_DRH90(5)]./Rhorc860_ta10_SZA30_DRH90(5);
R_ta10_VZA20_Mari = [Rhorc385_ta10_SZA30_Mari(5) Rhorc412_ta10_SZA30_Mari(5) Rhorc443_ta10_SZA30_Mari(5) Rhorc490_ta10_SZA30_Mari(5) Rhorc520_ta10_SZA30_Mari(5) Rhorc565_ta10_SZA30_Mari(5) Rhorc670_ta10_SZA30_Mari(5) Rhorc750_ta10_SZA30_Mari(5) Rhorc860_ta10_SZA30_Mari(5)]./Rhorc860_ta10_SZA30_Mari(5);
R_ta20_VZA20_Dust = [Rhorc385_ta20_SZA30_DRH90(5) Rhorc412_ta20_SZA30_DRH90(5) Rhorc443_ta20_SZA30_DRH90(5) Rhorc490_ta20_SZA30_DRH90(5) Rhorc520_ta20_SZA30_DRH90(5) Rhorc565_ta20_SZA30_DRH90(5) Rhorc670_ta20_SZA30_DRH90(5) Rhorc750_ta20_SZA30_DRH90(5) Rhorc860_ta20_SZA30_DRH90(5)]./Rhorc860_ta20_SZA30_DRH90(5);
R_ta20_VZA20_Mari = [Rhorc385_ta20_SZA30_Mari(5) Rhorc412_ta20_SZA30_Mari(5) Rhorc443_ta20_SZA30_Mari(5) Rhorc490_ta20_SZA30_Mari(5) Rhorc520_ta20_SZA30_Mari(5) Rhorc565_ta20_SZA30_Mari(5) Rhorc670_ta20_SZA30_Mari(5) Rhorc750_ta20_SZA30_Mari(5) Rhorc860_ta20_SZA30_Mari(5)]./Rhorc860_ta20_SZA30_Mari(5);

R_ta05_VZA35_Dust = [Rhorc385_ta05_SZA30_DRH90(8) Rhorc412_ta05_SZA30_DRH90(8) Rhorc443_ta05_SZA30_DRH90(8) Rhorc490_ta05_SZA30_DRH90(8) Rhorc520_ta05_SZA30_DRH90(8) Rhorc565_ta05_SZA30_DRH90(8) Rhorc670_ta05_SZA30_DRH90(8) Rhorc750_ta05_SZA30_DRH90(8) Rhorc860_ta05_SZA30_DRH90(8)]./Rhorc860_ta05_SZA30_DRH90(8);
R_ta05_VZA35_Mari = [Rhorc385_ta05_SZA30_Mari(8) Rhorc412_ta05_SZA30_Mari(8) Rhorc443_ta05_SZA30_Mari(8) Rhorc490_ta05_SZA30_Mari(8) Rhorc520_ta05_SZA30_Mari(8) Rhorc565_ta05_SZA30_Mari(8) Rhorc670_ta05_SZA30_Mari(8) Rhorc750_ta05_SZA30_Mari(8) Rhorc860_ta05_SZA30_Mari(8)]./Rhorc860_ta05_SZA30_Mari(8);
R_ta10_VZA35_Dust = [Rhorc385_ta10_SZA30_DRH90(8) Rhorc412_ta10_SZA30_DRH90(8) Rhorc443_ta10_SZA30_DRH90(8) Rhorc490_ta10_SZA30_DRH90(8) Rhorc520_ta10_SZA30_DRH90(8) Rhorc565_ta10_SZA30_DRH90(8) Rhorc670_ta10_SZA30_DRH90(8) Rhorc750_ta10_SZA30_DRH90(8) Rhorc860_ta10_SZA30_DRH90(8)]./Rhorc860_ta10_SZA30_DRH90(8);
R_ta10_VZA35_Mari = [Rhorc385_ta10_SZA30_Mari(8) Rhorc412_ta10_SZA30_Mari(8) Rhorc443_ta10_SZA30_Mari(8) Rhorc490_ta10_SZA30_Mari(8) Rhorc520_ta10_SZA30_Mari(8) Rhorc565_ta10_SZA30_Mari(8) Rhorc670_ta10_SZA30_Mari(8) Rhorc750_ta10_SZA30_Mari(8) Rhorc860_ta10_SZA30_Mari(8)]./Rhorc860_ta10_SZA30_Mari(8);
R_ta20_VZA35_Dust = [Rhorc385_ta20_SZA30_DRH90(8) Rhorc412_ta20_SZA30_DRH90(8) Rhorc443_ta20_SZA30_DRH90(8) Rhorc490_ta20_SZA30_DRH90(8) Rhorc520_ta20_SZA30_DRH90(8) Rhorc565_ta20_SZA30_DRH90(8) Rhorc670_ta20_SZA30_DRH90(8) Rhorc750_ta20_SZA30_DRH90(8) Rhorc860_ta20_SZA30_DRH90(8)]./Rhorc860_ta20_SZA30_DRH90(8);
R_ta20_VZA35_Mari = [Rhorc385_ta20_SZA30_Mari(8) Rhorc412_ta20_SZA30_Mari(8) Rhorc443_ta20_SZA30_Mari(8) Rhorc490_ta20_SZA30_Mari(8) Rhorc520_ta20_SZA30_Mari(8) Rhorc565_ta20_SZA30_Mari(8) Rhorc670_ta20_SZA30_Mari(8) Rhorc750_ta20_SZA30_Mari(8) Rhorc860_ta20_SZA30_Mari(8)]./Rhorc860_ta20_SZA30_Mari(8);

R_ta05_VZA50_Dust = [Rhorc385_ta05_SZA30_DRH90(11) Rhorc412_ta05_SZA30_DRH90(11) Rhorc443_ta05_SZA30_DRH90(11) Rhorc490_ta05_SZA30_DRH90(11) Rhorc520_ta05_SZA30_DRH90(11) Rhorc565_ta05_SZA30_DRH90(11) Rhorc670_ta05_SZA30_DRH90(11) Rhorc750_ta05_SZA30_DRH90(11) Rhorc860_ta05_SZA30_DRH90(11)]./Rhorc860_ta05_SZA30_DRH90(11);
R_ta05_VZA50_Mari = [Rhorc385_ta05_SZA30_Mari(11) Rhorc412_ta05_SZA30_Mari(11) Rhorc443_ta05_SZA30_Mari(11) Rhorc490_ta05_SZA30_Mari(11) Rhorc520_ta05_SZA30_Mari(11) Rhorc565_ta05_SZA30_Mari(11) Rhorc670_ta05_SZA30_Mari(11) Rhorc750_ta05_SZA30_Mari(11) Rhorc860_ta05_SZA30_Mari(11)]./Rhorc860_ta05_SZA30_Mari(11);
R_ta10_VZA50_Dust = [Rhorc385_ta10_SZA30_DRH90(11) Rhorc412_ta10_SZA30_DRH90(11) Rhorc443_ta10_SZA30_DRH90(11) Rhorc490_ta10_SZA30_DRH90(11) Rhorc520_ta10_SZA30_DRH90(11) Rhorc565_ta10_SZA30_DRH90(11) Rhorc670_ta10_SZA30_DRH90(11) Rhorc750_ta10_SZA30_DRH90(11) Rhorc860_ta10_SZA30_DRH90(11)]./Rhorc860_ta10_SZA30_DRH90(11);
R_ta10_VZA50_Mari = [Rhorc385_ta10_SZA30_Mari(11) Rhorc412_ta10_SZA30_Mari(11) Rhorc443_ta10_SZA30_Mari(11) Rhorc490_ta10_SZA30_Mari(11) Rhorc520_ta10_SZA30_Mari(11) Rhorc565_ta10_SZA30_Mari(11) Rhorc670_ta10_SZA30_Mari(11) Rhorc750_ta10_SZA30_Mari(11) Rhorc860_ta10_SZA30_Mari(11)]./Rhorc860_ta10_SZA30_Mari(11);
R_ta20_VZA50_Dust = [Rhorc385_ta20_SZA30_DRH90(11) Rhorc412_ta20_SZA30_DRH90(11) Rhorc443_ta20_SZA30_DRH90(11) Rhorc490_ta20_SZA30_DRH90(11) Rhorc520_ta20_SZA30_DRH90(11) Rhorc565_ta20_SZA30_DRH90(11) Rhorc670_ta20_SZA30_DRH90(11) Rhorc750_ta20_SZA30_DRH90(11) Rhorc860_ta20_SZA30_DRH90(11)]./Rhorc860_ta20_SZA30_DRH90(11);
R_ta20_VZA50_Mari = [Rhorc385_ta20_SZA30_Mari(11) Rhorc412_ta20_SZA30_Mari(11) Rhorc443_ta20_SZA30_Mari(11) Rhorc490_ta20_SZA30_Mari(11) Rhorc520_ta20_SZA30_Mari(11) Rhorc565_ta20_SZA30_Mari(11) Rhorc670_ta20_SZA30_Mari(11) Rhorc750_ta20_SZA30_Mari(11) Rhorc860_ta20_SZA30_Mari(11)]./Rhorc860_ta20_SZA30_Mari(11);

%% ------------------- 图3a ----------------------------
% % *********** VZA=5 ************************
figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])
plot(wl, R_ta05_VZA05_Dust, 'ro-', ...
     wl, R_ta05_VZA05_Mari, 'bo-',...
     wl, R_ta10_VZA05_Dust, 'r*-',...
     wl, R_ta10_VZA05_Mari, 'b*-', ...
     wl, R_ta20_VZA05_Dust, 'rs-',...
     wl, R_ta20_VZA05_Mari, 'bs-', 'linewi', 1);

set(gca, 'xlim', [300 900], 'ylim', [0 3.5], 'xtick', 300:100:900, 'ytick', 0:0.5:3.5, ...
    'xticklabels', {'300', '400', '500', '600', '700', '800', '900'}, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5', '2.0', '2.5', '3.0', '3.5'}, ...
    'linewi', 1.5, 'Fontname', 'Times New Roman', 'FontSize', 12, ...
    'XTickLabelRotation', 0);

xlabel('Wavelength (nm)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 13);

%% ------------------- 图3b ----------------------------
% % *********** VZA=20 ************************ 
figure(2); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])
plot(wl, R_ta05_VZA20_Dust, 'ro-', ...
     wl, R_ta05_VZA20_Mari, 'bo-',...
     wl, R_ta10_VZA20_Dust, 'r*-',...
     wl, R_ta10_VZA20_Mari, 'b*-', ...
     wl, R_ta20_VZA20_Dust, 'rs-',...
     wl, R_ta20_VZA20_Mari, 'bs-', 'linewi', 1);

set(gca, 'xlim', [300 900], 'ylim', [0 3.5], 'xtick', 300:100:900, 'ytick', 0:0.5:3.5, ...
    'xticklabels', {'300', '400', '500', '600', '700', '800', '900'}, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5', '2.0', '2.5', '3.0', '3.5'}, ...
    'linewi', 1.5, 'Fontname', 'Times New Roman', 'FontSize', 12, ...
    'XTickLabelRotation', 0);

xlabel('Wavelength (nm)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 13);

%% ------------------- 图3c ----------------------------
% % *********** VZA=35 ************************
figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])
plot(wl, R_ta05_VZA35_Dust, 'ro-', ...
     wl, R_ta05_VZA35_Mari, 'bo-',...
     wl, R_ta10_VZA35_Dust, 'r*-',...
     wl, R_ta10_VZA35_Mari, 'b*-', ...
     wl, R_ta20_VZA35_Dust, 'rs-',...
     wl, R_ta20_VZA35_Mari, 'bs-', 'linewi', 1);

set(gca, 'xlim', [300 900], 'ylim', [0 3.5], 'xtick', 300:100:900, 'ytick', 0:0.5:3.5, ...
    'xticklabels', {'300', '400', '500', '600', '700', '800', '900'}, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5', '2.0', '2.5', '3.0', '3.5'}, ...
    'linewi', 1.5, 'Fontname', 'Times New Roman', 'FontSize', 12, ...
    'XTickLabelRotation', 0);

xlabel('Wavelength (nm)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 13);

%% ------------------- 图3d ----------------------------
% % *********** VZA=50 ************************
figure(4); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])
plot(wl, R_ta05_VZA50_Dust, 'ro-', ...
     wl, R_ta05_VZA50_Mari, 'bo-',...
     wl, R_ta10_VZA50_Dust, 'r*-',...
     wl, R_ta10_VZA50_Mari, 'b*-', ...
     wl, R_ta20_VZA50_Dust, 'rs-',...
     wl, R_ta20_VZA50_Mari, 'bs-', 'linewi', 1);

set(gca, 'xlim', [300 900], 'ylim', [0 3.5], 'xtick', 300:100:900, 'ytick', 0:0.5:3.5, ...
    'xticklabels', {'300', '400', '500', '600', '700', '800', '900'}, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5', '2.0', '2.5', '3.0', '3.5'}, ...
    'linewi', 1.5, 'Fontname', 'Times New Roman', 'FontSize', 12, ...
    'XTickLabelRotation', 0);

xlabel('Wavelength (nm)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 13);


%% 画出 legend (原始)
figure(5); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 20, 6])
set(gca, 'xlim', [0 10], 'ylim', [0 10])

% Maritime
annotation('line', 'X', [0.14 0.17], 'Y', [0.80 0.80], 'color', [0, 0, 255]/255, 'linewi', 1.5);
annotation('textbox', [0.17 0.68 0.10 0.18], 'String', 'Maritime',  'Fontname', 'Times New Roman', 'FontSize', 13, 'LineStyle', 'none');
% Dust
annotation('line', 'X', [0.28 0.31], 'Y', [0.80 0.80], 'color', [255, 0, 0]/255, 'linewi', 1.5);
annotation('textbox', [0.31 0.68 0.10 0.18], 'String', 'Dust',  'Fontname', 'Times New Roman', 'FontSize', 13, 'LineStyle', 'none');
hold on;
% taua=0.5 1.0 2.0
x1=3;y1=2;
x2=4.5;y2=y1;
x3=6;y3=y1;
x4=7.5;y4=y1;
hp = plot(x1, y1, 'ko', x2, y2, 'k*', x3, y3, 'ks');

legend(hp([1 2 3]), '\tau=0.5', '\tau=1.0', '\tau=2.0',...
    'Fontname', 'Times New Roman', 'FontSize', 13, 'box', 'off', 'Orientation', 'horizon');




