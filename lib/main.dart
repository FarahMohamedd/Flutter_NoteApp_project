import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyHomePage() ,
  );
}
}
class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool text1=false;
  bool text2=false;
  bool text3=false;
  bool text4=false;
@override
Widget build(BuildContext context) {
  return DefaultTabController(
    length: 4,
    child: Scaffold(
    appBar: AppBar(title: Text("FlutterBook",style: TextStyle(fontSize: 20),),
      bottom: TabBar(
        tabs: [
          buildContainer(Icons.calendar_today,"Appointment"),
          buildContainer(Icons.contacts_rounded, "Contacts"),
          buildContainer(Icons.note, "Notes"),
          buildContainer(Icons.done, "Tasks"),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        Scaffold(
          body:Container(child:
          Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.blue,size: 17,),onPressed: (){},),
                      Text("Mar 2021",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.blue,size: 17,),onPressed: (){},),
                    ],
                  ),
                ),

              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Sun",style: TextStyle(color:Colors.red,fontSize: 15),),
                          Text("Mon",style: TextStyle(color:Colors.red,fontSize: 15),),
                          Text("Tue",style: TextStyle(color:Colors.red,fontSize: 15),),
                          Text("Wed",style: TextStyle(color:Colors.red,fontSize: 15),),
                          Text("Thu",style: TextStyle(color:Colors.red,fontSize: 15),),
                          Text("Fri",style: TextStyle(color:Colors.red,fontSize: 15),),
                          Text("Sat",style: TextStyle(color:Colors.red,fontSize: 15),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildSizedBox("24"),
                          buildSizedBox(" 25"),
                          buildSizedBox("  26"),
                          buildSizedBox("  27"),
                          buildSizedBox("  28"),
                          buildSizedBox("  1"),
                          buildSizedBox("2"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildSizedBox("3"),
                          buildSizedBox(" 4"),
                          buildSizedBox("  5"),
                          buildSizedBox("  6"),
                          buildSizedBox("  7"),
                          buildSizedBox("  8"),
                          buildSizedBox("9"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildSizedBox("10"),
                          buildSizedBox(" 11"),
                          buildSizedBox("  12"),
                          buildSizedBox("  13"),
                          buildSizedBox("  14"),
                          buildSizedBox("  15"),
                          buildSizedBox("16"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildSizedBox("17"),
                          buildSizedBox(" 18"),
                          buildSizedBox("  19"),
                          buildSizedBox("  20"),
                          buildSizedBox("  21"),
                          buildSizedBox("  22"),
                          buildSizedBox("23"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildSizedBox("24"),
                          buildSizedBox(" 25"),
                          buildSizedBox("  26"),
                          buildSizedBox("  27"),
                          buildSizedBox("  28"),
                          buildSizedBox("  29"),
                          buildSizedBox("30"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
            ,)
        ),
        Scaffold(
          body:
          ListView(
            children:[
              buildListTile("images/1.jpg","John Atherton","111-222-333"),
              SizedBox(height: 0.1,width: 500,child: Container(color: Colors.grey.withOpacity(0.9)),),
              buildListTile("images/2.png", "Mimi Gilder", "111-444-5555"),
              SizedBox(height: 0.1,width: 500,child: Container(color: Colors.grey.withOpacity(0.9)),),
              buildListTile("images/3.jpg", "Jessica Nelson", "111-666-7777"),
              SizedBox(height: 0.1,width: 500,child: Container(color: Colors.grey.withOpacity(0.9)),),
              buildListTile("images/4.jpg", "Rick Ashley", "111-888-9999"),
              SizedBox(height: 0.2,width: 500,child: Container(color: Colors.grey.withOpacity(0.9)),),
  ],
  ),
        ),
        Scaffold(
          body:Container(
            margin: EdgeInsets.all(17.0),
            child: Column(
              children: [
                buildContainer2(Colors.yellowAccent,"Bad Chemistry","Don't add fluorine to hydrogen"),
                buildContainer2(Colors.white,"Ohm's Law", "This current between a conductor through"),
                buildContainer2(Colors.redAccent,"Great Books","The darkness beyond the light"),
              ],
            ),
          ),
        ),
        Scaffold(
          body:Container(
            child: Column(
              children: [
                buildCheckboxListTile("Take out the garbage","Nov 11,2021"),
                buildCheckboxListTile2("Clean the glasses",""),
                buildCheckboxListTile3("Wash the car","Nov 12,2021"),
                buildCheckboxListTile4("Go shopping",""),
              ],
            ),
          )
        ),
      ],
    ),
      floatingActionButton: FloatingActionButton(onPressed: () {
      },
        child: Icon(Icons.add),backgroundColor: Colors.blueAccent,),
    ),
  );
}

SizedBox buildSizedBox(text) {
  return SizedBox(
                          width: 47,
                          height: 47,
                          child: TextButton(
                            child: Text(text,style: TextStyle(fontSize: 15,color: Colors.black),),
                            onPressed: (){
                           buildDialog(context);
                            },
                          ),
                        );
}
CheckboxListTile buildCheckboxListTile(title,subtitle) {
  return CheckboxListTile(
                title:Text(title,style:getTextStyle(text1)),
                subtitle:Text(subtitle,style:getTextStyle2(text1)) ,
                controlAffinity:ListTileControlAffinity.leading,
                value: text1,
                onChanged: (newValue)
                  {
                    setState(() {
                      text1=newValue;
                    });
                  },
              );
}
  CheckboxListTile buildCheckboxListTile2(title,subtitle) {
    return CheckboxListTile(
      title:Text(title,style:getTextStyle(text2)),
      subtitle:Text(subtitle,style:getTextStyle2(text2)) ,
      controlAffinity:ListTileControlAffinity.leading,
      value: text2,
      onChanged: (newValue)
      {
        setState(() {
          text2=newValue;
        });
      },
    );
  }
  CheckboxListTile buildCheckboxListTile3(title,subtitle) {
    return CheckboxListTile(
      title:Text(title,style:getTextStyle(text3)),
      subtitle:Text(subtitle,style:getTextStyle2(text3)) ,
      controlAffinity:ListTileControlAffinity.leading,
      value: text3,
      onChanged: (newValue)
      {
        setState(() {
          text3=newValue;
        });
      },
    );
  }
  CheckboxListTile buildCheckboxListTile4(title,subtitle) {
    return CheckboxListTile(
      title:Text(title,style:getTextStyle(text4)),
      subtitle:Text(subtitle,style:getTextStyle2(text4)) ,
      controlAffinity:ListTileControlAffinity.leading,
      value: text4,
      onChanged: (newValue)
      {
        setState(() {
          text4=newValue;
        });
      },
    );
  }
Container buildContainer2(color,text1,text2) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      boxShadow:[
        BoxShadow(color: Colors.grey.withOpacity(0.8),
        spreadRadius: 1,
         blurRadius: 5,
         offset: Offset(0,7),
        ),
      ],
    ),
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(left: 20,top: 20),
                width: 500,
                height: 80,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(text1,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Text(text2,style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              );
}

Container buildContainer(icon,text) {
  return Container(
          child: Column(
            children: [
              Icon(icon),
              Text(text,style: TextStyle(fontSize: 12),)
            ],
          ),
        );
}

ListTile buildListTile(image,title,subtitle) {
  return ListTile(
        leading: CircleAvatar(
        radius:25.0,
          backgroundImage:AssetImage(image),
        ),
          title: Text(title,
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black,fontSize: 20),
          ),
          subtitle: Text(subtitle,style: TextStyle(fontSize: 14),
          ),
          focusColor: Colors.grey,
          hoverColor: Colors.grey,
          onTap: () {}
      );
}
  TextStyle getTextStyle(bool checked){
  if(!checked) return TextStyle(fontSize: 20);
  return TextStyle(fontSize: 20,decoration: TextDecoration.lineThrough);
  }
  TextStyle getTextStyle2(bool checked){
    if(!checked) return TextStyle(fontSize: 15);
    return TextStyle(fontSize: 15,decoration: TextDecoration.lineThrough);
  }
}
void buildDialog(BuildContext context) {
  final AlertDialog alert = AlertDialog(
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
          "March 1, 2021",style: TextStyle(fontSize: 24,color: Colors.blue,fontWeight: FontWeight.bold),
        )],
      ),
    ),
    content: Container(
      width: 500,
        height: 300,
        child: Column(
          children: [
            Divider(color: Colors.grey,),
            container3("Haircut(2:40 PM)","It's getting too long"),
            SizedBox(height: 10,),
            container3("Collect ransom(12:00 PM)","...or else!"),
          ],
        ),
    ),
  );
  showDialog(context: context, child: alert);

}

Container container3(text1,text2) {
  return Container(
            height: 70,
            color: Colors.grey.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [Text(text1,style: TextStyle(fontSize: 15),)],
                  ),
                  Row(
                    children: [Text(text2,style: TextStyle(fontSize: 12),)],
                  ),
                ],
              ),
            ),
          );
}


