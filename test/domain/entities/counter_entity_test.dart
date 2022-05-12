import 'package:flutter_test/flutter_test.dart';
import 'package:increment_app/domain/entities/counter_entity.dart';

void main() {
  test('se a variavel counter começa com o valor de 0', () {
    CounterEntity counterEntity = CounterEntity();
    int result = counterEntity.count;
    expect(result, 0);
  });
}
