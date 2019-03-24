import 'package:flutter/material.dart';
import 'package:jeevika/Screens/servicepage.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _service(){
     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>ServicePage(),
                      ),
                    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Jeevika',
          textDirection:TextDirection.ltr,textAlign: TextAlign.center,
          style:TextStyle(
            color:Colors.black,
            decoration: TextDecoration.none,
            fontSize: 30.0,
            fontFamily: 'Lobster',
            fontWeight: FontWeight.w300
          ),),
            
        elevation: 1,
      ),
      body: Container(child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           
                GestureDetector( child: Container(
                  margin: EdgeInsets.only(right: 16,left: 16,top: 16),
                  
                 
                  child:new Card(
                    
                    color: Colors.white,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(child:
                       Container(
                         padding: EdgeInsets.all(16),
                         
                          decoration: new BoxDecoration(
                                   color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15.0),
                                        topLeft: Radius.circular(15.0))),
                         child:
                        Icon(Icons.fastfood,size: 40.0,color: Colors.white,),),flex:10),
                     Flexible(child: Container(
                        padding: EdgeInsets.all(16),
                        child:Text("Cooking")),flex: 10,)
                       
                                
                              ]
                            )
                          )),
                          onTap: _service,
                ),
                 GestureDetector( child: Container(
                  margin: EdgeInsets.only(right: 16,left: 16,top: 16),
                  
                 
                  child:new Card(
                    
                    color: Colors.white,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(child:
                       Container(
                         padding: EdgeInsets.all(16),
                          decoration: new BoxDecoration(
                                   color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15.0),
                                        topLeft: Radius.circular(15.0))),
                         child: Icon(Icons.accessibility_new,size: 40.0,color: Colors.white,),),flex:10),
                     Flexible(child: Container(
                        padding: EdgeInsets.all(16),
                        child:Text("Cleaning")),flex: 10,)
                              ]
                            )
                          )),
                          onTap: _service,
                ),

                GestureDetector( child: Container(
                  margin: EdgeInsets.only(right: 16,left: 16,top: 16),
                  
                 
                  child:new Card(
                    color: Colors.white,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(child:
                       Container(
                         padding: EdgeInsets.only(right: 16,left: 16,top:24,bottom: 24),
                         
                          decoration: new BoxDecoration(
                                   color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15.0),
                                        topLeft: Radius.circular(15.0))),
                         child:Row(
                           children: <Widget>[
Icon(Icons.accessibility_new,size: 20.0,color: Colors.white,),
Icon(Icons.fastfood,size: 20.0,color: Colors.white,)
                           ],
                         )
                        ,),flex:9),
                     Flexible(child: Container(
                        padding: EdgeInsets.all(16),
                        child:Text("Cleaning + Cooking ")),flex: 30,)
                       
                                
                              ]
                            )
                          )),
                          onTap: _service,
                )
              ],
            )
          
        ),
        bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black),title: Text("Home",style: TextStyle(color: Colors.black),)
      ),
      BottomNavigationBarItem(icon:Icon(Icons.room_service,color: Colors.black,),title: Text("Orders",style: TextStyle(color: Colors.black))
      ),
      BottomNavigationBarItem(icon:Icon(Icons.person,color: Colors.black),title:Text("Profile",style: TextStyle(color: Colors.black)))
      ],
      // currentIndex: _selectedIndex,
        fixedColor: Colors.orange,
       // onTap: _onItemTapped,
        ),
      
      
  );
  }
}
