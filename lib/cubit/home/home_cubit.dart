import 'package:bloc/bloc.dart';
import 'package:blocapi/cubit/home/home_state.dart';
import 'package:blocapi/model/get_users_model.dart';
import 'package:blocapi/service/remote/get_users_service.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState()) {
    getUsers();
  }

  // Home logic here...

  void getUsers() async {
    emit(HomeLoadingState());
    await GetUserService.getUsers().then((value) {
      if (value is List<UsersModel>) {
        emit(HomeCompleteState(value));
      } else {
        emit(HomeErrorState(value));
      }
    });
  }
}
