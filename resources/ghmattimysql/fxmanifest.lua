fx_version 'cerulean'
game 'common'

name 'ghmattimysql'
description 'Database wrapper for RedM utilising node-mysql2 offering improved performance and security.'
version '2.1.1'
url 'https://github.com/VORPCORE/ghmattimysql-oxmysql'
author 'overextended'

dependencies {
	'/server:5104',
}

client_script 'ui.lua'
server_script 'dist/build.js'

files {
	'ui/build/index.html',
	'ui/build/**/*'
}

ui_page 'ui/build/index.html'

provide 'mysql-async'

convar_category 'OxMySQL' {
	'Configuration',
	{
		{ 'Connection string', 'mysql_connection_string', 'CV_STRING', 'mysql://user:password@localhost/database' },
		{ 'Debug', 'mysql_debug', 'CV_BOOL', 'false' }
	}
}
