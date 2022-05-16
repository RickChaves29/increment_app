import 'package:flutter_test/flutter_test.dart';
import 'package:increment_app/domain/usecases/checked_decrement_counter_usecase.dart';

void main() {
  group('Checked Decrement Counter', () {
    test('se o metodo execute retorna false se o paramentro for maior que 0',
        () {
      CheckedDecrementCounterUseCase checkedDecrementCounterUseCase =
          CheckedDecrementCounterUseCase();
      bool result = checkedDecrementCounterUseCase.execute(1);
      expect(result, false);
    });
    test(
        'se o metodo execute retorna true se o paramentro for menor ou igual 0',
        () {
      CheckedDecrementCounterUseCase checkedDecrementCounterUseCase =
          CheckedDecrementCounterUseCase();
      bool result = checkedDecrementCounterUseCase.execute(0);
      expect(result, true);
    });
  });
}
