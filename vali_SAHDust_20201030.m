% % File     : vali_SAHDust_20201030.m
% % Purpose  : 利用 Shi&Wang07方法对 Dust from the Sahara Desert 进行验证
% % Coded by : Yiwei Zhang
% % Date     : Sep-2024
% % Note     : 

close all
clear
clc;

%% 本论文方法
% % 加载r
load('SAHDust_20201030\Rhor_385H.mat');
load('SAHDust_20201030\Rhor_865.mat');
      
% % 加载RC
load('SAHDust_20201030\Rhorc_385H_clip.mat');
load('SAHDust_20201030\Rhor_412_clip.mat');
load('SAHDust_20201030\Rhor_750_clip.mat');
load('SAHDust_20201030\Rhorc_865_clip.mat');


% % 加载角度
load('SAHDust_20201030\B3_Satellite_Zenith_Angle_clip.mat');
load('SAHDust_20201030\B3_Sun_Zenith_Angle_clip.mat')
load('SAHDust_20201030\B3_RAA_clip.mat')

load('SAHDust_20201030\Satellite_Zenith_Angle_clip.mat');
load('SAHDust_20201030\Sun_Zenith_Angle_clip.mat')
load('SAHDust_20201030\RAA_clip.mat')

% % 加载经纬度
load('SAHDust_20201030\Lon_clip.mat');
load('SAHDust_20201030\Lat_clip.mat');

VZA_UVI_clip = B3_Satellite_Zenith_Angle_clip;  VZA_UVI_clip(VZA_UVI_clip<-900) = nan;
SZA_UVI_clip = B3_Sun_Zenith_Angle_clip;  SZA_UVI_clip(VZA_UVI_clip<-900) = nan;
RAA_UVI_clip = B3_RAA_clip;  RAA_UVI_clip(VZA_UVI_clip<-900) = nan;

VZA_OCT_clip = Satellite_Zenith_Angle_clip; VZA_OCT_clip(VZA_OCT_clip<-900) = nan;
SZA_OCT_clip0 = Sun_Zenith_Angle_clip; SZA_OCT_clip = SZA_OCT_clip0; SZA_OCT_clip(SZA_OCT_clip<-900) = nan;
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
AA = log10(Rhorc_i_385H_clip);
BB = log10(Rhorc_i_750_clip);
CC = Rhor_i_385H_cor_clip - Rhor_i_865_cor_clip;
DD = 1+cosd(VZA_OCT_clip);
EE = 1+sind(SCA_OCT_clip);
UVDAI = (AA - BB)./(CC .* DD .* EE);


UVDAI(isnan(UVDAI)) = 999;
UVDAI_Cld = UVDAI;
load('SAHDust_20201030\indCld_new.mat');   % cloud index
UVDAI_Cld(indCld_new) = nan;
UVDAI_Cld(SZA_UVI_clip<-900 | SZA_OCT_clip<-900) = -999;

%% ********************* 本论文方法 ************************
load('mycmap1.mat');

figure(); clf;
axis normal;
m_proj('miller cylindrical','lat',[Lat_clip(end) Lat_clip(1)],'lon',[Lon_clip(1) Lon_clip(end)]);
m_pcolor(Lon_clip, Lat_clip, UVDAI_Cld);
shading interp;
colormap(mycmap1);
hold on;
tmp=UVDAI_Cld;
ind = find(tmp < -900);
m_scatter(Lon_clip(ind), Lat_clip(ind), 0.1, 'k');
caxis([-2.5 2.5]);

% colorbar('h');
m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor', 'k');
m_grid('XTick', -17.5:2:-7.5, 'XTickLabels', [], 'YTick', 23:2:33, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r600',['UVDAI_SAHDust_202101030_1','.png'])

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

m_proj('miller cylindrical','lat',[Lat_clip(end) Lat_clip(1)],'lon',[Lon_clip(1) Lon_clip(end)]);
m_pcolor(Lon_clip, Lat_clip, UVDAI_Cld);
shading interp;
colormap(mycmap1);
caxis([-2.5 2.5]);
hold on;
m_scatter(Lon_clip(ind), Lat_clip(ind), 0.1, 'k');
hold on;

m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor', 'k');
m_grid('XTick', -17.5:2:-7.5, 'XTickLabels', [], 'YTick', 23:2:33, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r600',['Class_UVDAI_SAHDust_20201030_1','.png'])

%% ********************* ShiWang07 论文方法 ***************************
Ab = Rhorc_i_412_clip ./ Rhorc_i_865_clip .* exp(-453/115 * log(Rhorc_i_750_clip ./ Rhorc_i_865_clip));
Ab(isnan(Ab)) = 999;
Ab_Cld = Ab;

Ab_Cld(indCld_new) = nan;
Ab_Cld(SZA_UVI_clip<-900 | SZA_OCT_clip<-900) = nan;

load('mycmap1.mat');
% % % % % % 展示 Absind 分布结果 --------------------
figure(); clf;
axis normal;
m_proj('miller cylindrical','lat',[Lat_clip(end) Lat_clip(1)],'lon',[Lon_clip(1) Lon_clip(end)]);
m_pcolor(Lon_clip, Lat_clip, Ab_Cld);
shading interp;
hold on;
m_scatter(Lon_clip(ind), Lat_clip(ind), 0.1, 'k');
colormap(mycmap1); 
% colorbar('h');
caxis([-2.5 2.5]);

m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', -17.5:2:-7.5, 'XTickLabels', [], 'YTick', 23:2:33, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r600',['AAI_SAHDust_20201030','.png']);

% % % % % % % % % % % % % % % 分类结果展示 % % % % % % % % % % % % %
% % 阈值为 r2，AAI < r2 则为沙尘气溶胶； AAI > r2 则为清洁大气
% % 根据 r2 调整 colormap:
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

m_proj('miller cylindrical','lat',[Lat_clip(end) Lat_clip(1)],'lon',[Lon_clip(1) Lon_clip(end)]);
m_pcolor(Lon_clip, Lat_clip, Ab_Cld);
shading interp;
hold on;
m_scatter(Lon_clip(ind), Lat_clip(ind), 0.1, 'k');

colormap(mycmap2);
caxis([0 2]);
m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', -17.5:2:-7.5, 'XTickLabels', [], 'YTick', 23:2:33, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r600',['Class_AAI_SAHDust_20201030','.png'])
