import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {


  DescriptionPage({Key? key}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  int counter=0;

  void increase(){
    setState(() {
      counter++;
    });
  }
  void decrease(){
    setState(() {
      if(counter>0){
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Container(
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height/3 + 50,
            decoration: BoxDecoration(
              color: Colors.amber.shade100
            ),
            child: Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_left),
                        )
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:
                    Text("..",textAlign:TextAlign.center,style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        decoration: TextDecoration.none
                    ),),
                  ),
                ],
              ),
            )
          ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.13),
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.33),
            height: MediaQuery.of(context).size.height*0.66,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
              color: Colors.white
            ),
            child: Column(
              children:[
                Container(
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:Container(
                      margin: EdgeInsets.only(right:10,left:10),
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:decrease,
                        child: Text("-",textAlign:TextAlign.center,style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          decoration:TextDecoration.none
                      ),),)
                      ,
                      Text("$counter",textAlign:TextAlign.center,style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          decoration:TextDecoration.none
                      ),),
                      GestureDetector(
                        onTap: increase,
                        child: Text("+",textAlign:TextAlign.center,style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration:TextDecoration.none
                        ),),)
                      ,

                    ],
                  ))

                ),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.only(left: 30,right: 30),
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Beef Burger",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              decoration: TextDecoration.none,
                              color: Colors.black
                          ),),
                          SizedBox(height: 10,),

                          Text("Cheesy Mozarella", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            decoration: TextDecoration.none
                          ),)
                        ],
                      ),

                      RichText(text: TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.black
                          ),
                          children: [
                            TextSpan(text:"\$",style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            )),
                            TextSpan(text:"7.99")
                          ]
                      )),
                    ],
                  ),
                ),

                SizedBox(height: 40,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:20,left: 20),
                      child:Row(
                        children: [
                          Icon(Icons.star,color:Colors.yellow),
                          Text("4.8",style: TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                            decoration:TextDecoration.none,
                            color: Colors.black
                          ),)
                        ],
                      )
                    ),
                    Container(
                        margin: EdgeInsets.only(right:20),
                        child:Row(
                          children: [
                            Icon(Icons.local_fire_department,color:Colors.yellow),
                            Text("150 Kcal",style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration:TextDecoration.none,
                                color: Colors.black
                            ),)
                          ],
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(right:20),
                        child:Row(
                          children: [
                            Icon(Icons.alarm,color:Colors.red),
                            Text("5-10 Min",style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration:TextDecoration.none,
                                color: Colors.black
                            ),)
                          ],
                        )
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.only(left:20,right: 20),
                  child:RichText(text: const TextSpan(
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,

                        decoration: TextDecoration.none,
                      ),
                      children: [
                        TextSpan(text: "The beef burger uses 100% quality beef with"
                            "sliced tomatoes, cucumbers, vegetables and onions...", ),
                        TextSpan(text: "Read More",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )
                        )
                      ]
                  )
                  ),
                ),
                SizedBox(height: 40,),

                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Colors.red,
                  ),
                  child: Text("Add to Cart",textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 20
                  ),),
                )


              ]
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("lib/assets/images/burgarSplash.png")
          //     )
          //   ),
          // )
        ],
      ),
    ));
  }
}
