import 'package:bloc_practice/bloc/counter_bloc.dart';
import 'package:bloc_practice/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDec extends StatelessWidget {
  const IncDec({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context); // when bloc is running
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                counterBloc.add(
                  CounterIncremented(),
                );
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                counterBloc.add(CounterDecremented());
                // counterCubit.decrement(); when bloc is running
              },
              child: const Icon(
                Icons.minimize_outlined,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.navigate_before,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
