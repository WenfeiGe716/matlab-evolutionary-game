%% matlab三方演化博弈相位图
%参考资料：
%https://www.ilovematlab.cn/thread-563519-1-1.html；
%https://gitee.com/TW18270242070/matlab-evolutionary-game/blob/master/%E6%94%BF%E5%BA%9C%E5%A5%96%E6%83%A9%E6%9C%BA%E5%88%B6%E4%B8%8B%E8%8D%AF%E5%93%81%E5%AE%89%E5%85%A8%E8%B4%A8%E9%87%8F%E7%9B%91%E7%AE%A1%E4%B8%89%E6%96%B9%E6%BC%94%E5%8C%96%E5%8D%9A%E5%BC%88%E5%8F%8A%E4%BB%BF%E7%9C%9F%E5%88%86%E6%9E%90.7z
%声明：
%代码经本人运行是可以的，如果您复制粘贴发现无法运行，那么大概率是MATLAB版本不一样，可以自行百度查看解决办法，本人是2016b版本。
%画完之后，点击弹出的图象窗口的箭头“编辑图像”，拖动这些文本、箭头、标注等。再点击“编辑”>“复制图形”。
%代码打开如有乱码，可以先用电脑自带的TXT文本文件打开，再复制粘贴进MATLAB即可。
%% 第一幅相位图
clc,clear;
figure(1)
[x,y]=meshgrid(0:0.01:1,0:0.01:1);%生成绘制3D图形所需的网格数据，中间的0.01越小则格子越小
Rp=150,Cph=85,Cpl=0,Cp=10,Bt=40,Fp=40,Mp=20,Ct=10,Ft=20,Mt=15,Cg=15,Tg=40; 
z=((Cph-Cpl-Cp-Bt)-y*(Rp-Bt))/(Fp+Mp);
mesh(x,y,z)%绘制三维曲面的函数
colormap(cool) %选择颜色，blog.csdn.net/weixin_29234423/article/details/115835463
alpha(0.0001) %截面透明度
%surf(x,y,z) %三维曲面图
view([100 20]); %调整视角
set(gca,'XTick',[0:0.5:1],'YTick',[0:0.2:1],'ZTick',[0:0.1:1])
axis([0 1 0 1 0 1])
xlabel('$x$','interpreter','latex');
ylabel('$y$','interpreter','latex');
zlabel('$z$','interpreter','latex','Rotation',360);
grid on
hold on
set(0,'defaultfigurecolor','w')
text(0.5 ,0.2 ,0.3,'$(a)y=y^{*}$','interpreter','latex');
text(0.4 ,0.2 ,0.3,'$(b)y<y^{*},x\rightarrow0$','interpreter','latex');%箭头，https://www.cnblogs.com/hello-Huashan/p/5125578.html
text(0.3 ,0.2 ,0.3,'$(c)y>y^{*},x\rightarrow1$','interpreter','latex');
annotation('arrow',[0.55 0.35],[0.35 0.32]);
annotation('arrow',[0.58 0.58],[0.38 0.45]);
title('图1 相位图');
%% 第二幅相位图
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
title('图2 相位图');
%% 第三幅相位图（和原文不一致，应该是参数设置不当的问题）
clc,clear;
figure(3)
[x,z]=meshgrid(0:0.01:1,0:0.01:1);
Rp=150,Cph=105,Cpl=0,Cp=10,Bt=50,Fp=25,Mp=15,Ct=10,Ft=18,Mt=12,Cg=15,Tg=40;
y=-((Cg-Fp-Ft-Tg)+x*(Mp+Fp+Tg))./((Mt+Ft+Tg)-x*Tg); %一定要注意这里分子后面有个点号，点运算是对相同维数的矩阵的对应元素进行相应的运算
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
title('图3 相位图');
