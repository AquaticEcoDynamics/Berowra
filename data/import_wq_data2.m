clear all; close all;

load Berowra.mat;

[conv,sstr ] = xlsread('Copy of conversions-PH _CLv1.xlsx','A2:D10000');
ovars = sstr(:,1);
nvars = sstr(:,2);
units = sstr(:,4);


[snum,sstr ] = xlsread('220126Filled_site_info.xlsx','A16:D10000');
sites_all = sstr(:,1);
inc = 1;
for i = 1:length(sites_all)
if ~isempty(sites_all{i})
    sites(inc) = sites_all(i);
    X(inc) = snum(i,1);
    Y(inc) = snum(i,2);
    agency(inc) = sstr(i,4);
    inc = inc + 1;
end
end


[~,headers] = xlsread('Formatted_Data2.xlsx','C1:AA1');

[~,sitedata] = xlsread('Formatted_Data2.xlsx','A2:A10000');
[~,sDate] = xlsread('Formatted_Data2.xlsx','B2:B10000');
mdate = datenum(sDate,'dd/mm/yyyy');
[Data,~] = xlsread('Formatted_Data2.xlsx','C2:AA100000');




for i = 1:length(sites)
    
    %sss = find(sitedata == sites(i));
    
    sss = find(strcmpi(sitedata,sites{i})== 1);
    
    %sitename = ['S',num2str(sites(i))];
    sitename = sites{i};
    
    
    for j = 1:length(headers)
        
        ttt = find(~isnan(Data(sss,j)) == 1);
        
        ggg = find(strcmpi(ovars,headers{j}) == 1);
        
        newvar = nvars{ggg(1)};
        newconv = conv(ggg(1));
        newunits = units{ggg};
        if strcmpi(newvar,'Ignore') == 0
            
            Berowra.(sitename).(newvar).Data = Data(sss(ttt),j) * newconv;
            Berowra.(sitename).(newvar).Date = mdate(sss(ttt),1);
            Berowra.(sitename).(newvar).Depth(1:length(sss(ttt)),1) = 0;
            Berowra.(sitename).(newvar).X = X(i);
            Berowra.(sitename).(newvar).Y = Y(i);
            Berowra.(sitename).(newvar).Name = sitename;
            Berowra.(sitename).(newvar).Units = newunits;
            Berowra.(sitename).(newvar).Agency = agency{i};
            
        end
    end
end


save Berowra.mat Berowra -mat;


