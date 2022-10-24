
% Configuration____________________________________________________________
 


fielddata_matfile = '..\..\data\Berowra.mat';
fielddata = 'Berowra';

polygon_file = '..\..\gis\Berowra_Zone_v2.shp';


%sites = [4:01:16];

%start_plot_ID = 1;

%end_plot_ID = 1;

varname = {...
    'COND',...
'ECLOI',...
'ENT',...
'FC',...
'Filtered_Total_Phosphorus',...
'SAL',...
'TEMP',...
'WQ_CAR_PH',...
'WQ_DIAG_PHY_TCHLA',...
'WQ_DIAG_TOT_TKN',...
'WQ_DIAG_TOT_TN',...
'WQ_DIAG_TOT_TOC',...
'WQ_DIAG_TOT_TP',...
'WQ_DIAG_TOT_TSS',...
'WQ_DIAG_TOT_TURBIDITY',...
'WQ_NIT_AMM',...
'WQ_NIT_NIT',...
'WQ_OGM_DOC',...
'WQ_OXY_OXY',...
'WQ_PHS_FRP',...
};

for i = 1:length(varname)
def.cAxis(i).value = [];
end


% def.cAxis(1).value = [0 1000];    %'COND',...
% def.cAxis(2).value = [0 500];   %'ECLOI',...
% def.cAxis(3).value = [0 1000];    %'ENT',...
% def.cAxis(4).value = [0 1000];	%'FC',...
% def.cAxis(5).value = [0 35];   %'SAL',...
% def.cAxis(6).value = [0 100];   %'SED_GS_u22_9',...
% def.cAxis(7).value = [0 100];   %'SED_GS_u69_1',...
% def.cAxis(8).value = [0 1];   	%'SED_ISO_C',...
% def.cAxis(9).value = [0 2e-3];    	%'SED_ISO_N',...
% def.cAxis(10).value = [0 2e4]; %'SED_MET_Fe',...
% def.cAxis(11).value = [0 500]; %'SED_MET_P',...
% def.cAxis(12).value = [5 35];  %'TEMP',...
% def.cAxis(13).value = [7 9];  %'WQ_CAR_PH',...
% def.cAxis(14).value = [-35 0];  	%'WQ_DIAG_ISO_del13CDOC_ppt',...
% def.cAxis(15).value = [0 20];   %'WQ_DIAG_ISO_del15NNOx',...
% def.cAxis(16).value = [0 20];  %'WQ_DIAG_ISO_del15NNOx_ppt',...
% def.cAxis(17).value = [0 7.5];  	%'WQ_DIAG_ISO_del18ONOx',...
% def.cAxis(18).value = [0 110];   %'WQ_DIAG_OXY_SAT',...
% def.cAxis(19).value = [0 100];  %'WQ_DIAG_PHY_TCHLA',...
% def.cAxis(20).value = [0 50];   	%'WQ_DIAG_PHY_TCHLA_EXO',...
% def.cAxis(21).value = [0 80];   %'WQ_DIAG_TOT_TDN',... 
% def.cAxis(22).value = [0 2.5];  %'WQ_DIAG_TOT_TDP',... 
% def.cAxis(23).value = [0 2.5];   %'WQ_DIAG_TOT_TN',... 
% def.cAxis(24).value = [0 20];	%'WQ_DIAG_TOT_TOC',...
% def.cAxis(25).value = [0 1];  %'WQ_DIAG_TOT_TON',... 
% def.cAxis(26).value = [0 0.1];  %'WQ_DIAG_TOT_TP',... 
% def.cAxis(27).value = [0 45];  %'WQ_DIAG_TOT_TSS',... 
% def.cAxis(28).value = [0 45];   %'WQ_DIAG_TOT_TSS_MINERAL',...	
% def.cAxis(29).value = [0 7.5];    %'WQ_DIAG_TOT_TSS_ORGANIC',...	
% def.cAxis(30).value = [0 30]; %'WQ_DIAG_TOT_TURBIDITY',...
% def.cAxis(31).value = [0 30]; %'WQ_DIAG_TOT_TURBIDITY_EXO',...
% def.cAxis(32).value = [0 35];  %'WQ_NCS_SS1',...
% def.cAxis(33).value = [0 0.2];  %'WQ_NIT_AMM',...
% def.cAxis(34).value = [0 1];  	%'WQ_NIT_NIT',...
% def.cAxis(35).value = [0 35];   %'WQ_OGM_DOC',...
% def.cAxis(36).value = [0 0.5];  %'WQ_OGM_DON',...
% def.cAxis(37).value = [0 0.1];  	%'WQ_OGM_DOP',...
% def.cAxis(38).value = [0 0.5];   %'WQ_OGM_PON',...
% def.cAxis(39).value = [0 40];  %'WQ_OGM_fDOM',...
% def.cAxis(40).value = [4 15];    %'WQ_OXY_OXY',...
% def.cAxis(41).value = [0 0.05]; %'WQ_PHS_FRP',...
% def.cAxis(42).value = [0 15];  %'WQ_PHY_BGA_PE',...
% def.cAxis(43).value = [0 7.5];  %'WQ_SIL_RSI',...
% def.cAxis(44).value = [0 5e4];  	%'spCOND',... 


plottype = 'timeseries'; %timeseries or 'profile'
%plottype = 'profile'; % or 'profile'

% Add field data to figure
plotvalidation = true; % true or false

plotdepth = {'surface'};%;'bottom'};%'bottom'}; % Cell with either one or both
%plotdepth = {'surface'};%,'bottom'}; % Cell with either one or both

istitled = 1;
isylabel = 1;
islegend = 1;
isYlim = 1;
isRange = 1;
isRange_Bottom = 1;
Range_ALL = 1;
plotmodel = 0;
filetype = 'eps';
def.expected = 1; % plot expected WL
isFieldRange = 0;
fieldprctile = [10 90];

% ____________________________________________________________Configuration

% Models___________________________________________________________________


outputdirectory = '..\..\Results\Plots_v2\RAW\';
htmloutput = '..\..\Results\Plots_v2\HTML\';

% ____________________________________________________________Configuration

% Models___________________________________________________________________

 ncfile(1).name = 'I:\Hawkesbury\HN_Cal_v3_noIC\output\HN_Cal_2013_WQ.nc';
 ncfile(1).symbol = {'-';'--'};
 ncfile(1).colour = {[0.749019607843137 0.227450980392157 0.0039215686274509],[0.0509803921568627         0.215686274509804         0.968627450980392]}; % Surface and Bottom
 ncfile(1).legend = 'v11';
 ncfile(1).translate = 1;
%  
%  









% Defaults_________________________________________________________________



yr = 1990;
def.datearray = datenum(yr:05:2020,01,01);
%def.datearray = datenum(yr,01:1:4,01);

def.dateformat = 'mm-yy';
% Must have same number as variable to plot & in same order

def.dimensions = [14 6]; % Width & Height in cm

def.dailyave = 0; % 1 for daily average, 0 for off. Daily average turns off smoothing.
def.smoothfactor = 3; % Must be odd number (set to 3 if none)

def.fieldsymbol = {'.','.'}; % Cell with same number of levels
def.fieldcolour = {'m',[0.6 0.6 0.6]}; % Cell with same number of levels

def.font = 'Arial';

def.xlabelsize = 7;
def.ylabelsize = 7;
def.titlesize = 12;
def.legendsize = 6;
def.legendlocation = 'northeastoutside';

def.visible = 'off'; % on or off
