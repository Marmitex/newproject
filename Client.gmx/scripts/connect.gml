var ip = get_string( "Ip", "localhost");
global.socket = network_create_socket( network_socket_tcp );
network_connect( global.socket, ip, 6666);
global.buffer = buffer_create( 127, buffer_grow, 1);
global.database = ds_grid_create( 10, 10);
global.cannonDatabase = ds_grid_create( 10, 4);
global.playerList = ds_list_create();

buffer_seek( global.buffer, buffer_seek_start, 0);
buffer_write( global.buffer, buffer_u8, 0);
network_send_packet( global.socket, global.buffer, buffer_get_size( global.buffer) );

