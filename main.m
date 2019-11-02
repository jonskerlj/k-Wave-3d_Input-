clear all;
clc;

filename='fragment2_8.stl';
[p,t,tnorm]=STL_Import(filename);
 
trisurf(t,p(:,1),p(:,2),p(:,3),'FaceColor',[0.5 0.5 0.5],'EdgeAlpha',0)
axis image
camlight