// Managed by Chef - it will be overwritten next time chef runs
// Setup the taskd database
// NOTE(clowes): inserts fail if the record already exists, so they don't
// overwrite installations where the user has changed the passwords.
// NOTE(nerubaye): however, demo is an upsert since we want to modify defaults.

// Insert a livedesign user for Seurat to use
db = db.getSiblingDB("taskd");
db.user.insert({username: "livedesign", is_active: true, api_key: "f53163c8a2cf35e34d58ec3445334355be2eea0d",
    _id: "5249b79e88296406d14acdb2", is_staff: false});
db.user.insert({username: "seurat", is_active: true, api_key: "8858489b80fdfc5f7bb3b176bad5ace560c5aecb",_id: "5249b79e88296406d14acdb0", is_staff: false});

// Insert a demo user for people to login as when LDAP is not available. Has staff status to let them add new users.
db.user.update({username: "demo"}, {username: "demo", is_active: true, is_staff: true, api_key: "055a8ff81e64abef3b78995839f173f779f00a96",
    password: "pbkdf2_sha256$10000$xBfmEWHDDLf1$SBAB5f4b/p/MOX+q4ORTlpYExkKYgDQ0knN9mQs6w7Q=",
    _id: "5249b79e88296406d14acdb3"}, {upsert: true});

// configure mongo authentication. password is 'taskd_default_password'
db.system.users.insert({ "_id": ObjectId("538e0136765440954e06bd55"), "user": "taskd",
    "pwd": "7c0940dd36693b72a590c77929cbd5b8", "roles": [  "dbAdmin", "readWrite" ] });

// insert a dummy record into the broadcast queue so the workers listen for messages (SS-4348)
db = db.getSiblingDB("kombu");
db.createCollection("messages.broadcast", {capped: true, size: 100000});
db.messages.broadcast.insert({"_id": "527bfc8a8e82bc03b25b9b1d"});

// also make the user in kombu
db.system.users.insert({ "_id": ObjectId("538e0136765440954e06bd55"), "user": "taskd",
    "pwd": "7c0940dd36693b72a590c77929cbd5b8", "roles": [  "dbAdmin", "readWrite" ] });

// make a root superuser
db = db.getSiblingDB("admin");
db.system.users.insert({ "_id": ObjectId("538e0136765440954e06bd56"), "user": "root",
    "pwd": "2a8025f0885adad5a8ce0044070032b3", "roles": [  "dbAdminAnyDatabase", "readWriteAnyDatabase", "userAdminAnyDatabase" ] });
