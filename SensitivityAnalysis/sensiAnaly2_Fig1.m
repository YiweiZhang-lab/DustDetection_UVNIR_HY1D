% % File     :  sensiAnaly2_Fig1.m
% % Purpose  :  敏感性分析 
% % Date     :  29-Mar, 6-Oct 2023, 8-Jul-2024
% % Coded by :  Y. Zhang
% % Note     :  接 sensiAnaly1.m，先运行 sensiAnaly1.m 保存变量，这个主要侧重绘图
% %             DRH=Dust RH
clc;
tic;

%  % ------------------- 图1 Dust condition----------------------------
%% ------------------- SZA=10 --------------------------
% % ***********图1(a) DRH=80************************
figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])

hp = plot(VZA, Rhorc385_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '-p',...
     VZA, Rhorc412_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '-s',...
     VZA, Rhorc443_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '-^',...
     VZA, Rhorc490_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '-.',...
     VZA, Rhorc520_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '-x',...
     VZA, Rhorc565_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '-o', ...
     VZA, Rhorc670_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '-+',...
     VZA, Rhorc750_ta05_SZA10_DRH80./Rhorc860_ta05_SZA10_DRH80, '--', 'linewi', 0.7);
 
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

print('-dpng','-r600',['Fig1a_RH80_1','.png'])


% legend('\lambda=385 nm','\lambda=412 nm','\lambda=443 nm', '\lambda=490 nm',...
%        '\lambda=520 nm','\lambda=565 nm','\lambda=670 nm', '\lambda=750 nm',...
%        'Location', 'BestOutside', 'Fontname', 'Times New Roman', 'FontSize', 12, 'box', 'off');

% % % % ***********图1(b) DRH=90************************
figure(2); clf;
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

print('-dpng','-r600',['Fig1b_RH90_1','.png'])

% % % % ***********图1(c) DRH=95************************
figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])

hp = plot(VZA, Rhorc385_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '-p',...
     VZA, Rhorc412_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '-s',...
     VZA, Rhorc443_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '-^',...
     VZA, Rhorc490_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '-.',...
     VZA, Rhorc520_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '-x',...
     VZA, Rhorc565_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '-o', ...
     VZA, Rhorc670_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '-+',...
     VZA, Rhorc750_ta05_SZA10_DRH95./Rhorc860_ta05_SZA10_DRH95, '--', 'linewi', 0.7);

 
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

print('-dpng','-r600',['Fig1c_RH95_1','.png'])

%% ***********图1(d) SZA=30, DRH=80************************
figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])

hp = plot(VZA, Rhorc385_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '-p',...
     VZA, Rhorc412_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '-s',...
     VZA, Rhorc443_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '-^',...
     VZA, Rhorc490_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '-.',...
     VZA, Rhorc520_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '-x',...
     VZA, Rhorc565_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '-o', ...
     VZA, Rhorc670_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '-+',...
     VZA, Rhorc750_ta05_SZA30_DRH80./Rhorc860_ta05_SZA30_DRH80, '--', 'linewi', 0.7);
 
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

print('-dpng','-r600',['Fig1d_RH80_1','.png'])


% legend('\lambda=385 nm','\lambda=412 nm','\lambda=443 nm', '\lambda=490 nm',...
%        '\lambda=520 nm','\lambda=565 nm','\lambda=670 nm', '\lambda=750 nm',...
%        'Location', 'BestOutside', 'Fontname', 'Times New Roman', 'FontSize', 12, 'box', 'off');

% % % % ***********图1(e)  DRH=90************************
figure(2); clf;
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

print('-dpng','-r600',['Fig1e_RH90_1','.png'])

% % % % ***********图1(f) DRH=95************************
figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])

hp = plot(VZA, Rhorc385_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '-p',...
     VZA, Rhorc412_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '-s',...
     VZA, Rhorc443_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '-^',...
     VZA, Rhorc490_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '-.',...
     VZA, Rhorc520_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '-x',...
     VZA, Rhorc565_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '-o', ...
     VZA, Rhorc670_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '-+',...
     VZA, Rhorc750_ta05_SZA30_DRH95./Rhorc860_ta05_SZA30_DRH95, '--', 'linewi', 0.7);

 
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

print('-dpng','-r600',['Fig1f_RH95_1','.png'])

%% *********** SZA=50 ************************
% % ***********图1(g)  DRH=80************************
figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])

hp = plot(VZA, Rhorc385_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '-p',...
     VZA, Rhorc412_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '-s',...
     VZA, Rhorc443_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '-^',...
     VZA, Rhorc490_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '-.',...
     VZA, Rhorc520_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '-x',...
     VZA, Rhorc565_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '-o', ...
     VZA, Rhorc670_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '-+',...
     VZA, Rhorc750_ta05_SZA50_DRH80./Rhorc860_ta05_SZA50_DRH80, '--', 'linewi', 0.7);
 
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

print('-dpng','-r600',['Fig1g_RH80_1','.png'])


% legend('\lambda=385 nm','\lambda=412 nm','\lambda=443 nm', '\lambda=490 nm',...
%        '\lambda=520 nm','\lambda=565 nm','\lambda=670 nm', '\lambda=750 nm',...
%        'Location', 'BestOutside', 'Fontname', 'Times New Roman', 'FontSize', 12, 'box', 'off');

% % % % ***********图1(h) DRH=90************************
figure(2); clf;
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

print('-dpng','-r600',['Fig1h_RH90_1','.png'])

% % % % ***********图1(i) DRH=95************************
figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 6.5, 5])

hp = plot(VZA, Rhorc385_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '-p',...
     VZA, Rhorc412_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '-s',...
     VZA, Rhorc443_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '-^',...
     VZA, Rhorc490_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '-.',...
     VZA, Rhorc520_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '-x',...
     VZA, Rhorc565_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '-o', ...
     VZA, Rhorc670_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '-+',...
     VZA, Rhorc750_ta05_SZA50_DRH95./Rhorc860_ta05_SZA50_DRH95, '--', 'linewi', 0.7);

 
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

print('-dpng','-r600',['Fig1i_RH95_1','.png'])



