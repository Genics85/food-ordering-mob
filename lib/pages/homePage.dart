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
                        image: NetworkImage("data:image/jpeg;base64,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"),
                        fit: BoxFit.cover
                    ),
                  ),
              ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
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
                    onTap: ()=>debugPrint("tapped"),
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
