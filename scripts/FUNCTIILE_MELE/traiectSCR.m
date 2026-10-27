function pvc = traiectSCR(q,T,n,flag)


           
           timp=linspace(0,T,n);
           Q=zeros(2,n);
           dQ=zeros(2,n);
           ddQ=zeros(2,n);
           for i=1:2
               a0=q(i,1);
               a1=0;
               a2=3*(q(i,2)-q(i,1))/T^2;
               a3=-2*(q(i,2)-q(i,1))/T^3;               
               Q(i,:)=polyval([a3,a2,a1,a0],timp);
               dQ(i,:)=polyval(polyder([a3,a2,a1,a0]),timp);
               ddQ(i,:)=polyval(polyder(polyder([a3,a2,a1,a0])),timp);
               
           end
           if flag==1
               for i=1:2
                   figure
                   subplot(3,1,1)
                   plot(timp,Q(i,:),'b','linewidth',2)
                  figure
                  subplot(3,1,2)                  
                   plot(timp,dQ(i,:),'b','linewidth',2)
                   figure
                   subplot(3,1,3)                
                   plot(timp,ddQ(i,:),'b','linewidth',2)
                   
                   
               end
           else
           end
           pvc=[Q;dQ;ddQ]
           Qdorit1=[timp;Q(1,:)]'
           save Qdorit1.mat Qdorit1
           dQdorit1=[timp;dQ(1,:)]'
           save dQdorit1.mat dQdorit1
           ddQdorit1=[timp;ddQ(1,:)]'
           save ddQdorit1.mat ddQdorit1

           Qdorit2=[timp;Q(2,:)]'
           save Qdorit2.mat Qdorit2
           dQdorit2=[timp;dQ(2,:)]'
           save dQdorit2.mat dQdorit2
           ddQdorit2=[timp;ddQ(2,:)]'
           save  ddQdorit2.mat  ddQdorit2 