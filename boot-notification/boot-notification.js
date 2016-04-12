var push = require('pushover-notifications');
var dns = require('dns');
var os = require('os');

var pushover = new push( {
	user: "u8q5UGNSFJoKpJaX7XyaNYHzpoAKzG",
	token: "aq6YhUqFEDdDhM67mkyAAQNpEjhkJx",
});

dns.lookup(os.hostname(), function (err, add, fam) {
	var info = "";
	info = info + "Hostname: " + os.hostname() + os.EOL;
	info = info + "Type: " + os.type() + os.EOL;
	info = info + "Release: " + os.release() + os.EOL;
	info = info + "Arch: " + os.arch() + os.EOL;
	info = info + "Platform: " + os.platform() + os.EOL;
	info = info + "IP Address: " + add + os.EOL;

	var msg = {
		message: info,
		title: "Raspberry Pi - Boot"
	};

	pushover.send( msg, function( err, result ) {
		if ( err ) throw err;
		console.log( result );
	});
})
