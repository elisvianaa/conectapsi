import 'curse_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'curse_page.dart';

class CurseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CurseController(Modular.get())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CursePage()),
      ];

  static Inject get to => Inject<CurseModule>.of();
}
