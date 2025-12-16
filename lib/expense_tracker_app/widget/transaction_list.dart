import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/expense_tracker_app/provider/transaction_provider.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);

    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/expensebg3.png"),
          ),
        ),
        child:
        Stack(
          children:[
            Positioned(
                top: MediaQuery.of(context).size.height*0.05,
                left: MediaQuery.of(context).size.width*0.32,
                child: Text("Transactions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ListView.builder(
                itemCount: transactionProvider.transaction.length,
                itemBuilder: (ctx,index){
                  final tx= transactionProvider.transaction[index];
                  return GestureDetector(
                    onLongPress: (){
                      transactionProvider.removeTransaction(tx.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10,left: 10,bottom: 3),
                      child: Card(
                        color: tx.isIncome ? Colors.teal.shade100 : Colors.red.shade100,
                        child: ListTile(
                          title: Text(tx.title),
                          subtitle: Text(tx.date.toString()),
                          trailing: Text( '\Rs.${tx.amount.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: tx.isIncome ? Colors.green : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
                        ),
            ),
        ]
        ),
      ),
    );

  }
}
