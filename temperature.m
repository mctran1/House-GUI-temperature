function varargout = temperature(varargin)

% TEMPERATURE MATLAB code for temperature.fig
%      TEMPERATURE, by itself, creates a new TEMPERATURE or raises the existing
%      singleton*.
%
%      H = TEMPERATURE returns the handle to a new TEMPERATURE or the handle to
%      the existing singleton*.
%
%      TEMPERATURE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEMPERATURE.M with the given input arguments.
%
%      TEMPERATURE('Property','Value',...) creates a new TEMPERATURE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before temperature_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to temperature_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help temperature

% Last Modified by GUIDE v2.5 17-Feb-2016 20:44:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @temperature_OpeningFcn, ...
                   'gui_OutputFcn',  @temperature_OutputFcn, ...
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


% --- Executes just before temperature is made visible.
function temperature_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to temperature (see VARARGIN)

% Choose default command line output for temperature
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes temperature wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = temperature_OutputFcn(hObject, eventdata, handles) 
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
global t y y1 a b c 
a = str2double (get(handles.tem, 'string'));
b = str2double (get(handles.avetem, 'string'));


sim ('Example_heat');
cla(handles.axes1);
axes (handles.axes1)
plot (t,y);
hold on;
plot (t,y1);
xlabel ('time');
ylabel ('This is the heat');
legend ('In the house', 'Outside ')



function tem_Callback(hObject, eventdata, handles)
% hObject    handle to tem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tem as text
%        str2double(get(hObject,'String')) returns contents of tem as a double


% --- Executes during object creation, after setting all properties.
function tem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function avetem_Callback(hObject, eventdata, handles)
% hObject    handle to avetem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of avetem as text
%        str2double(get(hObject,'String')) returns contents of avetem as a double


% --- Executes during object creation, after setting all properties.
function avetem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to avetem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxtem_Callback(hObject, eventdata, handles)
% hObject    handle to maxtem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxtem as text
%        str2double(get(hObject,'String')) returns contents of maxtem as a double


% --- Executes during object creation, after setting all properties.
function maxtem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxtem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
