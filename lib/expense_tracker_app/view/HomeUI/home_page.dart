import 'package:flutter/material.dart';
import '../../widget/add_transaction.dart';
import '../../widget/summary.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/expensebg1.png"),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 10),
              child: Row(
                children: [
                  Icon(Icons.account_circle,color: Colors.white,size: 45,),
                  SizedBox(width: 5,),
                  Text("User Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(width:180,),
                  Icon(Icons.settings,color: Colors.white,size: 30,)
                ],
              ),
            ),
           Summary(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            showDragHandle: true,
            backgroundColor: Colors.teal.shade200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            context: context,
            builder: (_) => AddTransaction(),
          );
        },
        child: Icon(Icons.add,color: Colors.teal.shade500,),
        backgroundColor: Colors.white,
      ),


    );

  }
}
