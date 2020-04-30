import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:state_management/bloc/counter_bloc.dart';

class Page2 extends StatelessWidget {

  final Counter _counterBloc = BlocProvider.getBloc<Counter>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2')),
      body: SafeArea(
        child: Center(
            child: Text('${_counterBloc.counter}')
        ),
      ),
    );
  }
}
