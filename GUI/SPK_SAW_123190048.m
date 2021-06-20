function varargout = SPK_SAW_123190048(varargin)
% SPK_SAW_123190048 MATLAB code for SPK_SAW_123190048.fig
%      SPK_SAW_123190048, by itself, creates a new SPK_SAW_123190048 or raises the existing
%      singleton*.
%
%      H = SPK_SAW_123190048 returns the handle to a new SPK_SAW_123190048 or the handle to
%      the existing singleton*.
%
%      SPK_SAW_123190048('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPK_SAW_123190048.M with the given input arguments.
%
%      SPK_SAW_123190048('Property','Value',...) creates a new SPK_SAW_123190048 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SPK_SAW_123190048_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SPK_SAW_123190048_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SPK_SAW_123190048

% Last Modified by GUIDE v2.5 18-Jun-2021 15:32:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SPK_SAW_123190048_OpeningFcn, ...
                   'gui_OutputFcn',  @SPK_SAW_123190048_OutputFcn, ...
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


% --- Executes just before SPK_SAW_123190048 is made visible.
function SPK_SAW_123190048_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SPK_SAW_123190048 (see VARARGIN)

% Choose default command line output for SPK_SAW_123190048
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

global start; start=0; setappdata(0,'evalue1',start);

% UIWAIT makes SPK_SAW_123190048 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SPK_SAW_123190048_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global w;global k;global x; global start;
start = getappdata(0,'evalue1');
if start==0
namaMesin = {'DariusX9-00' 'CryptoBroken87XX' 'DynastyCoin77-G2' 'LotProfit-X01' 'RollerCanCry99' 'MoneyLotz' 'HardWorkerMiner' 'EaseCoin' 'WannabeMillion' 'BitKrypton'};
namaMesinCrypto = namaMesin.';

x = [4000 1000 5 650 12 100 85;
    3000 750 3.5 450 15 75 65
    5000 1100 4.6 600 20 120 80
    1500 450 2.4 200 18 30 60
    3000 850 3.8 400 8 90 75
    2000 600 3 400 24 120 78
    500 150 0.87 175 24 50 55
    5000 1300 5.9 900 12 240 80
    1000 375 2.2 425 18 70 85
    2000 475 3.1 300 16 60 60];

 k = [0 1 1 0 1 0 1];
 w = [0.2 0.1 0.2 0.05 0.15 0.25 0.05 ];

cellx = num2cell(x);
datamesin = {namaMesinCrypto; cellx};
datamesin = horzcat(datamesin{:});

set(handles.uitable1,'Data',datamesin);
setappdata(0,'evalue',datamesin);

else
    output=getappdata(0,'evalue2');
    set(handles.uitable1,'Data',output);
end
set(handles.uitable3,'Data',k);
set(handles.uitable4,'Data',w);


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x; global w; global k; global start;
start = getappdata(0,'evalue1');
if start==0
[m,n]=size(x);

R = zeros(m,n);
Y = zeros(m,n);

for j=1:n
    if k(j)==1,
        R(:,j)=x(:,j)./max(x(:,j));
    else
        R(:,j)=min(x(:,j))./x(:,j);
    end
end
for i=1:m
    V(i)=sum(w.*R(i,:));
end

V = V.';
Vhasil = num2cell(V);
namaMesin = {'DariusX9-00' 'CryptoBroken87XX' 'DynastyCoin77-G2' 'LotProfit-X01' 'RollerCanCry99' 'MoneyLotz' 'HardWorkerMiner' 'EaseCoin' 'WannabeMillion' 'BitKrypton'};
namaMesinCrypto = namaMesin.';
hasil = {namaMesinCrypto; Vhasil};
hasil = horzcat(hasil{:});
else
    xbaru = getappdata(0,'evalue3');
    [m,n]=size(xbaru);
    R = zeros(m,n);
    Y = zeros(m,n);
    for j=1:n
    if k(j)==1,
        R(:,j)=xbaru(:,j)./max(xbaru(:,j));
    else
        R(:,j)=min(xbaru(:,j))./xbaru(:,j);
    end
    end
    namaMesinCrypto = getappdata(0,'evalue4');
    for i=1:m
    V(i)=sum(w.*R(i,:));
    end

V = V.';
Vhasil = num2cell(V);

hasil = {namaMesinCrypto; Vhasil};
hasil = horzcat(hasil{:});
end


set(handles.tabelhasil,'Data',hasil);
hasilsort = sortrows(hasil,2,'descend');
set(handles.tabelrekomendasi,'Data',hasilsort);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when entered data in editable cell(s) in tabelhasil.
function tabelhasil_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabelhasil (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
InputData;
