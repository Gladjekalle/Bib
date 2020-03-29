%% Set players and reset game
% This is changed before drinking
clf
clear all

players = ["Steffe"; "Jake the Snake"; "Jepser"; "Kale"; "will.I.am"; "Attentatnollan <3"];

%Increase extra_players to increase chance of "Alla"
extra_players = 1;

players_drink = zeros(length(players),1);
figure(1)

%% Setup
% This can be changed during drinktime

% Drink can be Wine or Beer
drink = "Kladdkaka";

max_time = 60;
min_time = 30;
max_song = 6;
min_song = 2;
no_rounds = 8;

%% Game start
figure(1)

rng('shuffle');

j = 0;
for i = 1:no_rounds
    rand_time = min_time + (max_time - min_time)*rand;
    rand_indx = randperm(length(players) + 1 ,1);
    [Glenn, Glenn_freq] = Glenn_func();
    if  rand_indx > length(players)
        player = "Alla";
    else
        player = players(rand_indx);
    end
    t = timer('TimerFcn', 'stat=false; bib_time = bib_func(min_song, max_song, player, drink)', ...
        'StartDelay',rand_time);
    
    start(t)
    tmp_time = ceil(rand_time);
    stat=true;
    while(stat==true)
        tmp_time = tmp_time - 1;
        if tmp_time == 5
             sound(Glenn, Glenn_freq);
        end
        
        if tmp_time < 6
            clf
            b =  text(0.5,0.5,num2str(tmp_time));
            b.FontSize = 80;
            set(b,'visible','on','HorizontalAlignment','center','VerticalAlignment','middle')
        end
        pause(1)
    end
    if player ~= "Alla"
        player_indx = find(players==player);
        players_drink(player_indx) = players_drink(player_indx) + bib_time;
    else
        players_drink = players_drink + bib_time;
    end
    j = j + 1;

    
    clf    
    
    bar(players_drink);
    
    text(1:length(players_drink),players_drink, num2str(players_drink),'vert','bottom','horiz','center'); 
    ylim([0, max(players_drink) + 1])
    set(gca,'XTickLabel',players)
end
delete(t)

