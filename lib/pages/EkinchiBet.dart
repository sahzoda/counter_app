import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
 final int? San;
const EkinchiBet({ Key? key, this.San, }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: TextButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return EkinchiBet();
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
                    child: Text("Сан: $San ",
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),
                    ),
                    ),
                          ),
              ),
      ),
    );
  }
}