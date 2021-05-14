import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileApp(),
    );
  }
}

class ProfileApp extends StatefulWidget {
  @override
  _ProfileAppState createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  @override

  Color bgColor=Color(0xff060811);
  Color borderColor=Color(0xff483d8b);
  LinearGradient linearGradient=LinearGradient(colors: [Color(0xff41295a),Color(0xff2f0743)],begin: Alignment.topCenter,end: Alignment.bottomRight);
  List<String> hobbies=['Travel','Workout','Swimming','Dancing','Fashion','Watching Movies'];
  int grid=1;
  Color activeLeft,activeRight;
  Icon Like;








  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.menu_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.jpeg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Column(
                    children: [
                      Text('Sarah Smith',style: TextStyle(
                        color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700
                      ),),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.white,),
                          Text('London ,UK',style: TextStyle(
                            color: Colors.white,fontSize: 15,letterSpacing: 4
                          ),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderColor),
                ),
                child: Column(
                  children: [
                    Text('15k',style: TextStyle(fontSize: 30,color: Colors.white),),
                    Text('Followers',style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderColor),
                ),
                child: Column(
                  children: [
                    Text('300',style: TextStyle(fontSize: 30,color: Colors.white),),
                    Text('Following',style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                width: 120,height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: linearGradient
                ),
                child: Text('Follow',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hobbies.length,
                itemBuilder: (BuildContext context,int index)
                {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: borderColor)
                      ),
                      child: Text(hobbies[index],style: TextStyle(color: Colors.white),),
                    ),
                  );
                },
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10,),
            child: Container(
                padding: EdgeInsets.zero,


                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),



                ),
                child:Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,),
                          color:activeRight
                      ),
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            grid=1;
                            activeRight=Color(0xff483d8b);
                            activeLeft=Color(0xff060811);


                          });
                        },
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.view_agenda_outlined,size: 40,color: Colors.white,),
                      ),

                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2,

                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: activeLeft
                      ),
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            grid=2;
                            activeLeft=Color(0xff483d8b);
                            activeRight=Color(0xff060811);


                          });
                        },
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.grid_view,size: 40,color: Colors.white,),
                      ),

                    ),

                  ],
                )

            ),
          ),
          Expanded(child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.vertical(top:Radius.circular(40)),
            ),
            child: Column(


              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Expanded(child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),

                        height: 400,

                        child: Expanded(
                          child: GridView.count(crossAxisCount: grid,
                            childAspectRatio: 0.7,

                            crossAxisSpacing: 2,





                            children: [
                              ImageDetails(0, '12', '100'),
                              ImageDetails(3, '8', '190'),
                              ImageDetails(2, '13', '210'),
                              ImageDetails(1, '7', '150'),
                              ImageDetails(3, '10', '200'),
                              ImageDetails(2, '10', '200'),
                              ImageDetails(2, '10', '200'),
                              ImageDetails(2, '10', '200'),

                            ],),
                        ),

                      ),


                    ),
                    Container(
                      decoration: BoxDecoration(

                          color: bgColor,
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20),
                          )

                      ),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(Icons.home,size: 30,color: Colors.white.withOpacity(0.8),),
                                SizedBox(width: 20,),
                                Icon(Icons.search,size: 30,color: Colors.white.withOpacity(0.8),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Icon(Icons.settings,size: 30,color: Colors.white.withOpacity(0.8),),
                                SizedBox(width: 20,),
                                Icon(Icons.person_rounded,size: 30,color: Colors.white.withOpacity(0.8),)
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(

                          gradient:linearGradient,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.message,size: 35,color: Colors.white,),
                      ),
                    )


                  ],
                ),

                ),

              ],
            ),
          ),



          ),
        ],
      ),



    );

  }
}


Widget ImageDetails(int index,String likes,String comments) {

  

  return Column(
    children: [

      Expanded(
        child: Container(

          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/${index + 1}.jpeg'),
                fit: BoxFit.cover),


          ),
        ),
      ),


      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border, size: 20, color: Colors.white,),
                  Text('${likes}K', style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment, size: 20, color: Colors.white,),
                  Text('$comments', style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),)
                ],
              ),
              Icon(Icons.share_outlined, size: 20, color: Colors.white,),

            ]),
      )
    ],
  );
}
