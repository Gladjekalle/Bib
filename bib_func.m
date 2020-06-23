function bib_time = bib_func(min_song, max_song, player, drink)
song_time = round(min_song + (max_song-min_song)*rand);
clf
    function song_func()
        a =  text(1,1,player);
        a.FontSize = 80;
        set(a,'visible','on','HorizontalAlignment','center','VerticalAlignment','middle')
        set(gca,'visible','off','xlim',[0 2],'ylim',[0 2],'Position',[0 0 1 1],'Color','r') ;
        set(gca,'visible','on','Color','r') ;
        pause(0.1)
        set(gca,'visible','on','Color','g') ;      
        pause(0.1)
    end

if drink == "Wine"
    [y, f] = audioread('BIB.wav');
    cutData = y(f * 73.8 + 1 : f * (73.8 + song_time), :);

elseif drink == "Beer"    
    [y, f] = audioread('Beer.wav');
    cutData = y(f * 65.5 + 1 : f * (65.5 + song_time), :);

elseif drink == "Kladdkaka"
    [y, f] = audioread('Kladdkaka.wav');
    cutData = y(f * 57 + 1 : f * (57 + song_time), :);
end


sound(cutData,f);
figure(1)
t0 = clock;
while etime(clock, t0) < song_time
    song_func();
end

bib_time = song_time;
clear sound
end




