import 'package:pengurusan_jenazah/detail/lakilaki.dart';
import 'package:flutter/material.dart';

class detailHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.black,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var tekswaktudoa = TextStyle(
      fontFamily: 'arial',
      color: Colors.white,
      fontSize: 26.0,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Pengurusan",
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 130.0, top: 10.0),
                  decoration: BoxDecoration(
                      color: Color(0xffFFD600),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              alignment: Alignment.topLeft,
              child: Text(
                "Jenazah",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, DzikirPagi());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 200.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://cdn.pixabay.com/photo/2015/03/26/09/47/sky-690293_1280.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 20),
                        child: Text(
                          "Laki-laki",
                          style: tekswaktudoa,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2), BlendMode.luminosity),
            image: NetworkImage(imageUrl)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}