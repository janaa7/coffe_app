import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/txt_style.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({
    super.key
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //layer 1
          Container(
              height: 270, color: Colors.black),
        //layer 2
          Padding(
            padding: const EdgeInsets.only(top:50.0, right:30,left:30),
            child: Column(

              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Location",
                        style:TxtStyle.font400Size12white,
                        ),
                        Row(
                          children: [
                            Text(
                              "Bilzen,Tanjungbalai",
                              style:TxtStyle.font400Size12white,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset("assets/images/avatar.png"),
                  ],
                ),
                SizedBox(
                  height:26,
                ),
                SearchBar(
                  backgroundColor: WidgetStateProperty.all(Color.fromRGBO(49, 49, 49,1)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(borderRadius:BorderRadius.circular(15) )
                  ),
                  leading: Icon(Icons.search,color:Colors.white),
                  trailing:[
                    Container(
                      height:44,
                      width:44,
                        decoration:
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(198, 124, 78, 1),
                        ),
                        child:Icon(Icons.tune_outlined,color: Colors.white,)
                    )


                  ],
                  hintText: "Search Coffee",
                  hintStyle: WidgetStateProperty.all(TextStyle(color:Color.fromRGBO(152, 152, 152, 1))),
                  textStyle:WidgetStateProperty.all(TextStyle(color:Colors.white)) ,
                  ),
                SizedBox(
                  height:32,
                ),
                Image.asset("assets/images/frame.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width:121,
                          height:38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(198, 124, 78,1)),
                          child: Center(
                            child: Text("Cappuccino",
                            style: TxtStyle.font600Size14white,),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width:99,
                          height:38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromRGBO(243, 243, 243,1)),
                          child: Center(
                            child: Text("Machiato",
                              style: TxtStyle.font400Size14Black,),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width:99,
                          height:38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromRGBO(243, 243, 243,1)),
                          child: Center(
                            child: Text("Latte",
                              style: TxtStyle.font400Size14Black,),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width:99,
                          height:38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromRGBO(243, 243, 243,1)),
                          child: Center(
                            child: Text("Americano",
                              style: TxtStyle.font400Size14Black,),
                          ),
                        ),


                      ],
                    ),
                  ),
                )

              ],
            ),
          )

        ],
      )
    );
  }
}