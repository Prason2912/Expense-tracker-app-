import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Phone Authentication",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.9,
              child: TextField(
                controller: phoneNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Your Phone number',
                  hintStyle: TextStyle(color: Colors.teal.shade500),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.phone,color: Colors.teal.shade500,),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 55),
                backgroundColor: Colors.teal.shade500
              ),
                onPressed: (){}, child:
            Text("Verify Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
