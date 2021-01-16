run('astros_load.m')

run('nats_load.m')


strasburg_find = strfind(natsdata{:,1},"Stephen Strasburg")

% if strasburg_find(strcmp 1
%     find(strasburg_find{:,1})
% else
% end
% strcmp???