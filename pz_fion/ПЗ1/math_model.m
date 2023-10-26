I01 = 200*10^(-6); % А
T1 = 20+273; % К
I02 = 500*10^(-6); % А
T2 = 85+273; % К
Ipred = 400*10^(-3); % А

% ---

m15 = 1.5;
m1 = 1;
k = 1.36*10^(-23);
q = -1.602*10^(-19);

% ---

% ---
Uvn_15 = 0:0.001:0.126;
I1_15 = I01*((  exp(m15*Uvn_15*abs(q)/(k*T1) ) - 1 ));
I2_15 = I02*((  exp(m15*Uvn_15*abs(q)/(k*T2) ) - 1 ));
Uvn_15a = -0.126:0.001:0;
I1_15a = I01*((  exp(m15*Uvn_15a*abs(q)/(k*T1) ) - 1 ));
I2_15a = I02*((  exp(m15*Uvn_15a*abs(q)/(k*T2) ) - 1 ));
% ---
Uvn_1 = 0:0.001:0.126;
I1_1 = I01*((  exp(m1*Uvn_1*abs(q)/(k*T1) ) - 1 ));
I2_1 = I02*((  exp(m1*Uvn_1*abs(q)/(k*T2) ) - 1 ));
Uvn_1a = -0.126:0.001:0;
I1_1a = I01*((  exp(m1*Uvn_1a*abs(q)/(k*T1) ) - 1 ));
I2_1a = I02*((  exp(m1*Uvn_1a*abs(q)/(k*T2) ) - 1 ));

figure
plot(Uvn_15, I1_15, 'r--'), grid 
hold on
plot(Uvn_15, I2_15, 'g.'), grid
hold on
plot(Uvn_15a, I1_15a, 'b'), grid
hold on
plot(Uvn_15a, I2_15a, 'k--'), grid
xlabel('U')
ylabel('I')
title('Когда m = 1.5')

figure
plot(Uvn_1, I1_1, 'r--'), grid 
hold on
plot(Uvn_1, I2_1, 'g.'), grid
hold on
plot(Uvn_1a, I1_1a, 'b'), grid
hold on
plot(Uvn_1a, I2_1a, 'k--'), grid
xlabel('U')
ylabel('I')
title('Когда m = 1')