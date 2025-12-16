import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/expense_tracker_app/provider/transaction_provider.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isIncome =true;
  void submitData(){
    final title = _titleController.text;
    final amount = double.tryParse(_amountController.text) ??0;

    if(title.isEmpty || amount <=0) return;
   Provider.of<TransactionProvider>(context,listen: false).addTransaction(title, amount, _isIncome);
   Navigator.pop(context);


}

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15),
    child: Column(
      children: [
        TextField(
          controller: _titleController,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person,color: Colors.white,),
            label: Text('Title',style: TextStyle(color: Colors.white),),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15)
              )
          ),
        ),
        SizedBox(height:10 ,),
        TextField(
          controller: _amountController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.currency_rupee,color: Colors.white,),
              label: Text("Amount",style: TextStyle(color: Colors.white),),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)
            )
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Income",style: TextStyle(color: _isIncome==true ?Colors.green : Colors.black,fontWeight: FontWeight.w500),),
            Switch(
                activeColor: Colors.teal,
                inactiveThumbColor: Colors.red,
                value: _isIncome, onChanged: (val){
              setState(() {
                _isIncome = val;
              });
            }),
            Text("Expense",style: TextStyle(color: _isIncome== false? Colors.red:Colors.black,fontWeight: FontWeight.w500),),

          ],
        ),
        SizedBox(height: 160,),
        ElevatedButton(
            onPressed: submitData, child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add,color: Colors.teal.shade400,),
            SizedBox(width: 8,),
            Text("Add Transaction",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal.shade400),),
          ],
        ))
      ],
    ),);
  }
}
