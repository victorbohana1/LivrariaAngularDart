import 'package:angular/angular.dart';
import 'package:livraria/src/lista_livros.dart';
import '../../livro_service.dart';
import '../../livro.dart';

@Component(
  selector: 'tabela-component',
  templateUrl: 'tabela_component.html',
  styleUrls: ['../loja/loja_component.css', 'tabela_component.css'],
  directives: [coreDirectives],
  providers: [ClassProvider(LivroService)],
)
class TabelaComponent implements OnInit {
  List<Livro> livros;

  final LivroService _livroService;
  TabelaComponent(this._livroService);

  @override
  void ngOnInit() {
    livros = _livroService.getAll();
  }

  void adicionarLivro(titulo, autor, url, preco, aval, estoque) {
    var precoL = double.parse(preco);
    var avalL = int.parse(aval);
    var estoqueL = int.parse(estoque);
    var novoLivro = Livro(titulo, autor, url, precoL, avalL, estoqueL);

    _livroService.adicionarLivro(novoLivro);
  }

  void removerLivro(index) {
    _livroService.removerLivro(index);
  }
}
