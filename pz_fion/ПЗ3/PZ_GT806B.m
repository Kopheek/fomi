Pkt_max = 30; % Вт
Fgr = 10; % МГц
Ueb_max = 100; % В
Ueb_nas = 0.6; % В при Ik = 5; Ib = 2
Ik = 15; % А
beta = 50; % 10 - 100 при Ik = 10 А
T1 = -50+273; % К
T2 = 55+273; % К
Eb = 5; % В
k = 1.38*10^(-23); % постоянная (Дж/К)
qe = -1.6*10^(-19); % Кл
qn = 1.3; % Кл

T = 30 + 273; % K
Ue0 = ((k*T)/abs(qe))*log(beta+1) % 
Ueb = 3;
Ib = Ik*qn;
Rb_zap = (Eb - abs(-Ueb))/Ib % 
Ib_nas = (Ik*qn)/beta %  | (Ep / beta * Rn) *qn при Ik = Ep/Rn
Rb_nas = (Eb - Ueb_nas)/Ib_nas % 
Rb = min(Rb_nas, Rb_zap) % 