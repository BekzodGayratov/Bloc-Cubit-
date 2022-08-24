import 'dart:convert';

import 'package:blocapi/model/get_users_model.dart';

abstract class HomeState {
  HomeState();
}

class HomeInitialState extends HomeState {
  HomeInitialState();
}

class HomeLoadingState extends HomeState {
  HomeLoadingState();
}

class HomeCompleteState extends HomeState {
  List<UsersModel> data;
  HomeCompleteState(this.data);
}

class HomeDoneState extends HomeState {
  String message;
  HomeDoneState(this.message);
}

class HomeErrorState extends HomeState {
  String error;
  HomeErrorState(this.error);
}
