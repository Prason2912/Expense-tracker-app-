import 'package:flutter/material.dart';
import '../view/DetailsUI/income_page.dart';
import '../view/DetailsUI/expense_page.dart';
import '../view/DetailsUI/transfer_page.dart';
import '../view/DetailsUI/more_actions_page.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildActionItem(context, "Income", Icons.add_chart, Colors.teal, const IncomePage()),
          _buildActionItem(context, "Expense", Icons.receipt_long, Colors.orange, const ExpensePage()),
          _buildActionItem(context, "Transfer", Icons.swap_horiz, Colors.blue, const TransferPage()),
          _buildActionItem(context, "More", Icons.grid_view_rounded, Colors.purple, const MoreActionsPage()),
        ],
      ),
    );
  }

  Widget _buildActionItem(BuildContext context, String label, IconData icon, Color color, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
