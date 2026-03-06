import 'dart:async';

final controller = StreamController<String>();

void main() {

  Future.delayed(Duration(seconds: 1), () => controller.sink.add("Teste 01"), );
  Future.delayed(Duration(seconds: 2), () => controller.sink.add("Teste 02"), );
  Future.delayed(Duration(seconds: 3), () => controller.sink.add("Teste 03"), );
  Future.delayed(Duration(seconds: 4), () => controller.sink.add("Teste 04"), );
  Future.delayed(Duration(seconds: 5), () => controller.sink.add("Teste 05"), );

  controller.stream.listen(
    (mensagem) => print(mensagem),
    onError: (erro) => print("Erro: $erro"),
    onDone: () => print("Stream Finalizado"),
  );

}