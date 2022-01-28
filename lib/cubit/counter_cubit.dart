import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int count;
  CounterCubit(this.count) : super(CounterInitial(count));

  void increment() => emit(CounterIncrement(count++));

}
