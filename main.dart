import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'global.dart';
import 'intraypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

    return DefaultTabController(
      length: 3,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Stack(
            children: <Widget> [
              TabBarView(
               children: [
                IntrayPage(),
                Container(color: Colors.orange,),
                Container(
                  color: Colors.lightGreen,
                ),
              ],
            ),
              Container(
                padding: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50),),
                    color: Colors.white),
                height: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Text("Intray", style: TextStyle(fontSize: 50, fontFamily: 'Pacifico'),),
                  Container()
                 ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(top: 115, left: MediaQuery.of(context).size.width*0.5 - 25),
                child: FloatingActionButton(
                  elevation: 10,
                  splashColor: Colors.red,
                  child: Icon(Icons.add, color: Colors.white,),
                  onPressed: () {},
                  backgroundColor: cardColor,
                ),
              ),
           ]
          ),
          appBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
            ],
            labelColor: Colors.black,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.transparent,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
