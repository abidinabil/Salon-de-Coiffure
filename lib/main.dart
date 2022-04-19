import 'dart:html';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

List imageUrls = [
  "https://media.istockphoto.com/photos/hairdresser-tools-on-wooden-table-with-blurred-beauty-salon-picture-id1300448358?s=612x612",
  "https://images.unsplash.com/photo-1554424518-336ec861b705?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BhJTIwZmVtbWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  "https://media.istockphoto.com/photos/render-of-a-luxury-hotel-swimming-pool-picture-id1331465591?b=1&k=20&m=1331465591&s=170667a&w=0&h=rPMAeA39157a14nGTb4hxfFnv4NMad8swqIJDjwewsM=",
  "https://media.istockphoto.com/photos/shot-of-a-young-couple-spending-the-day-together-at-a-spa-picture-id1325095866?b=1&k=20&m=1325095866&s=170667a&w=0&h=kcH82xH0c6FQQ4VEVP9NSr7s_3VH6Afnd--LwEuTIK8=",
  "https://images.unsplash.com/photo-1626954079979-ec4f7b05e032?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNvaWZmdXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://media.istockphoto.com/photos/femme-fatale-dancing-portrait-in-studio-with-bright-toning-blue-and-picture-id1082850622?k=20&m=1082850622&s=612x612&w=0&h=Tx_MqbEKn962ZLfNQS2YogQXAmK3I4lGjMqmxyD9hBU=",
  "https://media.istockphoto.com/photos/hairdresser-female-making-hair-extensions-to-young-woman-with-blonde-picture-id1305808016?b=1&k=20&m=1305808016&s=170667a&w=0&h=vne7jlO5iobPPKoNgunB1a4yQZ_y0MYwv3NY3xUTpHo=",
  "https://media.istockphoto.com/photos/hair-beauty-salon-picture-id1341429602?b=1&k=20&m=1341429602&s=170667a&w=0&h=996IdyjbO3EO1HXiobW382SLiDlJ8zYqOZxzKw17U7U=",
  "https://images.unsplash.com/photo-1560869713-7d0a29430803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGFpciUyMHNhbG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1562322140-8baeececf3df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aGFpciUyMHNhbG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1595476108010-b4d1f102b1b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aGFpciUyMHNhbG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1559599101-f09722fb4948?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGhhaXIlMjBzYWxvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://media.istockphoto.com/photos/directly-above-asian-chinese-female-lying-down-for-hair-wash-at-hair-picture-id1328333210?b=1&k=20&m=1328333210&s=170667a&w=0&h=-XUwhY7tDKh242igUT-Q2zKS3wd-bzkNmaA97cauQ9M=",
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            // ----------------------------- AppBar
            appBar: AppBar(
              elevation: 100,
              title: Text("Angel Beautyy  "),
              centerTitle: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                )),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset("images/coiffure.jpg"),
                  ListTile(
                      title: Text(
                    "Angel beauty",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 20,
                        letterSpacing: 4.0,
                        fontWeight: FontWeight.bold),
                  )),
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(letterSpacing: 2.0),
                    ),
                  ),

                  Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.pink,
                    ),
                  ),

                  //------------------ Exclusive Service
                  Text(
                    'Exclusive Service',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.black45,
                    ),
                  ),
                  Container(
                    height: 500,
                    width: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    child: Column(children: <Widget>[
                      Padding(padding: EdgeInsets.all(15)),
                      ListTile(
                        title: Text(
                          "Braids && Twist",
                          style: TextStyle(
                            wordSpacing: 2.0,
                            letterSpacing: 3.0,
                          ),
                        ),
                        textColor: Colors.black,
                        trailing: Text("50d"),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      ListTile(
                        title: Text(
                          "Hair Color",
                          style: TextStyle(
                            wordSpacing: 2.0,
                            letterSpacing: 3.0,
                          ),
                        ),
                        textColor: Colors.black,
                        trailing: Text("50d"),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      ListTile(
                        title: Text(
                          "corrective  Color",
                          style: TextStyle(
                            wordSpacing: 2.0,
                            letterSpacing: 3.0,
                          ),
                        ),
                        textColor: Colors.black,
                        trailing: Text("50d"),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      ListTile(
                        title: Text(
                          "Partial foil",
                          style: TextStyle(
                            wordSpacing: 2.0,
                            letterSpacing: 3.0,
                          ),
                        ),
                        textColor: Colors.black,
                        trailing: Text("50d"),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      ListTile(
                        title: Text(
                          "Hair Extension",
                          style: TextStyle(
                            wordSpacing: 2.0,
                            letterSpacing: 3.0,
                          ),
                        ),
                        textColor: Colors.black,
                        trailing: Text("80d"),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      ListTile(
                        title: Text(
                          "Makeup",
                          style: TextStyle(
                            wordSpacing: 2.0,
                            letterSpacing: 3.0,
                          ),
                        ),
                        textColor: Colors.black,
                        trailing: Text("100d"),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => second()));
                          },
                          child: Text(
                            "reservez",
                            style: TextStyle(color: Colors.purple),
                          ))
                      //-
                    ]),
                  ),
                  // **************ourGallery
                  Text(
                    'OurGallery',
                    style: TextStyle(
                      fontSize: 35,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.pink,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),

                  Container(
                      height: 800,
                      child: GridView.count(
                        crossAxisCount: 4,
                        children: List.generate(imageUrls.length, (index) {
                          return Padding(
                              padding: EdgeInsets.all(8),
                              child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(imageUrls[index],
                                      fit: BoxFit.cover)));
                        }),
                      )),
                  Padding(padding: EdgeInsets.all(20)),

                  //*********************Reviews */
                  Text(
                    'Reviews',
                    style: TextStyle(
                      fontSize: 35,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.pink,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(25),
                          width: 300,
                          height: 200,
                          color: Colors.white38,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.network(
                                "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmVtbWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                                width: 300,
                                height: 200,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          width: 400,
                          height: 300,
                          color: Colors.grey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                              Text("smith"),
                              Text(
                                "Actress",
                                style: TextStyle(color: Colors.purple),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(1),
                          width: 300,
                          height: 200,
                          color: Colors.white38,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image.network(
                                "https://images.unsplash.com/photo-1569002428904-bf557f4c0d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZlbW1lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                width: 300,
                                height: 200,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 400,
                          height: 300,
                          color: Colors.grey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                              Text("SELINA HUBB"),
                              Text(
                                "Model",
                                style: TextStyle(color: Colors.purple),
                              )
                            ],
                          ),
                        ),
                      ]),
                  Padding(padding: EdgeInsets.all(20)),
                  Text(
                    'Meet',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.pink,
                    ),
                  ),

                  //------------------ OUREXPERTT

                  Text(
                    'Our Expert',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.black45,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(4),
                        width: 300,
                        height: 300,
                        color: Colors.orange[50],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                              ),
                              maxRadius: 100,
                            ),
                            Text("lorem"),
                            Text("designer")
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        width: 300,
                        height: 300,
                        color: Colors.pink[50],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1628890923662-2cb23c2e0cfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                              ),
                              maxRadius: 100,
                            ),
                            Text("lorem"),
                            Text("founder , Angel Beauty")
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        width: 300,
                        height: 300,
                        color: Colors.pink[50],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                              ),
                              maxRadius: 100,
                            ),
                            Text("lorem"),
                            Text("Beauticien")
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Text(
                    'Amazing',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.pink,
                    ),
                  ),

                  //------------------ Exclusive Service
                  Text(
                    'Service Price',
                    style: TextStyle(
                      fontSize: 25,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.black45,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "images/coiffure.jpg",
                                    height: 200,
                                    width: 400,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "SpaLight",
                                      style: TextStyle(
                                          fontSize: 25,
                                          letterSpacing: 3.0,
                                          color: Colors.redAccent),
                                    ),
                                    Padding(padding: EdgeInsets.all(8)),
                                    Text("Body Hand and Foot Massage"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Nail Cutting And Styling"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Spa Therapy"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Hair Coloring"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    CircleAvatar(
                                      maxRadius: 25,
                                      backgroundColor: Colors.purple,
                                      child: Text("120D"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    "https://images.unsplash.com/photo-1602910344008-22f323cc1817?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1ha2V1cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                    height: 200,
                                    width: 400,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Makeup",
                                      style: TextStyle(
                                          fontSize: 25,
                                          letterSpacing: 3.0,
                                          color: Colors.redAccent),
                                    ),
                                    Padding(padding: EdgeInsets.all(8)),
                                    Text("Just eye"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Bridal trail"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Regular makeup"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Quick fix makeup"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    CircleAvatar(
                                      maxRadius: 25,
                                      backgroundColor: Colors.purple,
                                      child: Text("120D"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    "images/spa.jpg",
                                    height: 200,
                                    width: 400,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "SpaLight",
                                      style: TextStyle(
                                          fontSize: 25,
                                          letterSpacing: 3.0,
                                          color: Colors.redAccent),
                                    ),
                                    Padding(padding: EdgeInsets.all(8)),
                                    Text("Body Hand and Foot Massage"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Nail Cutting And Styling"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Spa Therapy"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Text("Hair Coloring"),
                                    Padding(padding: EdgeInsets.all(5)),
                                    CircleAvatar(
                                      maxRadius: 25,
                                      backgroundColor: Colors.purple,
                                      child: Text("120D"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  // ***************************** Contact Us
                  Padding(padding: EdgeInsets.all(15)),
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 35,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 6
                        ..color = Colors.pink,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 50,
                            offset: Offset(10, 10))
                      ]),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.only(left: 50, right: 80),
                                  child: Column(
                                    children: [
                                      Padding(padding: EdgeInsets.all(15)),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: 'Enter your username',
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(15)),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: 'Enter your email',
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(15)),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: 'Subject',
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(15)),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          labelText: 'Message',
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(15)),
                                      RaisedButton(
                                        child: Text(
                                          "Send",
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => second()),
                                          );
                                        },
                                      ),
                                    ],
                                  ))),
                          Expanded(
                            child: Stack(children: <Widget>[
                              Card(
                                child: Container(
                                  height: 450,
                                  width: 700,
                                  color: Colors.pink[50],
                                  child: Column(children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Our Story",
                                      style: TextStyle(
                                          color: Colors.red[400], fontSize: 30),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                        "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant"),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      size: 46,
                                      color: Colors.blue,
                                    ),
                                    Text("siliana , tunis "),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Icon(
                                      Icons.phone,
                                      size: 46,
                                      color: Colors.blue,
                                    ),
                                    Text("+216 45451515 "),
                                    Text("+216 5666151 "),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Icon(
                                      Icons.email,
                                      size: 46,
                                      color: Colors.blue,
                                    ),
                                    Text("info1@gmail.com "),
                                    Text("info2@gmail.com"),
                                  ]),
                                ),
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
