import 'package:bloc_zero_to_hero/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;

    setUp(() {
      //! cria e inicializa os dados necessários que vamos utilizar
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit.close();
    });
    test('the initial state of counterCubuit is counterSate(CounterValue: 0)',
        () {
      expect(counterCubit.state, const CounterState(counterValue: 0));
    });

    blocTest(
      'cubit should emit a CounterState(counterValue: 1, wasIncremented: true). when cubit.increment() function is called)',
      build: () => counterCubit,
      act: (cubit) => counterCubit.increment(),
      expect: () => [const CounterState(counterValue: 1, wasIncremented: true)],
    );
    blocTest(
        'cubit should emit a CounterState(counterValue: -1, wasIncremented: false). when cubit.decrement() function is called)',
        build: () => counterCubit,
        act: (cubit) => counterCubit.decrement(),
        expect: () =>
            [const CounterState(counterValue: -1, wasIncremented: false)]);
  });
}
