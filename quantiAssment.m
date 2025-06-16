%% 最后：------------定量统计，a b c d 各个参数--------------- % %
% % % % a: ture positives, 两者都识别为 dust
% % % % b: false positives Shi&Wang07 未识别，但是 UVDAI 识别为 dust
% % % % c: false negatives Shi&Wang07 识别为 dust，但是 UVDAI 未识别
% % % % d: true negatives Shi&Wang07 和 UVDAI 都识别为 “no dust”
% % Ab_Cld, UVDAI_Cld
[nrows, ncols] = size(Ab_Cld);

UVDAI_final = UVDAI_Cld;  UVDAI_final(UVDAI_final < -900) = nan;
Ab_final = Ab_Cld;  Ab_final(Ab_final < -900) = nan;

% % 排除 陆地部分
ss=shaperead('GSHHS_l_L1.shp');
% figure(); clf;
% mapshow(ss)
in = zeros(nrows, ncols);
for ii=1:length(ss)
   X=ss(ii).X;   Y=ss(ii).Y;
   tmp = inpolygon(Lon, Lat, X, Y);
   in = in + tmp;  % 陆地上的点
end
in = logical(in);
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
