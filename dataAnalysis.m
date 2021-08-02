function dataAnalysis()

   clc; 
   close all;
   clear all;
   
   data = csvread('sylhet1Hour.csv'); 

   %%%%% Temperature %%%%%%%%%%%%%%%%%%%%%
   
   temp1 = mean(data(1:1440,13));
   temp2 = mean(data(74450:104689,13));
   temp3 = mean(data(104690:121968,13));
   temp4 = mean(data(121969:139248,13));
   temp5 = mean(data(139249:156528,13));
   temp6 = mean(data(156529:173808,13));
   temp7 = mean(data(173809:208358,13));
   temp8 = mean(data(208359:245605,13));
   temp = [temp1 temp2 temp3 temp4 temp5 temp6 temp7 temp8];
   figure,
   set (0, 'defaultaxesfontname', 'Helvetica')
   set (0, 'defaultaxesfontangle', 'Normal')
   set (0, 'defaultaxesfontsize',12)
   set (0, 'defaulttextfontname', 'Helvetica')
   set (0, 'defaulttextfontangle', 'Normal')
   set (0, 'defaulttextfontsize',12)
   
   plot(temp, 'r-o');
   set(gca,'XTick',1:8);
   set(gca,'XTickLabel', ({'Mar14','May25','Jun06', 'Jun18', 'Jun30','July12','Aug05', 'Sep10'}));
   title('Average temperatures at Sylhet region for different times', 'fontsize', 18);
   ylabel('Temperature [^0C]', 'fontsize', 16); % y-axis label   
   axis on
   box on
   set(gca,'fontsize',15);
   figwidth = 19;
   figheight = 14;
   hfig = figure(1);
   set(hfig, 'Units', 'centimeters');
   figpos = get(hfig, 'Position');
   set(hfig, 'Position', [figpos(1), figpos(2), figwidth, figheight]);
   set(gcf,'PaperPositionMode','auto');
   print('temp.eps','-depsc');
   close all;
    
   %%%%% Relative humidity %%%%%%%%%%%%%%%%%%%%%
   RH1 = mean(data(1:1440,14));
   RH2 = mean(data(74450:104689,14));
   RH3 = mean(data(104690:121968,14));
   RH4 = mean(data(121969:139248,14));
   RH5 = mean(data(139249:156528,14));
   RH6 = mean(data(156529:173808,14));
   RH7 = mean(data(173809:208358,14));
   RH8 = mean(data(208359:245605,14));
  
   RH = [RH1 RH2 RH3 RH4 RH5 RH6 RH7 RH8];
   figure,
   set (0, 'defaultaxesfontname', 'Helvetica')
   set (0, 'defaultaxesfontangle', 'Normal')
   set (0, 'defaultaxesfontsize',12)
   set (0, 'defaulttextfontname', 'Helvetica')
   set (0, 'defaulttextfontangle', 'Normal')
   set (0, 'defaulttextfontsize',12)
   plot(RH, 'r-o');
   set(gca,'XTick',1:8);
   set(gca,'XTickLabel', ({'Mar14','May25','Jun06', 'Jun18', 'Jun30','July12','Aug05', 'Sep10'}));
   title('Average relative humidity at Sylhet region for different months', 'fontsize', 18);
   ylabel('Relative humidity [%]', 'fontsize', 16); % y-axis label   
   axis on
   box on
   set(gca,'fontsize',15);
   figwidth = 19;
   figheight = 14;
   hfig = figure(1);
   set(hfig, 'Units', 'centimeters');
   figpos = get(hfig, 'Position');
   set(hfig, 'Position', [figpos(1), figpos(2), figwidth, figheight]);
   set(gcf,'PaperPositionMode','auto');
   print('RH.eps','-depsc');
   close all;
   %%%%% Rain Fall %%%%%%%%%%%%%%%%%%%%%
   rainFall1 = sum(data(1:1440,16));
   rainFall2 = sum(data(74450:104689,16));
   rainFall3 = sum(data(104690:121968,16));
   rainFall4 = sum(data(121969:139248,16));
   rainFall5 = sum(data(139249:156528,16));
   rainFall6 = sum(data(156529:173808,16));
   rainFall7 = sum(data(173809:208358,16));
   rainFall8 = sum(data(208359:245605,16));
   
   rainFall = [rainFall1 rainFall2 rainFall3 rainFall4 rainFall5 rainFall6 rainFall7 rainFall8];
   figure,
   set (0, 'defaultaxesfontname', 'Helvetica')
   set (0, 'defaultaxesfontangle', 'Normal')
   set (0, 'defaultaxesfontsize',12)
   set (0, 'defaulttextfontname', 'Helvetica')
   set (0, 'defaulttextfontangle', 'Normal')
   set (0, 'defaulttextfontsize',12)
   plot(rainFall, 'r-o');
   set(gca,'XTick',1:8);
   set(gca,'XTickLabel', ({'Mar14','May25','Jun06', 'Jun18', 'Jun30','July12','Aug05', 'Sep10'}));
   title('Total precipitation at Sylhet region for each time segment', 'fontsize', 18);
   ylabel('Rainfall [mm]', 'fontsize', 16); % y-axis label   
   axis on
   box on
   set(gca,'fontsize',15);
   figwidth = 19;
   figheight = 14;
   hfig = figure(1);
   set(hfig, 'Units', 'centimeters');
   figpos = get(hfig, 'Position');
   set(hfig, 'Position', [figpos(1), figpos(2), figwidth, figheight]);
   set(gcf,'PaperPositionMode','auto');
   print('rainfall.eps','-depsc');
   close all;
 
   %%%%%%%%%%%%%%%% Cummulative sum of rainfall %%%%%%%%%%%%%%%%%%%%%%
   cumRain = cumsum(data(:,16));
   figure,
   set (0, 'defaultaxesfontname', 'Helvetica')
   set (0, 'defaultaxesfontangle', 'Normal')
   set (0, 'defaultaxesfontsize',12)
   set (0, 'defaulttextfontname', 'Helvetica')
   set (0, 'defaulttextfontangle', 'Normal')
   set (0, 'defaulttextfontsize',12)
   
   plot(cumRain, 'r-o');
   set(gca,'XTick',[1440 104689 121968 139248 156528 173808 208358 245605]);
   set(gca,'XTickLabel', ({'Mar14','May25','Jun06', 'Jun18', 'Jun30','July12','Aug05', 'Sep10'}));
   title('Cummulative summation of precipitation at Sylhet region for different times', 'fontsize', 16);
   ylabel('Rainfall [mm]', 'fontsize', 14); % y-axis label   
   axis on
   box on
   set(gca,'fontsize',14);
   figwidth = 28;
   figheight = 14;
   hfig = figure(1);
   set(hfig, 'Units', 'centimeters');
   figpos = get(hfig, 'Position');
   set(hfig, 'Position', [figpos(1), figpos(2), figwidth, figheight]);
   set(gcf,'PaperPositionMode','auto');
   print('cumRainfall.eps','-depsc');
   close all;
   
   %%%%% SoilMoisture %%%%%%%%%%%%%%%%%%%%%
   soilMoisture1 = mean(data(1:1440,19));
   soilMoisture2 = mean(data(74450:104689,19));
   soilMoisture3 = mean(data(104690:121968,19));
   soilMoisture4 = mean(data(121969:139248,19));
   soilMoisture5 = mean(data(139249:156528,19));
   soilMoisture6 = mean(data(156529:173808,19));
   soilMoisture7 = mean(data(173809:208358,19));
   soilMoisture8 = mean(data(208359:245605,19));
   
   soilMoisture = [soilMoisture1 soilMoisture2 soilMoisture3 soilMoisture4 soilMoisture5 soilMoisture6 soilMoisture7 soilMoisture8];
   figure,
   set (0, 'defaultaxesfontname', 'Helvetica')
   set (0, 'defaultaxesfontangle', 'Normal')
   set (0, 'defaultaxesfontsize',12)
   set (0, 'defaulttextfontname', 'Helvetica')
   set (0, 'defaulttextfontangle', 'Normal')
   set (0, 'defaulttextfontsize',12)
   plot(soilMoisture, 'r-o');
   
   set(gca,'XTick',1:8);
   set(gca,'XTickLabel', ({'Mar14','May25','Jun06', 'Jun18', 'Jun30','July12','Aug05', 'Sep10'}));
   title('Average soil moisture at Sylhet region for different months', 'fontsize', 18);
   ylabel('Soil moisture [%]', 'fontsize', 16); % y-axis label   
   axis on
   box on
   set(gca,'fontsize',15);
   figwidth = 19;
   figheight = 14;
   hfig = figure(1);
   set(hfig, 'Units', 'centimeters');
   figpos = get(hfig, 'Position');
   set(hfig, 'Position', [figpos(1), figpos(2), figwidth, figheight]);
   set(gcf,'PaperPositionMode','auto');
   print('SoilMoist.eps','-depsc');
   close all;
end