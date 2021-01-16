import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arnav App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Internship'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              // false = user must tap button, true = tap outside dialog
              builder: (BuildContext dialogContext) {
                return Container(
                  width: width * 0.8,
                  height: height * 0.7,
                  child: Column(
                    children: [
                      topWidget(),
                      radioButtonWidget('kaidgfs'),
                      radioButtonWidget('kaidgfs'),
                      radioButtonWidget('kaidgfs'),
                      Divider(
                        color: Colors.black12,
                        height: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          circularButton(Icons.minimize),
                          Text('0'),
                          circularButton(Icons.minimize),
                        ],
                      ),
                      Divider(
                        color: Colors.black12,
                        height: 2,
                      ),
                      Column(
                        children: [
                          rowText('text', 'price'),
                          rowText('text', 'price'),
                          rowText('text', 'price'),
                        ],
                      ),
                      Divider(
                        color: Colors.black12,
                        height: 4,
                      ),
                      rowText('asd', 'sd'),
                    ],
                  ),
                );
              },
            );
          },
          child: Text('TAp to Open me pleasssseeeee!!!!!!!!!!'),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  /// rectanlge orange button
  Widget Button() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Center(
          // TODO widget daale yaha pe
          // child: ,
          ),
    );
  }

  Widget topWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Button(),
        Text(
          'Size',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Button(),
      ],
    );
  }

  circularButton(IconData icons) {
    return RawMaterialButton(
      onPressed: () {},
      fillColor: Colors.pink,
      child: Center(
          // TODO child me daal le icon

          ),
    );
  }

  rowText(String s, String t) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          s,
        ),
        Text('\$$t')
      ],
    );
  }

// TODO  Function daal le yaha pe
  radioButtonWidget(String title) {
    return RadioListTile(
      value: 1,
      title: Text('Tielew'),
      groupValue: 'null',
      onChanged: (Object value) {},
    );
  }
}
