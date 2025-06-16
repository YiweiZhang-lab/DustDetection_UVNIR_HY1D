% % Purpose   : 处理初始的 txt 数据，保存为数组
% % Coded by  : Y. Zhang
% % Date      : 29-Mar-2023
function data = processTXT(file)

alltext = fileread(file);
alltext=regexp(alltext,sprintf('\n'),'split');
alltext(cellfun(@isempty,alltext))=[];
alltext(1)=[];

alltext=cellfun(@(x) x(2:end),alltext, 'UniformOutput',false);

data=zeros(1560,36);

for i=1:1560
    temp0=alltext{i};
    S = regexp(temp0, '\s+', 'split');
    %lastdata = cellfun(@(x) str2double(regexprep(strtrim(x),' ','0')),cellstr(S),'UniformOutput',false);
    lastdata = cellfun(@(x) str2double(strtrim(x)),cellstr(S),'UniformOutput',false);
    lastdata=cell2mat(lastdata);
    data(i,:)=lastdata;
end

end
