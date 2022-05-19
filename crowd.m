% firstly, please put Atrium2.jpg in your current work directory, then you
% can run the following commands.

im=imread('crowd.tif');

%% exercise 1
subplot(3,4,1);
imshow(im);title('original image');

%% exercise 3
subplot(3,4,2);
imshow(im+40);title('brighter');
subplot(3,4,3);
imshow(im-40);title('darker');

%% exercise 4
subplot(3,4,4);
im3=im(:,512:-1:1,:);
imshow(im3);title('flip');

%% 2 bit
subplot(3,4,5);
img2bit=im;
[r,c]=size(img2bit);
for i=1:r
	for j=1:c
		f=img2bit(i,j);
		if f<=127
			img2bit(i,j)=0;
		elseif f>127 && f<256
			img2bit(i,j)=255;
		end
	end
end
imshow(img2bit);
title('2 bit');

%% 4 bit
subplot(3,4,6);
img4bit=im;
[r,c]=size(img4bit);
for i=1:r
	for j=1:c
		f=img4bit(i,j);
		if f<=64
			img4bit(i,j)=0;
		elseif f>64 && f<127
			img4bit(i,j)=85;
		elseif f>127 && f<191
			img4bit(i,j)=170;
		elseif f>191 && f<256
			img4bit(i,j)=255;
		end
	end
end
imshow(img4bit);
title('4 bit');

%% 6 bit
subplot(3,4,7);
img6bit=im;
[r,c]=size(img6bit);
for i=1:r
	for j=1:c
		f=img6bit(i,j);
		if f<=42
			img6bit(i,j)=0;
		elseif f>42 && f<84
			img6bit(i,j)=51;
		elseif f>84 && f<127
			img6bit(i,j)=102;
		elseif f>127 && f<168
			img6bit(i,j)=153;
		elseif f>168 && f<210
			img6bit(i,j)=204;
		elseif f>210 && f<256
			img6bit(i,j)=255;
		end
	end
end
imshow(img6bit);
title('6 bit');

%% 8 bit
subplot(3,4,8);
img8bit=im;
[r,c]=size(img8bit);
for i=1:r
	for j=1:c
		f=img8bit(i,j);
		if f<=32
			img8bit(i,j)=0;
		elseif f>32 && f<64
			img8bit(i,j)=36;
		elseif f>64 && f<96
			img8bit(i,j)=72;
		elseif f>96 && f<128
			img8bit(i,j)=109;
		elseif f>128 && f<160
			img8bit(i,j)=144;
		elseif f>160 && f<192
			img8bit(i,j)=180;
		elseif f>192 && f<224
			img8bit(i,j)=216;
		elseif f>224 && f<256
			img8bit(i,j)=255;
		end
	end
end
imshow(img8bit);
title('8 bit');

%% rotate
subplot(3,4,9);
im4=imrotate(im,45);
imshow(im4);title('rotate');

%% exercise 6
subplot(3,4,10);
im7=im(1:8:end,1:8:end,:);
imshow(im7);title('sub-sampling 2');

subplot(3,4,11);
im7=im(1:4:end,1:4:end,:);
imshow(im7);title('sub-sampling 4');

