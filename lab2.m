
% firstly, please put Lenna.png in your current work directory, then you
% can run the following commands.

im=imread('Lenna.png');

%% exercise 1

im_grey=sum(im,3);
im_grey=im_grey/max(im_grey(:));
subplot(2,4,1);
imshow(im_grey);title('grey image');

thresh=0.5;
im_grey(im_grey<=thresh)=0;
im_grey(im_grey>thresh)=1;
subplot(2,4,2);
imshow(im_grey);title('binary image');

%% exercise 2
im_grey=sum(im,3);
im_grey=im_grey/max(im_grey(:));
gamma=0.2;
im_grey_new=im_grey.^gamma;
subplot(2,4,3);imshow(im_grey_new);title('gamma=0.2');
gamma=1;
im_grey_new=im_grey.^gamma;
subplot(2,4,4);imshow(im_grey_new);title('gamma=1');
gamma=5;
im_grey_new=im_grey.^gamma;
subplot(2,4,5);imshow(im_grey_new);title('gamma=5');

%% exercise 3
im_grey_new=round(im_grey_new*255);
im_grey_new=uint8(im_grey_new);
hist1=histc(im_grey_new(:),0:1:255);
subplot(2,4,6);bar(hist1);title('histogram of gamma=5');

im_grey_histeq=histeq(im_grey_new);
subplot(2,4,7);imshow(im_grey_histeq);title('histogram equalization');

hist2=histc(im_grey_histeq(:),0:1:255);
subplot(2,4,8);bar(hist2);title('histogram after histogram equalization');
