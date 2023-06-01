import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  @override
  Widget build(BuildContext context) {
    // final counterState = context.watch<CounterCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: context.select(
          //Retorna la 1ra instancia de CounterCubit
          (CounterCubit value) =>
              Text('Cubit Counter: ${value.state.transactionCount}'),
        ),
        actions: [
          IconButton(
            onPressed: () => context.read<CounterCubit>().resetAll(),
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text('Counter value: ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Icon(Icons.refresh_outlined),
            onPressed: () => context.read<CounterCubit>().resetCounter(),
          ),
          const SizedBox(height: 15.0),
          FloatingActionButton(
            heroTag: '2',
            child: const Text('+3'),
            onPressed: () => increaseCounterBy(context, 3),
          ),
          const SizedBox(height: 15.0),
          FloatingActionButton(
            heroTag: '3',
            child: const Text('+2'),
            onPressed: () => increaseCounterBy(context, 2),
          ),
          const SizedBox(height: 15.0),
          FloatingActionButton(
            heroTag: '4',
            child: const Text('+1'),
            onPressed: () => increaseCounterBy(context),
          ),
        ],
      ),
    );
  }

  void increaseCounterBy(BuildContext context, [int value = 1]) =>
      context.read<CounterCubit>().increaseBy(value);
}
