import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/background.png"),
                          fit: BoxFit.fill),
                    ),
                  )),
                  Positioned(
                      child: Container(
                    height: 450,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/background-2.png"),
                            fit: BoxFit.cover)),
                  )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromRGBO(49, 39, 79, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, 1),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10)),
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 237, 233, 233),
                                      ),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ]),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
