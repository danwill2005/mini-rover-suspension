% Load the CSV into a table
data = readtable('FEA analysis.xlsx');

% Extract variables
wheel_names = data.WheelConfiguration;
mass = data.Mass_g_;
stress = data.MaxVonMisesStress_Mpa_;
disp = data.MaxDisplacement_mm_;
fos = data.FactorOfSafety;

%stress vs displacement
figure;
scatter(stress, disp, 80, 'filled');
text(stress, disp, wheel_names, 'VerticalAlignment','bottom','HorizontalAlignment','right');
xlabel('Max von Mises Stress (MPa)');
ylabel('Max Displacement (mm)');
title('Stress vs Displacement for Wheel Designs');
grid on;

%FoS bar chart
figure;
bar(categorical(wheel_names), fos);
ylabel('Factor of Safety');
title('Factor of Safety by Wheel Design');
grid on;

%Mass vs FoS
figure;
scatter(mass, fos, 80, 'filled');
text(mass, fos, wheel_names, 'VerticalAlignment','bottom','HorizontalAlignment','right');
xlabel('Mass (g)');
ylabel('Factor of Safety');
title('Weight vs Safety Tradeoff');
grid on;

% Normalize values for spider plot
values = [mass stress disp fos];
values_norm = normalize(values, 'range');  % scale 0–1

