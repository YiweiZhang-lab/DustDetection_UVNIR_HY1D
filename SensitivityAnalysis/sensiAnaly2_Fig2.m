% % File     :  sensiAnaly2_Fig2.m
% % Purpose  :  敏感性分析 
% % Date     :  29-Mar, 6-Oct 2023, 8-Jul-2024
% % Coded by :  Y. Zhang
% % Note     :  接 sensiAnaly1.m，先运行 sensiAnaly1.m 保存变量，这个主要侧重绘图
% %             DRH=Dust RH
clc;
tic;

% % ------------------- 图2 不同气溶胶光学厚度----------------------------
%% ------------------- SZA=10 --------------------------
% % ***********图2(a) ta=0.5************************
figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '-p',...
     VZA, Rhorc412_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '-s',...
     VZA, Rhorc443_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '-^',...
     VZA, Rhorc490_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '-.',...
     VZA, Rhorc520_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '-x',...
     VZA, Rhorc565_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '-o', ...
     VZA, Rhorc670_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '-+',...
     VZA, Rhorc750_ta05_SZA10_DRH90./Rhorc860_ta05_SZA10_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 2.5], 'ytick', 0:0.5:2.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5', '2.0', '2.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2a_ta05_1','.png'])

% % ***********图2(b) ta=1.0************************
figure(2); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '-p',...
     VZA, Rhorc412_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '-s',...
     VZA, Rhorc443_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '-^',...
     VZA, Rhorc490_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '-.',...
     VZA, Rhorc520_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '-x',...
     VZA, Rhorc565_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '-o', ...
     VZA, Rhorc670_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '-+',...
     VZA, Rhorc750_ta10_SZA10_DRH90./Rhorc860_ta10_SZA10_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 1.5], 'ytick', 0:0.5:1.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2b_ta10_1','.png'])

% % ***********图2(c) ta=1.0************************
figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '-p',...
     VZA, Rhorc412_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '-s',...
     VZA, Rhorc443_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '-^',...
     VZA, Rhorc490_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '-.',...
     VZA, Rhorc520_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '-x',...
     VZA, Rhorc565_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '-o', ...
     VZA, Rhorc670_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '-+',...
     VZA, Rhorc750_ta20_SZA10_DRH90./Rhorc860_ta20_SZA10_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 1.5], 'ytick', 0:0.5:1.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2c_ta20_1','.png'])

%% ------------------- SZA=30 --------------------------
% % ***********图2(d) ta=0.5************************
figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '-p',...
     VZA, Rhorc412_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '-s',...
     VZA, Rhorc443_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '-^',...
     VZA, Rhorc490_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '-.',...
     VZA, Rhorc520_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '-x',...
     VZA, Rhorc565_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '-o', ...
     VZA, Rhorc670_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '-+',...
     VZA, Rhorc750_ta05_SZA30_DRH90./Rhorc860_ta05_SZA30_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 2.5], 'ytick', 0:0.5:2.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5', '2.0', '2.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2d_ta05_1','.png'])

% % ***********图2(e) ta=1.0************************
figure(2); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '-p',...
     VZA, Rhorc412_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '-s',...
     VZA, Rhorc443_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '-^',...
     VZA, Rhorc490_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '-.',...
     VZA, Rhorc520_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '-x',...
     VZA, Rhorc565_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '-o', ...
     VZA, Rhorc670_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '-+',...
     VZA, Rhorc750_ta10_SZA30_DRH90./Rhorc860_ta10_SZA30_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 1.5], 'ytick', 0:0.5:1.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2e_ta10_1','.png'])

% % ***********图2(f) ta=1.0************************
figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '-p',...
     VZA, Rhorc412_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '-s',...
     VZA, Rhorc443_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '-^',...
     VZA, Rhorc490_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '-.',...
     VZA, Rhorc520_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '-x',...
     VZA, Rhorc565_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '-o', ...
     VZA, Rhorc670_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '-+',...
     VZA, Rhorc750_ta20_SZA30_DRH90./Rhorc860_ta20_SZA30_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 1.5], 'ytick', 0:0.5:1.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2f_ta20_1','.png'])

%% ------------------- SZA=50 --------------------------
% % ***********图2(g) ta=0.5************************
figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '-p',...
     VZA, Rhorc412_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '-s',...
     VZA, Rhorc443_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '-^',...
     VZA, Rhorc490_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '-.',...
     VZA, Rhorc520_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '-x',...
     VZA, Rhorc565_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '-o', ...
     VZA, Rhorc670_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '-+',...
     VZA, Rhorc750_ta05_SZA50_DRH90./Rhorc860_ta05_SZA50_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 2.5], 'ytick', 0:0.5:2.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5', '2.0', '2.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2g_ta05_1','.png'])

% % ***********图2(h) ta=1.0************************
figure(2); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '-p',...
     VZA, Rhorc412_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '-s',...
     VZA, Rhorc443_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '-^',...
     VZA, Rhorc490_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '-.',...
     VZA, Rhorc520_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '-x',...
     VZA, Rhorc565_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '-o', ...
     VZA, Rhorc670_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '-+',...
     VZA, Rhorc750_ta10_SZA50_DRH90./Rhorc860_ta10_SZA50_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 1.5], 'ytick', 0:0.5:1.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2h_ta10_1','.png'])

% % ***********图2(i) ta=1.0************************
figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])
hp = plot(VZA, Rhorc385_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '-p',...
     VZA, Rhorc412_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '-s',...
     VZA, Rhorc443_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '-^',...
     VZA, Rhorc490_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '-.',...
     VZA, Rhorc520_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '-x',...
     VZA, Rhorc565_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '-o', ...
     VZA, Rhorc670_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '-+',...
     VZA, Rhorc750_ta20_SZA50_DRH90./Rhorc860_ta20_SZA50_DRH90, '--', 'linewi', 0.7);
 
set(hp(1), 'color', [104, 0, 112]/255); % 385
set(hp(2), 'color', [101 0 185]/255); % 412
set(hp(3), 'color', [0 26 255]/255); % 443
set(hp(4), 'color', [0 255 255]/255); % 490
set(hp(5), 'color', [53 255 0]/255); % 520
set(hp(6), 'color', [210 255 0]/255); % 565
set(hp(7), 'color', [220 0 0]/255); % 670
set(hp(8), 'color', [100 0 0]/255); % 750

set(gca, 'xlim', [0 60], 'xtick', 0:10:60, ...
    'xticklabels', {'0', '10', '20', '30', '40', '50', '60'},'XTickLabelRotation', 0);

set(gca, 'ylim', [0 1.5], 'ytick', 0:0.5:1.5, ...
    'yticklabels', {'0', '0.5', '1.0', '1.5'}, 'TickLength', [0.02 0.01],...
    'linewi', 1.15, 'Fontname', 'Times New Roman', 'FontSize', 11);

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 12);
ylabel('\rho\it_{rc}\rm(\lambda)/\rho\it_{rc}\rm(865)', 'Fontname', 'Times New Roman', 'FontSize', 12);

print('-dpng','-r600',['Fig2i_ta20_1','.png'])


