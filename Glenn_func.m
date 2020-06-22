function [Glenn_output, Glenn_f] = Glenn_func()

[Glenn_y, Glenn_f] = audioread('Glenn.wav');

rand_Glenn = randperm(10,1);

if rand_Glenn == 10
    [Niklas_y, Niklas_f] = audioread('Niklas.wav');
end
    
switch rand_Glenn
    case 1
        selected_Glenn = Glenn_y((Glenn_f * 0 : Glenn_f * 7 ), :);
    case 2
        selected_Glenn = Glenn_y((Glenn_f * 5: Glenn_f * 12), :);
     case 3
        selected_Glenn = Glenn_y((Glenn_f * 10 : Glenn_f * 17 ), :);
    case 4
        selected_Glenn = Glenn_y((Glenn_f * 15 : Glenn_f * 22), :);
    case 5
        selected_Glenn = Glenn_y((Glenn_f * 20 : Glenn_f * 27 ), :);
    case 6
        selected_Glenn = Glenn_y((Glenn_f * 25 : Glenn_f * 32), :);
    case 7
        selected_Glenn = Glenn_y((Glenn_f * 30 : Glenn_f * 37 ), :);
    case 8
        selected_Glenn = Glenn_y((Glenn_f * 35 : Glenn_f * 42), :);
    case 9
        selected_Glenn = Glenn_y((Glenn_f * 40 : Glenn_f * 45), :);
    case 10
        selected_Glenn = Niklas_y((Niklas_f * 47 : Niklas_f *56), :);
end

Glenn_output = selected_Glenn;

end


