
% firstly, please put Atrium2.jpg in your current work directory, then you
% can run the following commands.

im=imread('Lenna.png');

%% exercise 1
subplot(3,4,1);
imshow(im);title('original image');
subplot(3,4,2);
imshow(im(:,:,1));title('R');
subplot(3,4,3);
imshow(im(:,:,2));title('G');
subplot(3,4,4);
imshow(im(:,:,3));title('B');
%% exercise 2
im2(:,:,1)=im(:,:,3);
im2(:,:,2)=im(:,:,2);
im2(:,:,3)=im(:,:,1);
subplot(3,4,5);
imshow(im2);title('BGR');
%% exercise 3
subplot(3,4,6);
imshow(im+40);title('brighter');
subplot(3,4,7);
imshow(im-40);title('darker');
%% exercise 4
subplot(3,4,8);
im3=im(:,512:-1:1,:);
imshow(im3);title('flip');
subplot(3,4,9);
im4=imrotate(im,45);
imshow(im4);title('rotate');
%% exercise 5
subplot(3,4,10);
for i=1:3
    tmp=im(:,:,i);
    tmp2=im(:,:,i);
    for j=32:64:256
        tmp2(find(tmp<j+32 & tmp>=j-32))=j;
    end
    im5(:,:,i)=tmp2;
end
imshow(im5);title('2 bits');

subplot(3,4,11);
for i=1:3
    tmp=im(:,:,i);
    tmp2=im(:,:,i);
    for j=8:16:256
        tmp2(find(tmp<j+8 & tmp>=j-8))=j;
    end
    im6(:,:,i)=tmp2;
end
imshow(im6);title('4 bits');
%% exercise 6
subplot(3,4,12);
im7=im(1:8:end,1:8:end,:);
imshow(im7);title('sub-sampling');

