function plot_Confounding(confounding_result)

figure('Units','inches','Position',[2 1 8 6]);
subplot(2,2,1);
X = confounding_result.xmesh;
Y = confounding_result.ymesh;
Z = confounding_result.zmesh;
[x,y,z] = supplementary_function.createPatch3D(X,Y,Z);
lims = [min(X(:)), max(X(:)); min(Y(:)), max(Y(:)); min(Z(:)) max(Z(:))];
patch(x,y,z,10*z,'FaceAlpha',0.4,'FaceColor','interp','EdgeColor','interp');
view(3)
box off
grid on
cl = colorbar;
cl.Ticks = [-0.6 -0.4 -0.2 0];
cl.TickLabels = [-0.06 -0.04 -0.02 0];
cl.Units = 'normalized';
cl.Position = [0.4505 0.6024 0.0195 0.3750];
text(0.8309,-0.0405,'\itk','FontSize',15,'Units','normalized');
text(0.013,0.0132,'{\itc}_0','FontSize',15,'Units','normalized');
text(-0.2286,0.6,'{\itc}_1','FontSize',15,'Units','normalized');
set(gca,'LineWidth',1.5,'FontSize',12,'XLim',lims(1,:),'YLim',lims(2,:),...
   'ZLim',lims(3,:),'XTick',[0.2,0.25,0.3],'YTick',[0.02 0.03],'ZTick',[-0.06 -0.04 -0.02 0],...
   'Position',[0.09,0.55,0.35,0.42],'View',[-29.3294,23.343466]);
% k vs c0
subplot(2,2,2);
X = confounding_result.xdata;
Y = confounding_result.yVSx;
[x,y] = supplementary_function.createPatch2D(X,Y);
patch(x,y,zeros(size(y)),'FaceAlpha',1,'FaceColor','r','EdgeColor','red');
box on
text(0.4863,-0.1415,'\itk','FontSize',15,'Units','normalized');
text(-0.1199,0.4814,'{\itc}_0','FontSize',15,'Units','normalized');
set(gca,'LineWidth',1.5,'FontSize',12,'XLim',lims(1,:),'YLim',lims(2,:),...
   'XTick',[0.2,0.25,0.3],'YTick',[0.02 0.03],'Position',[0.58,0.57,0.38,0.41]);
% k vs c1
subplot(2,2,3);
X = confounding_result.xdata;
Y = confounding_result.zVSx;
[x,y] = supplementary_function.createPatch2D(X,Y);
patch(x,y,zeros(size(y)),'FaceAlpha',1,'FaceColor','r','EdgeColor','red');
box on
text(0.4863,-0.1415,'\itk','FontSize',15,'Units','normalized');
text(-0.1747,0.5322,'{\itc}_1','FontSize',15,'Units','normalized');
set(gca,'LineWidth',1.5,'FontSize',12,'XLim',lims(1,:),'YLim',lims(3,:),...
   'XTick',[0.2,0.25,0.3],'YTick',[-0.06 -0.04 -0.02 0],'Position',[0.1,0.08,0.38,0.41]);
% c0 vs c1
subplot(2,2,4);
X = confounding_result.ydata;
Y = confounding_result.zVSy;
[x,y] = supplementary_function.createPatch2D(X,Y);
patch(x,y,zeros(size(y)),'FaceAlpha',1,'FaceColor','r','EdgeColor','red');
box on
text(0.4863,-0.1203,'{\itc}_0','FontSize',15,'Units','normalized');
text(-0.1747,0.5322,'{\itc}_1','FontSize',15,'Units','normalized');
set(gca,'LineWidth',1.5,'FontSize',12,'XLim',lims(2,:),'YLim',lims(3,:),...
   'XTick',[0.02 0.03],'YTick',[-0.06 -0.04 -0.02 0],'Position',[0.58,0.08,0.38,0.41]);