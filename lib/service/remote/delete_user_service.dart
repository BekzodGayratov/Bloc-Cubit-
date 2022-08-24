import 'package:dio/dio.dart';

class DeleteUserService {
  static Future deleteUser(String name, String email) async {
    try {
      Response res =
          await Dio().delete("https://example.com/delete-user", data: {
        "name": "John",
        "email": "john@gmail.com",
      });
      if (res.statusCode == 200) {

      }
      return "The user deleted successfully";
    } catch (e) {
      return "No internet";
    }
  }
}
