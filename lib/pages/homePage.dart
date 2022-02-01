import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child:
      Container(
        color: Colors.red,
        child:Stack(
          children: [
             Container(
                  height:  MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage("lib/assets/images/chef.png"),
                        fit: BoxFit.cover
                    ),
                  ),
              ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  RichText(text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
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
                    width: MediaQuery.of(context).size.width/1.3,
                    margin:const EdgeInsets.only(top: 50),
                    child: const Text(
                      "Our job is filling your tummy with delicious"
                          " food and fast delivery",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 13,
                      color: Colors.grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context,"/landingPage");
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        margin: EdgeInsets.only(top:100),
                        child: Text("Get Started",textAlign: TextAlign.center, style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          color: Colors.white,

                        ),)
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
