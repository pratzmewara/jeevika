import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:jeevika/Screens/homepage.dart';
import 'package:flutter/foundation.dart';

class LoginScreen extends StatefulWidget {

 

   LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreen3State createState() => new _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen>
    with TickerProviderStateMixin {


String uid;
String token;


  @override
  void initState() {
    
    super.initState();
  //    _loadCounter();
  // print("yoyoyoy");
  // print(uid);
  // if(uid!=""||uid!=null)
  // {
   
   
  // }
   
  }
//    _loadCounter() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//      // _counter = (prefs.getInt('counter') ?? 0);
//       uid=(prefs.getString('uid')??"");
//       token=(prefs.getString('token')??"");
//     });
//   }

//    Future<SharedPreferences> _sprefs = SharedPreferences.getInstance();
//   bool _obscureText = true;
//    void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//  _incrementCounter(String tok,String ui) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       prefs.setString('token',tok);
//      prefs.setString('uid', ui);
//       prefs.commit(); 
//     });
    
//   }

     GlobalKey<FormState> _key = new GlobalKey();
      GlobalKey<FormState> _key2 = new GlobalKey();
   final myController = TextEditingController();
 String _signname;
    String _signusername;
    String _signemail;
    String _signmob;
    String _signpassword;
    //String gend;
    bool _validate = false; 
     bool _validate2 = false; 
    String logemail;
    String _logpass;

//       Map<String, dynamic> body2 ={
//     "name": "prateek",
//     "email": "guys@gmail.com",
//     "password":"qwerty",
//     "username":"pratz",
//     "contact":"8456123078"
// };

// Map<String, dynamic> body ={
//     "email": "guys@gmail.com",
//     "password":"qwerty",
// };

  Widget HomePage(BuildContext context) {
    return Scaffold(

       resizeToAvoidBottomPadding: false,
    backgroundColor: Colors.orange,
             body: Container(
            
          decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.orange[800],
            Colors.orange[700],
            Colors.orange[600],
            Colors.orange[400],
          ],),),
      
      child:SingleChildScrollView(
      
      child: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.orange,
       
        ),
       
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 150.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text('Jeevika',
          textDirection:TextDirection.ltr,textAlign: TextAlign.center,
          style:TextStyle(
            color:Colors.white,
            decoration: TextDecoration.none,
            fontSize: 30.0,
            fontFamily: 'Lobster',
            fontWeight: FontWeight.w300
          ),),
               
              ],
            ),
          ),

          new Container(
            width: MediaQuery.of(context).size.width-100,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new OutlineButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.pink,
                    highlightedBorderColor: Colors.white,
                    onPressed: () => gotoSignup(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "SIGN UP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width-100,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.white,
                    onPressed: () => gotoLogin(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ))));
  }
  

  Widget LoginPage(BuildContext context) {
    return Scaffold(body: new Form(
              key: _key,
              autovalidate: _validate,
              child: FormUI(),
            ), );
  }
Widget FormUI() {
  
    int flag;
    return SingleChildScrollView(child:

  Container(
      height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
         color: Colors.white,
       
       ),
      child: new Column(
        children: <Widget>[
          
         SingleChildScrollView(
                child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text('Jeevika',
          textDirection:TextDirection.ltr,textAlign: TextAlign.center,
          style:TextStyle(
            color:Colors.orange,
            decoration: TextDecoration.none,
            fontSize: 30.0,
            fontFamily: 'Lobster',
            fontWeight: FontWeight.w300
          ),),
               
              ],
            ),
          ),
           Container(
                padding: EdgeInsets.only(left: 16.0,right:16.0,top: 100.0),
                child:
              TextFormField(
                style: TextStyle(color: Colors.pinkAccent),
                cursorColor:  Theme.of(context).accentColor,
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                hintText: 'eg@gmail.com',
                  labelText: 'User Name'
                ),
                 keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
            onSaved: (String val) {
              logemail = val;
            }
                
              )
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0,right:16.0,top: 16.0),
                child:
              TextFormField(
                style: TextStyle(color: Colors.pinkAccent),
                cursorColor:  Theme.of(context).accentColor,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  //hintText: 'Club Name',
                  labelText: 'Password'
                ),
                  validator: (val) => val.length == 0 ? 'Please Enter the Password' : (val.length<6)?'Password too short':null,
              onSaved: (val) => _logpass = val,
             // obscureText: _obscureText,
                
              )
              ),
              Container(
                 width: MediaQuery.of(context).size.width-100,
              margin: const EdgeInsets.only(left: 50.0, right: 20.0, top: 30.0),
              alignment: Alignment.center,
               child:  
             new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.orange,
                    onPressed: () => gotoHomePage(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white ,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),))]))
              
        ],
      ),
    )])));
}

 _login_Server() {

    //  if(_key.currentState.validate())
    //  {
    //     _key.currentState.save();
     
     




  

    // body["email"] = '$logemail';
    // body["password"] = '$_logpass';

//      Future fetchPosts(http.Client client) async {
//  var response=await http.post(LOGIN_URL, body: body);

    
//    final data = json.decode(response.body);
//       print(data);
      
//       if(data['success']==true){
       
//         print(data['token']);
        
//       getuid(data['token'].toString());
//         print('#######################');
      
//          gotoQr(data['token'].toString());
//       }
//       else{
//            Fluttertoast.showToast(
//         msg: data['message'].toString(),
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIos: 1,
//         backgroundColor: Colors.grey[700],
//         textColor: Colors.white);
//       }

//   }
    
     
//    print(body);
   
//    return FutureBuilder(

//         future: fetchPosts(http.Client()),
//         builder: (BuildContext context,AsyncSnapshot snapshot){
//           if(snapshot.data==null){
//             return Container(
//               child: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );

//           }
//           else{
//             Fluttertoast.showToast(
//         msg: "Check Your Connection",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIos: 1,
//         backgroundColor: Colors.grey[700],
//         textColor: Colors.white);
//           }
//           });



   
//      } 
      
   
   
//    else{
     
//       // validation error
//       setState(() {
//         _validate = true;
//         });
    
 //  }

    
     
  
    
  }
  void gotohome(){
  
          Navigator.of(context).pushReplacementNamed('/homepage');
}
 

  Widget SignupPage(BuildContext context) {
    return new Scaffold(body: new Form(
              key: _key2,
              autovalidate: _validate2,
              child: Signupform(),
            ), );
   
  }



  Widget Signupform()
  {
    return SingleChildScrollView(child: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
       
      ),
      child:Container(child: Column(
        children: <Widget>[
         Container(
            padding: EdgeInsets.only(top: 60.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text('Jeevika',
          textDirection:TextDirection.ltr,textAlign: TextAlign.center,
          style:TextStyle(
            color:Colors.orange,
            decoration: TextDecoration.none,
            fontSize: 30.0,
            fontFamily: 'Lobster',
            fontWeight: FontWeight.w300
          ),),
               
              ],
            ),
          ),
              
              Container(
                padding: EdgeInsets.only(left: 16.0,right:16.0,top:30),
                child:
              TextFormField(
                style: TextStyle(color: Colors.pinkAccent),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What People call you?',
                  labelText: 'Full Name',
                  
                ),
                controller: myController,
                
                validator: validateName,
          onSaved: (String val) {
            _signname = myController.text.toString();
          },
              )
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0,right:16.0,top: 16.0),
                child:
              TextFormField(
                style: TextStyle(color: Colors.pinkAccent),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  //hintText: '',
                  labelText: 'Username'
                ),
                
                
          onSaved: (String val) {
            _signusername = val;
           // print(reg);
          },
              )
              ),
            Container(
                padding: EdgeInsets.only(left: 16.0,right:16.0,top: 16.0),
                child:
             new TextFormField(
               style: TextStyle(color: Colors.pinkAccent),
            decoration: new InputDecoration(hintText: 'Email ID',labelText: 'Email ID',border: OutlineInputBorder(),),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
            onSaved: (String val) {
              _signemail= val;
            }),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0,right:16.0,top: 16.0),
                child:
              TextFormField(
                style: TextStyle(color: Colors.pinkAccent),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Where your Friends can call you?',
                  labelText: 'Mobile Number'
                ),
                keyboardType: TextInputType.phone,
                validator: validateMobile,
          onSaved: (String val) {
            _signmob = val;
          },
              )),
               Container(
                padding: EdgeInsets.only(left: 16.0,right:16.0,top: 16.0),
                child:
              TextFormField(
                style: TextStyle(color: Colors.pinkAccent),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "**********",
                  labelText: 'Password'
                ),
              validator: (val) => val.length == 0 ? 'Please Enter the Password' : (val.length<6)?'Password too short':null,
              onSaved: (val) => _signpassword = val,
            //  obscureText: _obscureText,
             
              
  
              ),),
             
              
               new Container(
            width: MediaQuery.of(context).size.width,
           // margin: const EdgeInsets.only( right: 20.0, top: 30.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                Container(
                 width: MediaQuery.of(context).size.width-100,
              margin: const EdgeInsets.only(left: 50.0, right: 20.0, top: 30.0),
              alignment: Alignment.center,
               child:  
             new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.orange,
                    onPressed: () => _sendToServer(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "SIGN UP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white ,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),))]))]))
        
               
        
      
        ])
  )));
  }

  _sendToServer() {

    //  if(_key2.currentState.validate())
    //  {
    //     _key2.currentState.save();
     
     




  
//     body2["name"] = '$_signname';
//     body2["username"] = '$_signusername';
//     body2["email"] = '$_signemail';
//     body2["contact"] = '$_signmob';
//     body2["password"] = '$_signpassword';

//      Future fetchPosts(http.Client client) async {
//  var response=await http.post(SIGNUP_URL, body: body2);

    
//    final data = json.decode(response.body);
//       print(data);
      
//       if(data['success']==true){
//         gotoLogin();
//       }
//       else{
//            Fluttertoast.showToast(
//         msg: data['message'].toString(),
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIos: 1,
//         backgroundColor: Colors.grey[700],
//         textColor: Colors.white);
//       }

//   }
    
     
//    print(body2);
   
//    return FutureBuilder(

//         future: fetchPosts(http.Client()),
//         builder: (BuildContext context,AsyncSnapshot snapshot){
//           if(snapshot.data==null){
//             return Container(
//               child: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );

//           }
//           else{
//             Fluttertoast.showToast(
//         msg: "Check Your Connection",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIos: 1,
//         backgroundColor: Colors.grey[700],
//         textColor: Colors.white);
//           }
//           });



   
//      } 
      
   
   
//    else{
     
//       // validation error
//       setState(() {
//         _validate2 = true;
//         });
    
//    }
     
  
    
//   }

//    getuid(String token){
//      Map<String, dynamic> body3 = {
//   "event_id": "ith2019", "token": "token"
// };





//      Future fetchPosts(http.Client client) async {
//        print("7894561230");
//        print(token);
//        print("7894561230");

      
//        body3['token']='$token';
//        print(body3);
//  var response=await http.post(USERVERIFICATION_URL, body: body3);

//     print(response.body.toString());
//     print(response.statusCode);
//   if(response.statusCode==200){
//    final data = json.decode(response.body);
//    String uid=data["encrypted_id"];
//    print(uid);
//  widget.storage.writeCounter(uid);
//     _incrementCounter(token,uid);
//   return data["encrypted_id"];
   
    
//   }
     
  
     
//      else{
//        return 'Server under Maintainence. Sorry, for Inconvinence.';
//      }
//      }
//      return FutureBuilder(

//         future: fetchPosts(http.Client()),
//         builder: (BuildContext context,AsyncSnapshot snapshot){
//           if(snapshot.data==null){
//             return Container(
//               child: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );

//           }
//           else{
//             Fluttertoast.showToast(
//         msg: "Check Your Connection",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIos: 1,
//         backgroundColor: Colors.grey[700],
//         textColor: Colors.white);
//           }
//           });



  }

  gotoLogin() {
    //controller_0To1.forward(from: 0.0);
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  gotoSignup() {
    //controller_minus1To0.reverse(from: 0.0);
    _controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  gotoLoadingPage(){
     Navigator.of(context).pushReplacementNamed('/loadingpage');
  }
gotoHomePage(){
    Navigator.of(context).pushReplacementNamed('/homepage');
}
gotoQr(String token){

 Navigator.of(context).pop('/loginpage');
}
  PageController _controller = new PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[LoginPage(context), HomePage(context), SignupPage(context)],
          scrollDirection: Axis.horizontal,
        ));
  }
}
 String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

   String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Mobile is Required";
    } else if(value.length != 10){
      return "Mobile number must 10 digits";
    }else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }
    return null;
  }

  String validateEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }else {
      return null;
    }
  }

  Future<bool> saveToken(String token) async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setString("token", token);
    return prefs.commit();
  }

 

   getToken() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    String token=prefs.getString("token");
    return token;

  }
