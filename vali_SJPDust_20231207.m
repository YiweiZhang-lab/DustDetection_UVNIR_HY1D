% % File     : vali_SJPDust_20231207.m
% % Purpose  : 利用 Shi&Wang07方法对Sea of Japan地区结果进行验证
% % Coded by : Yiwei Zhang
% % Date     : 12-Jun-2025, 20,21-Sep-2024
% % Note     : 

clear
close all
clc;

%% 本论文方法
% 计算整幅影像的 UVNIR-DAI
path_mat2 = '..\data\mat2\';
event = 'SJPDust_20231207_1KM';
prods_r = {'Rhor_i_355L_rec', 'Rhor_i_355H_rec', 'Rhor_i_385L_rec', 'Rhor_i_385H_rec', 'Rhor_i_412_rec', 'Rhor_i_443_rec',...
           'Rhor_i_490_rec', 'Rhor_i_520_rec', 'Rhor_i_565_rec', 'Rhor_i_670_rec', 'Rhor_i_750_rec', 'Rhor_i_865_rec'};
prods_rc = {'Rhorc_i_355L', 'Rhorc_i_355H', 'Rhorc_i_385L', 'Rhorc_i_385H',...
            'Rhorc_i_412', 'Rhorc_i_443', 'Rhorc_i_490', 'Rhorc_i_520', 'Rhorc_i_565', 'Rhorc_i_670', 'Rhorc_i_750', 'Rhorc_i_865'};

% % 加载r
for jj=1:length(prods_r) 
    matFile = fullfile(path_mat2, event, 'Ray_recover', [prods_r{jj}, '.mat']); 
    load(matFile);
end
      
% % 加载RC
for jj=1:length(prods_rc) 
    matFile = fullfile(path_mat2, event, 'RC', [prods_rc{jj}, '.mat']); 
    load(matFile);
    eval([prods_rc{jj}, '_org = ', prods_rc{jj}, ';']);  % 为了后续作图对比方便
end

% % 加载角度
load('..\data\mat2\SJPDust_20231207_1KM\GeoAng_recover\B3_Satellite_Zenith_Angle_rec.mat');
load('..\data\mat2\SJPDust_20231207_1KM\GeoAng_recover\B3_Sun_Zenith_Angle_rec.mat');
load('..\data\mat2\SJPDust_20231207_1KM\GeoAng_recover\B3_RAA_rec.mat');

load('..\data\mat2\SJPDust_20231207_1KM\GeoAng_recover\Satellite_Zenith_Angle_rec.mat');
load('..\data\mat2\SJPDust_20231207_1KM\GeoAng_recover\Sun_Zenith_Angle_rec.mat');
load('..\data\mat2\SJPDust_20231207_1KM\GeoAng_recover\RAA_rec.mat');

% % 加载经纬度
load('..\data\mat1\SJPDust_20231207_1KM\Lon.mat');
load('..\data\mat1\SJPDust_20231207_1KM\Lat.mat');

VZA_UVI = B3_Satellite_Zenith_Angle_rec; VZA_UVI(VZA_UVI<0) = nan;  % 出现小于0的情况是本身数据或者插值后导致
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

tic;
[Rhorc_i_385H, Rhorc_i_412, Rhorc_i_443, Rhorc_i_490, Rhorc_i_520, Rhorc_i_565, Rhorc_i_670, Rhorc_i_750, Rhorc_i_865] = ...
    tuneSpectra_UVIS(Rhorc_i_385H_org, Rhorc_i_412_org, Rhorc_i_443_org, Rhorc_i_490_org, Rhorc_i_520_org, Rhorc_i_565_org,...
    Rhorc_i_670_org, Rhorc_i_750_org, Rhorc_i_865_org);
toc;
save('Rhorc_SJP.mat', 'Rhorc_i_385H', 'Rhorc_i_412', 'Rhorc_i_443', 'Rhorc_i_490',...
     'Rhorc_i_520', 'Rhorc_i_565', 'Rhorc_i_670', 'Rhorc_i_750', 'Rhorc_i_865');

load('Rhorc_SJP.mat');
% 绘图对比一下
figure(); clf;
set(gcf, "Position", [400 300 1000 550]);  % 设置画板大小
subplot(1,2,1);
set(gca, "Position", [0.05 0.20 0.4 0.75], 'Units', 'normalized');
pcolor(Rhorc_i_750_org);
% clim([0 1]);
shading interp;
colormap("jet");
title('\rho_{rc}(750) 原始');

subplot(1,2,2);
set(gca, "Position", [0.55 0.20 0.4 0.75], 'Units', 'normalized');
pcolor(Rhorc_i_750);
% clim([0 1]);
shading interp;
colormap("jet");
title('\rho_{rc}(750) 调校后');
% 
% % 创建共享的colorbar
% h = colorbar('horiz');
% set(h, 'Position', [0.2, 0.05, 0.6, 0.03]); % 调整colorbar的位置和大小
% set(h, 'Units', 'Normalized');
% h.Ticks = 0:0.2:1; % 设置colorbar的刻度为数据的唯一值数量
% h.TickLabels = 0:0.2:1; % 


%%

% % 计算 UVDAI
% Rhorc_i_385H(Rhorc_i_385H<0)=nan;  Rhorc_i_750(Rhorc_i_750<0)=nan;

Rhorc_i_750(Rhorc_i_750<0)=nan;  Rhorc_i_750_ = inpaint_nans(Rhorc_i_750, 1);  % method=1,不改变已有值
Rhorc_i_865(Rhorc_i_865<0)=nan;
%% 绘图对比一下
% figure(); clf;
% set(gcf, "Position", [400 300 1000 550]);  % 设置画板大小
% subplot(1,3,1);
% pcolor(Rhorc_i_750_org);
% caxis([0 1]);
% shading interp;
% colormap("jet");
% title('\rho_{rc}(750) 原始');
% 
% subplot(1,3,2);
% pcolor(Rhorc_i_750);
% % clim([0 1]);  % 2021版本无法识别
% caxis([0 1]);
% shading interp;
% colormap("jet");
% title('\rho_{rc}(750) 调校后1');
% 
% subplot(1,3,3);
% pcolor(Rhorc_i_750_);
% caxis([0 1]);
% shading interp;
% colormap("jet");
% title('\rho_{rc}(750) 调校后2');
% 
% % 创建共享的colorbar
% h = colorbar('horiz');
% set(h, 'Position', [0.2, 0.05, 0.6, 0.03]); % 调整colorbar的位置和大小
% set(h, 'Units', 'Normalized');
% h.Ticks = 0:0.2:0.8; % 设置colorbar的刻度为数据的唯一值数量
% h.TickLabels = 0:0.2:0.8; % 

%% 
A = log10(Rhorc_i_385H);
B = log10(Rhorc_i_750);
C = Rhor_i_385H_rec - Rhor_i_865_rec;
D = 1+cosd(VZA_OCT);
E = 1+sind(SCA_OCT);
UVDAI = (A - B)./(C .* D .* E);
% 

% % 云识别
% indCld = find((Rhorc_i_865 + Rhorc_i_750)>0.15);
indCld = find((Rhorc_i_865 + Rhorc_i_750)>0.263);

% indCld = find((Rhorc_i_865 + Rhorc_i_750)>0.391);
% indCld = find((Rhorc_i_865 + Rhorc_i_750)>0.147);

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
% clim([-2.5 2.5]);
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
% % 根据 r 调整 colormap:
% % caxis([minL, maxL])
minL = -2.5;
maxL = 2.5;
% r1 = 0.837;
 r1 = 0.968;
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

print('-dpng','-r1000',['Class_UVDAI_SJPSDust_20231207_r968_1','.png'])

%% ********************* ShiWang07 论文方法 ***************************
load('Rhorc_SJP.mat');
Rhorc_i_412 = Rhorc_i_412 - min(Rhorc_i_412(:));
Rhorc_i_412 = Rhorc_i_412/1.39;

Rhorc_i_750(Rhorc_i_750<0)=nan;

Rhorc_i_865 = Rhorc_i_865/2.1+0.002;
Rhorc_i_865(Rhorc_i_865<0)=nan;
% Rhorc_i_865 = Rhorc_i_865 - min(Rhorc_i_865(:));

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

axis equal; % 使xy轴等比例

m_gshhs('lc1', 'patch',[0.5 0.5 0.5],'edgecolor','k');
m_grid('XTick', 127:3:136, 'XTickLabels', [], 'YTick', 34:3:43, 'YTickLabels', [], ...
       'tickdir', 'out', 'xlabeldir', 'middle','fontsize',10, 'backcolor',[1 1 1], 'box', 'on');

print('-dpng','-r1000',['Class_AAI_SJPDust_20231207_r125','.png'])

%% 最后：------------定量统计，a b c d 各个参数--------------- % %
% % % % a: ture positives, 两者都识别为 dust
% % % % b: false positives Shi&Wang07 未识别，但是 UVDAI 识别为 dust
% % % % c: false negatives Shi&Wang07 识别为 dust，但是 UVDAI 未识别
% % % % d: true negatives Shi&Wang07 和 UVDAI 都识别为 “no dust”
% % Ab_Cld, UVDAI_Cld
[nrows, ncols] = size(Ab_Cld);

UVDAI_final = UVDAI_Cld;  UVDAI_final(UVDAI_final < -900) = nan;
Ab_final = Ab_Cld;  Ab_final(Ab_final < -900) = nan;

% % 排除 非观测覆盖区域
UVDAI_final(1:50, :)=nan; UVDAI_final(end-49:end, :)=nan; UVDAI_final(:,1:50)=nan; UVDAI_final(:,end-49:end)=nan;
Ab_final(1:50, :)=nan; Ab_final(end-49:end, :)=nan; Ab_final(:,1:50)=nan; Ab_final(:,end-49:end)=nan;

% % % 排除 陆地部分
% ss=shaperead('D:\[1]科研\数据\gshhg-shp-2.3.7\GSHHS_shp\l\GSHHS_l_L1.shp');
% % figure(); clf;
% % mapshow(ss)
% in = zeros(nrows, ncols);
% for ii=1:length(ss)
%    X=ss(ii).X;   Y=ss(ii).Y;
%    tmp = inpolygon(Lon, Lat, X, Y);
%    in = in + tmp;  % 陆地上的点
% end
% in = logical(in);
% save('in_SJP.mat', 'in');
load('in_SJP.mat');
UVDAI_final(in)=nan;
Ab_final(in) = nan;

ind_Valid = find(~isnan(UVDAI_final));

a=0; b=0; c=0; d=0;
for ii=1:length(ind_Valid)
    if(UVDAI_Cld(ind_Valid(ii)) < r1)
        if(Ab_Cld(ind_Valid(ii)) < r2)
            a=a+1;
        else
            b=b+1;
        end
    else
        if(Ab_Cld(ind_Valid(ii)) < r2)
            c=c+1;
        else
            d=d+1;
        end
    end
end

sprintf('a=%d; b=%d, c=%d, d=%d', a,b,c,d)
% % ********************* -----------------------------------------------
Acc = (a+d)/(a+b+c+d);
POCD = a/(a+c);
POFD = b/(a+b);

sprintf('Acc=%f; POCD=%f, POFD=%f', Acc,POCD,POFD)

disp('程序运行完毕！');