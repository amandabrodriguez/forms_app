import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(counter: 5, transactionCount: 0));

  void increaseBy(int value) {
    emit(
      state.copyWith(
        counter: state.counter + value,
        transactionCount: state.transactionCount + 1,
      ),
    );
  }

  void resetCounter() {
    emit(
      state.copyWith(
        counter: 0,
      ),
    );
  }

  void resetAll() {
    emit(
      state.copyWith(
        counter: 0,
        transactionCount: 0,
      ),
    );
  }
}
