import 'package:counter_app/pages/EkinchiBet.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {

   MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Тапшырма 01",
            style: TextStyle(color: Colors.black),
            ),
        ),
          ),
          body:Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
         // EkinchiBet ===> Function
              TextButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return EkinchiBet(
                      San: san,
          //'San' this is 'kelgensan' 
                      );
                  }) ,),
                  );
                }),
                child: Container(
                height: 42.0,
                width: 294.0,
                decoration: BoxDecoration(
                  color: Color(0xffBDBDBD),
                  borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text("Сан: $san ",
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                    ),
                    ),
                  ),
              ),
        // San Container is finished!
            SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                   onTap: () {
                      san = san -1;
                      setState(() { });
                   }, 
                  child: Container(
                    decoration: BoxDecoration(
                  color: Color(0xff005EA6),
                  borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 0.01),
                  width: 70,
                  child: Center(
                    child: Text("-",
                    style: TextStyle(fontSize: 58,color: Colors.white),
                    )
                    ),
                  ),
                ),
        // Minus Container is finished!
                SizedBox(width: 20,
                ),
                 InkWell(
                  onTap: (() {
                    san = san +1;
                    setState(() { });
                  }),
               child: Container(
                 decoration: BoxDecoration(
                  color: Color(0xff005EA6),
                   borderRadius: BorderRadius.circular(12),
                    ),
                   padding: EdgeInsets.symmetric(vertical: 0.01),
                   width: 70,
                   child: Center(
                  child: Text("+",
                    style: TextStyle(fontSize: 58,color: Colors.white),
                    )
                    ),
                   ),
                 ),
        // Plus Container is finished!
              ],
            )
            ],
          ),
        
    );
  }
}
