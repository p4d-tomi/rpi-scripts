var push = require('pushover-notifications');
var ip = require('ip');
var os = require('os');

var pushover = new push( {
	user: "u8q5UGNSFJoKpJaX7XyaNYHzpoAKzG",
	token: "aq6YhUqFEDdDhM67mkyAAQNpEjhkJx",
});

var info = "";
info = info + "Hostname: " + os.hostname() + os.EOL;
info = info + "Release: " + os.release() + os.EOL;
info = info + "Arch: " + os.arch() + os.EOL;
info = info + "Platform: " + os.platform() + os.EOL;
info = info + "IP Address: " + ip.address() + os.EOL;

var msg = {
	message: info,
	title: "Raspberry Pi - Boot"
};

//console.log("Sending notification ...");
pushover.send( msg, function( err, result ) {
	//if ( err ) throw err;
	//console.log( result );
});
