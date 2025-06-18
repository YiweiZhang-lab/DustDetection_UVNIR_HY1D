% % File     : vali_KARDust_20211231.m
% % Purpose  : 
% % Coded by : Yiwei Zhang
% % Date     : Mar-2025, Sep-2024
% % Note     : 

close all; clear; clc;

%% 本论文方法
% % 加载r
load('KARDust_20211231\Rhor_385H_cor_clip.mat');
load('KARDust_20211231\Rhor_865_cor_clip.mat');
      
% % 加载RC
load('KARDust_20211231\Rhorc_385H_clip.mat');
load('KARDust_20211231\Rhorc_412_clip.mat');
load('KARDust_20211231\Rhorc_750_clip.mat');
load('KARDust_20211231\Rhorc_865_clip.mat');

% % 加载角度
load('KARDust_20211231\B3_Satellite_Zenith_Angle_clip.mat');
load('KARDust_20211231\B3_Sun_Zenith_Angle_clip.mat');
load('KARDust_20211231\B3_RAA_clip.mat');

load('KARDust_20211231\Satellite_Zenith_Angle_clip.mat');
load('KARDust_20211231\Sun_Zenith_Angle_clip.mat');
load('KARDust_20211231\RAA_clip.mat');

% % 加载经纬度
load('KARDust_20211231\Lon_clip.mat');
load('KARDust_20211231\Lat_clip.mat');

VZA_UVI_clip = B3_Satellite_Zenith_Angle_clip; VZA_UVI_clip(VZA_UVI_clip<-900) = nan; 
SZA_UVI_clip = B3_Sun_Zenith_Angle_clip; SZA_UVI_clip(VZA_UVI_clip<-900) = nan;
RAA_UVI_clip = B3_RAA_clip; RAA_UVI_clip(RAA_UVI_clip<-900) = nan;

VZA_OCT_clip = Satellite_Zenith_Angle_clip;  VZA_OCT_clip(VZA_OCT_clip<-900) = nan;
SZA_OCT_clip = Sun_Zenith_Angle_clip;  SZA_OCT_clip(SZA_OCT_clip<-900) = nan;
RAA_OCT_clip = RAA_clip; RAA_OCT_clip(RAA_OCT_clip<-900) = nan;

xmus_UVI_clip = cosd(SZA_UVI_clip);
xmuv_UVI_clip = cosd(VZA_UVI_clip);
xmup_UVI_clip = cosd(RAA_UVI_clip);
xmud_UVI_clip = -xmus_UVI_clip.*xmuv_UVI_clip-sqrt(1.-xmus_UVI_clip.*xmus_UVI_clip).*sqrt(1.-xmuv_UVI_clip.*xmuv_UVI_clip).*xmup_UVI_clip;
SCA_UVI_clip = acosd(xmud_UVI_clip); 

xmus_OCT_clip = cosd(SZA_OCT_clip);
xmuv_OCT_clip = cosd(VZA_OCT_clip);
xmup_OCT_clip = cosd(RAA_OCT_clip);
xmud_OCT_clip = -xmus_OCT_clip.*xmuv_OCT_clip-sqrt(1.-xmus_OCT_clip.*xmus_OCT_clip).*sqrt(1.-xmuv_OCT_clip.*xmuv_OCT_clip).*xmup_OCT_clip;
SCA_OCT_clip = acosd(xmud_OCT_clip); 

%%
Rhorc_i_385H_clip(Rhorc_i_385H_clip<0)=nan;
Rhorc_i_412_clip(Rhorc_i_412_clip<0)=nan;  
Rhorc_i_750_clip(Rhorc_i_750_clip<0)=nan;
Rhorc_i_865_clip(Rhorc_i_865_clip<0)=nan;

%% 
AA = log10(Rhorc_i_385H_clip./Rhorc_i_865_clip);
BB = log10(Rhorc_i_750_clip./Rhorc_i_865_clip);
CC = Rhor_i_385H_cor_clip - Rhor_i_865_cor_clip;
DD = 1+cosd(VZA_OCT_clip);
EE = 1+sind(SCA_OCT_clip);
UVDAI_clip = (AA - BB)./(CC .* DD .* EE);

% % 
indCld = find((Rhorc_i_865_clip + Rhorc_i_750_clip)>0.312 | Rhorc_i_385H_clip>0.155);

UVDAI_clip(isnan(UVDAI_clip)) = 999;
UVDAI_clip_Cld = UVDAI_clip;
UVDAI_clip_Cld(indCld) = nan;

%% ********************* 本论文方法 ************************
% % UVDAI 分布展示
load('mycmap1.mat');
figure();
axis normal;
m_proj('miller cylindrical','lat',[19.995 27.005],'lon',[61.995 70.005]);
m_pcolor(Lon_clip, Lat_clip, UVDAI_clip_Cld);
shading interp;
hold on;
colormap(mycmap1);
caxis([-2.5 2.5]);
m_gshhs('lc1', 'patch', [0.5 0.5 0.5], 'edgecolor', 'k');
m_grid('XTick', 63:3:69, 'XTickLabels', [], 'YTick', 21:3:27, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle', 'fontsize', 10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng', '-r900', ['UVDAI_KARDust_20211231_1', '.png'])

% ******************** 分类结果展示 *********************************
% % 阈值为 r，UVDAI < r 则为沙尘气溶胶； UVDAI > r 则为清洁大气
caxis([minL, maxL])
minL = -2.5;
maxL = 2.5;
r1 = 0.85;
load('mycmap1.mat');

len1 = floor(256 * (r1-minL) / (maxL-minL));

mycmap1(1:len1, 1) = 0.99;
mycmap1(1:len1, 2) = 0.02;
mycmap1(1:len1, 3) = 0.02;
mycmap1(len1:end, 1) = 0.07;
mycmap1(len1:end, 2) = 0.99;
mycmap1(len1:end, 3) = 0.07;


figure(); clf;
axis normal;
m_proj('miller cylindrical','lat',[19.995 27.005],'lon',[61.995 70.005]);
hold on;
m_pcolor(Lon_clip, Lat_clip, UVDAI_clip_Cld);
shading interp;
colormap(mycmap1);
caxis([-2.5 2.5]);
m_gshhs('lc1', 'patch', [0.5 0.5 0.5], 'edgecolor', 'k');
m_grid('XTick', 63:3:69, 'XTickLabels', [], 'YTick', 21:3:27, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r600',['Class_UVDAI_KARDust_20211231_1','.png'])

%% ********************* ShiWang07 论文方法 ***************************
Ab_clip = Rhorc_i_412_clip ./ Rhorc_i_865_clip .* exp(-453/115 * log(Rhorc_i_750_clip ./ Rhorc_i_865_clip));

Ab_clip(isnan(Ab_clip)) = 999;
Ab_clip_Cld = Ab_clip;
Ab_clip_Cld(indCld) = nan;

load('mycmap2.mat');
figure(); clf;
% % 设置图像大小
% set(gcf,'unit','centimeters','position', [7 5 6.17 7.69]);
axis normal;
% set(gca,'position',[0.05 0.05 0.9 0.9])

m_proj('miller cylindrical','lat',[19.995 27.005],'lon',[61.995 70.005]);
m_pcolor(Lon_clip, Lat_clip, Ab_clip_Cld);
shading interp;
colormap(mycmap2);
caxis([0 2]);
m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', 63:3:69, 'XTickLabels', [], 'YTick', 21:3:27, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');
       
print('-dpng','-r600',['AAI_KARDust_20211231_1','.png']);

% % % % % % % % % % % % % % % 分类结果展示 % % % % % % % % % % % % %
% % 阈值为 r2，AAI < r2 则为沙尘气溶胶； AAI > r2 则为清洁大气
% % caxis([minL, maxL])
minL = 0;
maxL = 2;
r2 = 1.25;
load('mycmap2.mat');

len1 = floor(256 * (r2-minL) / (maxL-minL));

mycmap2(1:len1, 1) = 0.99;
mycmap2(1:len1, 2) = 0.02;
mycmap2(1:len1, 3) = 0.02;
mycmap2(len1:end, 1) = 0.07;
mycmap2(len1:end, 2) = 0.99;
mycmap2(len1:end, 3) = 0.07;

figure(); clf;
axis normal;
m_proj('miller cylindrical','lat',[19.995 27.005],'lon',[61.995 70.005]);
m_pcolor(Lon_clip, Lat_clip, Ab_clip);
shading interp;
colormap(mycmap2);
caxis([minL maxL]);
m_gshhs('lc1', 'patch', [0.5 0.5 0.5], 'edgecolor', 'k');
m_grid('XTick', 63:3:69, 'XTickLabels', [], 'YTick', 21:3:27, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r600',['Class_AAI_KARDust_20211231_1','.png'])
