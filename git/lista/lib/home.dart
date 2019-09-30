import 'package:flutter/material.dart';
import 'package:lista/task.dart';
import 'package:lista/task.dart' as prefix0;

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Task> tarefas = [Task()];

  void initState() {
    super.initState();
    Map<String, Widget> teste = Map();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarefas"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.clear_all,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xff5E5E5E),
        padding: EdgeInsets.fromLTRB(16, 16, 16, 100),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: tarefas.map((Task task) {
              return Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      setState(() {
                        task.feito = !task.feito;
                      });
                    },
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    icon: Icon(
                      task.feito
                          ? Icons.radio_button_checked
                          : Icons.radio_button_unchecked,
                      size: 35,
                    ),
                  ),
                  Expanded(
                    child: TextField(),
                  )
                ],
              );
            }).toList()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tarefas.add(Task());
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
