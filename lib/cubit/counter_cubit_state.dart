part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counterValue;
  final bool? wasIncremented;

  const CounterState({
    required this.counterValue,
    this.wasIncremented,
  });

  @override
  //! props servem para indicar ao equatable quais variaveis queremos que sejam comparadas
  List<Object?> get props => [
        counterValue,
        wasIncremented,
      ];
}
