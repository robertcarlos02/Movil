import 'src/models/user.model.dart';
import 'src/service/user.service.dart';

Future<void> runApp() async {
  final userService = UserService();

  try {
    List<User> users = await userService.fetchUsers();
    mostrarUsuarios(users);

    List<User> filteredUsers = userService.filterByNameLength(users);
    mostrarUsuariosFiltrados(filteredUsers);

    int countBizEmails = userService.countEmailBiz(users);
    mostrarCantidadCorreosBiz(countBizEmails);
  } catch (e) {
    print('Error al obtener los datos: $e');
  }
}

String truncateString(String text, int maxLength) {
  if (text.length <= maxLength) return text;
  return text.substring(0, maxLength - 3) + '...';
}

void mostrarUsuarios(List<User> users) {
  print('Listado de todos los usuarios en forma de tabla:');
  print(
      '+------+----------------------+---------------------+------------------------------+');
  print(
      '| Id   | Name                 | Username            | Email                        |');
  print(
      '+------+----------------------+---------------------+------------------------------+');

  users.forEach((user) {
    print('| ${user.id.toString().padRight(5)}'
        '| ${truncateString(user.name, 20).padRight(20)}'
        ' | ${truncateString(user.username, 17).padRight(17)}'
        '   | ${truncateString(user.email, 28).padRight(28)} |');
  });

  print(
      '+------+----------------------+---------------------+------------------------------+');
}

void mostrarUsuariosFiltrados(List<User> users) {
  print('\nUsuarios filtrados cuyo nombre de usuario es mayor a 6 caracteres:');
  print('+-------------------+');
  print('| Username          |');
  print('+-------------------+');

  users.forEach((user) {
    print('| ${truncateString(user.username, 17).padRight(17)} |');
  });

  print('+-------------------+');
}

void mostrarCantidadCorreosBiz(int count) {
  print('\n--- Estadísticas ---');
  print('La cantidad de usuarios con correos ".biz" es: $count');
  print('--------------------');
}
