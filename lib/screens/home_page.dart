import 'package:bloc_counter/cubit/counter_cubit.dart';
import 'package:bloc_counter/widgets/counter_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            if (state is CounterInitial) {
              return CounterText(text: state.count.toString());
            } else if (state is CounterIncrement) {
              return CounterText(text: state.count.toString());
            }
            return const CounterText(text: "Error");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterCubit>().increment(),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
