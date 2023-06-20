import 'package:users_api/src/data/models/user.dart';
import 'package:users_api/src/data/users_data_source.dart';

class InMemoryUsersDataSource extends UsersDataSource {
  /// In memory [User] list
  final List<User> users = const [
    User(id: '1', name: 'Zunera Adil', email: 'zunera@gmail.com'),
    User(id: '2', name: 'Arslan', email: 'arslan@gmail.com'),
    User(id: '3', name: 'Usama', email: 'usama@gmail.com'),
  ];

  @override
  Future<List<User>> getAllUsers() async {
    return users;
  }

  @override
  Future<User> getUserById({required String id}) async {
    return users.firstWhere(
      (user) => user.id == id,
      orElse: () => const User.empty(),
    );
  }
}
