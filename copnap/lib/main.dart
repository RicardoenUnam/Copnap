import 'package:flutter/material.dart';

void main() => runApp(MyApp());

int _index = 1;
String numerostr = '';
int numero = 0;
int numeroExt;
var myColor = Colors.black;
int backgr = 0;

_restart() {
  numero = 0;
  numerostr = "";

}

bool _esPrimo() {
  int contador = 0;

  if (numeroExt == 1 || numeroExt % 2 == 0 || numeroExt == 2) {
    return false;
  }
  for (int x = 1; x <= numeroExt; x++) {
    if (numeroExt % x == 0) {

      contador++;
      if(contador > 2){
        contador = 0;
        return false;
      }
    } else {
      continue;
    }
  }
  return true;
}

int _mcd2(int a, int b) {
  int tmp = 0, tmp2 = 0;
  if (a <= 0 || b <= 0) {
    return 0;
  }
  if (a == b) {
    return a;
  }
  if (a < b) {
    // Efectuamos las operaciones dependiendo cual es menor.
    tmp = a;
    tmp2 = b - a;
  } else {
    tmp = a - b;
    tmp2 = b;
  }
  if (tmp < 0 || tmp2 < 0) {
    return 1;
  } //En caso de si resulta negativo el número.}
  else {
    return _mcd2(tmp, tmp2);
  }
}


class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Is Prime', icon: Icons.looks_one),
  const Choice(title: 'Prime List', icon: Icons.looks_two),
  const Choice(title: 'Phi', icon: Icons.looks_3),
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Copnap',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Copnap'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _append1() {
    setState(() {
      numerostr = numerostr + '1';
      numero = int.parse(numerostr);
    });
  }

  void _append2() {
    setState(() {
      numerostr = numerostr + '2';
      numero = int.parse(numerostr);
    });
  }

  void _append3() {
    setState(() {
      numerostr = numerostr + '3';
      numero = int.parse(numerostr);
    });
  }

  void _append4() {
    setState(() {
      numerostr = numerostr + '4';
      numero = int.parse(numerostr);
    });
  }

  void _append5() {
    setState(() {
      numerostr = numerostr + '5';
      numero = int.parse(numerostr);
    });
  }

  void _append6() {
    setState(() {
      numerostr = numerostr + '6';
      numero = int.parse(numerostr);
    });
  }

  void _append7() {
    setState(() {
      numerostr = numerostr + '7';
      numero = int.parse(numerostr);
    });
  }

  void _append8() {
    setState(() {
      numerostr = numerostr + '8';
      numero = int.parse(numerostr);
    });
  }

  void _append9() {
    setState(() {
      numerostr = numerostr + '9';
      numero = int.parse(numerostr);
    });
  }

  void _append0() {
    setState(() {
      numerostr = numerostr + '0';
      numero = int.parse(numerostr);
    });
  }

  _rest(){
    setState(() {
      _restart();
    });
  }

  _final() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
    numeroExt = numero;
    _restart();
  }



  Widget _button(String number, Function() f) {
    // Creating a method of return type Widget with number and function f as a parameter
    return MaterialButton(
      height: 100.0,
      child: Text(number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
      textColor: Colors.black,
      color: Colors.grey[100],
      onPressed: f,
    );
  }

  Widget _body() {
    return Scaffold(
      body: Container(
        child: Column(
          //Since we have multiple children arranged vertically, we are using column
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Equal vertical space between all the children of column
          children: <Widget>[
            // the column widget uses the children property
            Container(
              // Display Container
              constraints: BoxConstraints.expand(
                // Creating a boxed container
                height:
                Theme.of(context).textTheme.display1.fontSize * 1.0 + 100.0,
              ),
              alignment: Alignment
                  .bottomRight, // Aligning the text to the bottom right of our display screen
              color:
              Colors.white, // Seting the background color of the container
              child: Text(
                numero.toString(),
                style: TextStyle(
                  // Styling the text
                    fontSize: 50.0,
                    color: Colors.black),
                textAlign: TextAlign.right,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("1", _append1), // using custom widget _button
                _button("2", _append2),
                _button("3", _append3),
                _button("C", _rest),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("4", _append4), // using custom widget _button
                _button("5", _append5),
                _button("6", _append6),
                _button("0", _append0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("7", _append7), // using custom widget _button
                _button("8", _append8),
                _button("9", _append9),
                _button("=", _final),
              ],
            ),
          ],
        ),
      ),
    );
  }


  void _onItemTapped(int index) {
    setState(() {
      _index = index;
      Color();
      _restart();
    });
  }

  void Color(){
    backgr++;
    switch(backgr % 4){
      case 1: myColor = Colors.blueAccent;
      break;
      case 2: myColor = Colors.deepPurple; break;
      case 3: myColor = Colors.green; break;
      default: myColor = Colors.red; break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: myColor,
          title: Text(widget.title),
        ),
        body: _body(),
        bottomNavigationBar: BottomNavigationBar(currentIndex: _index,
            fixedColor: Colors.deepPurple,
            onTap: _onItemTapped, items: <BottomNavigationBarItem> [
              BottomNavigationBarItem(icon: Icon(Icons.looks_one), title: Text('Is prime?', style: TextStyle(fontSize: 20.0),)),
              BottomNavigationBarItem(icon: Icon(Icons.looks_two), title: Text('Prime List', style: TextStyle(fontSize: 20.0),)),
              BottomNavigationBarItem(icon: Icon(Icons.looks_3), title: Text('Phi', style: TextStyle(fontSize: 20.0),)),
            ])
    );
  }
}


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool tmp = false;
  int contadorExt = 0;
  List list = [];
  int cont;

  int _mcd() {
    cont = 0;
    list = [];
    for (int y = 1; y < numeroExt; y++) {
      if (_mcd2(numeroExt, y) == 1) {
        list.add(y.toString());
        cont++;
      }
    }
    return cont;
  }


  void lista(){
    contadorExt = 0;
    list = [];
    for (int x = 1; x <= numeroExt; x++) {
      if (numeroExt % x == 0) {
        list.add(x.toString());
        contadorExt++;
      } else {
        continue;
      }
    }
  }

  void lista2(){
    contadorExt = 0;
    list = [];
    for (int x = 1; x <= numeroExt; x++) {
      contadorExt = 0;
      for (int y = 1; y <= x; y++) {
        if (x % y == 0) {
          contadorExt++;
        }
      }
      if (contadorExt <= 2 && x != 1) {
        list.add(x.toString());
      }
    }

  }


  Widget _getBody() {
    if(tmp == false && _index != 1){
      tmp == true;
      return null;
    }
    else{
      if(_index == 0){
        lista();
      }else if(_index == 1){
        lista2();
      }else {
        _mcd();
      }
      return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(index.toString()),
            child: ListTile(
              title: Text(
                list[index],
                style: TextStyle(color: Colors.black, fontSize: 22.0),
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _index == 0 ? (_esPrimo() == true ? Colors.green : Colors.red) : Colors.black,
        title: _index == 0 ? (_esPrimo() == true ? Text('$numeroExt is prime') : Text('$numeroExt isn\'t prime')) : (_index == 1 ? (Text('Prime List --> $numeroExt')) : (Text('Phi($numeroExt, n) == ${_mcd()}'))),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                tmp == false ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up),
            onPressed: () {
              setState(() {
                tmp = tmp == false ? true : false;
              });
            },
          ),
        ],
      ),
      body: _getBody(),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.pop(context); _restart();} , child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: null), backgroundColor: Colors.black,),
    );
  }
}

