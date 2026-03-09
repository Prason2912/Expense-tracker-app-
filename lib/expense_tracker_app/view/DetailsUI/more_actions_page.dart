import 'package:flutter/material.dart';

class MoreActionsPage extends StatelessWidget {
  const MoreActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "More Actions",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildActionSection("Financial Planning", [
            _buildActionTile(Icons.pie_chart_rounded, "Reports", "Monthly spending insights", Colors.purple),
            _buildActionTile(Icons.track_changes_rounded, "Budgeting", "Set and track limits", Colors.orange),
            _buildActionTile(Icons.flag_rounded, "Goals", "Save for something special", Colors.green),
          ]),
          const SizedBox(height: 24),
          _buildActionSection("Account & Data", [
            _buildActionTile(Icons.file_download_outlined, "Export Data", "Download PDF/CSV reports", Colors.blue),
            _buildActionTile(Icons.category_outlined, "Categories", "Manage your tags", Colors.teal),
            _buildActionTile(Icons.settings_outlined, "Settings", "Currency, theme and more", Colors.grey),
          ]),
          const SizedBox(height: 24),
          _buildActionSection("Help & Feedback", [
            _buildActionTile(Icons.help_outline_rounded, "Help Center", "FAQs and support", Colors.indigo),
            _buildActionTile(Icons.rate_review_outlined, "Feedback", "Tell us what you think", Colors.pink),
          ]),
        ],
      ),
    );
  }

  Widget _buildActionSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 12),
          child: Text(
            title,
            style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 10, offset: const Offset(0, 4)),
            ],
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildActionTile(IconData icon, String title, String subtitle, Color color) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
        child: Icon(icon, color: color, size: 24),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey.shade500, fontSize: 12)),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14, color: Colors.grey),
      onTap: () {},
    );
  }
}
