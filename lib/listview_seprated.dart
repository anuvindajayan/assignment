import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home:list_seperated() ,));
}

class list_seperated extends StatelessWidget{

  var months=["January"," February", "March", "April","May", "June", "July", "August", "September", "October", "November", "December"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(itemBuilder: (context,index){

        return Card(child:
        Text(months[index],style: TextStyle(height: 2),),
        );

      },
          separatorBuilder: (context,index)  {
            if(index%3==0){
              return Card(child:
              Text("Advetisement",style: TextStyle(height: 2,color: Colors.white)),color: Colors.red,);
            }else{
              return SizedBox();
            }
          }
          ,
          itemCount: 12),
    );

  }

}