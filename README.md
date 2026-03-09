# 💸 Expense Tracker App

A clean and intuitive **Expense Tracker** built with Flutter using **Provider** for state management. Track your daily expenses, categorize them, and stay on top of your finances.

---

## 📱 Screenshots

<table>
  <tr>
    <td align="center"><img src="screenshots/home.png" width="200px"/><br/><b>Home Screen</b></td>
    <td align="center"><img src="screenshots/add_expense.png" width="200px"/><br/><b>Add Expense</b></td>
    <td align="center"><img src="screenshots/categories.png" width="200px"/><br/><b>Categories</b></td>
    <td align="center"><img src="screenshots/chart.png" width="200px"/><br/><b>Analytics</b></td>
  </tr>
</table>


---

## ✨ Features

- ➕ **Add & Delete Expenses** — Quickly log your daily spending
- 🗂️ **Categories** — Organize expenses by type (Food, Travel, Shopping, etc.)
- 📊 **Charts & Analytics** — Visual breakdown of your spending
- 🌙 **Dark Mode** — Easy on the eyes at night
- 💾 **Persistent Storage** — Your data stays saved between sessions

---

## 🛠️ Tech Stack

| Technology | Usage |
|---|---|
| **Flutter** | UI Framework |
| **Dart** | Programming Language |
| **Provider** | State Management |
| **Shared Preferences / Hive** | Local Storage |
| **FL Chart** | Charts & Graphs |
| **Material Design 3** | UI Components |

---

## 📁 Project Structure

```
lib/
├── main.dart
├── models/
│   └── expense.dart          # Expense data model
├── providers/
│   └── expense_provider.dart # Provider state management
├── screens/
│   ├── home_screen.dart      # Main screen
│   ├── add_expense_screen.dart
│   └── analytics_screen.dart
├── widgets/
│   ├── expense_list.dart
│   ├── expense_card.dart
│   └── chart_widget.dart
└── utils/
    └── constants.dart
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed
- Android Studio / Antigravity / VS Code
- Android/iOS device or emulator

### Installation

```bash
# Clone the repository
git clone https://github.com/Prason2912/Expense-tracker-app-.git

# Navigate to project folder
cd Expense-tracker-app-

# Install dependencies
flutter pub get

# Run the app
flutter run
```

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.1
  shared_preferences: ^2.2.2
  fl_chart: ^0.68.0
  intl: ^0.19.0
  uuid: ^4.3.3
```

---

## 🏗️ Build APK

```bash
# Build release APK
flutter build apk

# APK location
build/app/outputs/flutter-apk/app-release.apk
```

---

## 🤝 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 👨‍💻 Author

**Prason**
- GitHub: [@Prason2912](https://github.com/Prason2912)

---

⭐ **If you found this project helpful, please give it a star!** ⭐