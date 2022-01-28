part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  final int count;
  CounterInitial(this.count);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterInitial && o.count == count;
  }

  @override
  int get hashCode => count.hashCode;

}

class CounterIncrement extends CounterState {
  final int count;
  CounterIncrement(this.count);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterIncrement && o.count == count;
  }

  @override
  int get hashCode => count.hashCode;

}
