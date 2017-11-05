global.server = network_create_server( network_socket_tcp, 6666, 10);
global.buffer = buffer_create( 128, buffer_grow, 1);

global.playerList = ds_list_create();
global.playerDatabase = ds_grid_create( 10, 10);
