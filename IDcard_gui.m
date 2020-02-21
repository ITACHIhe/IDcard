function varargout = IDcard_gui(varargin)
% IDCARD_GUI MATLAB code for IDcard_gui.fig
%      IDCARD_GUI, by itself, creates a new IDCARD_GUI or raises the existing
%      singleton*.
%
%      H = IDCARD_GUI returns the handle to a new IDCARD_GUI or the handle to
%      the existing singleton*.
%
%      IDCARD_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IDCARD_GUI.M with the given input arguments.
%
%      IDCARD_GUI('Property','Value',...) creates a new IDCARD_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IDcard_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IDcard_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IDcard_gui

% Last Modified by GUIDE v2.5 25-Dec-2019 13:05:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IDcard_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @IDcard_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before IDcard_gui is made visible.
function IDcard_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IDcard_gui (see VARARGIN)

% Choose default command line output for IDcard_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IDcard_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IDcard_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global im
global str
[filename,pathname]=uigetfile({'*.jpg';'*.bmp';'*.gif'},'选择图片');
if ~isequal(filename,0)%这个是判断是否读取的名字为空
str=[pathname filename];
im=imread(str);
axes(handles.axes1);
imshow(im);
else%弹出警告框
%h=errordlg('打开图片失败','警告');
%ha=get(h,'children');
%hu=findall(allchild(h),'style','pushbutton');
%set(hu,'string','确定');
%ht=findall(ha,'type','text');
%set(ht,'fontsize',20,'fontname','隶书');
end

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
close
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)%图片分析--------------
global im
%---
L=rgb2gray(im);
L=im2bw(L);
BW=edge(L,'canny');
BW=bwareaopen(BW,25);
 B=[0 1 0
    1 1 1
    0 1 0];
A2=imdilate(BW,B);

 
[m,n]=size(A2);
rho=round(sqrt(m^2+n^2));
theta=180;
r=zeros(rho,theta);
for i=1:m
    for j=1:n
        if A2(i,j) == 1
            for k=1:theta
                ru=round(abs(i*cosd(k) + j*sind(k)));
                r(ru+1,k)=r(ru+1,k)+1;
            end
        end
    end
end
r_max=r(1,1);
for i=1:rho
    for j=1:theta
        if r(i,j)>r_max
            r_max=r(i,j);
            c=j;
        end
    end
end
if c<= 90
    rot_theta=-c;
else
        rot_theta=180-c;
end
A2=imrotate(A2,rot_theta,'crop');
im=imrotate(im,rot_theta,'crop');
axes(handles.axes1);
imshow(im);

%---
[m,n,r]=size(im);%图像的像素为width*height
%%%%%蓝色字体变黑
figure(2);  
imshow(im);
myI=double(im);

for i=1:m
    for j=1:n
            if((myI(i,j,1)>=15)&&(myI(i,j,1)<=130)&&((myI(i,j,2)<=165)&&(myI(i,j,2)>=90))&&((myI(i,j,3)<=220)&&(myI(i,j,3)>=135))) % 蓝色RGB的灰度范围
              im(i,j,1)=40; %红色分量
              im(i,j,2)=40; %绿色分量
              im(i,j,3)=40; %蓝色分量
           end  
    end       
end
figure(3);  
imshow(im);

 width=round(0.9*n);height=round(0.87*m);
 rx=round(0.05*n);cy=round(0.075*m);
 im=subim(im,height,width,rx,cy);

 if sum(size(im)>0)==3 %倘若是彩色图--2维*3，先转换成灰度图
 im=rgb2gray(im);
 end

 x=3;%行数分为x部分
 y=1;%列数分为y部分
 BW=erzhihua(im,x,y);
 
 [n,m,l]=size(BW);%图像的像素为m*n
  c = [0.65*m 0.65*m m m];
 r = [0 0.85*n 0.85*n 0];
 BW = roifill(BW,c,r);
 
 BW=imadjust(BW);%使用imadjust函数对图像进行增强对比度
 % Convert to BW
threshold = graythresh(BW);
BW =~im2bw(BW,0.6*threshold);

[image_h,image_w]=size(BW);
% Remove all object containing fewer than (imagen/80) pixels
BW = bwareaopen(BW,floor(image_w/80));
% 滤波
 h=fspecial('average',1);
 BW=im2bw(round(filter2(h,BW)));
% imwrite(d,'4.均值滤波后.jpg');dx
axes(handles.axes3);
imshow(BW);
im=BW;







% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
cla(handles.axes1,'reset');
cla(handles.axes3,'reset');
set(handles.edit1,'string','');
set(handles.edit2,'string','');
set(handles.edit3,'string','');
set(handles.edit4,'string','');
set(handles.axes1,'xTick',[]);
set(handles.axes3,'xTick',[]);
set(handles.axes1,'XColor',get(gca,'Color')) ;% 这两行代码功能：将坐标轴和坐标刻度转为白色
set(handles.axes3,'XColor',get(gca,'Color')) ;% 这两行代码功能：将坐标轴和坐标刻度转为白色
set(handles.axes3,'YColor',get(gca,'Color'));
set(handles.axes1,'YColor',get(gca,'Color'));

% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
global im
imagen = im;
[image_h,image_w]=size(imagen);

% Convert to gray scale
if size(imagen,3)==3 %RGB image
    imagen=rgb2gray(imagen);
end

%Storage matrix word from image
word=[ ];
re=imagen;
%Opens text.txt as file for write
fid = fopen('ID_card.txt', 'wt');
load templates
global templates
% Compute the number of letters in template file
num_letras=size(templates,2);
figure;
plot_flag=1;
number=1;
while 1
    %Fcn 'lines' separate lines in text
    [fl,re]=lines(re);
    imgn=fl;
    [line_h,line_w]=size(fl);%记录下切割出来的一行字符的长宽
    %Uncomment line below to see lines one by one
    % imshow(fl);pause(1)    
    %-----------------------------------------------------------------     
    % Label and count connected components
   [L,Ne] = bwlabel(imgn);    

      n=1;%记录循环次数
while(n<=Ne)
        char_flag=0;%为0时，是第一次判断这个连通域
        flag=1;%初始化两个连通域属于同个字符
   while(flag==1)       
      if char_flag==0
        [r,c] = find(L==n);
        Width0=max(r)-min(r);%连通域宽度
        Height0=max(c)-min(c);%连通域高度
        Radio0=Width0/Height0;%连通域宽高比
        Square0=Width0*Height0;%连通域面积
        maxr=max(r);
        maxc=max(c);
        minr=min(r);
        minc=min(c);
      end
       if n<Ne
          [r1,c1] = find(L==(n+1));%寻找下一个连通域
          Width1=max(r)-min(r);%连通域宽度
          Height1=max(c)-min(c);%连通域高度
          Radio1=Width1/Height1;%连通域宽高比
          Square1=Width1*Height1;%连通域面积
          Uheight=max(maxc,max(c1))-min(minc,min(c1));%合并后高度
          Uwidth=max(maxr,max(r1))-min(minr,min(r1));%合并后宽度
          Uradio=Uwidth/Uheight;%合并后的宽高比
          Oheigth=Height0+Height1-Uheight;%重叠高度
          Owidth=Width0+Width1-Uwidth;%重叠宽度
          Osquare=Oheigth*Owidth;%重叠面积
       else
           flag=0;%这是这一行最后一个连通域
       end
           ph=5;%边界因子
           pw=7;
       if(flag==1)&&((Owidth>=-(image_w/pw)&&Owidth<=0)||(Oheigth>=-(line_h*0.3)&&Oheigth<=0))%两个连通域较近，但不重叠
           if((Uradio>=0.8)&&(Uradio<=1.2))%认为两个连通域属于同一个字符
           elseif Uheight<line_h*0.4;%连通域的合并之后高度过小的，认为是一个字符的一部分，很可能是边旁部首
           else flag=0;%否则这两个连通域属于不同字符  
           end
       elseif(flag==1)&&(Owidth<-(image_w/pw))%两个连通域里相距较远
           flag=0;%两个连通域属于不同字符
     % elseif(flag==1)&&((Owidth>0)||(Oheigth>0))%两连通域重叠
      elseif(flag==1)&&((Owidth>0))%两连通域重叠
               if(((Uradio>=0.78)&&(Uradio<=1.3)))%认为两个连通域属于同一个字符
               elseif(Osquare>=0.4*min(Square0,Square1)&&(Uwidth<image_w/45))
               else
               flag=0;%两个连通域属于不同字符
           end
       else flag=0;%两个连通域属于不同字符
       end
       if flag==1%经过上面判断，两个连通域属于同一个字符，进行连通域合并
           Width0=Uwidth;%连通域宽度
           Height0=Uheight;%连通域高度
           Radio0=Width0/Height0;%连通域宽高比
           Square0=Width0*Height0;%连通域面积
           maxr=max(maxr,max(r1));
           maxc=max(maxc,max(c1));
           minr=min(minr,min(r1));
           minc=min(minc,min(c1));
           n=n+1;%指向下一个连通域
           char_flag=1;
       end
   end  %while(flag==1)的end
           
        
        
        % Extract letter
        n1=imgn(minr:maxr,minc:maxc);  
        % Resize letter (same size of template)
        img_r=imresize(n1,[36 23]);
        subplot(10,10,plot_flag),imshow(img_r);title(plot_flag);
        plot_flag=plot_flag+1;
        %Uncomment line below to see letters one by one
        % imshow(img_r);title(n);pause(0.5)
        %-------------------------------------------------------------------
        % Call fcn to convert image to text
        letter=read_letter(img_r,num_letras);
        % Letter concatenation
        word=[word letter];
        n=n+1;
    end % while(n<=Ne)的end
    %fprintf(fid,'%s\n',lower(word));%Write 'word' in text file (lower)
    fprintf(fid,'%s\n',word);%Write 'word' in text file (upper)
    if (number==1)%名字
        word1=word(3:5);
    set(handles.edit1,'string',word1);
    end
    if (number==2)%性别
        word2=word(3);
    set(handles.edit2,'string',word2);
    end
    if (number==3)%生日 
        word3=word(3:end);
    set(handles.edit3,'string',word3);
    end
    if (number==6||number==7||number==8||number==9)%身份证
        word4=word(7:end);
    set(handles.edit4,'string',word4);
    end
    number = number + 1;
    % Clear 'word' variable
    word=[ ];
    %*When the sentences finish, breaks the loop
    if isempty(re)  %See variable 're' in Fcn 'lines'-
        break
    end    %-
end
fclose(fid);
%Open 'ID_card.txt' file
winopen('ID_card.txt')
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
