import 'package:flutter/cupertino.dart';
import '../model/random_model.dart';
import '../services/random_services.dart';
class UserProvider extends ChangeNotifier {
  UserModel? userData;



  Future<void> fetchUsers() async {
    userData = await UserService.fetchRandomUsers();
    notifyListeners();
  }
}