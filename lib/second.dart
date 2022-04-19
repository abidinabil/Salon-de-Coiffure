import 'package:flutter/material.dart';

void main() {
  runApp(const second());
}

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
    DateTime date = DateTime.now();
    TimeOfDay time = TimeOfDay.now();

    bool? braids = false;
    bool hair = false;
    bool extension = false;
    bool corrective = false;
    bool Foil = false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // ----------------------------- AppBar
          appBar: AppBar(
            elevation: 100,
            title: Text("Beauty "),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.purple, Colors.red],
              )),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 50,
                )
              ]),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.only(left: 10, right: 80),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Text("Select Service"),
                              Padding(padding: EdgeInsets.all(15)),
                              Row(
                                children: [
                                  Text("Braids&& Twist"),
                                  Checkbox(
                                      value: braids,
                                      onChanged: (val) {
                                        braids = val;
                                      }),
                                  Text("Hair Color"),
                                  Checkbox(
                                      value: hair,
                                      onChanged: (val) {
                                        hair = val!;
                                      }),
                                  Text("Hair Extensio"),
                                  Checkbox(
                                      value: extension,
                                      onChanged: (val) {
                                        extension = val!;
                                      }),
                                  Text("Corrective Color"),
                                  Checkbox(
                                      value: corrective,
                                      onChanged: (val) {
                                        corrective = val!;
                                      }),
                                  Text("Partial Foil"),
                                  Checkbox(
                                      value: Foil,
                                      onChanged: (val) {
                                        Foil = val!;
                                      })
                                ],
                              ),
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
                                  labelText: 'Enter your ',
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(15)),
                              TextFormField(
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Note',
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(15)),
                              Text(
                                '${date.day}/${date.month}/${date.year}',
                                style: const TextStyle(fontSize: 30),
                              ),
                              ElevatedButton(
                                child: const Text("select date"),
                                onPressed: () async {
                                  DateTime? newDate = await showDatePicker(
                                    context: context,
                                    initialDate: date,
                                    firstDate: DateTime(2022),
                                    lastDate: DateTime(2030),
                                  );
                                  if (newDate == null) return;
                                },
                              ),
                              Text(
                                '${time.hour} : ${time.minute}',
                                style: const TextStyle(height: 3),
                              ),
                              ElevatedButton(
                                child: const Text('select a time'),
                                onPressed: () {
                                  showTimePicker(
                                    context: context,
                                    initialTime: time,
                                  );
                                },
                              ),
                              Padding(padding: EdgeInsets.all(15)),
                              RaisedButton(
                                child: Text(
                                  "reservez",
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
                ],
              ),
            ),
          )),
    );
  }
}
