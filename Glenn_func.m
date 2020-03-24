function [Glenn_output, Glenn_f] = Glenn_func()

[Glenn_y, Glenn_f] = audioread('Glenn.wav');

rand_Glenn =  7;

switch rand_Glenn
    case 1
        selected_Glenn = Glenn_y((Glenn_f * 0 : Glenn_f * 5 ), :);
    case 2
        selected_Glenn = Glenn_y((Glenn_f * 5: Glenn_f * 10), :);
     case 3
        selected_Glenn = Glenn_y((Glenn_f * 10 : Glenn_f * 15 ), :);
    case 4
        selected_Glenn = Glenn_y((Glenn_f * 15 : Glenn_f * 20), :);
    case 5
        selected_Glenn = Glenn_y((Glenn_f * 20 : Glenn_f * 25 ), :);
    case 6
        selected_Glenn = Glenn_y((Glenn_f * 25 : Glenn_f * 30), :);
    case 7
        selected_Glenn = Glenn_y((Glenn_f * 30 : Glenn_f * 35 ), :);
    case 8
        selected_Glenn = Glenn_y((Glenn_f * 35 : Glenn_f * 40), :);
    case 9
        selected_Glenn = Glenn_y((Glenn_f * 40 : Glenn_f * 45), :);
end

Glenn_output = selected_Glenn;

end


