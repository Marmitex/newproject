
buffer_seek( global.buffer, buffer_seek_start, 0);
buffer_write( global.buffer, buffer_u8, 8);
buffer_write( global.buffer, buffer_u8, argument0);
network_send_packet( global.socket, global.buffer, buffer_get_size( global.buffer) );

