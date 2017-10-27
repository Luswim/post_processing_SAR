clear all
clc
close all
Efromall % read E fields from all .mat data
ch = 16; % total channel numbers
% average for Ex, Ey and Ez components of E1, E2, ... , E16
mesh_size = 27; % in mm, remeshed based on original 1 mm mesh
Property.Density_downsampled = downsp(Property.Density, mesh_size);

Ch1.Ex_downsampled = downsp(Ch1.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch1 \n');
Ch1.Ex10g = average_10g_mesh(Ch1.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch1.Ey_downsampled = downsp(Ch1.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch1 \n');
Ch1.Ey10g = average_10g_mesh(Ch1.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch1.Ez_downsampled = downsp(Ch1.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch1 \n');
Ch1.Ez10g = average_10g_mesh(Ch1.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch2.Ex_downsampled = downsp(Ch2.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch2 \n');
Ch2.Ex10g = average_10g_mesh(Ch2.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch2.Ey_downsampled = downsp(Ch2.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch2 \n');
Ch2.Ey10g = average_10g_mesh(Ch2.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch2.Ez_downsampled = downsp(Ch2.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch2 \n');
Ch2.Ez10g = average_10g_mesh(Ch2.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);


Ch3.Ex_downsampled = downsp(Ch3.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch3 \n');
Ch3.Ex10g = average_10g_mesh(Ch3.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch3.Ey_downsampled = downsp(Ch3.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch3 \n');
Ch3.Ey10g = average_10g_mesh(Ch3.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch3.Ez_downsampled = downsp(Ch3.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch3 \n');
Ch3.Ez10g = average_10g_mesh(Ch3.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch4.Ex_downsampled = downsp(Ch4.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch4 \n');
Ch4.Ex10g = average_10g_mesh(Ch4.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch4.Ey_downsampled = downsp(Ch4.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch4 \n');
Ch4.Ey10g = average_10g_mesh(Ch4.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch4.Ez_downsampled = downsp(Ch4.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch4 \n');
Ch4.Ez10g = average_10g_mesh(Ch4.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch5.Ex_downsampled = downsp(Ch5.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch5 \n');
Ch5.Ex10g = average_10g_mesh(Ch5.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch5.Ey_downsampled = downsp(Ch5.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch5 \n');
Ch5.Ey10g = average_10g_mesh(Ch5.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch5.Ez_downsampled = downsp(Ch5.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch5 \n');
Ch5.Ez10g = average_10g_mesh(Ch5.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch6.Ex_downsampled = downsp(Ch6.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch6 \n');
Ch6.Ex10g = average_10g_mesh(Ch6.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch6.Ey_downsampled = downsp(Ch6.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch6 \n');
Ch6.Ey10g = average_10g_mesh(Ch6.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch6.Ez_downsampled = downsp(Ch6.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch6 \n');
Ch6.Ez10g = average_10g_mesh(Ch6.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);


Ch7.Ex_downsampled = downsp(Ch7.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch7 \n');
Ch7.Ex10g = average_10g_mesh(Ch7.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch7.Ey_downsampled = downsp(Ch7.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch7 \n');
Ch7.Ey10g = average_10g_mesh(Ch7.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch7.Ez_downsampled = downsp(Ch7.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch7 \n');
Ch7.Ez10g = average_10g_mesh(Ch7.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch8.Ex_downsampled = downsp(Ch8.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch8 \n');
Ch8.Ex10g = average_10g_mesh(Ch8.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch8.Ey_downsampled = downsp(Ch8.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch8 \n');
Ch8.Ey10g = average_10g_mesh(Ch8.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch8.Ez_downsampled = downsp(Ch8.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch8 \n');
Ch8.Ez10g = average_10g_mesh(Ch8.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch9.Ex_downsampled = downsp(Ch9.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch9 \n');
Ch9.Ex10g = average_10g_mesh(Ch9.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch9.Ey_downsampled = downsp(Ch9.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch9 \n');
Ch9.Ey10g = average_10g_mesh(Ch9.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch9.Ez_downsampled = downsp(Ch9.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch9 \n');
Ch9.Ez10g = average_10g_mesh(Ch9.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch10.Ex_downsampled = downsp(Ch10.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch10 \n');
Ch10.Ex10g = average_10g_mesh(Ch10.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch10.Ey_downsampled = downsp(Ch10.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch10 \n');
Ch10.Ey10g = average_10g_mesh(Ch10.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch10.Ez_downsampled = downsp(Ch10.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch10 \n');
Ch10.Ez10g = average_10g_mesh(Ch10.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);


Ch11.Ex_downsampled = downsp(Ch11.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch11 \n');
Ch11.Ex10g = average_10g_mesh(Ch11.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch11.Ey_downsampled = downsp(Ch11.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch11 \n');
Ch11.Ey10g = average_10g_mesh(Ch11.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch11.Ez_downsampled = downsp(Ch11.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch11 \n');
Ch11.Ez10g = average_10g_mesh(Ch11.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch12.Ex_downsampled = downsp(Ch12.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch12 \n');
Ch12.Ex10g = average_10g_mesh(Ch12.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch12.Ey_downsampled = downsp(Ch12.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch12 \n');
Ch12.Ey10g = average_10g_mesh(Ch12.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch12.Ez_downsampled = downsp(Ch12.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch12 \n');
Ch12.Ez10g = average_10g_mesh(Ch12.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch13.Ex_downsampled = downsp(Ch13.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch13 \n');
Ch13.Ex10g = average_10g_mesh(Ch13.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch13.Ey_downsampled = downsp(Ch13.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch13 \n');
Ch13.Ey10g = average_10g_mesh(Ch13.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch13.Ez_downsampled = downsp(Ch13.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch13 \n');
Ch13.Ez10g = average_10g_mesh(Ch13.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch14.Ex_downsampled = downsp(Ch14.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch14 \n');
Ch14.Ex10g = average_10g_mesh(Ch14.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch14.Ey_downsampled = downsp(Ch14.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch14 \n');
Ch14.Ey10g = average_10g_mesh(Ch14.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch14.Ez_downsampled = downsp(Ch14.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch14 \n');
Ch14.Ez10g = average_10g_mesh(Ch14.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);


Ch15.Ex_downsampled = downsp(Ch15.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch15 \n');
Ch15.Ex10g = average_10g_mesh(Ch15.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch15.Ey_downsampled = downsp(Ch15.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch15 \n');
Ch15.Ey10g = average_10g_mesh(Ch15.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch15.Ez_downsampled = downsp(Ch15.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch15 \n');
Ch15.Ez10g = average_10g_mesh(Ch15.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);



Ch16.Ex_downsampled = downsp(Ch16.Ex, mesh_size);
 fprintf('Calculating averaged Ex fields of Ch16 \n');
Ch16.Ex10g = average_10g_mesh(Ch16.Ex_downsampled, Property.Density_downsampled*1e-6, mesh_size);  

Ch16.Ey_downsampled = downsp(Ch16.Ey, mesh_size);
 fprintf('Calculating averaged Ey fields of Ch16 \n');
Ch16.Ey10g = average_10g_mesh(Ch16.Ey_downsampled, Property.Density_downsampled*1e-6, mesh_size);

Ch16.Ez_downsampled = downsp(Ch16.Ez, mesh_size);
 fprintf('Calculating averaged Ez fields of Ch16 \n');
Ch16.Ez10g = average_10g_mesh(Ch16.Ez_downsampled, Property.Density_downsampled*1e-6, mesh_size);






