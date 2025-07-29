clear;

mesh = readObj('data/models/cube_checker.obj');

% 메쉬 데이터 구조체 생성 및 초기화
mesh_data.vertices = mesh.v;
mesh_data.faces = mesh.f;

mesh_data.faces.vt = [
    11, 9, 10;
    3, 1, 2;
    7, 5, 6;
    15, 13, 14;
    18, 20, 17;
    22, 19, 18;
    11, 12, 9;  % 면 7
    3, 4, 1;  % 면 8
    7, 8, 5;  % 면 9
    15, 16, 13;  % 면 10
    18, 19, 20;  % 면 11
    22, 23, 24;  % 면 12
];

% UV 좌표 계산 및 메쉬 데이터에 추가
texture_resol = 512;
UV_coords_origin = [
    0, 0; 0.2, 0; 0.2, 0.4; 0, 0.4;  % 앞면
    0.2, 0; 0.4, 0; 0.4, 0.4; 0.2, 0.4;  % 뒷면
    0.4, 0; 0.6, 0; 0.6, 0.2; 0.4, 0.2;  % 윗면
    0.6, 0; 0.8, 0; 0.8, 0.2; 0.6, 0.2;  % 아랫면
    0, 0.4; 0.4, 0.4; 0.4, 0.6; 0, 0.6;  % 왼쪽 면
    0.4, 0.4; 0.8, 0.4; 0.8, 0.6; 0.4, 0.6;  % 오른쪽 면
];
% UV_pixel = UV_coords_origin * texutre_resol;
mesh_data.uv_coords = UV_coords_origin; % 크기는 나중에 집어넣어

% Simulink.Bus 객체로 변환
bus_info = Simulink.Bus.createObject(mesh_data);
bus_name = bus_info.busName;

beta = 5;
C0 = 24000;

eye_mat = eye(3);
img_h = 480;
img_w = 640;
fx = 457;
fy = 457;
cx = img_w ./2;
cy = img_h ./2;
s = 0;
K = [fx, s, cx;
     0, fy, cy;
     0,   0,  1];

B = zeros(img_h, img_w);
E = imread('data/test_E_map.png');

texture_map = zeros(texture_resol,texture_resol);

cameraPos = [0, 0, 1];
cameraDir = [0.70711, 0, 0.70711, 0];
lightPos = [0, 0.1, 1];

imageHeight = 480;
imageWidth = 640;

img = imread('data/testImg.png');
img = imresize(img, [480, 640]);