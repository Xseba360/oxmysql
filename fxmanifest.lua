fx_version 'cerulean'
game 'common'

name 'oxmysql'
description 'Database wrapper for FiveM utilising node-mysql2 offering improved performance and security.'
version '1.9.2'
url 'https://github.com/overextended/oxmysql'
author 'overextended'

dependencies {
	'/server:5104',
}

server_scripts {
	'dist/server/build.js',
}

provide 'mysql-async'

convar_category 'OxMySQL' {
	'Configuration',
	{
		{ 'Connection string', 'mysql_connection_string', 'CV_STRING', 'mysql://user:password@localhost/database' },
		{ 'Debug', 'mysql_debug', 'CV_BOOL', 'false' }
	}
}
