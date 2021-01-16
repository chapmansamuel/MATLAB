clear
clc

run('astros_load.m');

run('nats_load.m');


verlander_find = strcmp(astrosdata1{:,1},"Justin Verlander");
index = find(verlander_find == 1);
verlander_data = astrosdata1(index,:);

greinke_find = strcmp(astrosdata1{:,1},"Zack Greinke");
index_1 = find(greinke_find == 1);
greinke_data = astrosdata1(index_1,:);

cole_find = strcmp(astrosdata1{:,1},"Gerrit Cole");
index_2 = find(cole_find == 1);
cole_data = astrosdata1(index_2,:);

total_find = strcmp(natsdata{:,1},"Totals");
index_3 = find(total_find == 1);
total_astros_data = astrosdata1(index_3,:);

cole_playoffERA=cole_data(:,4);
greinke_playoffERA=greinke_data(:,4);
verlander_playoffERA=verlander_data(:,4);
total_playoffERA=total_astros_data(:,4);

cole_regularERA=cole_data(:,19);
greinke_regularERA=greinke_data(:,19);
verlander_regularERA=verlander_data(:,19);
total_playoffERA=total_astros_data(:,19);

Playoff_ERA=astrosdata1(:,4);
Playoff_IP=astrosdata1(:,9);
Playoff_G=astrosdata1(:,2);

Team_ERA = astrosdata1(:,19);
Team_IP = astrosdata1(:,23);



subplot(3,1,1)
bar(Playoff_G.PlayoffSeriesStats);
ylabel("Games appeared in");
title("Astros playoff games appeared in");

names={'Cole', 'Devenski', 'Greinke', 'Harris', 'James', 'Osuna', 'Peacock', 'Pressly', 'Rondon', 'Smith', 'Urquidy', 'Verlander', 'Totals'};
set(gca,'xticklabel',names);

% subplot(2,1,2)
% bar(Team_ERA.VarName19);
% ylabel("ERA");
% title("Astros season ERA");
% 
% names={'Cole', 'Devenski', 'Greinke', 'Harris', 'James', 'Osuna', 'Peacock', 'Pressly', 'Rondon', 'Smith', 'Urquidy', 'Verlander', 'Totals'};
% set(gca,'xticklabel',names);

subplot(3,1,2)
bar(Playoff_IP.VarName9);
ylabel("Innings pitched");
title("Astros playoff innings pitched");

names={'Cole', 'Devenski', 'Greinke', 'Harris', 'James', 'Osuna', 'Peacock', 'Pressly', 'Rondon', 'Smith', 'Urquidy', 'Verlander', 'Totals'};
set(gca,'xticklabel',names);

subplot(3,1,3)
bar(Playoff_ERA.VarName4);
ylabel("ERA");
title("Astros playoff ERA");

names={'Cole', 'Devenski', 'Greinke', 'Harris', 'James', 'Osuna', 'Peacock', 'Pressly', 'Rondon', 'Smith', 'Urquidy', 'Verlander', 'Totals'};
set(gca,'xticklabel',names);


% 
% somenames={'Cole', 'Devenski', 'Greinke', 'Harris', 'James', 'Osuna', 'Peacock', 'Pressly', 'Rondon', 'Smith', 'Urquidy', 'Verlander', 'Totals'};
% set(gca,'xticklabel',somenames);



% X = 3.86 9 2.45 4.5 10.8 3.86 3 9 0 5.4 0 5.73 4.29


% if strasburg_find(strcmp 1
%     find(strasburg_find{:,1})
% else
% end
% strcmp???
