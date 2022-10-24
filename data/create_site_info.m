clear all; close all;

[snum,sstr,raw] = xlsread('Formatted_Data2.xlsx','A2:A100000');

fid = fopen('site_info2.csv','wt');

fprintf(fid,'Site Code,X,Y,Agency Code\n');

unames = unique(sstr);

for i = 1:length(unames)
    fprintf(fid,'%s,XX,YY,NAME\n',unames{i});
end
fclose(fid);