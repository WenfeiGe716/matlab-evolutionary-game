%% matlab�����ݻ�������λͼ
%�ο����ϣ�
%https://www.ilovematlab.cn/thread-563519-1-1.html��
%https://gitee.com/TW18270242070/matlab-evolutionary-game/blob/master/%E6%94%BF%E5%BA%9C%E5%A5%96%E6%83%A9%E6%9C%BA%E5%88%B6%E4%B8%8B%E8%8D%AF%E5%93%81%E5%AE%89%E5%85%A8%E8%B4%A8%E9%87%8F%E7%9B%91%E7%AE%A1%E4%B8%89%E6%96%B9%E6%BC%94%E5%8C%96%E5%8D%9A%E5%BC%88%E5%8F%8A%E4%BB%BF%E7%9C%9F%E5%88%86%E6%9E%90.7z
%������
%���뾭���������ǿ��Եģ����������ճ�������޷����У���ô�������MATLAB�汾��һ�����������аٶȲ鿴����취��������2016b�汾��
%����֮�󣬵��������ͼ�󴰿ڵļ�ͷ���༭ͼ�񡱣��϶���Щ�ı�����ͷ����ע�ȡ��ٵ�����༭��>������ͼ�Ρ���
%������������룬�������õ����Դ���TXT�ı��ļ��򿪣��ٸ���ճ����MATLAB���ɡ�
%% ��һ����λͼ
clc,clear;
figure(1)
[x,y]=meshgrid(0:0.01:1,0:0.01:1);%���ɻ���3Dͼ��������������ݣ��м��0.01ԽС�����ԽС
Rp=150,Cph=85,Cpl=0,Cp=10,Bt=40,Fp=40,Mp=20,Ct=10,Ft=20,Mt=15,Cg=15,Tg=40; 
z=((Cph-Cpl-Cp-Bt)-y*(Rp-Bt))/(Fp+Mp);
mesh(x,y,z)%������ά����ĺ���
colormap(cool) %ѡ����ɫ��blog.csdn.net/weixin_29234423/article/details/115835463
alpha(0.0001) %����͸����
%surf(x,y,z) %��ά����ͼ
view([100 20]); %�����ӽ�
set(gca,'XTick',[0:0.5:1],'YTick',[0:0.2:1],'ZTick',[0:0.1:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');
ylabel('$y$','interpreter','latex');
zlabel('$z$','interpreter','latex','Rotation',360);
grid on
hold on
set(0,'defaultfigurecolor','w')
text(0.5 ,0.2 ,0.3,'$(a)y=y^{*}$','interpreter','latex');
text(0.4 ,0.2 ,0.3,'$(b)y<y^{*},x\rightarrow0$','interpreter','latex');%��ͷ��https://www.cnblogs.com/hello-Huashan/p/5125578.html
text(0.3 ,0.2 ,0.3,'$(c)y>y^{*},x\rightarrow1$','interpreter','latex');
annotation('arrow',[0.55 0.35],[0.35 0.32]);
annotation('arrow',[0.58 0.58],[0.38 0.45]);
title('ͼ1 ��λͼ');
%% �ڶ�����λͼ
clc,clear;
figure(2)
[x,y]=meshgrid(0:0.01:1,0:0.01:1);
Rp=150,Cph=105,Cpl=0,Cp=10,Bt=50,Fp=25,Mp=15,Ct=10,Ft=18,Mt=12,Cg=15,Tg=40;
z=((1-x)*Bt-Ct)/(Ft+Mt);
mesh(x,y,z)
colormap(pink) 
alpha(0.0001)
%surf(x,y,z)
view([135 25]);
set(gca,'XTick',[0:0.5:1],'YTick',[0:0.2:1],'ZTick',[0:0.1:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');
ylabel('$y$','interpreter','latex');
zlabel('$z$','interpreter','latex','Rotation',360);
grid on
hold on
set(0,'defaultfigurecolor','w')
text(0.5 ,0 ,0.8,'$(a)y=y^{*}$','interpreter','latex');
text(0.4 ,0 ,0.8,'$(b)y<y^{*},x\rightarrow0$','interpreter','latex');
text(0.8 ,0, 0.8,'$(c)y>y^{*},x\rightarrow1$','interpreter','latex');
annotation('arrow',[0.55 0.35],[0.35 0.32]);
annotation('arrow',[0.58 0.58],[0.38 0.45]);
title('ͼ2 ��λͼ');
%% ��������λͼ����ԭ�Ĳ�һ�£�Ӧ���ǲ������ò��������⣩
clc,clear;
figure(3)
[x,z]=meshgrid(0:0.01:1,0:0.01:1);
Rp=150,Cph=105,Cpl=0,Cp=10,Bt=50,Fp=25,Mp=15,Ct=10,Ft=18,Mt=12,Cg=15,Tg=40;
y=-((Cg-Fp-Ft-Tg)+x*(Mp+Fp+Tg))./((Mt+Ft+Tg)-x*Tg); %һ��Ҫע��������Ӻ����и���ţ��������Ƕ���ͬά���ľ���Ķ�ӦԪ�ؽ�����Ӧ������
mesh(x,y,z)
colormap(winter) 
alpha(0.0001)
%surf(x,y,z)
%view([0 90]);
set(gca,'XTick',[0:0.5:1],'YTick',[0:0.2:1],'ZTick',[0:0.1:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');
ylabel('$y$','interpreter','latex');
zlabel('$z$','interpreter','latex','Rotation',360);
grid on
hold on
set(0,'defaultfigurecolor','w')
text(0 ,0.1 ,0.3,'$(a)y=y^{*}$','interpreter','latex');
text(0 ,0.2 ,0.3,'$(b)y<y^{*},x\rightarrow0$','interpreter','latex');
text(0 ,0.3 ,0.3,'$(c)y>y^{*},x\rightarrow1$','interpreter','latex');
annotation('arrow',[0.55 0.35],[0.35 0.32]);
annotation('arrow',[0.58 0.58],[0.38 0.45]);
title('ͼ3 ��λͼ');
