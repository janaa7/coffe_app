import 'package:flutter/material.dart';
import 'package:untitled/details.dart';

class LoginScreen  extends StatelessWidget {
  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body:
        Stack(
          children: [
            //layer1

            Image.asset("assets/images/backgroundcoffe.png",width:double.infinity , fit:BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),

              child: Column(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [

                Text("Coffee so good , your taste buds will love it",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:34,
                  color:Colors.white,
                  fontWeight:FontWeight.w600
                ),),
                  Text("The best grain , the finest roast, the powerful flavor",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                        fontSize:14,
                        color:Color.fromRGBO(169,169,169,1),
                        fontWeight:FontWeight.w600
                    ),),
                  SizedBox(height: 16,),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Details()));

                    },
                    child: Container(
                      width:312,
                      height: 54,
                    
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                    
                          Image.asset("assets/logos/Google_Logo.png"),
                          SizedBox(width: 8,),
                          Text("continue with google",
                            style: TextStyle(
                              fontSize:20,
                              color:Color.fromRGBO(0,0,0,0.54),
                              fontWeight:FontWeight.w500),
                    
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32,),

                ],),
            )





        ],)

    );
  }
}
