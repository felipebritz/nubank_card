import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool _frontView = true;
  TextEditingController nameController = TextEditingController(text: 'TESTE L M TESTE');
  TextEditingController numberController = TextEditingController(text: '9999 9999 9999 9999');


  void changeView() {
    setState(() {
      _frontView = !_frontView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(153, 51, 153, 5),
      appBar: AppBar(
        title: Text('Cartão do Nubank'),
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.credit_card),
            onPressed: () {},
          ),
        ],
      ),
      body: _frontView ? _frontViewCardWithStack() : _backViewCardWithStack(),
    );
  }

  Widget _frontViewCardWithStack() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              style: TextStyle(fontSize: 20, color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome',
                labelStyle: TextStyle(
                  color: Colors.white
                ),
              ),
              onSubmitted: (_){
                setState(() {});
              },
            ),
            GestureDetector(
              onTap: changeView,
              child: Container(
                width: double.infinity,
                height: 270,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(109, 33, 119, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 20,
                      top: 20,
                      child: Image.asset(
                        'assets/images/mastercard.png',
                        height: 65,
                      ),
                    ),
                    Positioned(
                      top: 85,
                      left: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/chip.png',
                            height: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/nfc.png',
                            height: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/nu_logo.png',
                            height: 60,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            nameController.text,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _backViewCardWithStack() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20, color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Número do Cartão',
                labelStyle: TextStyle(
                  color: Colors.white
                ),
              ),
              onSubmitted: (_){
                setState(() {});
              },
            ),
            GestureDetector(
              onTap: changeView,
              child: Container(
                width: double.infinity,
                height: 270,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(109, 33, 119, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      height: 80,
                      color: Colors.white,
                    ),
                    Positioned(
                      left: 40,
                      right: 20,
                      bottom: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            numberController.text,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            'assets/images/cirrus.png',
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
