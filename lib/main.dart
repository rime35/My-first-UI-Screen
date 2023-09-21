import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // gölge
          title: Text(
            'Moda Fashion',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),

          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.grey,
                ))
          ],
        ),
        body: ListView(
          children: [
            Container(
              // color: Colors.blue.shade300,
              height: 150,
              color: Colors.transparent,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                  SizedBox(
                    width: 20,
                  ),
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            _kartElmanlari(),
            _kartElmanlari(),
            _kartElmanlari(),
          ],
        ));
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: 60,
              left: 60,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 75,
            height: 25,
            child: Center(
              child: Text(
                'Follow',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.brown.shade300),
          ),
        ),
      ],
    );
  }

  _kartElmanlari() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          height: 440,
          width: double.infinity,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            image: AssetImage('assets/model1.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daisy',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '34 mins ago',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.more_vert, color: Colors.grey, size: 22),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "This official website features a ribbed knit zipper jacket that is "
                  "modern and stylish. It looks very temperant and is recommed to friens",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      height: 210,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/modelgrid1.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage('assets/modelgrid2.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('assets/modelgrid3.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: Text(
                          '# Lois vuitton ',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.brown),
                        ),
                      ),
                      width: 100,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.brown.shade100.withOpacity(0.5)),
                    ),
                  ),
                  SizedBox(),
                  Container(
                    child: Center(
                      child: Text(
                        '# Chole',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            color: Colors.brown),
                      ),
                    ),
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade100.withOpacity(0.5)),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Divider(),
              SizedBox(
                width: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.reply_outlined,
                    color: Colors.brown.shade100.withOpacity(0.9),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '1.7k',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 10,
                      color: Colors.brown.shade100.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.accessibility_sharp,
                    color: Colors.brown.shade100.withOpacity(0.9),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '325',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10,
                        color: Colors.brown),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(
                    Icons.favorite_outlined,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '2.3k',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        color: Colors.brown),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
