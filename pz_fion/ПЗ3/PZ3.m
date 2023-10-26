Pkt_max = 50; % Вт
Fgr = 3:1:30; % МГц
Ueb_max = 100; % В
Ueb_nas = 0.8; % В
T = 30+273; % К
Ik = 30; % А
beta = 47; % 10 - 60
T1 = -60+273; % К
T2 = 70+273; % К
Eb = 5; % В
k = 1.38*10^(-23); % постоянная (Дж/К)
qe = -1.6*10^(-19); % Кл
qn = 1.3; % Кл

Ue0 = ((k*T)/abs(qe))*log(beta+1) % 0.1012
Ueb = 3;
Ib = Ik*qn;
Rb_zap = (Eb - abs(-Ueb))/Ib % 0.0513
Ib_nas = (Ik*qn)/beta % 0.8298 | (Ep / beta * Rn) *qn при Ik = Ep/Rn
Rb_nas = (Eb - Ueb_nas)/Ib_nas % 5.0615
Rb = min(Rb_nas, Rb_zap) % 0.0513