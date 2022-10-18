SELECT c.session_id, 
       c.protocol_type, 
       c.auth_scheme, 
       c.client_net_address, 
       s.host_name, 
       s.login_name, 
       s.login_time
FROM sys.dm_exec_connections c
JOIN sys.dm_exec_sessions s 
ON c.session_id = s.session_id;
