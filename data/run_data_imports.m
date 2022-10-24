clear all; close all;

import_wq_data;

import_wq_data2;

run_summaries;

copyfile('Summary_v3/Berowra.shp','../gis/Berowra.shp');
copyfile('Summary_v3/Berowra.dbf','../gis/Berowra.dbf');
copyfile('Summary_v3/Berowra.shx','../gis/Berowra.shx');
