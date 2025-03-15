import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static const String tableUser = "users";

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), "users.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE $tableUser (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            fullname TEXT,
            username TEXT UNIQUE,
            email TEXT UNIQUE,
            password TEXT,
            phone TEXT,
            address TEXT,
            gender TEXT,
            birthdate TEXT
          )
        ''');
      },
    );
  }

  Future<int> registerUser(Map<String, dynamic> userData) async {
    final db = await database;
    return await db.insert(tableUser, userData); 
  }

  Future<Map<String, dynamic>?> loginUser(
    String username,
    String password,
  ) async {
    final db = await database;
    List<Map<String, dynamic>> users = await db.query(
      tableUser,
      where: "username = ? AND password = ?",
      whereArgs: [username, password],
    );
    return users.isNotEmpty ? users.first : null;
  }

 
  Future<bool> cekUsername(String username) async {
    final db = await database;
    List<Map<String, dynamic>> result = await db.query(
      tableUser,
      where: "username = ?",
      whereArgs: [username],
    );
    return result.isNotEmpty;
  }

    Future<bool> cekEmail(String email) async {
    final db = await database;
    List<Map<String, dynamic>> result = await db.query(
      tableUser,
      where: "email = ?",
      whereArgs: [email],
    );
    return result.isNotEmpty;
  }

}
