import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 20),
                child: SizedBox(
                    height: ekranYuksekligi / 6,
                    width: ekranGenisligi / 4,
                    child: Image.asset("photos/logo.png")),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Kullanıcı adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ekranYuksekligi / 30, bottom: ekranYuksekligi / 30),
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Şifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )),
                ),
              ),
              SizedBox(
                width: ekranGenisligi / 1.2,
                height: ekranYuksekligi / 12,
                child: ElevatedButton(
                  onPressed: () {
                    print("Giriş yapıldı.");
                  },
                  child: Text("GİRİŞ YAP"),
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: ekranGenisligi / 30),
                child: GestureDetector(
                  onTap: () {
                    print("Size nasıl yardımcı olabiliriz?");
                  },
                  child: Text(
                    "Yardım?",
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: ekranYuksekligi / 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
