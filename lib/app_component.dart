import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/livro_service.dart';
import 'src/routes.dart';
import 'src/route_paths.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
  providers: [ClassProvider(LivroService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
