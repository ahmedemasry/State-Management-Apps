import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements_apps/bloc/counter_bloc.dart';
import 'package:state_managements_apps/bloc/counter_event.dart';
import 'package:state_managements_apps/ui/widgets/assigned_tasks_list.dart';
import 'package:state_managements_apps/utils/constants.dart';

class BlocScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  CounterBloc cBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(appTitle)),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(color:Colors.red, icon: Icon(Icons.remove),onPressed: () => cBloc.add(CounterEvent.decrement),),

                  BlocBuilder<CounterBloc, int>(
                      builder:(context, state) {
                        return Text("$state");
                      },
                  ),

                  IconButton(color: Colors.green,icon: Icon(Icons.add), onPressed: () => cBloc.add(CounterEvent.increment),),
                ],
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
