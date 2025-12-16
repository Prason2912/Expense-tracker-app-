import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/expense_tracker_app/provider/transaction_provider.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width*0.98,
            child: Card(
              color: Colors.teal.shade400,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text("Monthly Salary",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Image.asset("assets/images/income.png")),
                        SizedBox(width: 10,),
                        Text("Total Income: \Rs.${transactionProvider.totalIncome.toStringAsFixed(0)}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Image.asset("assets/images/expense.png"),
                        ),
                        SizedBox(width: 10,),
                        Text("Total Expenses: \Rs.${transactionProvider.totalExpense.toStringAsFixed(0)}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Remaining Balance: \Rs.${transactionProvider.remainingBalance.toStringAsFixed(2)}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 8),

        ],
      ),
    );

  }
}
