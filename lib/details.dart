import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';

import 'core/colors_manager.dart';
import 'core/txt_style.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isFav=false;
  bool isS = true;
  bool isM = false;
  bool isL = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 42),

            // Top bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "Details",
                  style: TxtStyle.font600Size18Black,
                ),
                IconButton(
                  onPressed: () {
                    isFav=!isFav;
                    setState(() {

                    });
                  },
                  icon: Icon(isFav==true?Icons.favorite:Icons.favorite_border),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ✅ Put ALL page content in one padding like the reference code
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/coooffe.png",
                      width: 350, // optional
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "Cappuccino",
                    style: TxtStyle.font600Size20Black,
                  ),
                  Text(
                    "with chocolate",
                    style: TxtStyle.font400Size12grey,
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 3),
                      Text(
                        "4.8",
                        style: TxtStyle.font600Size16Black,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        "(230)",
                        style: TextStyle(
                          color: ColorsManager.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: ColorsManager.lightBrown,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset("assets/logos/coffe_bean.png"),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: ColorsManager.lightBrown,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset("assets/logos/ff.png"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  Text(
                    "Description",
                    style: TxtStyle.font600Size16Black,
                  ),

                  const SizedBox(height: 16),

                  RichReadMoreText.fromString(
                    text:
                    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                    textStyle: TextStyle(
                      color: ColorsManager.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    settings: LengthModeSettings(
                      trimLength: 70,
                      trimCollapsedText: 'ReadMore',
                      trimExpandedText: ' ReadLess ',
                      lessStyle: TextStyle(
                        color: ColorsManager.brown,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      moreStyle: TextStyle(
                        color: ColorsManager.brown,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      onPressReadMore: () {},
                      onPressReadLess: () {},
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Size",
                    style: TxtStyle.font600Size16Black,
                  ),

                  const SizedBox(height: 20),

                  // ✅ Match reference: spaceBetween + same horizontal padding (24)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap:(){
                            isS=true;
                            isM = false;
                            isL = false;
                            setState(() {

                            });
                          },

                        child: Container(
                          width: 96,
                          height: 43,
                          decoration: BoxDecoration(
                            border:Border.all(
                              color:isS==true ?ColorsManager.brown :ColorsManager.borderGrey,
                              width:1.5
                            ),
                            color:isS==true ? ColorsManager.moreLightBrown : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text("S", style: TxtStyle.font400Size14Black),
                          ),
                        ),

                      ),
                      InkWell(
                        onTap:(){
                          isM=true;
                          isS = false;
                          isL = false;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: 96,
                          height: 43,
                          decoration: BoxDecoration(
                            border:Border.all(
                                color:isM==true ?ColorsManager.brown :ColorsManager.borderGrey,
                                width:1.5
                            ),
                            color:isM==true ? ColorsManager.moreLightBrown : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text("M", style: TxtStyle.font400Size14Black),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                          isL=true;

                          isS = false;
                          isM = false;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: 96,
                          height: 43,
                          decoration: BoxDecoration(
                            border:Border.all(
                                color:isL==true ?ColorsManager.brown :ColorsManager.borderGrey,
                                width:1.5
                            ),
                            color:isL==true ? ColorsManager.moreLightBrown : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text("L", style: TxtStyle.font400Size14Black),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height:26,
                  ),
                  Divider(
                      height:1,
                      color:ColorsManager.borderGrey
                  ),
                  SizedBox(
                    height:26,
                  ),
                  Row(

                    children:[
                      Column(
                        children: [
                      Text("price",style:TxtStyle.font400Size12grey),
                          Text(isS == true ? "4.5\$" : isM == true ? "6.5\$" : "10\$",style: TxtStyle.font600Size16Brown,)
        ]
                      ),
                      Spacer(

                      ), Container(
                        width:217,
                        height:55,
                        decoration: BoxDecoration(
                          color: ColorsManager.brown,
                          borderRadius:   BorderRadius.circular(16)
                        ),
                        child:Center(child:Text("Buy Now",style:TxtStyle.font600Size16white))
                      )

        ]
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
