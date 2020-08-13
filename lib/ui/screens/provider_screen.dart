import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_managements_apps/bloc/counter_bloc.dart';
import 'package:state_managements_apps/bloc/counter_event.dart';
import 'package:state_managements_apps/ui/widgets/assigned_tasks_list.dart';
import 'package:state_managements_apps/utils/constants.dart';

class BlockScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(appTitle)),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: ChangeNotifierProvider(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(color:Colors.red, icon: Icon(Icons.remove),onPressed: () {} ,),

                    Text("a"),

                    IconButton(color: Colors.green,icon: Icon(Icons.add), onPressed: () {} ,),
                  ],

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
