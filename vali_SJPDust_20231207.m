% % File     : vali_SJPDust_20231207.m
% % Purpose  : 利用 Shi&Wang07方法对Sea of Japan地区结果进行验证
% % Coded by : Yiwei Zhang
% % Date     : 20,21-Sep-2024
% % Note     : 

clear
close all
clc;

%% 本论文方法
% % 加载r
load('data\SJPDust_20231207\Rhor_385H.mat');
load('data\SJPDust_20231207\Rhor_865.mat');
      
% % 加载RC
load('data\SJPDust_20231207\Rhorc_385H.mat');
load('data\SJPDust_20231207\Rhor_412.mat');
load('data\SJPDust_20231207\Rhor_750.mat');
load('data\SJPDust_20231207\Rhorc_865.mat');


% % 加载角度
load('data\SJPDust_20231207\B3_Satellite_Zenith_Angle_rec.mat');
load('data\SJPDust_20231207\B3_Sun_Zenith_Angle_rec.mat')
load('data\SJPDust_20231207\B3_RAA_rec.mat')

load('data\SJPDust_20231207\Satellite_Zenith_Angle_rec.mat');
load('data\SJPDust_20231207\Sun_Zenith_Angle_rec.mat')
load('data\SJPDust_20231207\RAA_rec.mat')

% % 加载经纬度
load('data\SJPDust_20231207\Lon.mat');
load('data\SJPDust_20231207\Lat.mat');

VZA_UVI = B3_Satellite_Zenith_Angle_rec; VZA_UVI(VZA_UVI<0) = nan; 
SZA_UVI = B3_Sun_Zenith_Angle_rec; SZA_UVI(VZA_UVI<0) = nan;
RAA_UVI = B3_RAA_rec;

VZA_OCT = Satellite_Zenith_Angle_rec;  VZA_OCT(VZA_OCT<0) = nan;
SZA_OCT = Sun_Zenith_Angle_rec;  SZA_OCT(SZA_OCT<0) = nan;
RAA_OCT = RAA_rec;

xmus_UVI = cosd(SZA_UVI);
xmuv_UVI = cosd(VZA_UVI);
xmup_UVI = cosd(RAA_UVI);
xmud_UVI = -xmus_UVI.*xmuv_UVI-sqrt(1.-xmus_UVI.*xmus_UVI).*sqrt(1.-xmuv_UVI.*xmuv_UVI).*xmup_UVI;
SCA_UVI = acosd(xmud_UVI); 

xmus_OCT = cosd(SZA_OCT);
xmuv_OCT = cosd(VZA_OCT);
xmup_OCT = cosd(RAA_OCT);
xmud_OCT = -xmus_OCT.*xmuv_OCT-sqrt(1.-xmus_OCT.*xmus_OCT).*sqrt(1.-xmuv_OCT.*xmuv_OCT).*xmup_OCT;
SCA_OCT = acosd(xmud_OCT); 



%%
Rhorc_i_385H(Rhorc_i_385H<0)=nan;  
Rhorc_i_750(Rhorc_i_750<0)=nan;
Rhorc_i_865(Rhorc_i_865<0)=nan;

%% 
A = log10(Rhorc_i_385H);
B = log10(Rhorc_i_750);
C = Rhor_i_385H_rec - Rhor_i_865_rec;
D = 1+cosd(VZA_OCT);
E = 1+sind(SCA_OCT);
UVDAI = (A - B)./(C .* D .* E);

% % 
indCld = find((Rhorc_i_865 + Rhorc_i_750)>0.263);

UVDAI(isnan(UVDAI)) = 999;
UVDAI_Cld = UVDAI;
UVDAI_Cld(indCld) = nan;

%% ********************* 本论文方法 ************************
% % UVDAI 分布展示
load('mycmap1.mat');
figure();
% set(gcf,'unit','centimeters','position', [15 5 6.17 6.17]);
% set(gca,'position', [0.05 0.05 0.9 0.9])
m_proj('miller cylindrical','lat',[34.00 43.00],'lon',[127.00 137.00]);

m_pcolor(Lon, Lat, UVDAI_Cld);
shading interp;
hold on;
colormap(mycmap1);
caxis([-2.5 2.5]);
% cb = colorbar('horiz');
% set(cb, 'FontSize', 12, 'FontWeight', 'bold', 'FontName', 'Times New Roman');
% cb.TickLabels ={'-2.5','-2.0','-1.5','-1.0','-0.5','0','0.5','1.0'};

axis equal; % 使xy轴等比例
m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', 127:3:136, 'XTickLabels', [], 'YTick', 34:3:43, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r1000',['UVDAI_SJPDust_20231207','.png'])

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
% % 设置图像大小
% set(gcf,'unit','centimeters','position', [17 7 6.17 6.17]);
% set(gca,'position',[0.05 0.05 0.9 0.9])

m_proj('miller cylindrical','lat',[34.00 43.00],'lon',[127.00 137.00]);
m_pcolor(Lon, Lat, UVDAI_Cld);
shading interp;
hold on;
colormap(mycmap1);
caxis([-2.5 2.5]);

axis equal; % 使xy轴等比例

m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', 127:3:136, 'XTickLabels', [], 'YTick', 34:3:43, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r1000',['Class_UVDAI_SJPSDust_20231207','.png'])

%% ********************* ShiWang07 论文方法 ***************************
Ab = Rhorc_i_412 ./ Rhorc_i_865 .* exp(-453/115 * log(Rhorc_i_750 ./ Rhorc_i_865));

Ab(isnan(Ab)) = 999;
Ab_Cld = Ab;
Ab_Cld(indCld) = nan;

load('mycmap1.mat');
% % % % % % 展示 Absind 分布结果 --------------------
figure(); clf;
m_proj('miller cylindrical','lat',[34.00 43.00],'lon',[127.00 137.00]);
m_pcolor(Lon, Lat, Ab_Cld);
shading interp;
hold on;
colormap(mycmap1);
caxis([0 2]);  % 论文
axis equal; % 使xy轴等比例

m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', 127:3:136, 'XTickLabels', [], 'YTick', 34:3:43, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r1000',['AAI_SJPDust_20231207','.png']);

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

m_proj('miller cylindrical','lat',[34.00 43.00],'lon',[127.00 137.00]);
m_pcolor(Lon, Lat, Ab_Cld);
shading interp;
colormap(mycmap2);
caxis([minL maxL]);

axis equal;

m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', 127:3:136, 'XTickLabels', [], 'YTick', 34:3:43, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r1000',['Class_AAI_SJPDust_20231207','.png'])

sprintf('Acc=%f; POCD=%f, POFD=%f', Acc,POCD,POFD)

disp('程序运行完毕！');
