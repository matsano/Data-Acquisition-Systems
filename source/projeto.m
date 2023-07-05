clc
clear
close all

%% Dados Sem Falha
x_original = load("Dados Sem Falha\x_original.txt");
y_original = load("Dados Sem Falha\y_original.txt");
tempo_original = load("Dados Sem Falha\tempo.txt");

% como todos os sinais tem mesmo tamanho, N vai ser o mesmo valor para todos
%os calculos
N = length(x_original);

% montando o vetor de frequencias
periodoAmostragem = tempo_original(2) - tempo_original(1);
frequenciaTotal = 1/periodoAmostragem;
frequenciaAmostragem = frequenciaTotal/N;
fshift = (frequenciaAmostragem-frequenciaTotal)/2:frequenciaAmostragem:frequenciaTotal/2;

% subtrai dos sinais a media
x_original = x_original - mean(x_original);
y_original = y_original - mean(y_original);

% transforma em complexo (x real e y imaginario)
for k = 1:length(x_original)
    p_original(k) = x_original(k) + 1j*y_original(k);
end

% faz fft do sinal p1 e divide o vetor por N
fft_original = abs(fft(p_original))/N;

% corrigindo o espectro
fft_original = fftshift(fft_original);

% corrige a fase do sinal  
for k = 1:length(fft_original)/2
        fft_original(k) = conj(fft_original(k));  
end
figure
plot(fshift, fft_original);
title('Sinal Sem Falha')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

%% Dados Falha 1
x1f1 = load("Dados Falha 1\x_a1_c.txt");
y1f1 = load("Dados Falha 1\y_a1_c.txt");
x2f1 = load("Dados Falha 1\x_a2_c.txt");
y2f1 = load("Dados Falha 1\y_a2_c.txt");
x4f1 = load("Dados Falha 1\x_a4_c.txt");
y4f1 = load("Dados Falha 1\y_a4_c.txt");
x6f1 = load("Dados Falha 1\x_a6_c.txt");
y6f1 = load("Dados Falha 1\y_a6_c.txt");
x8f1 = load("Dados Falha 1\x_a8_c.txt");
y8f1 = load("Dados Falha 1\y_a8_c.txt");
x10f1 = load("Dados Falha 1\x_a10_c.txt");
y10f1 = load("Dados Falha 1\y_a10_c.txt");

% calcula media e subtrai dos sinais a media
x1f1 = x1f1- mean(x1f1);
y1f1 = y1f1 - mean(y1f1);

% transforma em complexo (x real e y imaginario)
for k = 1:length(x1f1)
    p1f1(k) = x1f1(k) + 1j*y1f1(k);
end

% faz fft do sinal p1 e divide o vetor por N
fft1f1 = abs(fft(p1f1))/N;

% corrigindo o espectro
fft1f1 = fftshift(fft1f1);

% corrige a fase do sinal
for k = 1:length(fft1f1)/2
    fft1f1(k) = conj(fft1f1(k));  
end

figure
plot(fshift, fft1f1);
title('Sinal 1 - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 2:
x2f1 = x2f1- mean(x2f1);
y2f1 = y2f1 - mean(y2f1);
for k = 1:length(x2f1)
    p2f1(k) = x2f1(k) + 1j*y2f1(k);
end
fft2f1 = abs(fft(p2f1))/N;
fft2f1 = fftshift(fft2f1);
for k = 1:length(fft2f1)/2
    fft2f1(k) = conj(fft2f1(k));  
end

figure
plot(fshift, fft2f1);
title('Sinal 2 - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 4:
x4f1 = x4f1- mean(x4f1);
y4f1 = y4f1 - mean(y4f1);
for k = 1:length(x4f1)
    p4f1(k) = x4f1(k) + 1j*y4f1(k);
end
fft4f1 = abs(fft(p4f1))/N;
fft4f1 = fftshift(fft4f1);
for k = 1:length(fft4f1)/2
    fft4f1(k) = conj(fft4f1(k));
end
figure
plot(fshift, fft4f1);
title('Sinal 4 - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 6:
x6f1 = x6f1- mean(x6f1);
y6f1 = y6f1 - mean(y6f1);
for k = 1:length(x6f1)
    p6f1(k) = x6f1(k) + 1j*y6f1(k);
end
fft6f1 = abs(fft(p6f1))/N;
fft6f1 = fftshift(fft6f1);
for k = 1:length(fft6f1)/2
    fft6f1(k) = conj(fft6f1(k));  
end

figure
plot(fshift, fft6f1);
title('Sinal 6 - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 8:
x8f1 = x8f1- mean(x8f1);
y8f1 = y8f1 - mean(y8f1);
for k = 1:length(x8f1)
    p8f1(k) = x8f1(k) + 1j*y8f1(k);
end
fft8f1 = abs(fft(p8f1))/N;
fft8f1 = fftshift(fft8f1);
for k = 1:length(fft8f1)/2
    fft8f1(k) = conj(fft8f1(k));  
end

figure
plot(fshift, fft8f1);
title('Sinal 8 - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 10:
x10f1 = x10f1- mean(x10f1);
y10f1 = y10f1 - mean(y10f1);
for k = 1:length(x10f1)
    p10f1(k) = x10f1(k) + 1j*y10f1(k);
end
fft10f1 = abs(fft(p10f1))/N;
fft10f1 = fftshift(fft10f1);
for k = 1:length(fft10f1)/2
    fft10f1(k) = conj(fft10f1(k));  
end

figure
plot(fshift, fft10f1);
title('Sinal 10 - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

%% Dados Falha 2 

x1f2 = load("Dados Falha 2\x_b1_c.txt");
y1f2 = load("Dados Falha 2\y_b1_c.txt");
x2f2 = load("Dados Falha 2\x_b2_c.txt");
y2f2 = load("Dados Falha 2\y_b2_c.txt");
x4f2 = load("Dados Falha 2\x_b4_c.txt");
y4f2 = load("Dados Falha 2\y_b4_c.txt");
x6f2 = load("Dados Falha 2\x_b6_c.txt");
y6f2 = load("Dados Falha 2\y_b6_c.txt");
x8f2 = load("Dados Falha 2\x_b8_c.txt");
y8f2 = load("Dados Falha 2\y_b8_c.txt");
x10f2 = load("Dados Falha 2\x_b10_c.txt");
y10f2 = load("Dados Falha 2\y_b10_c.txt");

% calcula media e subtrai dos sinais a media
mediax1f2 = x1f2- mean(x1f2);
mediay1f2 = y1f2 - mean(y1f2);

% transforma em complexo (x real e y im)
for k = 1:length(mediax1f2)
    p1f2(k) = mediax1f2(k) + 1j*mediay1f2(k);
end

%faz fft do sinal p1
fft1f2 = abs(fft(p1f2))/N;

%corrigindo o espectro
fft1f2 = fftshift(fft1f2);

%corrige a fase do sinal  
for k = 1:length(fft1f2)/2
    fft1f2(k) = conj(fft1f2(k));  
end

figure
plot(fshift, fft1f2);
title('Sinal 1 - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 2:
x2f2 = x2f2- mean(x2f2);
y2f2 = y2f2 - mean(y2f2);

for k = 1:length(x2f2)
    p2f2(k) = x2f2(k) + 1j*y2f2(k);
end

fft2f2 = abs(fft(p2f2))/N;
fft2f2 = fftshift(fft2f2);

for k = 1:length(fft2f2)/2
    fft2f2(k) = conj(fft2f2(k));  
end
figure
plot(fshift, fft2f2);
title('Sinal 2 - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 4:
x4f2 = x4f2- mean(x4f2);
y4f2 = y4f2 - mean(y4f2);

for k = 1:length(x4f2)
    p4f2(k) = x4f2(k) + 1j*y4f2(k);
end

fft4f2 = abs(fft(p4f2))/N;
fft4f2 = fftshift(fft4f2);

for k = 1:length(fft4f2)/2
    fft4f2(k) = conj(fft4f2(k));  
end

figure
plot(fshift, fft4f2);
title('Sinal 4 - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 6:
x6f2 = x6f2- mean(x6f2);
y6f2 = y6f2 - mean(y6f2);

for k = 1:length(x6f2)
    p6f2(k) = x6f2(k) + 1j*y6f2(k);
end

fft6f2 = abs(fft(p6f2))/N;
fft6f2 = fftshift(fft6f2);

for k = 1:length(fft6f2)/2
    fft6f2(k) = conj(fft6f2(k));  
end
figure
plot(fshift, fft6f2);
title('Sinal 6 - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 8:
x8f2 = x8f2- mean(x8f2);
y8f2 = y8f2 - mean(y8f2);

for k = 1:length(x8f2)
    p8f2(k) = x8f2(k) + 1j*y8f2(k);
end

fft8f2 = abs(fft(p8f2))/N;
fft8f2 = fftshift(fft8f2);

for k = 1:length(fft8f2)/2
    fft8f2(k) = conj(fft8f2(k));  
end
figure
plot(fshift, fft8f2);
title('Sinal 8 - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% Repetindo os cálculos para o ponto 10:
x10f2 = x10f2- mean(x10f2);
y10f2 = y10f2 - mean(y10f2);

for k = 1:length(x10f2)
    p10f2(k) = x10f2(k) + 1j*y10f2(k);
end

fft10f2 = abs(fft(p10f2))/N;
fft10f2 = fftshift(fft10f2);

for k = 1:length(fft10f2)/2
    fft10f2(k) = conj(fft10f2(k));  
end

figure
plot(fshift, fft10f2);
title('Sinal 10 - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

%% CORRECAO SINAIS FALHA 1 

% SINAL 1 Corrigido - Filtro FIR Passa-Baixa
Fc = 280; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 400; %ordem

h = fir1(ordem+1, freqNormalizada);
x1f1_fir = filter(h,1,x1f1);
y1f1_fir = filter(h,1,y1f1);

for k = 1:length(x1f1_fir)
    p1f1_fir(k) = x1f1_fir(k) + 1j*y1f1_fir(k);
end
fft1f1_fir = abs(fft(p1f1_fir))/N;
fft1f1_fir = fftshift(fft1f1_fir);
for k = 1:length(fft1f1_fir)/2
    fft1f1_fir(k) = conj(fft1f1_fir(k));  
end

figure
plot(fshift, fft1f1_fir)
title('Sinal 1 Corrigido - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 2 Corrigido - Frequências negativas
for k = 1:length(fft2f1)/2
    fft2f1(k) = 0;  
end
fft2f1_inversa = ifft(fft2f1);
fft2f1 = fft(fft2f1_inversa);

figure
plot(fshift, fft2f1)
title('Sinal 2 Corrigido - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 4 Corrigido - Filtro FIR Passa-Baixa e Frequências negativas
Fc = 280; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 400; %ordem

h = fir1(ordem+1, freqNormalizada);
x4f1_fir = filter(h,1,x4f1);
y4f1_fir = filter(h,1,y4f1);

for k = 1:length(x4f1_fir)
    p4f1_fir(k) = x4f1_fir(k) + 1j*y4f1_fir(k);
end
fft4f1_fir = abs(fft(p4f1_fir))/N;
fft4f1_fir = fftshift(fft4f1_fir);
for k = 1:length(fft4f1_fir)/2
    fft4f1_fir(k) = conj(fft4f1_fir(k));
end
for k = 1:length(fft4f1_fir)/2
    fft4f1_fir(k) = 0;  
end
fft4f1_inversa = ifft(fft4f1);
fft4f1 = fft(fft4f1_inversa);

figure
plot(fshift, fft4f1_fir)
title('Filtro Sinal 4 Corrigido - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 6 Corrigido - Frequências negativas
for k = 1:length(fft6f1)/2
    fft6f1(k) = 0;
end
fft6f1_inversa = ifft(fft6f1);
fft6f1 = fft(fft6f1_inversa);

figure
plot(fshift, fft6f1)
title('Sinal 6 Corrigido - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 8 Corrigido - Filtro FIR Passa-Baixa e Frequências negativas
Fc = 280; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 350; %ordem

h = fir1(ordem+1, freqNormalizada);
x8f1_fir = filter(h,1,x8f1);
y8f1_fir = filter(h,1,y8f1);

for k = 1:length(x8f1_fir)
    p8f1_fir(k) = x8f1_fir(k) + 1j*y8f1_fir(k);
end
fft8f1_fir = abs(fft(p8f1_fir))/N;
fft8f1_fir = fftshift(fft8f1_fir);
for k = 1:length(fft8f1_fir)/2
    fft8f1_fir(k) = conj(fft8f1_fir(k));  
end
for k = 1:length(fft8f1_fir)/2
    fft8f1_fir(k) = 0;
end
fft8f1_inversa = ifft(fft8f1);
fft8f1 = fft(fft8f1_inversa);

figure
plot(fshift, fft8f1_fir)
title('Sinal 8 Corrigido - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 10 Corrigido - Filtro FIR Passa-Baixa, Filtro FIR Passa-Alta e Frequências negativas

%Filtro FIR Passa-Baixa
Fc = 281; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 370; %ordem

h = fir1(ordem+1, freqNormalizada);
x10f1_fir = filter(h,1,x10f1);
y10f1_fir = filter(h,1,y10f1);

%Filtro FIR Passa-Alta
Fc = 45; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 500; %ordem

h = fir1(ordem+1, freqNormalizada, "high");
x10f1_fir = filter(h,1,x10f1_fir);
y10f1_fir = filter(h,1,y10f1_fir);

for k = 1:length(x10f1_fir)
    p10f1_fir(k) = x10f1_fir(k) + 1j*y10f1_fir(k);
end
fft10f1_fir = abs(fft(p10f1_fir))/N;
fft10f1_fir = fftshift(fft10f1_fir);
for k = 1:length(fft10f1_fir)/2
    fft10f1_fir(k) = conj(fft10f1_fir(k));  
end
for k = 1:length(fft10f1_fir)/2
    fft10f1_fir(k) = 0;
end
fft10f1_inversa = ifft(fft10f1);
fft10f1 = fft(fft10f1_inversa);

figure
plot(fshift, fft10f1_fir)
title('Sinal 10 Corrigido - Falha 1')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

%% CORRECAO SINAIS FALHA 2

% SINAL 1 Corrigido - Filtro FIR Passa-Alta
Fc = 40; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 450; %ordem

h = fir1(ordem+1, freqNormalizada, "high");
x1f2_fir = filter(h,1,x1f2);
y1f2_fir = filter(h,1,y1f2);

for k = 1:length(x1f2_fir)
    p1f2_fir(k) = x1f2_fir(k) + 1j*y1f2_fir(k);
end
fft1f2_fir = abs(fft(p1f2_fir))/N;
fft1f2_fir = fftshift(fft1f2_fir);
for k = 1:length(fft1f2_fir)/2
    fft1f2_fir(k) = conj(fft1f2_fir(k));  
end

figure
plot(fshift, fft1f2_fir)
title('Sinal 1 Corrigido - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 2 Corrigido - Filtro FIR Passa-Baixa
Fc = 250; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 200; %ordem

h = fir1(ordem+1, freqNormalizada);
x2f2_fir = filter(h,1,x2f2);
y2f2_fir = filter(h,1,y2f2);

for k = 1:length(x2f2_fir)
    p2f2_fir(k) = x2f2_fir(k) + 1j*y2f2_fir(k);
end
fft2f2_fir = abs(fft(p2f2_fir))/N;
fft2f2_fir = fftshift(fft2f2_fir);
for k = 1:length(fft2f2_fir)/2
    fft2f2_fir(k) = conj(fft2f2_fir(k));  
end

figure
plot(fshift, fft2f2_fir)
title('Sinal 2 Corrigido - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 4 Corrigido - Filtro FIR Passa-Baixa e Filtro FIR Passa-Alta

%Filtro FIR Passa-Baixa
Fc = 200; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 350; %ordem

h = fir1(ordem+1, freqNormalizada);
x4f2_fir = filter(h,1,x4f2);
y4f2_fir = filter(h,1,y4f2);

for k = 1:length(x4f2_fir)
    p4f2_fir(k) = x4f2_fir(k) + 1j*y4f2_fir(k);
end
fft4f2_fir = abs(fft(p4f2_fir))/N;
fft4f2_fir = fftshift(fft4f2_fir);
for k = 1:length(fft4f2_fir)/2
    fft4f2_fir(k) = conj(fft4f2_fir(k));  
end

%Filtro FIR Passa-Alta
Fc = 50; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 550; %ordem

h = fir1(ordem+1, freqNormalizada, "high");
x4f2_fir = filter(h,1,x4f2_fir);
y4f2_fir = filter(h,1,y4f2_fir);

for k = 1:length(x4f2_fir)
    p4f2_fir(k) = x4f2_fir(k) + 1j*y4f2_fir(k);
end
fft4f2_fir = abs(fft(p4f2_fir))/N;
fft4f2_fir = fftshift(fft4f2_fir);
for k = 1:length(fft4f2_fir)/2
    fft4f2_fir(k) = conj(fft4f2_fir(k));  
end

figure
plot(fshift, fft4f2_fir)
title('Sinal 4 Corrigido - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 6 Corrigido - Filtro FIR Passa-Alta
Fc = 45; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 400; %ordem

h = fir1(ordem+1, freqNormalizada, "high");
x6f2_fir = filter(h,1,x6f2);
y6f2_fir = filter(h,1,y6f2);

for k = 1:length(x6f2_fir)
    p6f2_fir(k) = x6f2_fir(k) + 1j*y6f2_fir(k);
end
fft6f2_fir = abs(fft(p6f2_fir))/N;
fft6f2_fir = fftshift(fft6f2_fir);
for k = 1:length(fft6f2_fir)/2
    fft6f2_fir(k) = conj(fft6f2_fir(k));  
end

figure
plot(fshift, fft6f2_fir)
title('Sinal 6 Corrigido - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 8 Corrigido - Filtro FIR Passa-Baixa e Filtro FIR Passa-Alta

% Filtro FIR Passa-Baixa
Fc = 200; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 300; %ordem

h = fir1(ordem+1, freqNormalizada);
x8f2_fir = filter(h,1,x8f2);
y8f2_fir = filter(h,1,y8f2);

for k = 1:length(x8f2_fir)
    p8f2_fir(k) = x8f2_fir(k) + 1j*y8f2_fir(k);
end
fft8f2_fir = abs(fft(p8f2_fir))/N;
fft8f2_fir = fftshift(fft8f2_fir);
for k = 1:length(fft8f2_fir)/2
    fft8f2_fir(k) = conj(fft8f2_fir(k));  
end

% Filtro FIR Passa-Alta
Fc = 50; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 600; %ordem

h = fir1(ordem+1, freqNormalizada, "high");
x8f2_fir = filter(h,1,x8f2_fir);
y8f2_fir = filter(h,1,y8f2_fir);

for k = 1:length(x8f2_fir)
    p8f2_fir(k) = x8f2_fir(k) + 1j*y8f2_fir(k);
end
fft8f2_fir = abs(fft(p8f2_fir))/N;
fft8f2_fir = fftshift(fft8f2_fir);
for k = 1:length(fft8f2_fir)/2
    fft8f2_fir(k) = conj(fft8f2_fir(k));  
end

figure
plot(fshift, fft8f2_fir)
title('Sinal 8 Corrigido - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')

% SINAL 10 Corrigido - Filtro FIR Passa-Alta
Fc = 55; % frequencia de corte
freqNormalizada = Fc/(frequenciaTotal/2);
ordem = 700; %ordem

h = fir1(ordem+1, freqNormalizada, "high");
x10f2_fir = filter(h,1,x10f2);
y10f2_fir = filter(h,1,y10f2);

for k = 1:length(x10f2_fir)
    p10f2_fir(k) = x10f2_fir(k) + 1j*y10f2_fir(k);
end
fft10f2_fir = abs(fft(p10f2_fir))/N;
fft10f2_fir = fftshift(fft10f2_fir);
for k = 1:length(fft10f2_fir)/2
    fft10f2_fir(k) = conj(fft10f2_fir(k));  
end

figure
plot(fshift, fft10f2_fir)
title('Sinal 10 Corrigido - Falha 2')
xlabel('Frequência [Hz]')
ylabel('Amplitude [m]')
