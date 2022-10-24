clear all; close all;



[conv,sstr ] = xlsread('Copy of conversions-PH _CLv1.xlsx','A2:D10000');
ovars = sstr(:,1);
nvars = sstr(:,2);
units = sstr(:,4);


[snum,sstr ] = xlsread('220126Filled_site_info.xlsx','A2:D15');
sites = snum(:,1);
X = snum(:,2);
Y = snum(:,3);
agency = sstr(:,1);


[~,headers] = xlsread('Formatted_Data.xlsx','C1:AA1');

[sitedata,~] = xlsread('Formatted_Data.xlsx','A2:A10000');
[~,sDate] = xlsread('Formatted_Data.xlsx','B2:B10000');
mdate = datenum(sDate,'dd/mm/yyyy');
[Data,~] = xlsread('Formatted_Data.xlsx','C2:AA100000');

Berowra = [];



for i = 1:length(sites)
    
    sss = find(sitedata == sites(i));
    
    sitename = ['S',num2str(sites(i))];
    
    
    
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


