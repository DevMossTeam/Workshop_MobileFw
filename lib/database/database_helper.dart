import 'package:kuliah_list_view/models/user_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  final databaseName = "auth.db";

  //Tables
  String user = '''
   CREATE TABLE users (
   userId INTEGER PRIMARY KEY AUTOINCREMENT,
   fullname TEXT,
   username TEXT UNIQUE,
   email TEXT,
   password TEXT,
   phone TEXT,
   address TEXT,
   gender TEXT,
   birthdate TEXT
   )
   ''';

  //Our connection is ready
  Future<Database> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(user);
      },
    );
  }

  //Function methods

  //Authentication
  Future<bool> authenticate(String username, String password) async {
    final Database db = await initDB();
    var result = await db.query(
      "users", where: "username = ? AND password = ?",
      whereArgs: [username, password],
    );
    return result.isNotEmpty;
  }

  //Sign up
  Future<int> createUser(User user) async {
    final Database db = await initDB();
    return db.insert("users", user.toMap());
  }

  //Get username
 Future<User?> getUser(String username) async {
  final Database db = await initDB();
  var res = await db.query(
    "users",where: "username = ?",
    whereArgs: [username],
  );

  if (res.isNotEmpty) {
    print("DEBUG: Data User Ditemukan ${res.first}");
    return User.fromMap(res.first);
  } else {
    print("DEBUG: Tidak ada user dengan username: $username");
    return null;
  }
}

}
