import 'package:flutter_test/flutter_test.dart';
import 'package:increment_app/domain/entities/counter_entity.dart';

void main() {
  group('Counter Entity', () {
    test('se a variavel counter começa com o valor de 0', () {
      CounterEntity counterEntity = CounterEntity();
      int result = counterEntity.count;
      expect(result, 0);
    });
    test('se o metodo increment está adicionando mais 1 da variavel count', () {
      CounterEntity counterEntity = CounterEntity();
      counterEntity.increment();
      int result = counterEntity.count;
      expect(result, 1);
    });
    test('se o metodo decrement está retirando mais 1 da variavel count', () {
      CounterEntity counterEntity = CounterEntity();
      counterEntity.decrement();
      int result = counterEntity.count;
      expect(result, -1);
    });
  });
}
