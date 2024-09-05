import 'src/models/user.model.dart';
import 'src/service/user.service.dart';

Future<void> runApp() async {
  final userService = UserService();

  try {
    List<User> users = await userService.fetchUsers();
    print('Listado de todos los usuarios');
    for (var user in users) {
      print('Id: ${user.id}');
      print('Name: ${user.name}');
      print('Username: ${user.username}');
      print('Email: ${user.email}');
      print('------');
    }

    List<User> filterUserByName = userService.filterByNameLength(users);
    print(
        'Lista de Usuarios filtrados cuyo nombre de usuario sea mayor a 6 caracteres:');
    for (var user in filterUserByName) {
      print('- ${user.username}');
    }

    int countBizEmail = userService.countEmailBiz(users);
    print(
        'La cantidad de los usuarios cuyo email pertenece a "biz" son: $countBizEmail');
  } catch (e) {
    print('Error al obtener los datos: $e');
  }
}
