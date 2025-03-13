[filename, filepath] = uigetfile({'*.png;*.jpg;*.jpeg;*.bmp', 'Image Files (*.png, *.jpg, *.jpeg, *.bmp)'}, 'Select an Image');
if isequal(filename, 0)
    disp('User selected Cancel');
else
    img = imread(fullfile(filepath, filename));
    %imshow(img);
    gray_img = rgb2gray(img);
    %imshow(gray_img);
    small_img = imresize(gray_img, [100, 100]); % 100x100
    %imshow(small_img);

    %Defining ASCII chars
    ascii_chars = ['@', '#', '8', '&', '%', '$', '*', '+', '=', '-', ':', ';', '>', ',', '.', ' '];

    [m, n] = size(small_img);
    ascii_img = char(ones(m, n) * ' '); % Initialize

    for i = 1:m
        for j = 1:n
            % Pixel density
            intensity = small_img(i, j);

            % Pixel density range: 1 - 16
            index = ceil(intensity / 16);
            index = max(index, 1);
            index = min(index, 16);

            ascii_img(i, j) = ascii_chars(index); 
        end
    end

    %for i = 1:m
    %    disp(ascii_img(i, :));
    %end

    % File save
    [savefile, savepath] = uiputfile('ascii_art.txt', 'Save ASCII Art as');
    if isequal(savefile, 0)
        disp('User selected Cancel');
    else
        output_file = fullfile(savepath, savefile);
        fid = fopen(output_file, 'wt'); % Write permission

        if fid == -1
            error('err: file cannot opened!');
        end

        for i = 1:m
            fprintf(fid, '%s\n', ascii_img(i, :));
        end

        fclose(fid);
        disp(['ASCII art saved successfully to "' output_file '".']);
    end
end
