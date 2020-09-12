import 'livro.dart';
import 'lista_livros.dart';

class LivroService {
  List<Livro> getAll() => listaLivros;

  void adicionarLivro(Livro novoLivro) {
    listaLivros.add(novoLivro);
  }

  void removerLivro(int index) => listaLivros.removeAt(index);
}
