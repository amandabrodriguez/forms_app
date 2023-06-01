part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState({
    this.counter = 10,
    this.transactionCount = 0,
  });

  final int counter;
  final int transactionCount;

  CounterState copyWith({
    int? counter,
    transactionCount,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        transactionCount: transactionCount ?? this.transactionCount,
      );

  @override
  List<Object> get props => [counter, transactionCount];
}
