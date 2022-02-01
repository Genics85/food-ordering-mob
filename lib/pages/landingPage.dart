import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LandingPageState();
  }
}

class LandingPageState extends State<LandingPage>{
int _selectedIndex=2;

void _onItemTapped(int index){
  setState(() {
    _selectedIndex=index;
  });
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SafeArea(child: Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.red,
       unselectedItemColor: Colors.grey,
       selectedFontSize: 12,
       unselectedFontSize: 0,
       selectedLabelStyle: TextStyle(
         fontWeight: FontWeight.bold
       ),
       currentIndex: _selectedIndex,
       onTap: _onItemTapped,
       elevation: 5,
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.home_outlined),
           label: "Home",

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.favorite_border),
             label: "Home",

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.search),
             label: "Home",

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.notifications_outlined),
             label: "Home",

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.shopping_cart_outlined),
             label: "Home",

         ),


       ],
     ),

      body: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(height: 15,),

              //non traditional app bar

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.filter_center_focus),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.location_pin,
                          color: Colors.red,),
                        Text("California,US",style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                        Icon(Icons.arrow_drop_down_outlined,
                          color: Colors.amber,)
                      ],
                    ),
                  ),
                  CircleAvatar(
                    child: Text("BG"),

                  )
                ],
              ),
              SizedBox(height: 25,),

              //small banner with pic

              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Row(
                  children: [
                    SizedBox(width: 15,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.none,
                            ),
                            children: [
                              TextSpan(text: "The Fastest In", ),
                              TextSpan(text: " \n Delivery "),
                              TextSpan(text: "Food",
                                  style: TextStyle(
                                    color: Colors.red,
                                  )
                              )
                            ]
                        )
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)

                          ),
                          child: Text("Order Now",textAlign: TextAlign.center, style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                      ],
                    ),
                    Container(
                      height: 100,
                      width:150,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage("assets/images/bike.png"),
                              fit: BoxFit.cover
                          )
                      ),
                    )
                  ],

                ),
              ),
              SizedBox(height: 20,),

              // Categories indicator

              Container(
                alignment: Alignment.topLeft,
                child:  Text("Categories", style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),) ,
              ),

              SizedBox(height: 20,),

              //Category horizaontal scroll
              Container(
                height: 45,
                child: ListView(

                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryScroll("Pizza","",true),
                    CategoryScroll("Burger","",false),
                    CategoryScroll("Pasta","",false),
                    CategoryScroll("Rice","",false),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Now",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    Row(children: [
                      Text("View All",style: TextStyle(
                          color: Colors.amber
                      ),),
                      Icon(Icons.arrow_drop_down_circle_rounded,color: Colors.amber,)
                    ],)
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //menuscroll implementation
              Container(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PopularScroll(),
                      PopularScroll(),
                      PopularScroll(),
                      PopularScroll(),
                    ],
                  )
              )
            ],
          ),
        ),
      )
   ));
  }
}

//CategoryScroll function
 Widget CategoryScroll (String name,String pic, bool active ){
  return GestureDetector(
    onTap:()=>debugPrint(" $name tapped"),
    child:  Container(
      margin: EdgeInsets.only(right: 15),
      width: 100,
      decoration: BoxDecoration(
          color: active?Colors.red:Colors.grey.shade100,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        children: [
          Container(
              height:30,
              child:
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(pic),
                child: Text("PZ",style: TextStyle(
                    fontSize: 14
                ),),
              )
          ),

          Text(name,textAlign: TextAlign.center,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),)
        ],
      ),
    ) ,
  );
}

Widget PopularScroll(){
  return Container(
    margin: EdgeInsets.only(right: 10),
    height:100,
    width: 150,
    child: Card(
      elevation: 3,
      shadowColor: Colors.grey.shade100,
      child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.grey,
            ),
            SizedBox(height: 10,),

            Text("Beef Burger",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),),
            SizedBox(height: 20,),

            Text("Cheesy Mozarella", style: TextStyle(
                fontSize: 12,
                color: Colors.grey
            ),),

            SizedBox(height: 30,),

            RichText(text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black
                ),
                children: [
                  TextSpan(text:"\$",style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  )),
                  TextSpan(text:"6.95")
                ]
            ))
          ]

      ),
    ),
  );
}