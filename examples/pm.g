M:=[[1,2,4],[1,3,6],[1,4,6],[2,3,5],[2,4,5],[3,5,6],[4,5,7],[4,6,9],[4,7,9],[5,6,8],[5,7,8],[6,8,9]];
G:=Group((1,2));
Isotropy:=rec(1:=G,2:=G,3:=G,7:=G,8:=G,9:=G);
mult:=[];

ot:=OrbifoldTriangulation(M,Isotropy,mult);
ss:=SimplicialSet(ot,5);

#5 works, [0],[0],[2,2],[2,2]