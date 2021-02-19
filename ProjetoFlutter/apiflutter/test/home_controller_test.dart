import 'package:apiflutter/home_controller.dart';
import 'package:apiflutter/todo_model.dart';
import 'package:apiflutter/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class TodoRepositoryMock extends Mock implements TodoRepository {}

main() {
  final repository = TodoRepositoryMock();

  final controller = HomeController(repository);

  test('Deve preencher variavel todos', () async {
    when(repository.fetchTodos()).thenThrow(Exception());

    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.error);
  });
}
