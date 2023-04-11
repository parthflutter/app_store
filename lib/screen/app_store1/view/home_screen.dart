import 'package:app_store/screen/app_store1/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Store_screen1 extends StatefulWidget {
  const Store_screen1({Key? key}) : super(key: key);

  @override
  State<Store_screen1> createState() => _Store_screen1State();
}

class _Store_screen1State extends State<Store_screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SUNDAY, August 20",style: TextStyle( color: Colors.grey,letterSpacing: 1,fontSize: 15)),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("Today",style: TextStyle( color: Colors.black,letterSpacing: 1,fontSize: 25,fontWeight: FontWeight.bold)),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/today/am.png"),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 5,),
              Expanded(child: Container(child: ListView.builder(itemBuilder: (context, index) => todayBox(img[index]),itemCount: 4,shrinkWrap: true))),
            ],
          ),
        ),
      ),
    );
  }
  Widget todayBox(String path )
  {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black26,offset: Offset(1,1),spreadRadius: 1,blurRadius: 1,)
            ],
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("${path}",fit: BoxFit.cover)),
        ),
        Transform.translate(offset: Offset(30,25),
            child: Text("Apple Music",
              style: TextStyle(
                  color: Colors.white,letterSpacing: 1,fontSize: 12),)),
        Transform.translate(offset: Offset(30,50),
            child: Text("Best Quality Music iOS",
              style: TextStyle(color: Colors.white,
                  letterSpacing: 1,fontSize: 18,fontWeight: FontWeight.bold),)),
      ],
    );
  }
}

