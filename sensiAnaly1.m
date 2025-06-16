% % File     :  sensiAnaly1.m
% % Purpose  :  光谱分析，以便后续算法提出
% % Coded by :  Yiwei Zhang 
% % Date     :  30-Mar-2023
% % Note     :  

clear all; clc;
tic;
fileName = {'Desert_RH80_OPACbasedat.txt', 'Desert_RH90_OPACbasedat.txt', 'Desert_RH95_OPACbasedat.txt', 'Desert_RH99_OPACbasedat.txt', 'Maritime.txt'};
wl = {'355', '385', '412', '443', '490', '520', '565', '670', '750', '860'};
taua = {'0', '05', '10', '20'}; % 0, 0.5, 1.0, 2.0
SZA = {'10', '30', '50'};
VZA = [0,5,10,15,20,25,30,35,40,45,50,55,60];
%% ********************************  dust RH80 ***********************
data = processTXT(fileName{1});
for ii = 1:length(wl)
    for jj = 1:length(taua)
       for kk = 1:length(SZA)
           bgnL = (ii-1)*13*length(SZA)*length(taua)+(jj-1)*13*length(SZA)+((kk-1)*13+1);
           endL = bgnL+12;
           eval(['Rhot', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 11);']);
           eval(['Rhor', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 8);']);
           eval(['Rhoa', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 9);']);
           eval(['tgasm', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 15);']);
           eval(['stwava', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 18);']);
           eval(['stozon', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 21);']);
           eval(['stdica', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 24);']);
           eval(['stoxyg', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 27);']);
           eval(['stniox', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 30);']);
           eval(['stmeth', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 33);']);
           eval(['stmoca', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 36);']);   
       end
    end
end

%% SZA=10
Rhorc385_ta0_SZA10_DRH80= Rhot385_taua0_SZA10./tgasm385_taua0_SZA10 - Rhor385_taua0_SZA10;
Rhorc385_ta05_SZA10_DRH80 = Rhot385_taua05_SZA10./tgasm385_taua05_SZA10 - Rhor385_taua05_SZA10;
Rhorc385_ta10_SZA10_DRH80 = Rhot385_taua10_SZA10./tgasm385_taua10_SZA10 - Rhor385_taua10_SZA10;
Rhorc385_ta20_SZA10_DRH80 = Rhot385_taua20_SZA10./tgasm385_taua20_SZA10 - Rhor385_taua20_SZA10;

Rhorc412_ta0_SZA10_DRH80= Rhot412_taua0_SZA10./tgasm412_taua0_SZA10 - Rhor412_taua0_SZA10;
Rhorc412_ta05_SZA10_DRH80 = Rhot412_taua05_SZA10./tgasm412_taua05_SZA10 - Rhor412_taua05_SZA10;
Rhorc412_ta10_SZA10_DRH80 = Rhot412_taua10_SZA10./tgasm412_taua10_SZA10 - Rhor412_taua10_SZA10;
Rhorc412_ta20_SZA10_DRH80 = Rhot412_taua20_SZA10./tgasm412_taua20_SZA10 - Rhor412_taua20_SZA10;

Rhorc443_ta0_SZA10_DRH80= Rhot443_taua0_SZA10./tgasm443_taua0_SZA10 - Rhor443_taua0_SZA10;
Rhorc443_ta05_SZA10_DRH80 = Rhot443_taua05_SZA10./tgasm443_taua05_SZA10 - Rhor443_taua05_SZA10;
Rhorc443_ta10_SZA10_DRH80 = Rhot443_taua10_SZA10./tgasm443_taua10_SZA10 - Rhor443_taua10_SZA10;
Rhorc443_ta20_SZA10_DRH80 = Rhot443_taua20_SZA10./tgasm443_taua20_SZA10 - Rhor443_taua20_SZA10;

Rhorc490_ta0_SZA10_DRH80= Rhot490_taua0_SZA10./tgasm490_taua0_SZA10 - Rhor490_taua0_SZA10;
Rhorc490_ta05_SZA10_DRH80 = Rhot490_taua05_SZA10./tgasm490_taua05_SZA10 - Rhor490_taua05_SZA10;
Rhorc490_ta10_SZA10_DRH80 = Rhot490_taua10_SZA10./tgasm490_taua10_SZA10 - Rhor490_taua10_SZA10;
Rhorc490_ta20_SZA10_DRH80 = Rhot490_taua20_SZA10./tgasm490_taua20_SZA10 - Rhor490_taua20_SZA10;

Rhorc520_ta0_SZA10_DRH80= Rhot520_taua0_SZA10./tgasm520_taua0_SZA10 - Rhor520_taua0_SZA10;
Rhorc520_ta05_SZA10_DRH80 = Rhot520_taua05_SZA10./tgasm520_taua05_SZA10 - Rhor520_taua05_SZA10;
Rhorc520_ta10_SZA10_DRH80 = Rhot520_taua10_SZA10./tgasm520_taua10_SZA10 - Rhor520_taua10_SZA10;
Rhorc520_ta20_SZA10_DRH80 = Rhot520_taua20_SZA10./tgasm520_taua20_SZA10 - Rhor520_taua20_SZA10;

Rhorc565_ta0_SZA10_DRH80= Rhot565_taua0_SZA10./tgasm565_taua0_SZA10 - Rhor565_taua0_SZA10;
Rhorc565_ta05_SZA10_DRH80 = Rhot565_taua05_SZA10./tgasm565_taua05_SZA10 - Rhor565_taua05_SZA10;
Rhorc565_ta10_SZA10_DRH80 = Rhot565_taua10_SZA10./tgasm565_taua10_SZA10 - Rhor565_taua10_SZA10;
Rhorc565_ta20_SZA10_DRH80 = Rhot565_taua20_SZA10./tgasm565_taua20_SZA10 - Rhor565_taua20_SZA10;

Rhorc670_ta0_SZA10_DRH80= Rhot670_taua0_SZA10./tgasm670_taua0_SZA10 - Rhor670_taua0_SZA10;
Rhorc670_ta05_SZA10_DRH80 = Rhot670_taua05_SZA10./tgasm670_taua05_SZA10 - Rhor670_taua05_SZA10;
Rhorc670_ta10_SZA10_DRH80 = Rhot670_taua10_SZA10./tgasm670_taua10_SZA10 - Rhor670_taua10_SZA10;
Rhorc670_ta20_SZA10_DRH80 = Rhot670_taua20_SZA10./tgasm670_taua20_SZA10 - Rhor670_taua20_SZA10;

Rhorc750_ta0_SZA10_DRH80= Rhot750_taua0_SZA10./tgasm750_taua0_SZA10 - Rhor750_taua0_SZA10;
Rhorc750_ta05_SZA10_DRH80 = Rhot750_taua05_SZA10./tgasm750_taua05_SZA10 - Rhor750_taua05_SZA10;
Rhorc750_ta10_SZA10_DRH80 = Rhot750_taua10_SZA10./tgasm750_taua10_SZA10 - Rhor750_taua10_SZA10;
Rhorc750_ta20_SZA10_DRH80 = Rhot750_taua20_SZA10./tgasm750_taua20_SZA10 - Rhor750_taua20_SZA10;

Rhorc860_ta0_SZA10_DRH80 = Rhot860_taua0_SZA10./tgasm860_taua0_SZA10 - Rhor860_taua0_SZA10;
Rhorc860_ta05_SZA10_DRH80 = Rhot860_taua05_SZA10./tgasm860_taua05_SZA10 - Rhor860_taua05_SZA10;
Rhorc860_ta10_SZA10_DRH80 = Rhot860_taua10_SZA10./tgasm860_taua10_SZA10 - Rhor860_taua10_SZA10;
Rhorc860_ta20_SZA10_DRH80 = Rhot860_taua20_SZA10./tgasm860_taua20_SZA10 - Rhor860_taua20_SZA10;

%% SZA=30
Rhorc385_ta0_SZA30_DRH80= Rhot385_taua0_SZA30./tgasm385_taua0_SZA30 - Rhor385_taua0_SZA30;
Rhorc385_ta05_SZA30_DRH80 = Rhot385_taua05_SZA30./tgasm385_taua05_SZA30 - Rhor385_taua05_SZA30;
Rhorc385_ta10_SZA30_DRH80 = Rhot385_taua10_SZA30./tgasm385_taua10_SZA30 - Rhor385_taua10_SZA30;
Rhorc385_ta20_SZA30_DRH80 = Rhot385_taua20_SZA30./tgasm385_taua20_SZA30 - Rhor385_taua20_SZA30;

Rhorc412_ta0_SZA30_DRH80= Rhot412_taua0_SZA30./tgasm412_taua0_SZA30 - Rhor412_taua0_SZA30;
Rhorc412_ta05_SZA30_DRH80 = Rhot412_taua05_SZA30./tgasm412_taua05_SZA30 - Rhor412_taua05_SZA30;
Rhorc412_ta10_SZA30_DRH80 = Rhot412_taua10_SZA30./tgasm412_taua10_SZA30 - Rhor412_taua10_SZA30;
Rhorc412_ta20_SZA30_DRH80 = Rhot412_taua20_SZA30./tgasm412_taua20_SZA30 - Rhor412_taua20_SZA30;

Rhorc443_ta0_SZA30_DRH80= Rhot443_taua0_SZA30./tgasm443_taua0_SZA30 - Rhor443_taua0_SZA30;
Rhorc443_ta05_SZA30_DRH80 = Rhot443_taua05_SZA30./tgasm443_taua05_SZA30 - Rhor443_taua05_SZA30;
Rhorc443_ta10_SZA30_DRH80 = Rhot443_taua10_SZA30./tgasm443_taua10_SZA30 - Rhor443_taua10_SZA30;
Rhorc443_ta20_SZA30_DRH80 = Rhot443_taua20_SZA30./tgasm443_taua20_SZA30 - Rhor443_taua20_SZA30;

Rhorc490_ta0_SZA30_DRH80= Rhot490_taua0_SZA30./tgasm490_taua0_SZA30 - Rhor490_taua0_SZA30;
Rhorc490_ta05_SZA30_DRH80 = Rhot490_taua05_SZA30./tgasm490_taua05_SZA30 - Rhor490_taua05_SZA30;
Rhorc490_ta10_SZA30_DRH80 = Rhot490_taua10_SZA30./tgasm490_taua10_SZA30 - Rhor490_taua10_SZA30;
Rhorc490_ta20_SZA30_DRH80 = Rhot490_taua20_SZA30./tgasm490_taua20_SZA30 - Rhor490_taua20_SZA30;

Rhorc520_ta0_SZA30_DRH80= Rhot520_taua0_SZA30./tgasm520_taua0_SZA30 - Rhor520_taua0_SZA30;
Rhorc520_ta05_SZA30_DRH80 = Rhot520_taua05_SZA30./tgasm520_taua05_SZA30 - Rhor520_taua05_SZA30;
Rhorc520_ta10_SZA30_DRH80 = Rhot520_taua10_SZA30./tgasm520_taua10_SZA30 - Rhor520_taua10_SZA30;
Rhorc520_ta20_SZA30_DRH80 = Rhot520_taua20_SZA30./tgasm520_taua20_SZA30 - Rhor520_taua20_SZA30;

Rhorc565_ta0_SZA30_DRH80= Rhot565_taua0_SZA30./tgasm565_taua0_SZA30 - Rhor565_taua0_SZA30;
Rhorc565_ta05_SZA30_DRH80 = Rhot565_taua05_SZA30./tgasm565_taua05_SZA30 - Rhor565_taua05_SZA30;
Rhorc565_ta10_SZA30_DRH80 = Rhot565_taua10_SZA30./tgasm565_taua10_SZA30 - Rhor565_taua10_SZA30;
Rhorc565_ta20_SZA30_DRH80 = Rhot565_taua20_SZA30./tgasm565_taua20_SZA30 - Rhor565_taua20_SZA30;

Rhorc670_ta0_SZA30_DRH80= Rhot670_taua0_SZA30./tgasm670_taua0_SZA30 - Rhor670_taua0_SZA30;
Rhorc670_ta05_SZA30_DRH80 = Rhot670_taua05_SZA30./tgasm670_taua05_SZA30 - Rhor670_taua05_SZA30;
Rhorc670_ta10_SZA30_DRH80 = Rhot670_taua10_SZA30./tgasm670_taua10_SZA30 - Rhor670_taua10_SZA30;
Rhorc670_ta20_SZA30_DRH80 = Rhot670_taua20_SZA30./tgasm670_taua20_SZA30 - Rhor670_taua20_SZA30;

Rhorc750_ta0_SZA30_DRH80= Rhot750_taua0_SZA30./tgasm750_taua0_SZA30 - Rhor750_taua0_SZA30;
Rhorc750_ta05_SZA30_DRH80 = Rhot750_taua05_SZA30./tgasm750_taua05_SZA30 - Rhor750_taua05_SZA30;
Rhorc750_ta10_SZA30_DRH80 = Rhot750_taua10_SZA30./tgasm750_taua10_SZA30 - Rhor750_taua10_SZA30;
Rhorc750_ta20_SZA30_DRH80 = Rhot750_taua20_SZA30./tgasm750_taua20_SZA30 - Rhor750_taua20_SZA30;

Rhorc860_ta0_SZA30_DRH80 = Rhot860_taua0_SZA30./tgasm860_taua0_SZA30 - Rhor860_taua0_SZA30;
Rhorc860_ta05_SZA30_DRH80 = Rhot860_taua05_SZA30./tgasm860_taua05_SZA30 - Rhor860_taua05_SZA30;
Rhorc860_ta10_SZA30_DRH80 = Rhot860_taua10_SZA30./tgasm860_taua10_SZA30 - Rhor860_taua10_SZA30;
Rhorc860_ta20_SZA30_DRH80 = Rhot860_taua20_SZA30./tgasm860_taua20_SZA30 - Rhor860_taua20_SZA30;

%% SZA=50
Rhorc385_ta0_SZA50_DRH80= Rhot385_taua0_SZA50./tgasm385_taua0_SZA50 - Rhor385_taua0_SZA50;
Rhorc385_ta05_SZA50_DRH80 = Rhot385_taua05_SZA50./tgasm385_taua05_SZA50 - Rhor385_taua05_SZA50;
Rhorc385_ta10_SZA50_DRH80 = Rhot385_taua10_SZA50./tgasm385_taua10_SZA50 - Rhor385_taua10_SZA50;
Rhorc385_ta20_SZA50_DRH80 = Rhot385_taua20_SZA50./tgasm385_taua20_SZA50 - Rhor385_taua20_SZA50;

Rhorc412_ta0_SZA50_DRH80= Rhot412_taua0_SZA50./tgasm412_taua0_SZA50 - Rhor412_taua0_SZA50;
Rhorc412_ta05_SZA50_DRH80 = Rhot412_taua05_SZA50./tgasm412_taua05_SZA50 - Rhor412_taua05_SZA50;
Rhorc412_ta10_SZA50_DRH80 = Rhot412_taua10_SZA50./tgasm412_taua10_SZA50 - Rhor412_taua10_SZA50;
Rhorc412_ta20_SZA50_DRH80 = Rhot412_taua20_SZA50./tgasm412_taua20_SZA50 - Rhor412_taua20_SZA50;

Rhorc443_ta0_SZA50_DRH80= Rhot443_taua0_SZA50./tgasm443_taua0_SZA50 - Rhor443_taua0_SZA50;
Rhorc443_ta05_SZA50_DRH80 = Rhot443_taua05_SZA50./tgasm443_taua05_SZA50 - Rhor443_taua05_SZA50;
Rhorc443_ta10_SZA50_DRH80 = Rhot443_taua10_SZA50./tgasm443_taua10_SZA50 - Rhor443_taua10_SZA50;
Rhorc443_ta20_SZA50_DRH80 = Rhot443_taua20_SZA50./tgasm443_taua20_SZA50 - Rhor443_taua20_SZA50;

Rhorc490_ta0_SZA50_DRH80= Rhot490_taua0_SZA50./tgasm490_taua0_SZA50 - Rhor490_taua0_SZA50;
Rhorc490_ta05_SZA50_DRH80 = Rhot490_taua05_SZA50./tgasm490_taua05_SZA50 - Rhor490_taua05_SZA50;
Rhorc490_ta10_SZA50_DRH80 = Rhot490_taua10_SZA50./tgasm490_taua10_SZA50 - Rhor490_taua10_SZA50;
Rhorc490_ta20_SZA50_DRH80 = Rhot490_taua20_SZA50./tgasm490_taua20_SZA50 - Rhor490_taua20_SZA50;

Rhorc520_ta0_SZA50_DRH80= Rhot520_taua0_SZA50./tgasm520_taua0_SZA50 - Rhor520_taua0_SZA50;
Rhorc520_ta05_SZA50_DRH80 = Rhot520_taua05_SZA50./tgasm520_taua05_SZA50 - Rhor520_taua05_SZA50;
Rhorc520_ta10_SZA50_DRH80 = Rhot520_taua10_SZA50./tgasm520_taua10_SZA50 - Rhor520_taua10_SZA50;
Rhorc520_ta20_SZA50_DRH80 = Rhot520_taua20_SZA50./tgasm520_taua20_SZA50 - Rhor520_taua20_SZA50;

Rhorc565_ta0_SZA50_DRH80= Rhot565_taua0_SZA50./tgasm565_taua0_SZA50 - Rhor565_taua0_SZA50;
Rhorc565_ta05_SZA50_DRH80 = Rhot565_taua05_SZA50./tgasm565_taua05_SZA50 - Rhor565_taua05_SZA50;
Rhorc565_ta10_SZA50_DRH80 = Rhot565_taua10_SZA50./tgasm565_taua10_SZA50 - Rhor565_taua10_SZA50;
Rhorc565_ta20_SZA50_DRH80 = Rhot565_taua20_SZA50./tgasm565_taua20_SZA50 - Rhor565_taua20_SZA50;

Rhorc670_ta0_SZA50_DRH80= Rhot670_taua0_SZA50./tgasm670_taua0_SZA50 - Rhor670_taua0_SZA50;
Rhorc670_ta05_SZA50_DRH80 = Rhot670_taua05_SZA50./tgasm670_taua05_SZA50 - Rhor670_taua05_SZA50;
Rhorc670_ta10_SZA50_DRH80 = Rhot670_taua10_SZA50./tgasm670_taua10_SZA50 - Rhor670_taua10_SZA50;
Rhorc670_ta20_SZA50_DRH80 = Rhot670_taua20_SZA50./tgasm670_taua20_SZA50 - Rhor670_taua20_SZA50;

Rhorc750_ta0_SZA50_DRH80= Rhot750_taua0_SZA50./tgasm750_taua0_SZA50 - Rhor750_taua0_SZA50;
Rhorc750_ta05_SZA50_DRH80 = Rhot750_taua05_SZA50./tgasm750_taua05_SZA50 - Rhor750_taua05_SZA50;
Rhorc750_ta10_SZA50_DRH80 = Rhot750_taua10_SZA50./tgasm750_taua10_SZA50 - Rhor750_taua10_SZA50;
Rhorc750_ta20_SZA50_DRH80 = Rhot750_taua20_SZA50./tgasm750_taua20_SZA50 - Rhor750_taua20_SZA50;

Rhorc860_ta0_SZA50_DRH80 = Rhot860_taua0_SZA50./tgasm860_taua0_SZA50 - Rhor860_taua0_SZA50;
Rhorc860_ta05_SZA50_DRH80 = Rhot860_taua05_SZA50./tgasm860_taua05_SZA50 - Rhor860_taua05_SZA50;
Rhorc860_ta10_SZA50_DRH80 = Rhot860_taua10_SZA50./tgasm860_taua10_SZA50 - Rhor860_taua10_SZA50;
Rhorc860_ta20_SZA50_DRH80 = Rhot860_taua20_SZA50./tgasm860_taua20_SZA50 - Rhor860_taua20_SZA50;


% % % VZA = 20  后续可以画三维图
% band = [385, 490, 520, 860];
% spec_ta0 = [Rhorc385_ta0_SZA10(5), Rhorc490_ta0_SZA10(5),...
%             Rhorc520_ta0_SZA10(5), Rhorc860_ta0_SZA10(5)];
% spec_ta05 = [Rhorc385_ta05_SZA10(5), Rhorc490_ta05_SZA10(5),...
%             Rhorc520_ta05_SZA10(5), Rhorc860_ta05_SZA10(5)];
% spec_ta10 = [Rhorc385_ta10_SZA10(5), Rhorc490_ta10_SZA10(5),...
%             Rhorc520_ta10_SZA10(5), Rhorc860_ta10_SZA10(5)]; 
% spec_ta20 = [Rhorc385_ta20_SZA10(5), Rhorc490_ta20_SZA10(5),...
%             Rhorc520_ta20_SZA10(5), Rhorc860_ta20_SZA10(5)];
% figure(1); clf;
% plot(band, spec_ta0,'b*-', band, spec_ta05, 'bo-', band, spec_ta10, 'bs-', band, spec_ta20, 'bp-');
% xlabel('\lambda');
% ylabel('\rho_{rc}(\lambda)');
% 
% legend('\tau_a=0', '\tau_a=0.5','\tau_a=1.0','\tau_a=2.0');

%% ********************************  dust RH90 ***************************
%% RH90
data = processTXT(fileName{2});
for ii = 1:length(wl)
    for jj = 1:length(taua)
       for kk = 1:length(SZA)
           bgnL = (ii-1)*13*length(SZA)*length(taua)+(jj-1)*13*length(SZA)+((kk-1)*13+1);
           endL = bgnL+12;
           eval(['Rhot', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 11);']);
           eval(['Rhor', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 8);']);
           eval(['Rhoa', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 9);']);
           eval(['tgasm', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 15);']);
           eval(['stwava', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 18);']);
           eval(['stozon', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 21);']);
           eval(['stdica', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 24);']);
           eval(['stoxyg', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 27);']);
           eval(['stniox', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 30);']);
           eval(['stmeth', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 33);']);
           eval(['stmoca', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 36);']);   
       end
    end
end

%% SZA=10
Rhorc385_ta0_SZA10_DRH90= Rhot385_taua0_SZA10./tgasm385_taua0_SZA10 - Rhor385_taua0_SZA10;
Rhorc385_ta05_SZA10_DRH90 = Rhot385_taua05_SZA10./tgasm385_taua05_SZA10 - Rhor385_taua05_SZA10;
Rhorc385_ta10_SZA10_DRH90 = Rhot385_taua10_SZA10./tgasm385_taua10_SZA10 - Rhor385_taua10_SZA10;
Rhorc385_ta20_SZA10_DRH90 = Rhot385_taua20_SZA10./tgasm385_taua20_SZA10 - Rhor385_taua20_SZA10;

Rhorc412_ta0_SZA10_DRH90= Rhot412_taua0_SZA10./tgasm412_taua0_SZA10 - Rhor412_taua0_SZA10;
Rhorc412_ta05_SZA10_DRH90 = Rhot412_taua05_SZA10./tgasm412_taua05_SZA10 - Rhor412_taua05_SZA10;
Rhorc412_ta10_SZA10_DRH90 = Rhot412_taua10_SZA10./tgasm412_taua10_SZA10 - Rhor412_taua10_SZA10;
Rhorc412_ta20_SZA10_DRH90 = Rhot412_taua20_SZA10./tgasm412_taua20_SZA10 - Rhor412_taua20_SZA10;

Rhorc443_ta0_SZA10_DRH90= Rhot443_taua0_SZA10./tgasm443_taua0_SZA10 - Rhor443_taua0_SZA10;
Rhorc443_ta05_SZA10_DRH90 = Rhot443_taua05_SZA10./tgasm443_taua05_SZA10 - Rhor443_taua05_SZA10;
Rhorc443_ta10_SZA10_DRH90 = Rhot443_taua10_SZA10./tgasm443_taua10_SZA10 - Rhor443_taua10_SZA10;
Rhorc443_ta20_SZA10_DRH90 = Rhot443_taua20_SZA10./tgasm443_taua20_SZA10 - Rhor443_taua20_SZA10;

Rhorc490_ta0_SZA10_DRH90= Rhot490_taua0_SZA10./tgasm490_taua0_SZA10 - Rhor490_taua0_SZA10;
Rhorc490_ta05_SZA10_DRH90 = Rhot490_taua05_SZA10./tgasm490_taua05_SZA10 - Rhor490_taua05_SZA10;
Rhorc490_ta10_SZA10_DRH90 = Rhot490_taua10_SZA10./tgasm490_taua10_SZA10 - Rhor490_taua10_SZA10;
Rhorc490_ta20_SZA10_DRH90 = Rhot490_taua20_SZA10./tgasm490_taua20_SZA10 - Rhor490_taua20_SZA10;

Rhorc520_ta0_SZA10_DRH90= Rhot520_taua0_SZA10./tgasm520_taua0_SZA10 - Rhor520_taua0_SZA10;
Rhorc520_ta05_SZA10_DRH90 = Rhot520_taua05_SZA10./tgasm520_taua05_SZA10 - Rhor520_taua05_SZA10;
Rhorc520_ta10_SZA10_DRH90 = Rhot520_taua10_SZA10./tgasm520_taua10_SZA10 - Rhor520_taua10_SZA10;
Rhorc520_ta20_SZA10_DRH90 = Rhot520_taua20_SZA10./tgasm520_taua20_SZA10 - Rhor520_taua20_SZA10;

Rhorc565_ta0_SZA10_DRH90= Rhot565_taua0_SZA10./tgasm565_taua0_SZA10 - Rhor565_taua0_SZA10;
Rhorc565_ta05_SZA10_DRH90 = Rhot565_taua05_SZA10./tgasm565_taua05_SZA10 - Rhor565_taua05_SZA10;
Rhorc565_ta10_SZA10_DRH90 = Rhot565_taua10_SZA10./tgasm565_taua10_SZA10 - Rhor565_taua10_SZA10;
Rhorc565_ta20_SZA10_DRH90 = Rhot565_taua20_SZA10./tgasm565_taua20_SZA10 - Rhor565_taua20_SZA10;

Rhorc670_ta0_SZA10_DRH90= Rhot670_taua0_SZA10./tgasm670_taua0_SZA10 - Rhor670_taua0_SZA10;
Rhorc670_ta05_SZA10_DRH90 = Rhot670_taua05_SZA10./tgasm670_taua05_SZA10 - Rhor670_taua05_SZA10;
Rhorc670_ta10_SZA10_DRH90 = Rhot670_taua10_SZA10./tgasm670_taua10_SZA10 - Rhor670_taua10_SZA10;
Rhorc670_ta20_SZA10_DRH90 = Rhot670_taua20_SZA10./tgasm670_taua20_SZA10 - Rhor670_taua20_SZA10;

Rhorc750_ta0_SZA10_DRH90= Rhot750_taua0_SZA10./tgasm750_taua0_SZA10 - Rhor750_taua0_SZA10;
Rhorc750_ta05_SZA10_DRH90 = Rhot750_taua05_SZA10./tgasm750_taua05_SZA10 - Rhor750_taua05_SZA10;
Rhorc750_ta10_SZA10_DRH90 = Rhot750_taua10_SZA10./tgasm750_taua10_SZA10 - Rhor750_taua10_SZA10;
Rhorc750_ta20_SZA10_DRH90 = Rhot750_taua20_SZA10./tgasm750_taua20_SZA10 - Rhor750_taua20_SZA10;

Rhorc860_ta0_SZA10_DRH90 = Rhot860_taua0_SZA10./tgasm860_taua0_SZA10 - Rhor860_taua0_SZA10;
Rhorc860_ta05_SZA10_DRH90 = Rhot860_taua05_SZA10./tgasm860_taua05_SZA10 - Rhor860_taua05_SZA10;
Rhorc860_ta10_SZA10_DRH90 = Rhot860_taua10_SZA10./tgasm860_taua10_SZA10 - Rhor860_taua10_SZA10;
Rhorc860_ta20_SZA10_DRH90 = Rhot860_taua20_SZA10./tgasm860_taua20_SZA10 - Rhor860_taua20_SZA10;

%% SZA=30
Rhorc385_ta0_SZA30_DRH90= Rhot385_taua0_SZA30./tgasm385_taua0_SZA30 - Rhor385_taua0_SZA30;
Rhorc385_ta05_SZA30_DRH90 = Rhot385_taua05_SZA30./tgasm385_taua05_SZA30 - Rhor385_taua05_SZA30;
Rhorc385_ta10_SZA30_DRH90 = Rhot385_taua10_SZA30./tgasm385_taua10_SZA30 - Rhor385_taua10_SZA30;
Rhorc385_ta20_SZA30_DRH90 = Rhot385_taua20_SZA30./tgasm385_taua20_SZA30 - Rhor385_taua20_SZA30;

Rhorc412_ta0_SZA30_DRH90= Rhot412_taua0_SZA30./tgasm412_taua0_SZA30 - Rhor412_taua0_SZA30;
Rhorc412_ta05_SZA30_DRH90 = Rhot412_taua05_SZA30./tgasm412_taua05_SZA30 - Rhor412_taua05_SZA30;
Rhorc412_ta10_SZA30_DRH90 = Rhot412_taua10_SZA30./tgasm412_taua10_SZA30 - Rhor412_taua10_SZA30;
Rhorc412_ta20_SZA30_DRH90 = Rhot412_taua20_SZA30./tgasm412_taua20_SZA30 - Rhor412_taua20_SZA30;

Rhorc443_ta0_SZA30_DRH90= Rhot443_taua0_SZA30./tgasm443_taua0_SZA30 - Rhor443_taua0_SZA30;
Rhorc443_ta05_SZA30_DRH90 = Rhot443_taua05_SZA30./tgasm443_taua05_SZA30 - Rhor443_taua05_SZA30;
Rhorc443_ta10_SZA30_DRH90 = Rhot443_taua10_SZA30./tgasm443_taua10_SZA30 - Rhor443_taua10_SZA30;
Rhorc443_ta20_SZA30_DRH90 = Rhot443_taua20_SZA30./tgasm443_taua20_SZA30 - Rhor443_taua20_SZA30;

Rhorc490_ta0_SZA30_DRH90= Rhot490_taua0_SZA30./tgasm490_taua0_SZA30 - Rhor490_taua0_SZA30;
Rhorc490_ta05_SZA30_DRH90 = Rhot490_taua05_SZA30./tgasm490_taua05_SZA30 - Rhor490_taua05_SZA30;
Rhorc490_ta10_SZA30_DRH90 = Rhot490_taua10_SZA30./tgasm490_taua10_SZA30 - Rhor490_taua10_SZA30;
Rhorc490_ta20_SZA30_DRH90 = Rhot490_taua20_SZA30./tgasm490_taua20_SZA30 - Rhor490_taua20_SZA30;

Rhorc520_ta0_SZA30_DRH90= Rhot520_taua0_SZA30./tgasm520_taua0_SZA30 - Rhor520_taua0_SZA30;
Rhorc520_ta05_SZA30_DRH90 = Rhot520_taua05_SZA30./tgasm520_taua05_SZA30 - Rhor520_taua05_SZA30;
Rhorc520_ta10_SZA30_DRH90 = Rhot520_taua10_SZA30./tgasm520_taua10_SZA30 - Rhor520_taua10_SZA30;
Rhorc520_ta20_SZA30_DRH90 = Rhot520_taua20_SZA30./tgasm520_taua20_SZA30 - Rhor520_taua20_SZA30;

Rhorc565_ta0_SZA30_DRH90= Rhot565_taua0_SZA30./tgasm565_taua0_SZA30 - Rhor565_taua0_SZA30;
Rhorc565_ta05_SZA30_DRH90 = Rhot565_taua05_SZA30./tgasm565_taua05_SZA30 - Rhor565_taua05_SZA30;
Rhorc565_ta10_SZA30_DRH90 = Rhot565_taua10_SZA30./tgasm565_taua10_SZA30 - Rhor565_taua10_SZA30;
Rhorc565_ta20_SZA30_DRH90 = Rhot565_taua20_SZA30./tgasm565_taua20_SZA30 - Rhor565_taua20_SZA30;

Rhorc670_ta0_SZA30_DRH90= Rhot670_taua0_SZA30./tgasm670_taua0_SZA30 - Rhor670_taua0_SZA30;
Rhorc670_ta05_SZA30_DRH90 = Rhot670_taua05_SZA30./tgasm670_taua05_SZA30 - Rhor670_taua05_SZA30;
Rhorc670_ta10_SZA30_DRH90 = Rhot670_taua10_SZA30./tgasm670_taua10_SZA30 - Rhor670_taua10_SZA30;
Rhorc670_ta20_SZA30_DRH90 = Rhot670_taua20_SZA30./tgasm670_taua20_SZA30 - Rhor670_taua20_SZA30;

Rhorc750_ta0_SZA30_DRH90= Rhot750_taua0_SZA30./tgasm750_taua0_SZA30 - Rhor750_taua0_SZA30;
Rhorc750_ta05_SZA30_DRH90 = Rhot750_taua05_SZA30./tgasm750_taua05_SZA30 - Rhor750_taua05_SZA30;
Rhorc750_ta10_SZA30_DRH90 = Rhot750_taua10_SZA30./tgasm750_taua10_SZA30 - Rhor750_taua10_SZA30;
Rhorc750_ta20_SZA30_DRH90 = Rhot750_taua20_SZA30./tgasm750_taua20_SZA30 - Rhor750_taua20_SZA30;

Rhorc860_ta0_SZA30_DRH90 = Rhot860_taua0_SZA30./tgasm860_taua0_SZA30 - Rhor860_taua0_SZA30;
Rhorc860_ta05_SZA30_DRH90 = Rhot860_taua05_SZA30./tgasm860_taua05_SZA30 - Rhor860_taua05_SZA30;
Rhorc860_ta10_SZA30_DRH90 = Rhot860_taua10_SZA30./tgasm860_taua10_SZA30 - Rhor860_taua10_SZA30;
Rhorc860_ta20_SZA30_DRH90 = Rhot860_taua20_SZA30./tgasm860_taua20_SZA30 - Rhor860_taua20_SZA30;

%% SZA=50
Rhorc385_ta0_SZA50_DRH90= Rhot385_taua0_SZA50./tgasm385_taua0_SZA50 - Rhor385_taua0_SZA50;
Rhorc385_ta05_SZA50_DRH90 = Rhot385_taua05_SZA50./tgasm385_taua05_SZA50 - Rhor385_taua05_SZA50;
Rhorc385_ta10_SZA50_DRH90 = Rhot385_taua10_SZA50./tgasm385_taua10_SZA50 - Rhor385_taua10_SZA50;
Rhorc385_ta20_SZA50_DRH90 = Rhot385_taua20_SZA50./tgasm385_taua20_SZA50 - Rhor385_taua20_SZA50;

Rhorc412_ta0_SZA50_DRH90= Rhot412_taua0_SZA50./tgasm412_taua0_SZA50 - Rhor412_taua0_SZA50;
Rhorc412_ta05_SZA50_DRH90 = Rhot412_taua05_SZA50./tgasm412_taua05_SZA50 - Rhor412_taua05_SZA50;
Rhorc412_ta10_SZA50_DRH90 = Rhot412_taua10_SZA50./tgasm412_taua10_SZA50 - Rhor412_taua10_SZA50;
Rhorc412_ta20_SZA50_DRH90 = Rhot412_taua20_SZA50./tgasm412_taua20_SZA50 - Rhor412_taua20_SZA50;

Rhorc443_ta0_SZA50_DRH90= Rhot443_taua0_SZA50./tgasm443_taua0_SZA50 - Rhor443_taua0_SZA50;
Rhorc443_ta05_SZA50_DRH90 = Rhot443_taua05_SZA50./tgasm443_taua05_SZA50 - Rhor443_taua05_SZA50;
Rhorc443_ta10_SZA50_DRH90 = Rhot443_taua10_SZA50./tgasm443_taua10_SZA50 - Rhor443_taua10_SZA50;
Rhorc443_ta20_SZA50_DRH90 = Rhot443_taua20_SZA50./tgasm443_taua20_SZA50 - Rhor443_taua20_SZA50;

Rhorc490_ta0_SZA50_DRH90= Rhot490_taua0_SZA50./tgasm490_taua0_SZA50 - Rhor490_taua0_SZA50;
Rhorc490_ta05_SZA50_DRH90 = Rhot490_taua05_SZA50./tgasm490_taua05_SZA50 - Rhor490_taua05_SZA50;
Rhorc490_ta10_SZA50_DRH90 = Rhot490_taua10_SZA50./tgasm490_taua10_SZA50 - Rhor490_taua10_SZA50;
Rhorc490_ta20_SZA50_DRH90 = Rhot490_taua20_SZA50./tgasm490_taua20_SZA50 - Rhor490_taua20_SZA50;

Rhorc520_ta0_SZA50_DRH90= Rhot520_taua0_SZA50./tgasm520_taua0_SZA50 - Rhor520_taua0_SZA50;
Rhorc520_ta05_SZA50_DRH90 = Rhot520_taua05_SZA50./tgasm520_taua05_SZA50 - Rhor520_taua05_SZA50;
Rhorc520_ta10_SZA50_DRH90 = Rhot520_taua10_SZA50./tgasm520_taua10_SZA50 - Rhor520_taua10_SZA50;
Rhorc520_ta20_SZA50_DRH90 = Rhot520_taua20_SZA50./tgasm520_taua20_SZA50 - Rhor520_taua20_SZA50;

Rhorc565_ta0_SZA50_DRH90= Rhot565_taua0_SZA50./tgasm565_taua0_SZA50 - Rhor565_taua0_SZA50;
Rhorc565_ta05_SZA50_DRH90 = Rhot565_taua05_SZA50./tgasm565_taua05_SZA50 - Rhor565_taua05_SZA50;
Rhorc565_ta10_SZA50_DRH90 = Rhot565_taua10_SZA50./tgasm565_taua10_SZA50 - Rhor565_taua10_SZA50;
Rhorc565_ta20_SZA50_DRH90 = Rhot565_taua20_SZA50./tgasm565_taua20_SZA50 - Rhor565_taua20_SZA50;

Rhorc670_ta0_SZA50_DRH90= Rhot670_taua0_SZA50./tgasm670_taua0_SZA50 - Rhor670_taua0_SZA50;
Rhorc670_ta05_SZA50_DRH90 = Rhot670_taua05_SZA50./tgasm670_taua05_SZA50 - Rhor670_taua05_SZA50;
Rhorc670_ta10_SZA50_DRH90 = Rhot670_taua10_SZA50./tgasm670_taua10_SZA50 - Rhor670_taua10_SZA50;
Rhorc670_ta20_SZA50_DRH90 = Rhot670_taua20_SZA50./tgasm670_taua20_SZA50 - Rhor670_taua20_SZA50;

Rhorc750_ta0_SZA50_DRH90= Rhot750_taua0_SZA50./tgasm750_taua0_SZA50 - Rhor750_taua0_SZA50;
Rhorc750_ta05_SZA50_DRH90 = Rhot750_taua05_SZA50./tgasm750_taua05_SZA50 - Rhor750_taua05_SZA50;
Rhorc750_ta10_SZA50_DRH90 = Rhot750_taua10_SZA50./tgasm750_taua10_SZA50 - Rhor750_taua10_SZA50;
Rhorc750_ta20_SZA50_DRH90 = Rhot750_taua20_SZA50./tgasm750_taua20_SZA50 - Rhor750_taua20_SZA50;

Rhorc860_ta0_SZA50_DRH90 = Rhot860_taua0_SZA50./tgasm860_taua0_SZA50 - Rhor860_taua0_SZA50;
Rhorc860_ta05_SZA50_DRH90 = Rhot860_taua05_SZA50./tgasm860_taua05_SZA50 - Rhor860_taua05_SZA50;
Rhorc860_ta10_SZA50_DRH90 = Rhot860_taua10_SZA50./tgasm860_taua10_SZA50 - Rhor860_taua10_SZA50;
Rhorc860_ta20_SZA50_DRH90 = Rhot860_taua20_SZA50./tgasm860_taua20_SZA50 - Rhor860_taua20_SZA50;

%% ********************************  dust RH95 ***************************
%% RH95
data = processTXT(fileName{3});
for ii = 1:length(wl)
    for jj = 1:length(taua)
       for kk = 1:length(SZA)
           bgnL = (ii-1)*13*length(SZA)*length(taua)+(jj-1)*13*length(SZA)+((kk-1)*13+1);
           endL = bgnL+12;
           eval(['Rhot', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 11);']);
           eval(['Rhor', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 8);']);
           eval(['Rhoa', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 9);']);
           eval(['tgasm', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 15);']);
           eval(['stwava', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 18);']);
           eval(['stozon', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 21);']);
           eval(['stdica', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 24);']);
           eval(['stoxyg', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 27);']);
           eval(['stniox', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 30);']);
           eval(['stmeth', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 33);']);
           eval(['stmoca', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 36);']);   
       end
    end
end

%% SZA=10
Rhorc385_ta0_SZA10_DRH95= Rhot385_taua0_SZA10./tgasm385_taua0_SZA10 - Rhor385_taua0_SZA10;
Rhorc385_ta05_SZA10_DRH95 = Rhot385_taua05_SZA10./tgasm385_taua05_SZA10 - Rhor385_taua05_SZA10;
Rhorc385_ta10_SZA10_DRH95 = Rhot385_taua10_SZA10./tgasm385_taua10_SZA10 - Rhor385_taua10_SZA10;
Rhorc385_ta20_SZA10_DRH95 = Rhot385_taua20_SZA10./tgasm385_taua20_SZA10 - Rhor385_taua20_SZA10;

Rhorc412_ta0_SZA10_DRH95= Rhot412_taua0_SZA10./tgasm412_taua0_SZA10 - Rhor412_taua0_SZA10;
Rhorc412_ta05_SZA10_DRH95 = Rhot412_taua05_SZA10./tgasm412_taua05_SZA10 - Rhor412_taua05_SZA10;
Rhorc412_ta10_SZA10_DRH95 = Rhot412_taua10_SZA10./tgasm412_taua10_SZA10 - Rhor412_taua10_SZA10;
Rhorc412_ta20_SZA10_DRH95 = Rhot412_taua20_SZA10./tgasm412_taua20_SZA10 - Rhor412_taua20_SZA10;

Rhorc443_ta0_SZA10_DRH95= Rhot443_taua0_SZA10./tgasm443_taua0_SZA10 - Rhor443_taua0_SZA10;
Rhorc443_ta05_SZA10_DRH95 = Rhot443_taua05_SZA10./tgasm443_taua05_SZA10 - Rhor443_taua05_SZA10;
Rhorc443_ta10_SZA10_DRH95 = Rhot443_taua10_SZA10./tgasm443_taua10_SZA10 - Rhor443_taua10_SZA10;
Rhorc443_ta20_SZA10_DRH95 = Rhot443_taua20_SZA10./tgasm443_taua20_SZA10 - Rhor443_taua20_SZA10;

Rhorc490_ta0_SZA10_DRH95= Rhot490_taua0_SZA10./tgasm490_taua0_SZA10 - Rhor490_taua0_SZA10;
Rhorc490_ta05_SZA10_DRH95 = Rhot490_taua05_SZA10./tgasm490_taua05_SZA10 - Rhor490_taua05_SZA10;
Rhorc490_ta10_SZA10_DRH95 = Rhot490_taua10_SZA10./tgasm490_taua10_SZA10 - Rhor490_taua10_SZA10;
Rhorc490_ta20_SZA10_DRH95 = Rhot490_taua20_SZA10./tgasm490_taua20_SZA10 - Rhor490_taua20_SZA10;

Rhorc520_ta0_SZA10_DRH95= Rhot520_taua0_SZA10./tgasm520_taua0_SZA10 - Rhor520_taua0_SZA10;
Rhorc520_ta05_SZA10_DRH95 = Rhot520_taua05_SZA10./tgasm520_taua05_SZA10 - Rhor520_taua05_SZA10;
Rhorc520_ta10_SZA10_DRH95 = Rhot520_taua10_SZA10./tgasm520_taua10_SZA10 - Rhor520_taua10_SZA10;
Rhorc520_ta20_SZA10_DRH95 = Rhot520_taua20_SZA10./tgasm520_taua20_SZA10 - Rhor520_taua20_SZA10;

Rhorc565_ta0_SZA10_DRH95= Rhot565_taua0_SZA10./tgasm565_taua0_SZA10 - Rhor565_taua0_SZA10;
Rhorc565_ta05_SZA10_DRH95 = Rhot565_taua05_SZA10./tgasm565_taua05_SZA10 - Rhor565_taua05_SZA10;
Rhorc565_ta10_SZA10_DRH95 = Rhot565_taua10_SZA10./tgasm565_taua10_SZA10 - Rhor565_taua10_SZA10;
Rhorc565_ta20_SZA10_DRH95 = Rhot565_taua20_SZA10./tgasm565_taua20_SZA10 - Rhor565_taua20_SZA10;

Rhorc670_ta0_SZA10_DRH95= Rhot670_taua0_SZA10./tgasm670_taua0_SZA10 - Rhor670_taua0_SZA10;
Rhorc670_ta05_SZA10_DRH95 = Rhot670_taua05_SZA10./tgasm670_taua05_SZA10 - Rhor670_taua05_SZA10;
Rhorc670_ta10_SZA10_DRH95 = Rhot670_taua10_SZA10./tgasm670_taua10_SZA10 - Rhor670_taua10_SZA10;
Rhorc670_ta20_SZA10_DRH95 = Rhot670_taua20_SZA10./tgasm670_taua20_SZA10 - Rhor670_taua20_SZA10;

Rhorc750_ta0_SZA10_DRH95= Rhot750_taua0_SZA10./tgasm750_taua0_SZA10 - Rhor750_taua0_SZA10;
Rhorc750_ta05_SZA10_DRH95 = Rhot750_taua05_SZA10./tgasm750_taua05_SZA10 - Rhor750_taua05_SZA10;
Rhorc750_ta10_SZA10_DRH95 = Rhot750_taua10_SZA10./tgasm750_taua10_SZA10 - Rhor750_taua10_SZA10;
Rhorc750_ta20_SZA10_DRH95 = Rhot750_taua20_SZA10./tgasm750_taua20_SZA10 - Rhor750_taua20_SZA10;

Rhorc860_ta0_SZA10_DRH95 = Rhot860_taua0_SZA10./tgasm860_taua0_SZA10 - Rhor860_taua0_SZA10;
Rhorc860_ta05_SZA10_DRH95 = Rhot860_taua05_SZA10./tgasm860_taua05_SZA10 - Rhor860_taua05_SZA10;
Rhorc860_ta10_SZA10_DRH95 = Rhot860_taua10_SZA10./tgasm860_taua10_SZA10 - Rhor860_taua10_SZA10;
Rhorc860_ta20_SZA10_DRH95 = Rhot860_taua20_SZA10./tgasm860_taua20_SZA10 - Rhor860_taua20_SZA10;

%% SZA=30
Rhorc385_ta0_SZA30_DRH95= Rhot385_taua0_SZA30./tgasm385_taua0_SZA30 - Rhor385_taua0_SZA30;
Rhorc385_ta05_SZA30_DRH95 = Rhot385_taua05_SZA30./tgasm385_taua05_SZA30 - Rhor385_taua05_SZA30;
Rhorc385_ta10_SZA30_DRH95 = Rhot385_taua10_SZA30./tgasm385_taua10_SZA30 - Rhor385_taua10_SZA30;
Rhorc385_ta20_SZA30_DRH95 = Rhot385_taua20_SZA30./tgasm385_taua20_SZA30 - Rhor385_taua20_SZA30;

Rhorc412_ta0_SZA30_DRH95= Rhot412_taua0_SZA30./tgasm412_taua0_SZA30 - Rhor412_taua0_SZA30;
Rhorc412_ta05_SZA30_DRH95 = Rhot412_taua05_SZA30./tgasm412_taua05_SZA30 - Rhor412_taua05_SZA30;
Rhorc412_ta10_SZA30_DRH95 = Rhot412_taua10_SZA30./tgasm412_taua10_SZA30 - Rhor412_taua10_SZA30;
Rhorc412_ta20_SZA30_DRH95 = Rhot412_taua20_SZA30./tgasm412_taua20_SZA30 - Rhor412_taua20_SZA30;

Rhorc443_ta0_SZA30_DRH95= Rhot443_taua0_SZA30./tgasm443_taua0_SZA30 - Rhor443_taua0_SZA30;
Rhorc443_ta05_SZA30_DRH95 = Rhot443_taua05_SZA30./tgasm443_taua05_SZA30 - Rhor443_taua05_SZA30;
Rhorc443_ta10_SZA30_DRH95 = Rhot443_taua10_SZA30./tgasm443_taua10_SZA30 - Rhor443_taua10_SZA30;
Rhorc443_ta20_SZA30_DRH95 = Rhot443_taua20_SZA30./tgasm443_taua20_SZA30 - Rhor443_taua20_SZA30;

Rhorc490_ta0_SZA30_DRH95= Rhot490_taua0_SZA30./tgasm490_taua0_SZA30 - Rhor490_taua0_SZA30;
Rhorc490_ta05_SZA30_DRH95 = Rhot490_taua05_SZA30./tgasm490_taua05_SZA30 - Rhor490_taua05_SZA30;
Rhorc490_ta10_SZA30_DRH95 = Rhot490_taua10_SZA30./tgasm490_taua10_SZA30 - Rhor490_taua10_SZA30;
Rhorc490_ta20_SZA30_DRH95 = Rhot490_taua20_SZA30./tgasm490_taua20_SZA30 - Rhor490_taua20_SZA30;

Rhorc520_ta0_SZA30_DRH95= Rhot520_taua0_SZA30./tgasm520_taua0_SZA30 - Rhor520_taua0_SZA30;
Rhorc520_ta05_SZA30_DRH95 = Rhot520_taua05_SZA30./tgasm520_taua05_SZA30 - Rhor520_taua05_SZA30;
Rhorc520_ta10_SZA30_DRH95 = Rhot520_taua10_SZA30./tgasm520_taua10_SZA30 - Rhor520_taua10_SZA30;
Rhorc520_ta20_SZA30_DRH95 = Rhot520_taua20_SZA30./tgasm520_taua20_SZA30 - Rhor520_taua20_SZA30;

Rhorc565_ta0_SZA30_DRH95= Rhot565_taua0_SZA30./tgasm565_taua0_SZA30 - Rhor565_taua0_SZA30;
Rhorc565_ta05_SZA30_DRH95 = Rhot565_taua05_SZA30./tgasm565_taua05_SZA30 - Rhor565_taua05_SZA30;
Rhorc565_ta10_SZA30_DRH95 = Rhot565_taua10_SZA30./tgasm565_taua10_SZA30 - Rhor565_taua10_SZA30;
Rhorc565_ta20_SZA30_DRH95 = Rhot565_taua20_SZA30./tgasm565_taua20_SZA30 - Rhor565_taua20_SZA30;

Rhorc670_ta0_SZA30_DRH95= Rhot670_taua0_SZA30./tgasm670_taua0_SZA30 - Rhor670_taua0_SZA30;
Rhorc670_ta05_SZA30_DRH95 = Rhot670_taua05_SZA30./tgasm670_taua05_SZA30 - Rhor670_taua05_SZA30;
Rhorc670_ta10_SZA30_DRH95 = Rhot670_taua10_SZA30./tgasm670_taua10_SZA30 - Rhor670_taua10_SZA30;
Rhorc670_ta20_SZA30_DRH95 = Rhot670_taua20_SZA30./tgasm670_taua20_SZA30 - Rhor670_taua20_SZA30;

Rhorc750_ta0_SZA30_DRH95= Rhot750_taua0_SZA30./tgasm750_taua0_SZA30 - Rhor750_taua0_SZA30;
Rhorc750_ta05_SZA30_DRH95 = Rhot750_taua05_SZA30./tgasm750_taua05_SZA30 - Rhor750_taua05_SZA30;
Rhorc750_ta10_SZA30_DRH95 = Rhot750_taua10_SZA30./tgasm750_taua10_SZA30 - Rhor750_taua10_SZA30;
Rhorc750_ta20_SZA30_DRH95 = Rhot750_taua20_SZA30./tgasm750_taua20_SZA30 - Rhor750_taua20_SZA30;

Rhorc860_ta0_SZA30_DRH95 = Rhot860_taua0_SZA30./tgasm860_taua0_SZA30 - Rhor860_taua0_SZA30;
Rhorc860_ta05_SZA30_DRH95 = Rhot860_taua05_SZA30./tgasm860_taua05_SZA30 - Rhor860_taua05_SZA30;
Rhorc860_ta10_SZA30_DRH95 = Rhot860_taua10_SZA30./tgasm860_taua10_SZA30 - Rhor860_taua10_SZA30;
Rhorc860_ta20_SZA30_DRH95 = Rhot860_taua20_SZA30./tgasm860_taua20_SZA30 - Rhor860_taua20_SZA30;

%% SZA=50
Rhorc385_ta0_SZA50_DRH95= Rhot385_taua0_SZA50./tgasm385_taua0_SZA50 - Rhor385_taua0_SZA50;
Rhorc385_ta05_SZA50_DRH95 = Rhot385_taua05_SZA50./tgasm385_taua05_SZA50 - Rhor385_taua05_SZA50;
Rhorc385_ta10_SZA50_DRH95 = Rhot385_taua10_SZA50./tgasm385_taua10_SZA50 - Rhor385_taua10_SZA50;
Rhorc385_ta20_SZA50_DRH95 = Rhot385_taua20_SZA50./tgasm385_taua20_SZA50 - Rhor385_taua20_SZA50;

Rhorc412_ta0_SZA50_DRH95= Rhot412_taua0_SZA50./tgasm412_taua0_SZA50 - Rhor412_taua0_SZA50;
Rhorc412_ta05_SZA50_DRH95 = Rhot412_taua05_SZA50./tgasm412_taua05_SZA50 - Rhor412_taua05_SZA50;
Rhorc412_ta10_SZA50_DRH95 = Rhot412_taua10_SZA50./tgasm412_taua10_SZA50 - Rhor412_taua10_SZA50;
Rhorc412_ta20_SZA50_DRH95 = Rhot412_taua20_SZA50./tgasm412_taua20_SZA50 - Rhor412_taua20_SZA50;

Rhorc443_ta0_SZA50_DRH95= Rhot443_taua0_SZA50./tgasm443_taua0_SZA50 - Rhor443_taua0_SZA50;
Rhorc443_ta05_SZA50_DRH95 = Rhot443_taua05_SZA50./tgasm443_taua05_SZA50 - Rhor443_taua05_SZA50;
Rhorc443_ta10_SZA50_DRH95 = Rhot443_taua10_SZA50./tgasm443_taua10_SZA50 - Rhor443_taua10_SZA50;
Rhorc443_ta20_SZA50_DRH95 = Rhot443_taua20_SZA50./tgasm443_taua20_SZA50 - Rhor443_taua20_SZA50;

Rhorc490_ta0_SZA50_DRH95= Rhot490_taua0_SZA50./tgasm490_taua0_SZA50 - Rhor490_taua0_SZA50;
Rhorc490_ta05_SZA50_DRH95 = Rhot490_taua05_SZA50./tgasm490_taua05_SZA50 - Rhor490_taua05_SZA50;
Rhorc490_ta10_SZA50_DRH95 = Rhot490_taua10_SZA50./tgasm490_taua10_SZA50 - Rhor490_taua10_SZA50;
Rhorc490_ta20_SZA50_DRH95 = Rhot490_taua20_SZA50./tgasm490_taua20_SZA50 - Rhor490_taua20_SZA50;

Rhorc520_ta0_SZA50_DRH95= Rhot520_taua0_SZA50./tgasm520_taua0_SZA50 - Rhor520_taua0_SZA50;
Rhorc520_ta05_SZA50_DRH95 = Rhot520_taua05_SZA50./tgasm520_taua05_SZA50 - Rhor520_taua05_SZA50;
Rhorc520_ta10_SZA50_DRH95 = Rhot520_taua10_SZA50./tgasm520_taua10_SZA50 - Rhor520_taua10_SZA50;
Rhorc520_ta20_SZA50_DRH95 = Rhot520_taua20_SZA50./tgasm520_taua20_SZA50 - Rhor520_taua20_SZA50;

Rhorc565_ta0_SZA50_DRH95= Rhot565_taua0_SZA50./tgasm565_taua0_SZA50 - Rhor565_taua0_SZA50;
Rhorc565_ta05_SZA50_DRH95 = Rhot565_taua05_SZA50./tgasm565_taua05_SZA50 - Rhor565_taua05_SZA50;
Rhorc565_ta10_SZA50_DRH95 = Rhot565_taua10_SZA50./tgasm565_taua10_SZA50 - Rhor565_taua10_SZA50;
Rhorc565_ta20_SZA50_DRH95 = Rhot565_taua20_SZA50./tgasm565_taua20_SZA50 - Rhor565_taua20_SZA50;

Rhorc670_ta0_SZA50_DRH95= Rhot670_taua0_SZA50./tgasm670_taua0_SZA50 - Rhor670_taua0_SZA50;
Rhorc670_ta05_SZA50_DRH95 = Rhot670_taua05_SZA50./tgasm670_taua05_SZA50 - Rhor670_taua05_SZA50;
Rhorc670_ta10_SZA50_DRH95 = Rhot670_taua10_SZA50./tgasm670_taua10_SZA50 - Rhor670_taua10_SZA50;
Rhorc670_ta20_SZA50_DRH95 = Rhot670_taua20_SZA50./tgasm670_taua20_SZA50 - Rhor670_taua20_SZA50;

Rhorc750_ta0_SZA50_DRH95= Rhot750_taua0_SZA50./tgasm750_taua0_SZA50 - Rhor750_taua0_SZA50;
Rhorc750_ta05_SZA50_DRH95 = Rhot750_taua05_SZA50./tgasm750_taua05_SZA50 - Rhor750_taua05_SZA50;
Rhorc750_ta10_SZA50_DRH95 = Rhot750_taua10_SZA50./tgasm750_taua10_SZA50 - Rhor750_taua10_SZA50;
Rhorc750_ta20_SZA50_DRH95 = Rhot750_taua20_SZA50./tgasm750_taua20_SZA50 - Rhor750_taua20_SZA50;

Rhorc860_ta0_SZA50_DRH95 = Rhot860_taua0_SZA50./tgasm860_taua0_SZA50 - Rhor860_taua0_SZA50;
Rhorc860_ta05_SZA50_DRH95 = Rhot860_taua05_SZA50./tgasm860_taua05_SZA50 - Rhor860_taua05_SZA50;
Rhorc860_ta10_SZA50_DRH95 = Rhot860_taua10_SZA50./tgasm860_taua10_SZA50 - Rhor860_taua10_SZA50;
Rhorc860_ta20_SZA50_DRH95 = Rhot860_taua20_SZA50./tgasm860_taua20_SZA50 - Rhor860_taua20_SZA50;

%% ********************************  dust RH99 ***************************
%% RH99
data = processTXT(fileName{4});
for ii = 1:length(wl)
    for jj = 1:length(taua)
       for kk = 1:length(SZA)
           bgnL = (ii-1)*13*length(SZA)*length(taua)+(jj-1)*13*length(SZA)+((kk-1)*13+1);
           endL = bgnL+12;
           eval(['Rhot', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 11);']);
           eval(['Rhor', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 8);']);
           eval(['Rhoa', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 9);']);
           eval(['tgasm', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 15);']);
           eval(['stwava', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 18);']);
           eval(['stozon', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 21);']);
           eval(['stdica', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 24);']);
           eval(['stoxyg', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 27);']);
           eval(['stniox', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 30);']);
           eval(['stmeth', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 33);']);
           eval(['stmoca', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 36);']);   
       end
    end
end

%% SZA=10
Rhorc385_ta0_SZA10_DRH99= Rhot385_taua0_SZA10./tgasm385_taua0_SZA10 - Rhor385_taua0_SZA10;
Rhorc385_ta05_SZA10_DRH99 = Rhot385_taua05_SZA10./tgasm385_taua05_SZA10 - Rhor385_taua05_SZA10;
Rhorc385_ta10_SZA10_DRH99 = Rhot385_taua10_SZA10./tgasm385_taua10_SZA10 - Rhor385_taua10_SZA10;
Rhorc385_ta20_SZA10_DRH99 = Rhot385_taua20_SZA10./tgasm385_taua20_SZA10 - Rhor385_taua20_SZA10;

Rhorc412_ta0_SZA10_DRH99= Rhot412_taua0_SZA10./tgasm412_taua0_SZA10 - Rhor412_taua0_SZA10;
Rhorc412_ta05_SZA10_DRH99 = Rhot412_taua05_SZA10./tgasm412_taua05_SZA10 - Rhor412_taua05_SZA10;
Rhorc412_ta10_SZA10_DRH99 = Rhot412_taua10_SZA10./tgasm412_taua10_SZA10 - Rhor412_taua10_SZA10;
Rhorc412_ta20_SZA10_DRH99 = Rhot412_taua20_SZA10./tgasm412_taua20_SZA10 - Rhor412_taua20_SZA10;

Rhorc443_ta0_SZA10_DRH99= Rhot443_taua0_SZA10./tgasm443_taua0_SZA10 - Rhor443_taua0_SZA10;
Rhorc443_ta05_SZA10_DRH99 = Rhot443_taua05_SZA10./tgasm443_taua05_SZA10 - Rhor443_taua05_SZA10;
Rhorc443_ta10_SZA10_DRH99 = Rhot443_taua10_SZA10./tgasm443_taua10_SZA10 - Rhor443_taua10_SZA10;
Rhorc443_ta20_SZA10_DRH99 = Rhot443_taua20_SZA10./tgasm443_taua20_SZA10 - Rhor443_taua20_SZA10;

Rhorc490_ta0_SZA10_DRH99= Rhot490_taua0_SZA10./tgasm490_taua0_SZA10 - Rhor490_taua0_SZA10;
Rhorc490_ta05_SZA10_DRH99 = Rhot490_taua05_SZA10./tgasm490_taua05_SZA10 - Rhor490_taua05_SZA10;
Rhorc490_ta10_SZA10_DRH99 = Rhot490_taua10_SZA10./tgasm490_taua10_SZA10 - Rhor490_taua10_SZA10;
Rhorc490_ta20_SZA10_DRH99 = Rhot490_taua20_SZA10./tgasm490_taua20_SZA10 - Rhor490_taua20_SZA10;

Rhorc520_ta0_SZA10_DRH99= Rhot520_taua0_SZA10./tgasm520_taua0_SZA10 - Rhor520_taua0_SZA10;
Rhorc520_ta05_SZA10_DRH99 = Rhot520_taua05_SZA10./tgasm520_taua05_SZA10 - Rhor520_taua05_SZA10;
Rhorc520_ta10_SZA10_DRH99 = Rhot520_taua10_SZA10./tgasm520_taua10_SZA10 - Rhor520_taua10_SZA10;
Rhorc520_ta20_SZA10_DRH99 = Rhot520_taua20_SZA10./tgasm520_taua20_SZA10 - Rhor520_taua20_SZA10;

Rhorc565_ta0_SZA10_DRH99= Rhot565_taua0_SZA10./tgasm565_taua0_SZA10 - Rhor565_taua0_SZA10;
Rhorc565_ta05_SZA10_DRH99 = Rhot565_taua05_SZA10./tgasm565_taua05_SZA10 - Rhor565_taua05_SZA10;
Rhorc565_ta10_SZA10_DRH99 = Rhot565_taua10_SZA10./tgasm565_taua10_SZA10 - Rhor565_taua10_SZA10;
Rhorc565_ta20_SZA10_DRH99 = Rhot565_taua20_SZA10./tgasm565_taua20_SZA10 - Rhor565_taua20_SZA10;

Rhorc670_ta0_SZA10_DRH99= Rhot670_taua0_SZA10./tgasm670_taua0_SZA10 - Rhor670_taua0_SZA10;
Rhorc670_ta05_SZA10_DRH99 = Rhot670_taua05_SZA10./tgasm670_taua05_SZA10 - Rhor670_taua05_SZA10;
Rhorc670_ta10_SZA10_DRH99 = Rhot670_taua10_SZA10./tgasm670_taua10_SZA10 - Rhor670_taua10_SZA10;
Rhorc670_ta20_SZA10_DRH99 = Rhot670_taua20_SZA10./tgasm670_taua20_SZA10 - Rhor670_taua20_SZA10;

Rhorc750_ta0_SZA10_DRH99= Rhot750_taua0_SZA10./tgasm750_taua0_SZA10 - Rhor750_taua0_SZA10;
Rhorc750_ta05_SZA10_DRH99 = Rhot750_taua05_SZA10./tgasm750_taua05_SZA10 - Rhor750_taua05_SZA10;
Rhorc750_ta10_SZA10_DRH99 = Rhot750_taua10_SZA10./tgasm750_taua10_SZA10 - Rhor750_taua10_SZA10;
Rhorc750_ta20_SZA10_DRH99 = Rhot750_taua20_SZA10./tgasm750_taua20_SZA10 - Rhor750_taua20_SZA10;

Rhorc860_ta0_SZA10_DRH99 = Rhot860_taua0_SZA10./tgasm860_taua0_SZA10 - Rhor860_taua0_SZA10;
Rhorc860_ta05_SZA10_DRH99 = Rhot860_taua05_SZA10./tgasm860_taua05_SZA10 - Rhor860_taua05_SZA10;
Rhorc860_ta10_SZA10_DRH99 = Rhot860_taua10_SZA10./tgasm860_taua10_SZA10 - Rhor860_taua10_SZA10;
Rhorc860_ta20_SZA10_DRH99 = Rhot860_taua20_SZA10./tgasm860_taua20_SZA10 - Rhor860_taua20_SZA10;

%% SZA=30
Rhorc385_ta0_SZA30_DRH99= Rhot385_taua0_SZA30./tgasm385_taua0_SZA30 - Rhor385_taua0_SZA30;
Rhorc385_ta05_SZA30_DRH99 = Rhot385_taua05_SZA30./tgasm385_taua05_SZA30 - Rhor385_taua05_SZA30;
Rhorc385_ta10_SZA30_DRH99 = Rhot385_taua10_SZA30./tgasm385_taua10_SZA30 - Rhor385_taua10_SZA30;
Rhorc385_ta20_SZA30_DRH99 = Rhot385_taua20_SZA30./tgasm385_taua20_SZA30 - Rhor385_taua20_SZA30;

Rhorc412_ta0_SZA30_DRH99= Rhot412_taua0_SZA30./tgasm412_taua0_SZA30 - Rhor412_taua0_SZA30;
Rhorc412_ta05_SZA30_DRH99 = Rhot412_taua05_SZA30./tgasm412_taua05_SZA30 - Rhor412_taua05_SZA30;
Rhorc412_ta10_SZA30_DRH99 = Rhot412_taua10_SZA30./tgasm412_taua10_SZA30 - Rhor412_taua10_SZA30;
Rhorc412_ta20_SZA30_DRH99 = Rhot412_taua20_SZA30./tgasm412_taua20_SZA30 - Rhor412_taua20_SZA30;

Rhorc443_ta0_SZA30_DRH99= Rhot443_taua0_SZA30./tgasm443_taua0_SZA30 - Rhor443_taua0_SZA30;
Rhorc443_ta05_SZA30_DRH99 = Rhot443_taua05_SZA30./tgasm443_taua05_SZA30 - Rhor443_taua05_SZA30;
Rhorc443_ta10_SZA30_DRH99 = Rhot443_taua10_SZA30./tgasm443_taua10_SZA30 - Rhor443_taua10_SZA30;
Rhorc443_ta20_SZA30_DRH99 = Rhot443_taua20_SZA30./tgasm443_taua20_SZA30 - Rhor443_taua20_SZA30;

Rhorc490_ta0_SZA30_DRH99= Rhot490_taua0_SZA30./tgasm490_taua0_SZA30 - Rhor490_taua0_SZA30;
Rhorc490_ta05_SZA30_DRH99 = Rhot490_taua05_SZA30./tgasm490_taua05_SZA30 - Rhor490_taua05_SZA30;
Rhorc490_ta10_SZA30_DRH99 = Rhot490_taua10_SZA30./tgasm490_taua10_SZA30 - Rhor490_taua10_SZA30;
Rhorc490_ta20_SZA30_DRH99 = Rhot490_taua20_SZA30./tgasm490_taua20_SZA30 - Rhor490_taua20_SZA30;

Rhorc520_ta0_SZA30_DRH99= Rhot520_taua0_SZA30./tgasm520_taua0_SZA30 - Rhor520_taua0_SZA30;
Rhorc520_ta05_SZA30_DRH99 = Rhot520_taua05_SZA30./tgasm520_taua05_SZA30 - Rhor520_taua05_SZA30;
Rhorc520_ta10_SZA30_DRH99 = Rhot520_taua10_SZA30./tgasm520_taua10_SZA30 - Rhor520_taua10_SZA30;
Rhorc520_ta20_SZA30_DRH99 = Rhot520_taua20_SZA30./tgasm520_taua20_SZA30 - Rhor520_taua20_SZA30;

Rhorc565_ta0_SZA30_DRH99= Rhot565_taua0_SZA30./tgasm565_taua0_SZA30 - Rhor565_taua0_SZA30;
Rhorc565_ta05_SZA30_DRH99 = Rhot565_taua05_SZA30./tgasm565_taua05_SZA30 - Rhor565_taua05_SZA30;
Rhorc565_ta10_SZA30_DRH99 = Rhot565_taua10_SZA30./tgasm565_taua10_SZA30 - Rhor565_taua10_SZA30;
Rhorc565_ta20_SZA30_DRH99 = Rhot565_taua20_SZA30./tgasm565_taua20_SZA30 - Rhor565_taua20_SZA30;

Rhorc670_ta0_SZA30_DRH99= Rhot670_taua0_SZA30./tgasm670_taua0_SZA30 - Rhor670_taua0_SZA30;
Rhorc670_ta05_SZA30_DRH99 = Rhot670_taua05_SZA30./tgasm670_taua05_SZA30 - Rhor670_taua05_SZA30;
Rhorc670_ta10_SZA30_DRH99 = Rhot670_taua10_SZA30./tgasm670_taua10_SZA30 - Rhor670_taua10_SZA30;
Rhorc670_ta20_SZA30_DRH99 = Rhot670_taua20_SZA30./tgasm670_taua20_SZA30 - Rhor670_taua20_SZA30;

Rhorc750_ta0_SZA30_DRH99= Rhot750_taua0_SZA30./tgasm750_taua0_SZA30 - Rhor750_taua0_SZA30;
Rhorc750_ta05_SZA30_DRH99 = Rhot750_taua05_SZA30./tgasm750_taua05_SZA30 - Rhor750_taua05_SZA30;
Rhorc750_ta10_SZA30_DRH99 = Rhot750_taua10_SZA30./tgasm750_taua10_SZA30 - Rhor750_taua10_SZA30;
Rhorc750_ta20_SZA30_DRH99 = Rhot750_taua20_SZA30./tgasm750_taua20_SZA30 - Rhor750_taua20_SZA30;

Rhorc860_ta0_SZA30_DRH99 = Rhot860_taua0_SZA30./tgasm860_taua0_SZA30 - Rhor860_taua0_SZA30;
Rhorc860_ta05_SZA30_DRH99 = Rhot860_taua05_SZA30./tgasm860_taua05_SZA30 - Rhor860_taua05_SZA30;
Rhorc860_ta10_SZA30_DRH99 = Rhot860_taua10_SZA30./tgasm860_taua10_SZA30 - Rhor860_taua10_SZA30;
Rhorc860_ta20_SZA30_DRH99 = Rhot860_taua20_SZA30./tgasm860_taua20_SZA30 - Rhor860_taua20_SZA30;

%% SZA=50
Rhorc385_ta0_SZA50_DRH99= Rhot385_taua0_SZA50./tgasm385_taua0_SZA50 - Rhor385_taua0_SZA50;
Rhorc385_ta05_SZA50_DRH99 = Rhot385_taua05_SZA50./tgasm385_taua05_SZA50 - Rhor385_taua05_SZA50;
Rhorc385_ta10_SZA50_DRH99 = Rhot385_taua10_SZA50./tgasm385_taua10_SZA50 - Rhor385_taua10_SZA50;
Rhorc385_ta20_SZA50_DRH99 = Rhot385_taua20_SZA50./tgasm385_taua20_SZA50 - Rhor385_taua20_SZA50;

Rhorc412_ta0_SZA50_DRH99= Rhot412_taua0_SZA50./tgasm412_taua0_SZA50 - Rhor412_taua0_SZA50;
Rhorc412_ta05_SZA50_DRH99 = Rhot412_taua05_SZA50./tgasm412_taua05_SZA50 - Rhor412_taua05_SZA50;
Rhorc412_ta10_SZA50_DRH99 = Rhot412_taua10_SZA50./tgasm412_taua10_SZA50 - Rhor412_taua10_SZA50;
Rhorc412_ta20_SZA50_DRH99 = Rhot412_taua20_SZA50./tgasm412_taua20_SZA50 - Rhor412_taua20_SZA50;

Rhorc443_ta0_SZA50_DRH99= Rhot443_taua0_SZA50./tgasm443_taua0_SZA50 - Rhor443_taua0_SZA50;
Rhorc443_ta05_SZA50_DRH99 = Rhot443_taua05_SZA50./tgasm443_taua05_SZA50 - Rhor443_taua05_SZA50;
Rhorc443_ta10_SZA50_DRH99 = Rhot443_taua10_SZA50./tgasm443_taua10_SZA50 - Rhor443_taua10_SZA50;
Rhorc443_ta20_SZA50_DRH99 = Rhot443_taua20_SZA50./tgasm443_taua20_SZA50 - Rhor443_taua20_SZA50;

Rhorc490_ta0_SZA50_DRH99= Rhot490_taua0_SZA50./tgasm490_taua0_SZA50 - Rhor490_taua0_SZA50;
Rhorc490_ta05_SZA50_DRH99 = Rhot490_taua05_SZA50./tgasm490_taua05_SZA50 - Rhor490_taua05_SZA50;
Rhorc490_ta10_SZA50_DRH99 = Rhot490_taua10_SZA50./tgasm490_taua10_SZA50 - Rhor490_taua10_SZA50;
Rhorc490_ta20_SZA50_DRH99 = Rhot490_taua20_SZA50./tgasm490_taua20_SZA50 - Rhor490_taua20_SZA50;

Rhorc520_ta0_SZA50_DRH99= Rhot520_taua0_SZA50./tgasm520_taua0_SZA50 - Rhor520_taua0_SZA50;
Rhorc520_ta05_SZA50_DRH99 = Rhot520_taua05_SZA50./tgasm520_taua05_SZA50 - Rhor520_taua05_SZA50;
Rhorc520_ta10_SZA50_DRH99 = Rhot520_taua10_SZA50./tgasm520_taua10_SZA50 - Rhor520_taua10_SZA50;
Rhorc520_ta20_SZA50_DRH99 = Rhot520_taua20_SZA50./tgasm520_taua20_SZA50 - Rhor520_taua20_SZA50;

Rhorc565_ta0_SZA50_DRH99= Rhot565_taua0_SZA50./tgasm565_taua0_SZA50 - Rhor565_taua0_SZA50;
Rhorc565_ta05_SZA50_DRH99 = Rhot565_taua05_SZA50./tgasm565_taua05_SZA50 - Rhor565_taua05_SZA50;
Rhorc565_ta10_SZA50_DRH99 = Rhot565_taua10_SZA50./tgasm565_taua10_SZA50 - Rhor565_taua10_SZA50;
Rhorc565_ta20_SZA50_DRH99 = Rhot565_taua20_SZA50./tgasm565_taua20_SZA50 - Rhor565_taua20_SZA50;

Rhorc670_ta0_SZA50_DRH99= Rhot670_taua0_SZA50./tgasm670_taua0_SZA50 - Rhor670_taua0_SZA50;
Rhorc670_ta05_SZA50_DRH99 = Rhot670_taua05_SZA50./tgasm670_taua05_SZA50 - Rhor670_taua05_SZA50;
Rhorc670_ta10_SZA50_DRH99 = Rhot670_taua10_SZA50./tgasm670_taua10_SZA50 - Rhor670_taua10_SZA50;
Rhorc670_ta20_SZA50_DRH99 = Rhot670_taua20_SZA50./tgasm670_taua20_SZA50 - Rhor670_taua20_SZA50;

Rhorc750_ta0_SZA50_DRH99= Rhot750_taua0_SZA50./tgasm750_taua0_SZA50 - Rhor750_taua0_SZA50;
Rhorc750_ta05_SZA50_DRH99 = Rhot750_taua05_SZA50./tgasm750_taua05_SZA50 - Rhor750_taua05_SZA50;
Rhorc750_ta10_SZA50_DRH99 = Rhot750_taua10_SZA50./tgasm750_taua10_SZA50 - Rhor750_taua10_SZA50;
Rhorc750_ta20_SZA50_DRH99 = Rhot750_taua20_SZA50./tgasm750_taua20_SZA50 - Rhor750_taua20_SZA50;

Rhorc860_ta0_SZA50_DRH99 = Rhot860_taua0_SZA50./tgasm860_taua0_SZA50 - Rhor860_taua0_SZA50;
Rhorc860_ta05_SZA50_DRH99 = Rhot860_taua05_SZA50./tgasm860_taua05_SZA50 - Rhor860_taua05_SZA50;
Rhorc860_ta10_SZA50_DRH99 = Rhot860_taua10_SZA50./tgasm860_taua10_SZA50 - Rhor860_taua10_SZA50;
Rhorc860_ta20_SZA50_DRH99 = Rhot860_taua20_SZA50./tgasm860_taua20_SZA50 - Rhor860_taua20_SZA50;

%% ********************************  Maritime ***************************
data = processTXT(fileName{5});
for ii = 1:length(wl)
    for jj = 1:length(taua)
       for kk = 1:length(SZA)
           bgnL = (ii-1)*13*length(SZA)*length(taua)+(jj-1)*13*length(SZA)+((kk-1)*13+1);
           endL = bgnL+12;
           eval(['Rhot', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 11);']);
           eval(['Rhor', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 8);']);
           eval(['Rhoa', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 9);']);
           eval(['tgasm', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 15);']);
           eval(['stwava', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 18);']);
           eval(['stozon', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 21);']);
           eval(['stdica', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 24);']);
           eval(['stoxyg', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 27);']);
           eval(['stniox', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 30);']);
           eval(['stmeth', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 33);']);
           eval(['stmoca', wl{ii}, '_taua', taua{jj}, '_SZA', SZA{kk}, '= data(bgnL:endL, 36);']);   
       end
    end
end

%% SZA=10
Rhorc385_ta0_SZA10_Mari= Rhot385_taua0_SZA10./tgasm385_taua0_SZA10 - Rhor385_taua0_SZA10;
Rhorc385_ta05_SZA10_Mari = Rhot385_taua05_SZA10./tgasm385_taua05_SZA10 - Rhor385_taua05_SZA10;
Rhorc385_ta10_SZA10_Mari = Rhot385_taua10_SZA10./tgasm385_taua10_SZA10 - Rhor385_taua10_SZA10;
Rhorc385_ta20_SZA10_Mari = Rhot385_taua20_SZA10./tgasm385_taua20_SZA10 - Rhor385_taua20_SZA10;

Rhorc412_ta0_SZA10_Mari= Rhot412_taua0_SZA10./tgasm412_taua0_SZA10 - Rhor412_taua0_SZA10;
Rhorc412_ta05_SZA10_Mari = Rhot412_taua05_SZA10./tgasm412_taua05_SZA10 - Rhor412_taua05_SZA10;
Rhorc412_ta10_SZA10_Mari = Rhot412_taua10_SZA10./tgasm412_taua10_SZA10 - Rhor412_taua10_SZA10;
Rhorc412_ta20_SZA10_Mari = Rhot412_taua20_SZA10./tgasm412_taua20_SZA10 - Rhor412_taua20_SZA10;

Rhorc443_ta0_SZA10_Mari= Rhot443_taua0_SZA10./tgasm443_taua0_SZA10 - Rhor443_taua0_SZA10;
Rhorc443_ta05_SZA10_Mari = Rhot443_taua05_SZA10./tgasm443_taua05_SZA10 - Rhor443_taua05_SZA10;
Rhorc443_ta10_SZA10_Mari = Rhot443_taua10_SZA10./tgasm443_taua10_SZA10 - Rhor443_taua10_SZA10;
Rhorc443_ta20_SZA10_Mari = Rhot443_taua20_SZA10./tgasm443_taua20_SZA10 - Rhor443_taua20_SZA10;

Rhorc490_ta0_SZA10_Mari= Rhot490_taua0_SZA10./tgasm490_taua0_SZA10 - Rhor490_taua0_SZA10;
Rhorc490_ta05_SZA10_Mari = Rhot490_taua05_SZA10./tgasm490_taua05_SZA10 - Rhor490_taua05_SZA10;
Rhorc490_ta10_SZA10_Mari = Rhot490_taua10_SZA10./tgasm490_taua10_SZA10 - Rhor490_taua10_SZA10;
Rhorc490_ta20_SZA10_Mari = Rhot490_taua20_SZA10./tgasm490_taua20_SZA10 - Rhor490_taua20_SZA10;

Rhorc520_ta0_SZA10_Mari= Rhot520_taua0_SZA10./tgasm520_taua0_SZA10 - Rhor520_taua0_SZA10;
Rhorc520_ta05_SZA10_Mari = Rhot520_taua05_SZA10./tgasm520_taua05_SZA10 - Rhor520_taua05_SZA10;
Rhorc520_ta10_SZA10_Mari = Rhot520_taua10_SZA10./tgasm520_taua10_SZA10 - Rhor520_taua10_SZA10;
Rhorc520_ta20_SZA10_Mari = Rhot520_taua20_SZA10./tgasm520_taua20_SZA10 - Rhor520_taua20_SZA10;

Rhorc565_ta0_SZA10_Mari= Rhot565_taua0_SZA10./tgasm565_taua0_SZA10 - Rhor565_taua0_SZA10;
Rhorc565_ta05_SZA10_Mari = Rhot565_taua05_SZA10./tgasm565_taua05_SZA10 - Rhor565_taua05_SZA10;
Rhorc565_ta10_SZA10_Mari = Rhot565_taua10_SZA10./tgasm565_taua10_SZA10 - Rhor565_taua10_SZA10;
Rhorc565_ta20_SZA10_Mari = Rhot565_taua20_SZA10./tgasm565_taua20_SZA10 - Rhor565_taua20_SZA10;

Rhorc670_ta0_SZA10_Mari= Rhot670_taua0_SZA10./tgasm670_taua0_SZA10 - Rhor670_taua0_SZA10;
Rhorc670_ta05_SZA10_Mari = Rhot670_taua05_SZA10./tgasm670_taua05_SZA10 - Rhor670_taua05_SZA10;
Rhorc670_ta10_SZA10_Mari = Rhot670_taua10_SZA10./tgasm670_taua10_SZA10 - Rhor670_taua10_SZA10;
Rhorc670_ta20_SZA10_Mari = Rhot670_taua20_SZA10./tgasm670_taua20_SZA10 - Rhor670_taua20_SZA10;

Rhorc750_ta0_SZA10_Mari= Rhot750_taua0_SZA10./tgasm750_taua0_SZA10 - Rhor750_taua0_SZA10;
Rhorc750_ta05_SZA10_Mari = Rhot750_taua05_SZA10./tgasm750_taua05_SZA10 - Rhor750_taua05_SZA10;
Rhorc750_ta10_SZA10_Mari = Rhot750_taua10_SZA10./tgasm750_taua10_SZA10 - Rhor750_taua10_SZA10;
Rhorc750_ta20_SZA10_Mari = Rhot750_taua20_SZA10./tgasm750_taua20_SZA10 - Rhor750_taua20_SZA10;

Rhorc860_ta0_SZA10_Mari = Rhot860_taua0_SZA10./tgasm860_taua0_SZA10 - Rhor860_taua0_SZA10;
Rhorc860_ta05_SZA10_Mari = Rhot860_taua05_SZA10./tgasm860_taua05_SZA10 - Rhor860_taua05_SZA10;
Rhorc860_ta10_SZA10_Mari = Rhot860_taua10_SZA10./tgasm860_taua10_SZA10 - Rhor860_taua10_SZA10;
Rhorc860_ta20_SZA10_Mari = Rhot860_taua20_SZA10./tgasm860_taua20_SZA10 - Rhor860_taua20_SZA10;

%% SZA=30
Rhorc385_ta0_SZA30_Mari= Rhot385_taua0_SZA30./tgasm385_taua0_SZA30 - Rhor385_taua0_SZA30;
Rhorc385_ta05_SZA30_Mari = Rhot385_taua05_SZA30./tgasm385_taua05_SZA30 - Rhor385_taua05_SZA30;
Rhorc385_ta10_SZA30_Mari = Rhot385_taua10_SZA30./tgasm385_taua10_SZA30 - Rhor385_taua10_SZA30;
Rhorc385_ta20_SZA30_Mari = Rhot385_taua20_SZA30./tgasm385_taua20_SZA30 - Rhor385_taua20_SZA30;

Rhorc412_ta0_SZA30_Mari= Rhot412_taua0_SZA30./tgasm412_taua0_SZA30 - Rhor412_taua0_SZA30;
Rhorc412_ta05_SZA30_Mari = Rhot412_taua05_SZA30./tgasm412_taua05_SZA30 - Rhor412_taua05_SZA30;
Rhorc412_ta10_SZA30_Mari = Rhot412_taua10_SZA30./tgasm412_taua10_SZA30 - Rhor412_taua10_SZA30;
Rhorc412_ta20_SZA30_Mari = Rhot412_taua20_SZA30./tgasm412_taua20_SZA30 - Rhor412_taua20_SZA30;

Rhorc443_ta0_SZA30_Mari= Rhot443_taua0_SZA30./tgasm443_taua0_SZA30 - Rhor443_taua0_SZA30;
Rhorc443_ta05_SZA30_Mari = Rhot443_taua05_SZA30./tgasm443_taua05_SZA30 - Rhor443_taua05_SZA30;
Rhorc443_ta10_SZA30_Mari = Rhot443_taua10_SZA30./tgasm443_taua10_SZA30 - Rhor443_taua10_SZA30;
Rhorc443_ta20_SZA30_Mari = Rhot443_taua20_SZA30./tgasm443_taua20_SZA30 - Rhor443_taua20_SZA30;

Rhorc490_ta0_SZA30_Mari= Rhot490_taua0_SZA30./tgasm490_taua0_SZA30 - Rhor490_taua0_SZA30;
Rhorc490_ta05_SZA30_Mari = Rhot490_taua05_SZA30./tgasm490_taua05_SZA30 - Rhor490_taua05_SZA30;
Rhorc490_ta10_SZA30_Mari = Rhot490_taua10_SZA30./tgasm490_taua10_SZA30 - Rhor490_taua10_SZA30;
Rhorc490_ta20_SZA30_Mari = Rhot490_taua20_SZA30./tgasm490_taua20_SZA30 - Rhor490_taua20_SZA30;

Rhorc520_ta0_SZA30_Mari= Rhot520_taua0_SZA30./tgasm520_taua0_SZA30 - Rhor520_taua0_SZA30;
Rhorc520_ta05_SZA30_Mari = Rhot520_taua05_SZA30./tgasm520_taua05_SZA30 - Rhor520_taua05_SZA30;
Rhorc520_ta10_SZA30_Mari = Rhot520_taua10_SZA30./tgasm520_taua10_SZA30 - Rhor520_taua10_SZA30;
Rhorc520_ta20_SZA30_Mari = Rhot520_taua20_SZA30./tgasm520_taua20_SZA30 - Rhor520_taua20_SZA30;

Rhorc565_ta0_SZA30_Mari= Rhot565_taua0_SZA30./tgasm565_taua0_SZA30 - Rhor565_taua0_SZA30;
Rhorc565_ta05_SZA30_Mari = Rhot565_taua05_SZA30./tgasm565_taua05_SZA30 - Rhor565_taua05_SZA30;
Rhorc565_ta10_SZA30_Mari = Rhot565_taua10_SZA30./tgasm565_taua10_SZA30 - Rhor565_taua10_SZA30;
Rhorc565_ta20_SZA30_Mari = Rhot565_taua20_SZA30./tgasm565_taua20_SZA30 - Rhor565_taua20_SZA30;

Rhorc670_ta0_SZA30_Mari= Rhot670_taua0_SZA30./tgasm670_taua0_SZA30 - Rhor670_taua0_SZA30;
Rhorc670_ta05_SZA30_Mari = Rhot670_taua05_SZA30./tgasm670_taua05_SZA30 - Rhor670_taua05_SZA30;
Rhorc670_ta10_SZA30_Mari = Rhot670_taua10_SZA30./tgasm670_taua10_SZA30 - Rhor670_taua10_SZA30;
Rhorc670_ta20_SZA30_Mari = Rhot670_taua20_SZA30./tgasm670_taua20_SZA30 - Rhor670_taua20_SZA30;

Rhorc750_ta0_SZA30_Mari= Rhot750_taua0_SZA30./tgasm750_taua0_SZA30 - Rhor750_taua0_SZA30;
Rhorc750_ta05_SZA30_Mari = Rhot750_taua05_SZA30./tgasm750_taua05_SZA30 - Rhor750_taua05_SZA30;
Rhorc750_ta10_SZA30_Mari = Rhot750_taua10_SZA30./tgasm750_taua10_SZA30 - Rhor750_taua10_SZA30;
Rhorc750_ta20_SZA30_Mari = Rhot750_taua20_SZA30./tgasm750_taua20_SZA30 - Rhor750_taua20_SZA30;

Rhorc860_ta0_SZA30_Mari = Rhot860_taua0_SZA30./tgasm860_taua0_SZA30 - Rhor860_taua0_SZA30;
Rhorc860_ta05_SZA30_Mari = Rhot860_taua05_SZA30./tgasm860_taua05_SZA30 - Rhor860_taua05_SZA30;
Rhorc860_ta10_SZA30_Mari = Rhot860_taua10_SZA30./tgasm860_taua10_SZA30 - Rhor860_taua10_SZA30;
Rhorc860_ta20_SZA30_Mari = Rhot860_taua20_SZA30./tgasm860_taua20_SZA30 - Rhor860_taua20_SZA30;

%% SZA=50
Rhorc385_ta0_SZA50_Mari= Rhot385_taua0_SZA50./tgasm385_taua0_SZA50 - Rhor385_taua0_SZA50;
Rhorc385_ta05_SZA50_Mari = Rhot385_taua05_SZA50./tgasm385_taua05_SZA50 - Rhor385_taua05_SZA50;
Rhorc385_ta10_SZA50_Mari = Rhot385_taua10_SZA50./tgasm385_taua10_SZA50 - Rhor385_taua10_SZA50;
Rhorc385_ta20_SZA50_Mari = Rhot385_taua20_SZA50./tgasm385_taua20_SZA50 - Rhor385_taua20_SZA50;

Rhorc412_ta0_SZA50_Mari= Rhot412_taua0_SZA50./tgasm412_taua0_SZA50 - Rhor412_taua0_SZA50;
Rhorc412_ta05_SZA50_Mari = Rhot412_taua05_SZA50./tgasm412_taua05_SZA50 - Rhor412_taua05_SZA50;
Rhorc412_ta10_SZA50_Mari = Rhot412_taua10_SZA50./tgasm412_taua10_SZA50 - Rhor412_taua10_SZA50;
Rhorc412_ta20_SZA50_Mari = Rhot412_taua20_SZA50./tgasm412_taua20_SZA50 - Rhor412_taua20_SZA50;

Rhorc443_ta0_SZA50_Mari= Rhot443_taua0_SZA50./tgasm443_taua0_SZA50 - Rhor443_taua0_SZA50;
Rhorc443_ta05_SZA50_Mari = Rhot443_taua05_SZA50./tgasm443_taua05_SZA50 - Rhor443_taua05_SZA50;
Rhorc443_ta10_SZA50_Mari = Rhot443_taua10_SZA50./tgasm443_taua10_SZA50 - Rhor443_taua10_SZA50;
Rhorc443_ta20_SZA50_Mari = Rhot443_taua20_SZA50./tgasm443_taua20_SZA50 - Rhor443_taua20_SZA50;

Rhorc490_ta0_SZA50_Mari= Rhot490_taua0_SZA50./tgasm490_taua0_SZA50 - Rhor490_taua0_SZA50;
Rhorc490_ta05_SZA50_Mari = Rhot490_taua05_SZA50./tgasm490_taua05_SZA50 - Rhor490_taua05_SZA50;
Rhorc490_ta10_SZA50_Mari = Rhot490_taua10_SZA50./tgasm490_taua10_SZA50 - Rhor490_taua10_SZA50;
Rhorc490_ta20_SZA50_Mari = Rhot490_taua20_SZA50./tgasm490_taua20_SZA50 - Rhor490_taua20_SZA50;

Rhorc520_ta0_SZA50_Mari= Rhot520_taua0_SZA50./tgasm520_taua0_SZA50 - Rhor520_taua0_SZA50;
Rhorc520_ta05_SZA50_Mari = Rhot520_taua05_SZA50./tgasm520_taua05_SZA50 - Rhor520_taua05_SZA50;
Rhorc520_ta10_SZA50_Mari = Rhot520_taua10_SZA50./tgasm520_taua10_SZA50 - Rhor520_taua10_SZA50;
Rhorc520_ta20_SZA50_Mari = Rhot520_taua20_SZA50./tgasm520_taua20_SZA50 - Rhor520_taua20_SZA50;

Rhorc565_ta0_SZA50_Mari= Rhot565_taua0_SZA50./tgasm565_taua0_SZA50 - Rhor565_taua0_SZA50;
Rhorc565_ta05_SZA50_Mari = Rhot565_taua05_SZA50./tgasm565_taua05_SZA50 - Rhor565_taua05_SZA50;
Rhorc565_ta10_SZA50_Mari = Rhot565_taua10_SZA50./tgasm565_taua10_SZA50 - Rhor565_taua10_SZA50;
Rhorc565_ta20_SZA50_Mari = Rhot565_taua20_SZA50./tgasm565_taua20_SZA50 - Rhor565_taua20_SZA50;

Rhorc670_ta0_SZA50_Mari= Rhot670_taua0_SZA50./tgasm670_taua0_SZA50 - Rhor670_taua0_SZA50;
Rhorc670_ta05_SZA50_Mari = Rhot670_taua05_SZA50./tgasm670_taua05_SZA50 - Rhor670_taua05_SZA50;
Rhorc670_ta10_SZA50_Mari = Rhot670_taua10_SZA50./tgasm670_taua10_SZA50 - Rhor670_taua10_SZA50;
Rhorc670_ta20_SZA50_Mari = Rhot670_taua20_SZA50./tgasm670_taua20_SZA50 - Rhor670_taua20_SZA50;

Rhorc750_ta0_SZA50_Mari= Rhot750_taua0_SZA50./tgasm750_taua0_SZA50 - Rhor750_taua0_SZA50;
Rhorc750_ta05_SZA50_Mari = Rhot750_taua05_SZA50./tgasm750_taua05_SZA50 - Rhor750_taua05_SZA50;
Rhorc750_ta10_SZA50_Mari = Rhot750_taua10_SZA50./tgasm750_taua10_SZA50 - Rhor750_taua10_SZA50;
Rhorc750_ta20_SZA50_Mari = Rhot750_taua20_SZA50./tgasm750_taua20_SZA50 - Rhor750_taua20_SZA50;

Rhorc860_ta0_SZA50_Mari = Rhot860_taua0_SZA50./tgasm860_taua0_SZA50 - Rhor860_taua0_SZA50;
Rhorc860_ta05_SZA50_Mari = Rhot860_taua05_SZA50./tgasm860_taua05_SZA50 - Rhor860_taua05_SZA50;
Rhorc860_ta10_SZA50_Mari = Rhot860_taua10_SZA50./tgasm860_taua10_SZA50 - Rhor860_taua10_SZA50;
Rhorc860_ta20_SZA50_Mari = Rhot860_taua20_SZA50./tgasm860_taua20_SZA50 - Rhor860_taua20_SZA50;

toc;
