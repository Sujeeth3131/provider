import 'package:flutter/material.dart';
class Home_Page extends StatefulWidget {
  Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();


}

class _Home_PageState extends State<Home_Page> {
  List <int>numbers=[1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        int last=numbers.last;
        setState(() {
          numbers.add(last+1);
        });
      },child: Icon(Icons.add),),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return Text('0');
          }
        ),
      ),
      body: SizedBox(
        child: Column(
          children: [
            Text(numbers.last.toString(),
            style: TextStyle(fontSize: 30),),
            Expanded(child: ListView.builder(itemBuilder:(context,index){
              return Text('1');
            }))
          ],
        ),
      )
    );
  }
}
