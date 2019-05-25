import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  
  final String title;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(children: <Widget>[
      Center(
        child: Container(
          child: RaisedButton(
            onPressed:(){
            _scaffoldKey.currentState.showSnackBar(new SnackBar(content: Text("Gar merechhe!"),));
            },
            child: Text("Gar ta mar"),
            color: Colors.amber,
          )
      ,
       
      )
      ,),
      Center(
        
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          height:200.0,
          width: 200.0,
          child:ListView(
            children: <Widget>[
          Image.network("https://vmp-www.imgix.net/images/denzel_header.original.jpg?auto=format&w=650&h=433.33&fit=crop&bri=-10"),
          
          Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (choose the "Toggle Debug Paint" action
          // from the Flutter Inspector in Android Studio, or the "Toggle Debug
          // Paint" command in Visual Studio Code) to see the wireframe for each
          // widget.],)
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
            ),
          ],
        ),
            ]),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ],)
    );
    
  }
}
