function []= v3 (data)
[d1,d2,d3] = size(data);
x = floor(d1/3);
y = floor(d2/3);
z = floor(d3/3);
figure('Name','dimension 1 span');
imagesc(squeeze(data(x,:,:)));
figure('Name','dimension 3 span');
imagesc(squeeze(data(:,y,:)));
figure('Name','dimension 2 span');
imagesc(squeeze(data(:,:,z)));
end