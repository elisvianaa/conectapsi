import 'case_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'case_page.dart';

class CaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CaseController(Modular.get())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CasePage()),
      ];

  static Inject get to => Inject<CaseModule>.of();
}
