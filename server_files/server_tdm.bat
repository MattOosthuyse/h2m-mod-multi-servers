@echo off
::Name of the server shown in the title of the cmd window. This will NOT bet shown ingame.
set name=H2M Dedicated - TDM
::Name of the config file the server should use. (default: server.cfg)
set cfg=server_tdm.cfg
::Port used by the server (default: 27016)
set port=27018
::Only change this when you don't want to keep the bat files in the game folder.
set gamepath=%cd%

title H2M - %name% - Server restarter
echo Server "%name%" will load %cfg% and listen on port %port% UDP!
echo To shut down the server close this window first!
echo (%date%)  -  (%time%) %name% server start.

:server
start /wait /abovenormal h2m-mod.exe "%gamepath%" -dedicated -memoryfix +exec "%cfg%" +set net_port %port% +map_rotate
echo (%date%)  -  (%time%) WARNING: %name% server closed or dropped... server restarts.
goto server
