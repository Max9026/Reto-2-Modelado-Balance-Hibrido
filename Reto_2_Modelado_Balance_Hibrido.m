%% Sistema Inteligente de Gestión Energética (SIGE)
% Simulación de generación y demanda durante 24 horas

clc;
clear;
close all;

%% Horas del día
horas = 1:24;

%% Generación solar
% La generación solar es cero durante la noche.
% Su valor máximo es de 25 kW en la hora 12.

solar = [0 0 0 0 0 4 8 12 17 21 24 25 ...
    24 21 17 12 8 4 0 0 0 0 0 0];

%% Generación eólica
% La generación eólica presenta variaciones durante el día.
% Los valores no superan los 15 kW.

eolica = [7 8 6 9 10 8 11 7 9 12 10 13 ...
    11 8 12 14 10 9 13 11 8 10 7 9];

%% Generación total
% Se suman la generación solar y la generación eólica.

generacion_total = solar + eolica;

%% Demanda de la comunidad
% La demanda cambia dependiendo del horario.
% En la noche se encuentra entre 2 y 4 kW.
% Durante el día se encuentra entre 6 y 10 kW.
% Entre las horas 18 y 21 se presenta la mayor demanda.

demanda = [3 3 2 3 4 6 7 8 8 9 10 9 ...
    8 9 10 9 8 15 14 15 15 4 3 3];

%% Gráfica
% Se comparan la generación total y la demanda.

figure;

plot(horas, generacion_total, '-o');
hold on;

plot(horas, demanda, '-s');

grid on;

title('Comportamiento energético de la micro-red SIGE');
xlabel('Tiempo en horas');
ylabel('Potencia en Kilovatios (kW)');

legend('Generación Total', 'Demanda de la Comunidad');

hold off;