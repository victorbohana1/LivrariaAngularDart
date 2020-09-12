import 'route_paths.dart';
import 'package:angular_router/angular_router.dart';
import 'components/loja/loja_component.template.dart' as loja_template;
import 'components/cadastro/tabela_component.template.dart' as tabela_template;

class Routes {
  static final loja = RouteDefinition(
    routePath: RoutePaths.loja,
    component: loja_template.LojaComponentNgFactory,
  );

  static final tabela = RouteDefinition(
    routePath: RoutePaths.tabela,
    component: tabela_template.TabelaComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.loja.toUrl(),
    ),
    loja,
    tabela,
  ];
}
