import 'package:bloc_series/bloc/counter_bloc/bloc_logic.dart';
import 'package:bloc_series/bloc/counter_bloc/events.dart';
import 'package:bloc_series/bloc/counter_bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc_Series"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          BlocBuilder<CounterBloc,CounterState>(
              builder: (context, state){
                return Center(child: Text(state.counter.toString(),style: TextStyle(fontSize: 50),));
              }),

       const   SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounter());
                print("bild");
              },
              child: const Text("Increment"),),
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCounter());
              },
                child: const Text("Decrement"),),
            ],
          )
        ],
      ),
    );
  }
}
