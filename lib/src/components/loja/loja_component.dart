import 'package:angular/angular.dart';
import '../../livro_service.dart';
import '../../livro.dart';

@Component(
  selector: 'loja-component',
  templateUrl: 'loja_component.html',
  styleUrls: ['loja_component.css'],
  directives: [coreDirectives],
  providers: [ClassProvider(LivroService)],
)
class LojaComponent implements OnInit {
  List<Livro> livros;
  final LivroService _livroService;
  LojaComponent(this._livroService);

  @override
  void ngOnInit() {
    livros = _livroService.getAll();
  }
}
