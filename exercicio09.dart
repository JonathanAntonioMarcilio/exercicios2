import 'dart:async';

final controller = StreamController<int>.broadcast();

void main() {

  controller.stream.listen(
    (mensagem) => print('Imprimindo os dados: $mensagem'),
    onError: (erro) => print('Listener 1 erro: $erro'),
    onDone: () => print('Listener 1 finalizado'),
  );

  controller.stream.listen(
    (mensagem) => print('Contando os dados: $mensagem'),
    onError: (erro) => print('Listener 1 erro: $erro'),
    onDone: () => print('Listener 1 finalizado'),
  );

  controller.stream.listen(
    (mensagem) => print('Somando os dados: $mensagem'),
    onError: (erro) => print('Listener 1 erro: $erro'),
    onDone: () => print('Listener 1 finalizado'),
  );

  controller.sink.add(1);

}


