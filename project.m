

astros=xlsread("sportsref_download_astros.xls"); 

nats=xlsread("sportsref_download_nats.xls");

nats_player _games=nats(:,2);
nats_player _name=nats(:,1);
nats_wins=nats(:,5);
nats_era=nats(:,4);
nats_ip=nats(:,9);


astros_player _games=astros(:,2);
astros_player _name=astros(:,1);
astros_wins=astros(:,5);
astros_era=astros(:,4);
astros_ip=astros(:,9)

astros_win _era _cor=corrcoef(astros_ip,astros_wins)

nats_win _era _cor=corrcoef(nats_ip,nats_wins)


strasburg_row = strfind(nats(:,),"Stephen Strasburg")
% if nats_player _name == "Stephen Strasburg" 
%     find(nats_player _name)
% else
%     
% end


