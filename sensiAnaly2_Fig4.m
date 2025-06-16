% % File     :  sensiAnaly2_Fig4.m
% % Purpose  :  敏感性分析 
% % Date     :  9-Sep 2024
% % Coded by :  Y. Zhang
% % Note     :  接 sensiAnaly1.m，先运行 sensiAnaly1.m 保存变量，这个主要侧重绘图
% % 
clc;
tic;

wl = [385 412 443 490 520 565 670 750 865];

phirad = -120*pi/180+2*pi;

% % SZA=10
xmus = cosd(10);
xmuv = cosd(VZA);
xmup = cos(phirad);
xmud =  -xmus*xmuv-sqrt(1.-xmus*xmus)*sqrt(1.-xmuv.*xmuv)*xmup;
scatAng10 = acosd(xmud);
% % SZA=30 
xmus = cosd(30);
xmuv = cosd(VZA);
xmup = cos(phirad);
xmud =  -xmus*xmuv-sqrt(1.-xmus*xmus)*sqrt(1.-xmuv.*xmuv)*xmup;
scatAng30 = acosd(xmud);
% % SZA=50, 
xmus = cosd(50);
xmuv = cosd(VZA);
xmup = cos(phirad);
xmud =  -xmus*xmuv-sqrt(1.-xmus*xmus)*sqrt(1.-xmuv.*xmuv)*xmup;
scatAng50 = acosd(xmud);

%% 
DAI_ta05_SZA10_Mari_1 = (log10(Rhorc385_ta05_SZA10_Mari)-log10(Rhorc750_ta05_SZA10_Mari))./(Rhor385_taua05_SZA10-Rhor860_taua05_SZA10);
DAI_ta05_SZA30_Mari_1 = (log10(Rhorc385_ta05_SZA30_Mari)-log10(Rhorc750_ta05_SZA30_Mari))./(Rhor385_taua05_SZA30-Rhor860_taua05_SZA30);
DAI_ta05_SZA50_Mari_1 = (log10(Rhorc385_ta05_SZA50_Mari)-log10(Rhorc750_ta05_SZA50_Mari))./(Rhor385_taua05_SZA50-Rhor860_taua05_SZA50);
DAI_ta10_SZA10_Mari_1 = (log10(Rhorc385_ta10_SZA10_Mari)-log10(Rhorc750_ta10_SZA10_Mari))./(Rhor385_taua10_SZA10-Rhor860_taua05_SZA10);
DAI_ta10_SZA30_Mari_1 = (log10(Rhorc385_ta10_SZA30_Mari)-log10(Rhorc750_ta10_SZA30_Mari))./(Rhor385_taua10_SZA30-Rhor860_taua05_SZA30);
DAI_ta10_SZA50_Mari_1 = (log10(Rhorc385_ta10_SZA50_Mari)-log10(Rhorc750_ta10_SZA50_Mari))./(Rhor385_taua10_SZA50-Rhor860_taua05_SZA50);
DAI_ta20_SZA10_Mari_1 = (log10(Rhorc385_ta20_SZA10_Mari)-log10(Rhorc750_ta20_SZA10_Mari))./(Rhor385_taua20_SZA10-Rhor860_taua05_SZA10);
DAI_ta20_SZA30_Mari_1 = (log10(Rhorc385_ta20_SZA30_Mari)-log10(Rhorc750_ta20_SZA30_Mari))./(Rhor385_taua20_SZA30-Rhor860_taua05_SZA30);
DAI_ta20_SZA50_Mari_1 = (log10(Rhorc385_ta20_SZA50_Mari)-log10(Rhorc750_ta20_SZA50_Mari))./(Rhor385_taua20_SZA50-Rhor860_taua05_SZA50);

DAI_ta05_SZA10_Mari_2 = (log10(Rhorc385_ta05_SZA10_Mari)-log10(Rhorc750_ta05_SZA10_Mari))./(Rhor385_taua05_SZA10-Rhor860_taua05_SZA10)./(1+cosd(VZA'))./(1+sind(scatAng10'));
DAI_ta05_SZA30_Mari_2 = (log10(Rhorc385_ta05_SZA30_Mari)-log10(Rhorc750_ta05_SZA30_Mari))./(Rhor385_taua05_SZA30-Rhor860_taua05_SZA30)./(1+cosd(VZA'))./(1+sind(scatAng30'));
DAI_ta05_SZA50_Mari_2 = (log10(Rhorc385_ta05_SZA50_Mari)-log10(Rhorc750_ta05_SZA50_Mari))./(Rhor385_taua05_SZA50-Rhor860_taua05_SZA50)./(1+cosd(VZA'))./(1+sind(scatAng50'));
DAI_ta10_SZA10_Mari_2 = (log10(Rhorc385_ta10_SZA10_Mari)-log10(Rhorc750_ta10_SZA10_Mari))./(Rhor385_taua10_SZA10-Rhor860_taua05_SZA10)./(1+cosd(VZA'))./(1+sind(scatAng10'));
DAI_ta10_SZA30_Mari_2 = (log10(Rhorc385_ta10_SZA30_Mari)-log10(Rhorc750_ta10_SZA30_Mari))./(Rhor385_taua10_SZA30-Rhor860_taua05_SZA30)./(1+cosd(VZA'))./(1+sind(scatAng30'));
DAI_ta10_SZA50_Mari_2 = (log10(Rhorc385_ta10_SZA50_Mari)-log10(Rhorc750_ta10_SZA50_Mari))./(Rhor385_taua10_SZA50-Rhor860_taua05_SZA50)./(1+cosd(VZA'))./(1+sind(scatAng50'));
DAI_ta20_SZA10_Mari_2 = (log10(Rhorc385_ta20_SZA10_Mari)-log10(Rhorc750_ta20_SZA10_Mari))./(Rhor385_taua20_SZA10-Rhor860_taua05_SZA10)./(1+cosd(VZA'))./(1+sind(scatAng10'));
DAI_ta20_SZA30_Mari_2 = (log10(Rhorc385_ta20_SZA30_Mari)-log10(Rhorc750_ta20_SZA30_Mari))./(Rhor385_taua20_SZA30-Rhor860_taua05_SZA30)./(1+cosd(VZA'))./(1+sind(scatAng30'));
DAI_ta20_SZA50_Mari_2 = (log10(Rhorc385_ta20_SZA50_Mari)-log10(Rhorc750_ta20_SZA50_Mari))./(Rhor385_taua20_SZA50-Rhor860_taua05_SZA50)./(1+cosd(VZA'))./(1+sind(scatAng50'));

%%
DAI_ta05_SZA10_DRH90_1 = (log10(Rhorc385_ta05_SZA10_DRH90)-log10(Rhorc750_ta05_SZA10_DRH90))./(Rhor385_taua05_SZA10-Rhor860_taua05_SZA10);
DAI_ta05_SZA30_DRH90_1 = (log10(Rhorc385_ta05_SZA30_DRH90)-log10(Rhorc750_ta05_SZA30_DRH90))./(Rhor385_taua05_SZA30-Rhor860_taua05_SZA30);
DAI_ta05_SZA50_DRH90_1 = (log10(Rhorc385_ta05_SZA50_DRH90)-log10(Rhorc750_ta05_SZA50_DRH90))./(Rhor385_taua05_SZA50-Rhor860_taua05_SZA50);
DAI_ta10_SZA10_DRH90_1 = (log10(Rhorc385_ta10_SZA10_DRH90)-log10(Rhorc750_ta10_SZA10_DRH90))./(Rhor385_taua10_SZA10-Rhor860_taua05_SZA10);
DAI_ta10_SZA30_DRH90_1 = (log10(Rhorc385_ta10_SZA30_DRH90)-log10(Rhorc750_ta10_SZA30_DRH90))./(Rhor385_taua10_SZA30-Rhor860_taua05_SZA30);
DAI_ta10_SZA50_DRH90_1 = (log10(Rhorc385_ta10_SZA50_DRH90)-log10(Rhorc750_ta10_SZA50_DRH90))./(Rhor385_taua10_SZA50-Rhor860_taua05_SZA50);
DAI_ta20_SZA10_DRH90_1 = (log10(Rhorc385_ta20_SZA10_DRH90)-log10(Rhorc750_ta20_SZA10_DRH90))./(Rhor385_taua20_SZA10-Rhor860_taua05_SZA10);
DAI_ta20_SZA30_DRH90_1 = (log10(Rhorc385_ta20_SZA30_DRH90)-log10(Rhorc750_ta20_SZA30_DRH90))./(Rhor385_taua20_SZA30-Rhor860_taua05_SZA30);
DAI_ta20_SZA50_DRH90_1 = (log10(Rhorc385_ta20_SZA50_DRH90)-log10(Rhorc750_ta20_SZA50_DRH90))./(Rhor385_taua20_SZA50-Rhor860_taua05_SZA50);

DAI_ta05_SZA10_DRH90_2 = (log10(Rhorc385_ta05_SZA10_DRH90)-log10(Rhorc750_ta05_SZA10_DRH90))./(Rhor385_taua05_SZA10-Rhor860_taua05_SZA10)./(1+cosd(VZA'))./(1+sind(scatAng10'));
DAI_ta05_SZA30_DRH90_2 = (log10(Rhorc385_ta05_SZA30_DRH90)-log10(Rhorc750_ta05_SZA30_DRH90))./(Rhor385_taua05_SZA30-Rhor860_taua05_SZA30)./(1+cosd(VZA'))./(1+sind(scatAng30'));
DAI_ta05_SZA50_DRH90_2 = (log10(Rhorc385_ta05_SZA50_DRH90)-log10(Rhorc750_ta05_SZA50_DRH90))./(Rhor385_taua05_SZA50-Rhor860_taua05_SZA50)./(1+cosd(VZA'))./(1+sind(scatAng50'));
DAI_ta10_SZA10_DRH90_2 = (log10(Rhorc385_ta10_SZA10_DRH90)-log10(Rhorc750_ta10_SZA10_DRH90))./(Rhor385_taua10_SZA10-Rhor860_taua05_SZA10)./(1+cosd(VZA'))./(1+sind(scatAng10'));
DAI_ta10_SZA30_DRH90_2 = (log10(Rhorc385_ta10_SZA30_DRH90)-log10(Rhorc750_ta10_SZA30_DRH90))./(Rhor385_taua10_SZA30-Rhor860_taua05_SZA30)./(1+cosd(VZA'))./(1+sind(scatAng30'));
DAI_ta10_SZA50_DRH90_2 = (log10(Rhorc385_ta10_SZA50_DRH90)-log10(Rhorc750_ta10_SZA50_DRH90))./(Rhor385_taua10_SZA50-Rhor860_taua05_SZA50)./(1+cosd(VZA'))./(1+sind(scatAng50'));
DAI_ta20_SZA10_DRH90_2 = (log10(Rhorc385_ta20_SZA10_DRH90)-log10(Rhorc750_ta20_SZA10_DRH90))./(Rhor385_taua20_SZA10-Rhor860_taua05_SZA10)./(1+cosd(VZA'))./(1+sind(scatAng10'));
DAI_ta20_SZA30_DRH90_2 = (log10(Rhorc385_ta20_SZA30_DRH90)-log10(Rhorc750_ta20_SZA30_DRH90))./(Rhor385_taua20_SZA30-Rhor860_taua05_SZA30)./(1+cosd(VZA'))./(1+sind(scatAng30'));
DAI_ta20_SZA50_DRH90_2 = (log10(Rhorc385_ta20_SZA50_DRH90)-log10(Rhorc750_ta20_SZA50_DRH90))./(Rhor385_taua20_SZA50-Rhor860_taua05_SZA50)./(1+cosd(VZA'))./(1+sind(scatAng50'));

%% 绘图准备
C1 = repmat([244 146 121]./255, 13, 1);
C2 = repmat([242 166 31]./255, 13, 1);

% Y: 3*13 (13==length(VZA))
Y1 = zeros(3,13);  Y2 = Y1; Y3 = Y1; Y4 = Y1; Y5 = Y1; Y6 = Y1;
for ii=1:13
    Y1(:,ii) = [DAI_ta05_SZA10_DRH90_1(ii); DAI_ta10_SZA10_DRH90_1(ii); DAI_ta20_SZA10_DRH90_1(ii)];
    Y2(:,ii) = [DAI_ta05_SZA10_DRH90_2(ii); DAI_ta10_SZA10_DRH90_2(ii); DAI_ta20_SZA10_DRH90_2(ii)];
    Y3(:,ii) = [DAI_ta05_SZA30_DRH90_1(ii); DAI_ta10_SZA30_DRH90_1(ii); DAI_ta20_SZA30_DRH90_1(ii)];
    Y4(:,ii) = [DAI_ta05_SZA30_DRH90_2(ii); DAI_ta10_SZA30_DRH90_2(ii); DAI_ta20_SZA30_DRH90_2(ii)];
    Y5(:,ii) = [DAI_ta05_SZA50_DRH90_1(ii); DAI_ta10_SZA50_DRH90_1(ii); DAI_ta20_SZA50_DRH90_1(ii)];
    Y6(:,ii) = [DAI_ta05_SZA50_DRH90_2(ii); DAI_ta10_SZA50_DRH90_2(ii); DAI_ta20_SZA50_DRH90_2(ii)];
end

%% ------------------- 图4a ----------------------------
% % ******* SZA=10 UVNIR-DAI(no angular correction) ***********

figure(1); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])
boxplot(Y1,'Symbol','o','OutlierSize',3,'Colors',[0,0,0]);

% 修改线条粗细
lineObj=findobj(gca,'Type','Line');
for i=1:length(lineObj)
    lineObj(i).LineWidth=1;
    lineObj(i).MarkerFaceColor=[1,1,1].*.3;
    lineObj(i).MarkerEdgeColor=[1,1,1].*.3;
end

% 坐标区域属性设置
ax=gca;hold on;
ax.LineWidth=1.1;
ax.FontSize=11;
ax.FontName='Times New Roman';
ax.XTickLabel={'0','5','10','15','20','25', '30', '35', '40', '45', '50', '55', '60'};
ax.YLim = [-7, 0];

% 为箱线图的框上色
colorList = C1;
boxObj=findobj(gca,'Tag','Box');
for i=1:length(boxObj)
    patch(boxObj(i).XData,boxObj(i).YData,colorList(length(boxObj)+1-i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\it{Y}', 'Fontname', 'Times New Roman', 'FontSize', 13');

% 导出图形
pathFigure = 'E:\ING\ing1\1-AbsorbingAerosol_Detecting_HY-1C_UVI\作图\sentivityAna-Algorithm\Fig4\';
str= strcat(pathFigure, 'Fig4a.tiff');
print(gcf, '-dtiff', '-r600', str);

%% ------------------- 图4b ----------------------------
% % ******* SZA=10 UVNIR-DAI(with angular correction) ***********
figure(2); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])

boxplot(Y2,'Symbol','o','OutlierSize',3,'Colors',[0,0,0]);

% 修改线条粗细
lineObj=findobj(gca,'Type','Line');
for i=1:length(lineObj)
    lineObj(i).LineWidth=1;
    lineObj(i).MarkerFaceColor=[1,1,1].*.3;
    lineObj(i).MarkerEdgeColor=[1,1,1].*.3;
end

% 坐标区域属性设置
ax=gca;hold on;
ax.LineWidth=1.1;
ax.FontSize=11;
ax.FontName='Times New Roman';
ax.XTickLabel={'0','5','10','15','20','25', '30', '35', '40', '45', '50', '55', '60'};
ax.YLim = [-7, 0];

% 为箱线图的框上色
colorList = C2;
boxObj=findobj(gca,'Tag','Box');
for i=1:length(boxObj)
    patch(boxObj(i).XData,boxObj(i).YData,colorList(length(boxObj)+1-i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\it{Y}', 'Fontname', 'Times New Roman', 'FontSize', 13');

% 导出图形
pathFigure = 'E:\ING\ing1\1-AbsorbingAerosol_Detecting_HY-1C_UVI\作图\sentivityAna-Algorithm\Fig4\';
str= strcat(pathFigure, 'Fig4b.tiff');
print(gcf, '-dtiff', '-r600', str);


%% ------------------- 图4c ----------------------------
% % ******* SZA=30 UVNIR-DAI(no angular correction) ***********

figure(3); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])
boxplot(Y3,'Symbol','o','OutlierSize',3,'Colors',[0,0,0]);

% 修改线条粗细
lineObj=findobj(gca,'Type','Line');
for i=1:length(lineObj)
    lineObj(i).LineWidth=1;
    lineObj(i).MarkerFaceColor=[1,1,1].*.3;
    lineObj(i).MarkerEdgeColor=[1,1,1].*.3;
end

% 坐标区域属性设置
ax=gca;hold on;
ax.LineWidth=1.1;
ax.FontSize=11;
ax.FontName='Times New Roman';
ax.XTickLabel={'0','5','10','15','20','25', '30', '35', '40', '45', '50', '55', '60'};
ax.YLim = [-7, 0];

% 为箱线图的框上色
colorList = C1;
boxObj=findobj(gca,'Tag','Box');
for i=1:length(boxObj)
    patch(boxObj(i).XData,boxObj(i).YData,colorList(length(boxObj)+1-i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\it{Y}', 'Fontname', 'Times New Roman', 'FontSize', 13');

% 导出图形
pathFigure = 'E:\ING\ing1\1-AbsorbingAerosol_Detecting_HY-1C_UVI\作图\sentivityAna-Algorithm\Fig4\';
str= strcat(pathFigure, 'Fig4c.tiff');
print(gcf, '-dtiff', '-r600', str);

%% ------------------- 图4d ----------------------------
% % ******* SZA=30 UVNIR-DAI(with angular correction) ***********
figure(4); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])

boxplot(Y4,'Symbol','o','OutlierSize',3,'Colors',[0,0,0]);

% 修改线条粗细
lineObj=findobj(gca,'Type','Line');
for i=1:length(lineObj)
    lineObj(i).LineWidth=1;
    lineObj(i).MarkerFaceColor=[1,1,1].*.3;
    lineObj(i).MarkerEdgeColor=[1,1,1].*.3;
end

% 坐标区域属性设置
ax=gca;hold on;
ax.LineWidth=1.1;
ax.FontSize=11;
ax.FontName='Times New Roman';
ax.XTickLabel={'0','5','10','15','20','25', '30', '35', '40', '45', '50', '55', '60'};
ax.YLim = [-7, 0];

% 为箱线图的框上色
colorList = C2;
boxObj=findobj(gca,'Tag','Box');
for i=1:length(boxObj)
    patch(boxObj(i).XData,boxObj(i).YData,colorList(length(boxObj)+1-i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\it{Y}', 'Fontname', 'Times New Roman', 'FontSize', 13');

% 导出图形
pathFigure = 'E:\ING\ing1\1-AbsorbingAerosol_Detecting_HY-1C_UVI\作图\sentivityAna-Algorithm\Fig4\';
str= strcat(pathFigure, 'Fig4d.tiff');
print(gcf, '-dtiff', '-r600', str);

%% ------------------- 图4e ----------------------------
% % ******* SZA=50 UVNIR-DAI(no angular correction) ***********

figure(5); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])
boxplot(Y5,'Symbol','o','OutlierSize',3,'Colors',[0,0,0]);

% 修改线条粗细
lineObj=findobj(gca,'Type','Line');
for i=1:length(lineObj)
    lineObj(i).LineWidth=1;
    lineObj(i).MarkerFaceColor=[1,1,1].*.3;
    lineObj(i).MarkerEdgeColor=[1,1,1].*.3;
end

% 坐标区域属性设置
ax=gca;hold on;
ax.LineWidth=1.1;
ax.FontSize=11;
ax.FontName='Times New Roman';
ax.XTickLabel={'0','5','10','15','20','25', '30', '35', '40', '45', '50', '55', '60'};
ax.YLim = [-7, 0];

% 为箱线图的框上色
colorList = C1;
boxObj=findobj(gca,'Tag','Box');
for i=1:length(boxObj)
    patch(boxObj(i).XData,boxObj(i).YData,colorList(length(boxObj)+1-i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\it{Y}', 'Fontname', 'Times New Roman', 'FontSize', 13');

% 导出图形
pathFigure = 'E:\ING\ing1\1-AbsorbingAerosol_Detecting_HY-1C_UVI\作图\sentivityAna-Algorithm\Fig4\';
str= strcat(pathFigure, 'Fig4e.tiff');
print(gcf, '-dtiff', '-r600', str);

%% ------------------- 图4f ----------------------------
% % ******* SZA=50 UVNIR-DAI(with angular correction) ***********
figure(6); clf;
set(gcf, 'units', 'centimeters', 'Position', [12, 6, 8, 5.7])

boxplot(Y6,'Symbol','o','OutlierSize',3,'Colors',[0,0,0]);

% 修改线条粗细
lineObj=findobj(gca,'Type','Line');
for i=1:length(lineObj)
    lineObj(i).LineWidth=1;
    lineObj(i).MarkerFaceColor=[1,1,1].*.3;
    lineObj(i).MarkerEdgeColor=[1,1,1].*.3;
end

% 坐标区域属性设置
ax=gca;hold on;
ax.LineWidth=1.1;
ax.FontSize=11;
ax.FontName='Times New Roman';
ax.XTickLabel={'0','5','10','15','20','25', '30', '35', '40', '45', '50', '55', '60'};
ax.YLim = [-7, 0];

% 为箱线图的框上色
colorList = C2;
boxObj=findobj(gca,'Tag','Box');
for i=1:length(boxObj)
    patch(boxObj(i).XData,boxObj(i).YData,colorList(length(boxObj)+1-i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end

xlabel('Viewing zenith angle (º)', 'Fontname', 'Times New Roman', 'FontSize', 13');
ylabel('\it{Y}', 'Fontname', 'Times New Roman', 'FontSize', 13');

% 导出图形
pathFigure = 'E:\ING\ing1\1-AbsorbingAerosol_Detecting_HY-1C_UVI\作图\sentivityAna-Algorithm\Fig4\';
str= strcat(pathFigure, 'Fig4f.tiff');
print(gcf, '-dtiff', '-r600', str);

%% 画出 legend (原始)
% figure(7); clf;
% set(gcf, 'units', 'centimeters', 'Position', [12, 6, 20, 6])
% set(gca, 'xlim', [0 10], 'ylim', [0 10])
% 
% % taua=0.5 1.0 2.0
% x1=3;y1=2;
% x2=4.5;y2=y1;
% x3=6;y3=y1;
% x4=7.5;y4=y1;
% hp = plot(x1, y1, 'ko', x2, y2, 'k*', x3, y3, 'ks');
% 
% legend(hp([1 2 3]), '\tau=0.5', '\tau=1.0', '\tau=2.0',...
%     'Fontname', 'Times New Roman', 'FontSize', 15, 'box', 'off', 'Orientation', 'horizon');
% str= strcat(pathFigure, 'legend.tiff');
% print(gcf, '-dtiff', '-r600', str);



