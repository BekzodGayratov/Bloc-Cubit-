import 'dart:io';
import 'package:blocapi/core/constants/base_urls.dart';
import 'package:blocapi/model/get_users_model.dart';
import 'package:dio/dio.dart';

class GetUserService {
  static Future getUsers() async {
    try {
      Response res = await Dio().get(BaseUrls.apiUrl);
      if (res.statusCode == HttpStatus.ok) {
        var resData =
            (res.data as List).map((e) => UsersModel.fromJson(e)).toList();
        return resData;
      }
    } catch (e) {
      return "No internet";
    }
  }
}
