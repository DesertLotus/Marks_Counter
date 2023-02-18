function varargout = untitled(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)


% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
%
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in button.
function button_Callback(hObject, eventdata, handles)
%%%
inp_data = get(handles.edit1,'String');% input data
dat2 = strsplit(inp_data,' ');
dat3 = str2double(dat2);
dat4 = dat3(~isnan(dat3));
data5 = sort(dat4);   % sorting

a = data5(data5 <= 100 & data5 >= 90); 
b = data5(data5 < 90 & data5>=80);
c = data5(data5 < 80 & data5>=70);
d = data5(data5 < 70 & data5>=60);
e = data5(data5 < 60 & data5>=50);
f = data5(data5 < 50 & data5>=0);

set(handles.text1,'String',num2str(a)); % To show datas
set(handles.text2,'String',num2str(b));
set(handles.text3,'String',num2str(c));
set(handles.text4,'String',num2str(d));
set(handles.text5,'String',num2str(e));
set(handles.text6,'String',num2str(f));

a1 = numel(a); %To find number of datas 
b1 = numel(b);
c1 = numel(c);
d1 = numel(d);
e1 = numel(e);
f1 = numel(f);

xname={'A', 'B', 'C', 'D','E','F'}; %axes
yData = [a1,b1,c1,d1,e1,f1];
stem(1:6, yData, 'r','Linewidth',5); grid on;
set(gca, 'xtick', 1:6, 'xticklabel', xname)

% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
%----To clear the static texts----%
set(handles.text1,'String','')
set(handles.text2,'String','')
set(handles.text3,'String','')
set(handles.text4,'String','')
set(handles.text5,'String','')
set(handles.text6,'String','')
set(handles.edit1,'String','')%to clear edit text
axes(handles.axes1)
%---------To clear the axes------%
cla reset 
xname = {'A', 'B','C','D','E','F'};
set(handles.axes1,'xticklabel',xname);
set(handles.axes1,'ylim');
%-----Finish-----%


% --- Executes on key press with focus on button and none of its controls.
function button_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to button (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


    
