import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(counterValue: 0));

  //! Quando uso o state. estou acessando o estado atual do Cubit
  void increment() => emit(CounterState(
        counterValue: state.counterValue + 1,
        wasIncremented: true,
      ));
  void decrement() => emit(CounterState(
        counterValue: state.counterValue - 1,
        wasIncremented: false,
      ));
}
