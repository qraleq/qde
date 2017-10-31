close all
% clearvars
clc

% load data from IntroToCompressiveSensing

width = 8.6;
height = width/1.618;

figure('Units', 'centimeters', 'Position', [5 5 width height]);
hold on;

signal = real(x);
spikes = signal([10, 38]);

hGraph = stem(signal);
hGraph1 = stem([10, 38], spikes);


set(hGraph, 'Marker', 'o', 'MarkerSize', 5)
set(hGraph1, 'Marker', 'o', 'MarkerSize', 5, 'MarkerFaceColor', 'auto')


set(gca, 'FontSize', 8)

% axis auto

xlim([0 64])
ylim([-0.8 1.9])
box on
set(gcf, 'PaperPositionMode', 'auto');

print -depsc2 example_signal.eps

%%

figure('Units', 'centimeters', 'Position', [5 5 width height]);
hold on;

hGraph1 = stem(real(s))

% hGraph0 = stem(spectrum)
% hGraph1 = stem([1:64], spectrum([1:64]))

% set(hGraph1, 'Marker', 'o', 'MarkerSize', 5, 'Color', 'r', 'MarkerFace', 'r')


%minimum energy decomposition
s1 = psi'*x;
hGraph2 = stem(real(s1));

set(hGraph2, 'Marker', 'x', 'MarkerSize', 5)
set(hGraph1, 'Marker', 'o', 'MarkerSize', 5, 'MarkerFaceColor', 'auto')

set(gca, 'FontSize', 8)

% axis auto





% figure


% title('Minimum energy decomposition - l_2 norm')

xlim([0 128])
ylim([-0.8 3])
box on
% set(gcf, 'PaperPositionMode', 'auto');
lgd = legend('Orig. = l_1 Rec.', 'l_2 Rec.', 'Location', 'NorthWest')
lgd.FontSize = 6;

hLine = plot([64 64], [-5 5])

set(hLine, 'LineStyle', ':', 'Color', [0 0 0])

print -depsc2 example_spectrum_orig.eps
