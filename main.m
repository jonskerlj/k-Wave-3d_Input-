clear all;
clc;

filename='Lens.stl';
[p,t,tnorm]=STL_Import(filename);
 
trisurf(t,p(:,1),p(:,2),p(:,3),'FaceColor',[0.5 0.5 0.5],'EdgeAlpha',0)
axis image
camlight

figure (2)
patch(p(:,1),p(:,2),p(:,3))
% 
% [v, tnorm] = STL_Import(filename, 2);
% 
% 
% FV = struct('vertices', v, 'faces', tnorm);
% % 
% Volume = polygon2voxel(FV, [100 100 100])






A = [0 0 0 ; 0 1 0; 1 1 1];
A(:,:,2) = [0 0 0 ; 0 1 0; 1 1 1];
 
[x,y,z] = ndgrid(1:size(A, 1), 1:size(A, 2), 1:size(A, 3)); %get coordinates of all points
xx = x(A == 1); %keep only coordinates for A == 1 
yy = y(A == 1); %these 3 lines also reshape the 3d array
zz = z(A == 1); %into column vectors
plot3(xx, yy, zz, '*'); %or whatever marker you want
