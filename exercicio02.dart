Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Maria Silva', );
}

void main() {

   void carregarDados() async {
    try{

      print("Buscando Usuário");

      String nome = await buscarUsuario();

      print("Usuário: $nome");

      throw Exception("teste");

    } catch (e){
      print("Erro: $e");
    }
  }

  carregarDados();
}