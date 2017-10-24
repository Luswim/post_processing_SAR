function output_10E =average_10gEmat(input_E, input_density)
% description: 10g mass averaging for 1mm mesh.
% input:  input_E the input raw E
%         Property.Density the tissue density
% output: output_10g_E the 10g averaged 

%add zero padding 
pad= 50;
input_E_pad = zeros(size(input_E) + pad);
input_density_pad = zeros(size(input_density)+ pad);

input_E(isnan(input_E)) = 0;% assign 0 to NaN 
input_density(isnan(input_density)) = 0;% assign 0 to NaN
input_E_pad( pad/2:end-pad/2-1, pad/2:end-pad/2-1, pad/2:end-pad/2-1) = input_E;
input_density_pad( pad/2:end-pad/2-1, pad/2:end-pad/2-1, pad/2:end-pad/2-1) = input_density;



input_density_pad(input_density_pad < 0.00001) = 0;% take out freespace
input_density_pad(input_density_pad > 0.006) = 0; % eliminate copper material
Labels = ones(size(input_density_pad));
Labels(input_density_pad==0 | isnan(input_density_pad) ) = 0;
% label 0 = unvalid  either at the extrimity or at free space
% label 1 = unused   tissue present at the voxel
% label 2 = used     at the boundary
% label 3 = valid    center of the lossy volume
for z = 1:size(Labels,3)
    for y = 1:size(Labels,2)
        for x = 1:size(Labels,1)
            if Labels(x,y,z) == 1 
                %sum all 10g in a cubical volume
                cube = 0;
                cube_mass = 0;% initialize summation cal
                %while abs(cube_mass - 10) < 0.5 % 10g cube mass tolarence
                for cube_length = 8:2:50 %add zero padding to density profile if the out of matrix index 
                    cube = input_density_pad(x-cube_length/2:x+cube_length/2,y-cube_length/2:y+cube_length/2,z-cube_length/2:z+cube_length/2);
                    cube_mass = sum(cube(:));
                   if cube_mass > 9.5 % 10g cube mass tolarence
                    break % break out of the loop 
                   end
                end 
                    %calculate the cube mass within the cube                
                if size(cube(cube==0),1)/length(cube(:)) < 0.3 % if the empty space in the cude is larger than 30% meaning at interior, not at boundary
                % calculate intergral of E*dm
                   int_Edm_matrix = cube.*input_E_pad(x-cube_length/2:x+cube_length/2,y-cube_length/2:y+cube_length/2,z-cube_length/2:z+cube_length/2);
                   int_Edm = sum(int_Edm_matrix(:));
                   % calculate the averaged E as the intergal of E*dm divide by 10g   
                   ave_10SAR = int_Edm/10;
                   output_10E_pad(x,y,z) = ave_10SAR;
                   Labels(x,y,z) = 3; %this point is valid                                        
                else % if at boundary                 
                   Labels(x,y,z) = 2; %this point is at boundary
                  %output_E(x,y,z) = max of ( cube()   ) % if at the boundary the E averaged is the maxium value next to it                    
                end   
            end            
        end
    end
    fprintf('this pixel(x,y,z) is located at %d %d %d \n',x,y,z);
end
output_10E = output_10E_pad(pad/2:end-pad/2-1, pad/2:end-pad/2-1, pad/2:end-pad/2-1); % take out the padding

