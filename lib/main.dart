import 'package:flutter/material.dart';

import 'customModalSheet.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            leading: new Icon(Icons.tag_faces),
            expandedHeight: 150.0,
            elevation: 0.0,
            pinned: false,
            floating: true,
            backgroundColor: Colors.white,
            flexibleSpace: new FlexibleSpaceBar(
              background: new Image.network('https://pre00.deviantart.net/6f68/th/pre/f/2012/274/3/a/twitter_minimalistic_background_by_vaughnwhiskey-d5gityo.png',
              fit: BoxFit.cover ,),
              title: new Text('Twitter',
              style: new TextStyle(
                fontSize: 36.0,
                color: Colors.white
              ),


            ),
          ),),
          new SliverFillRemaining(
            child: new Container(
              margin: new EdgeInsets.all(4.0),
                          child: new ListView.builder(
                            itemCount: 4,
                           itemBuilder:(context, index){return new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Card(
                    color: Colors.grey[200],
                    child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new CircleAvatar(
                        radius: 25.0,
                        child: new Icon(Icons.tag_faces),
                      ),
                    ),
                    new Expanded(
                        child: new Column(
                        children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text('India beat Kenya by 3-0. Captain Sunil Chhetri scored 2 goals in his 100th international match'),
                            ),
                            new Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Image.network('https://www.thenewsminute.com/sites/default/files/styles/news_detail/public/Sunil_chetri_india_jersey_AIFFmedia_750x500_0.jpg?itok=1RdliibZ'),
                            )
                        ],
                      ),
                    )
                    ],),
                  ),
                ],
              );}
                          ),
            ),
          )

        ]
      ),
      // appBar: new AppBar(
      //   title: new Text('Twitter UI'),
      // ),
      // body: new Padding(
      //   padding: new EdgeInsets.only(top: 25.0),
      //         child: new Center(
      //     child: new Column(
      //       children: <Widget>[
      //         new Text('Twitter',
      //         style: new TextStyle(
      //           fontSize: 20.0
      //         ),),
      //         new Card(
      //             child: new Row(children: <Widget>[
      //             new Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: new CircleAvatar(
      //                 radius: 25.0,
      //                 child: new Icon(Icons.supervisor_account),
      //               ),
      //             )
      //           ],),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton.extended(
        label: new Text('Trending'),
        icon: new Icon(Icons.trending_down),
        onPressed: _showModalSheet,
              ),
              bottomNavigationBar: new Container(
                decoration: new BoxDecoration(
                  boxShadow: [new BoxShadow(
                    blurRadius: 5.0,
                    color: Colors.grey
                  )]
                ),
                child: new BottomAppBar(
                  hasNotch: false,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                          new IconButton(
                          onPressed: null,
                          icon: new Icon(Icons.timeline),
                        ),
                        new IconButton(
                          onPressed: null,
                          icon: new Icon(Icons.account_circle),
                        )
                    ],
                  ),
                ),
                
              ),
            );
          }
        
          void _showModalSheet(){ 
 showCustomModalBottomSheet(
 context: context,
  builder: (context)=> new Container(
    
    decoration: new BoxDecoration(
      
      borderRadius: new BorderRadius.only(
        topLeft: new Radius.circular(10.0),
        topRight: new Radius.circular(10.0),
      ),
      color: Colors.white,
    ),
    height: 300.0,
    child: new SingleChildScrollView(
          child: new Column(
        children: <Widget>[
          new ListTile(
            title: const Text('#INDIAvsKENYA'),
            subtitle: const Text('10,000 tweets'),
            leading: new CircleAvatar(
              child: Icon(Icons.face),
            )),
            new Divider(
              height: 1.0,
              color: Colors.grey[200],
            ),
            new ListTile(
            title: const Text('#FRENCHOPEN2018'),
            subtitle: const Text('10,000 tweets'),
            leading: new CircleAvatar(
              child: Icon(Icons.notifications),
            )),
            new ListTile(
            title: const Text('#FIFAWORLDCUP'),
            subtitle: const Text('10,000 tweets'),
            leading: new CircleAvatar(
              child: Icon(Icons.track_changes),
            )),
            new Divider(
              color: Colors.grey[400],
              height: 1.0,
            ),
            new ListTile(
            title: const Text('#INDIAELECTION2019'),
            subtitle: const Text('10,000 tweets'),
            leading: new CircleAvatar(
              child: Icon(Icons.verified_user),
            )),
            new Divider(
              color: Colors.grey[400],
              height: 1.0,
            ),
            new ListTile(
            title: const Text('#INDIAvsKENYA'),
            subtitle: const Text('10,000 tweets'),
            leading: new CircleAvatar(
              child: Icon(Icons.verified_user),
            )),
          
        ],
      ),
    )
  )
 );
}
}