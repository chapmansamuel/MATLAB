clear
clc

run('astros_load.m');

run('nats_load.m'); %both are scripts that imports our data set as a table. 


strasburg_find = strcmp(natsdata{:,1},"Stephen Strasburg"); %finds the row stephen strasburg is in. 
index = find(strasburg_find == 1);%finds the row the that has a 1,  which is strasburgs row.
strasburg_data = natsdata(index,:);%finds stephen strasburgs stat line.

scherzer_find = strcmp(natsdata{:,1},"Max Scherzer");
index_1 = find(scherzer_find == 1);
scherzer_data = natsdata(index_1,:);

corbin_find = strcmp(natsdata{:,1},"Patrick Corbin");
index_2 = find(corbin_find == 1);
corbin_data = natsdata(index_2,:);

total_find = strcmp(natsdata{:,1},"Totals");
index_3 = find(total_find == 1);
total_nats_data = natsdata(index_3,:); %all of these do the same thing as the stephen strasburg block of code. 

scherzer_playoffERA=scherzer_data(:,4);
strasburg_playoffERA=strasburg_data(:,4);
corbin_playoffERA=corbin_data(:,4);
total_playoffERA=total_nats_data(:,4); %finds each players or totals row playoff ERA, used for analysis. 

scherzer_regularERA=scherzer_data(:,19);
strasburg_regularERA=strasburg_data(:,19);
corbin_regularERA=corbin_data(:,19);
total_regularERA=total_nats_data(:,19);% finds each players regular season ERA or team total regular season ERA, used for analysis. 

Playoff_ERA=natsdata(:,4);
Playoff_IP=natsdata(:,9);
Playoff_G=natsdata(:,2);
Playoff_W=natsdata(:,5);
Nats_WHIP =natsdata(:,15);
Astros_WHIP =astrosdata(:,15);
Nats_WPA=natsdata(:,16);
Astros_WPA=astrosdata(:,16);
Team_ERA = natsdata(:,19);
Team_IP = natsdata(:,23); % used to be able to create bar graphs with a tabular dataset.  





subplot(2,1,1)
bar(Nats_WHIP.VarName15);%plots nationals playoff WHIP. 
ylabel("WHIP");
title("Nationals playoff WHIP");
somenames={'Corbin', 'Doolittle', 'Guerra', 'Hudson', 'Rainey', 'Rodney', 'Ross', 'Sanchez', 'Scherzer', 'Strasburg', 'Suero', 'Total'};% List of Astros players names.
set(gca,'xticklabel',somenames) %Runs through the list of names and plots them in order. 

subplot(2,1,2)
bar(Astros_WHIP.VarName15%plots Astros playoff WHIP.
ylabel("WHIP");
title("Astros playoff WHIP");
names={'Cole', 'Devenski', 'Greinke', 'Harris', 'James', 'Osuna', 'Peacock', 'Pressly', 'Rondon', 'Smith', 'Urquidy', 'Verlander', 'Totals'};% List of Astros players names.
set(gca,'xticklabel',names); %Runs through the list of names and plots them in order. 

subplot(2,1,1)
bar(Nats_WPA.VarName16);% plots the nationals WPA. 
ylabel("WPA");
title("Nationals playoff WPA");
somenames={'Corbin', 'Doolittle', 'Guerra', 'Hudson', 'Rainey', 'Rodney', 'Ross', 'Sanchez', 'Scherzer', 'Strasburg', 'Suero', 'Total'};% List of Nationals players names.
set(gca,'xticklabel',somenames) %Runs through the list of names and plots them in order. 

subplot(2,1,2)
bar(Astros_WPA.VarName16);% plots the Astros WPA. 
ylabel("WPA");
title("Astros playoff WPA");
names={'Cole', 'Devenski', 'Greinke', 'Harris', 'James', 'Osuna', 'Peacock', 'Pressly', 'Rondon', 'Smith', 'Urquidy', 'Verlander', 'Totals'};% List of Astros players names.
set(gca,'xticklabel',names);%Runs through the list of names and plots them in order. 





subplot(3,1,1)
bar(Playoff_G.PlayoffSeriesStats);%plots amount of games appeared in, computer named the variable... 
ylabel("Games appeared in");
title("Nationals playoff games appeared in");
somenames={'Corbin', 'Doolittle', 'Guerra', 'Hudson', 'Rainey', 'Rodney', 'Ross', 'Sanchez', 'Scherzer', 'Strasburg', 'Suero', 'Total'};% List of Nationals players names.
set(gca,'xticklabel',somenames) %Runs through the list of names and plots them in order. 


subplot(3,1,2)
bar(Playoff_IP.VarName9);%Plots nationals playoff IP.
ylabel("Innings pitched");
title("Nationals playoff innings pitched");
somenames={'Corbin', 'Doolittle', 'Guerra', 'Hudson', 'Rainey', 'Rodney', 'Ross', 'Sanchez', 'Scherzer', 'Strasburg', 'Suero', 'Total'};% List of Nationals players names.
set(gca,'xticklabel',somenames) %Runs through the list of names and plots them in order. 


subplot(3,1,3)
bar(Playoff_ERA.VarName4);%Plots nationals playoff ERA.
ylabel("ERA");
title("Nationals playoff ERA");
somenames={'Corbin', 'Doolittle', 'Guerra', 'Hudson', 'Rainey', 'Rodney', 'Ross', 'Sanchez', 'Scherzer', 'Strasburg', 'Suero', 'Total'};% List of Nationals players names.
set(gca,'xticklabel',somenames) %Runs through the list of names and plots them in order. 
