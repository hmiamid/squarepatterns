clear,clc
m=10;
for b=1:m^2
    r(1)=b;
    for n=2:200
        r(n)=mod(r(n-1)*b,m^2+1);
    end
    x=mod(r-1,m)+1;
    y=floor((r-1)/m)+1;
    dx=mod(b-1,m)+1;
    dy=floor((b-1)/m)+1;
    quiver(x(1:end-1)+dx*(m+1),y(1:end-1)+dy*(m+1),diff(x),diff(y),'AutoScale','off')
    hold on
    axis equal
    text(dx*(m+1)+1,(1+dy)*(m+1),num2str(b),'FontSize',14)
%      for i=1:m^2
%          text(mod(i-1,m)+1+dx*(m+1),floor((i-1)/m)+1+dy*(m+1),num2str(i))
%      end
    
    drawnow
end

axis([dx+1 (dx+1)^2 dx+1 (dx+1)^2+1])
hold off

set(gca,'YTick',[])
set(gca,'XTick',[])
