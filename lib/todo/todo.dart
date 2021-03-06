import 'package:flutter/material.dart';
import 'list.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => new _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  showDemoDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return new AlertDialog(
          title: new Text('Welcome'),
          content: new Text('You can create some todo tasks.'),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Gotta'),
              onPressed: () {
                print('Clicked!');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TODO'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.lightbulb_outline),
            tooltip: 'TIPS',
            onPressed: showDemoDialog,
          )
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new TodoList(),
      ),
    );
  }
}
