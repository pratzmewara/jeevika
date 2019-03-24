
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class ServicePage extends StatefulWidget {
 
 ServicePage();
  

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {

  //  final formats = {
  //   InputType.date: DateFormat('yyyy-MM-dd'),
  // };

  // // Changeable in demo
  // InputType inputType = InputType.date;
   bool editable = true;
   DateTime date;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Jeevika',
          textAlign: TextAlign.center,
          style:TextStyle(
            color:Colors.black,
            decoration: TextDecoration.none,
            fontSize: 30.0,
            fontFamily: 'Lobster',
            fontWeight: FontWeight.w300
          ),),
            
        elevation: 1,
      ),
      body:Container(
        child:Column(
          children: <Widget>[
              Container( padding: EdgeInsets.only(right:16.0,top: 8.0),
            child:
              Text("Select a Date",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,)),
            ),
             Container(
             padding: EdgeInsets.only(left: 16.0,right:16.0,top: 8.0),
             child:
            DateTimePickerFormField(
              inputType:InputType.date,
              format:  DateFormat('dd/MM/yyyy'),
              editable: editable,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'On',
                  labelText: 'Date', hasFloatingPlaceholder: false),
              onChanged: (dt) => setState(() {
                date = dt;
                print(date);
              }
              ),
            ),
           ),
           Container(),   
          ],
        )
      )
      
     
      );
  }
}
