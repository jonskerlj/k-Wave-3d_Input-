% Example,
clear all
% Load a triangulated mesh of a sphere
sphere; 

% Show the mesh
figure, patch(FV,'FaceColor',[1 0 0]); axis square;

% Convert the mesh to a voxelvolume
Volume=polygon2voxel(FV,[50 50 50],'auto');

% Show x,y,z slices
figure,
subplot(1,3,1), imshow(squeeze(Volume(25,:,:)));
subplot(1,3,2), imshow(squeeze(Volume(:,25,:)));
subplot(1,3,3), imshow(squeeze(Volume(:,:,25)));

%  Show iso surface of result
figure, patch(isosurface(Volume,0.1), 'Facecolor', [1 0 0]);
