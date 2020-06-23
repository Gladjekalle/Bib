function [Glenn_output, Glenn_f] = Glenn_func()

[Glenn_y, Glenn_f] = audioread('Glenn.wav');

rand_Glenn = randperm(11,1);

if rand_Glenn == 10
    [Niklas_y, Niklas_f] = audioread('Niklas.wav');
end

switch rand_Glenn
    case 1
        selected_Glenn = Glenn_y((Glenn_f * 0 + 1 : Glenn_f * 5.5), :);
    case 2
        selected_Glenn = Glenn_y((Glenn_f * 5: Glenn_f * 10.5), :);
     case 3
        selected_Glenn = Glenn_y((Glenn_f * 10 : Glenn_f * 15.5), :);
    case 4
        selected_Glenn = Glenn_y((Glenn_f * 15 : Glenn_f * 20.5), :);
    case 5
        selected_Glenn = Glenn_y((Glenn_f * 20 : Glenn_f * 25.5), :);
    case 6
        selected_Glenn = Glenn_y((Glenn_f * 25 : Glenn_f * 30.5), :);
    case 7
        selected_Glenn = Glenn_y((Glenn_f * 30 : Glenn_f * 35.5), :);
    case 8
        selected_Glenn = Glenn_y((Glenn_f * 35 : Glenn_f * 40.5), :);
    case 9
        selected_Glenn = Glenn_y((Glenn_f * 40 : Glenn_f * 45.5), :);
    case 10
        selected_Glenn = Niklas_y((Niklas_f * 47 : Niklas_f *52.5), :);
    case 11
        selected_Glenn = Niklas_y((Niklas_f * 52 : Niklas_f *57.5), :);
end

Glenn_output = selected_Glenn;

end


