# 🚀 nls_flutter_boilerplate

A clean and scalable **Flutter project boilerplate** with modular structure, API layer, localization, DI, theming, and environment configuration.

This template is designed for developers who want a **production-ready architecture** from day one.

---

## 📌 Features

- 🧱 Modular project structure (feature-based)
- 🌐 API layer with interceptors & error handling
- 🗂 Repository & provider pattern
- 🔑 Authentication-ready
- 📦 Dependency Injection (GetX)
- 🎨 Theming + App Colors
- 🌍 Multilingual (EN, AR)
- ⚙️ Environment configuration support
- 🖼 Assets structure (images, icons, fonts, lottie)
- 📱 iOS / Android / Web / Desktop ready

---

## 🛠 Getting Started

Clone this template:

```bash
git clone https://github.com/<your-username>/nls_flutter_boilerplate.git
cd nls_flutter_boilerplate
flutter pub get
Run the project:

bash
Copy code
flutter run
📁 Project Structure
text
Copy code
.
├── analysis_options.yaml
├── android
│   ├── app
│   │   ├── build.gradle.kts
│   │   └── src
│   ├── build.gradle.kts
│   ├── gradle
│   │   └── wrapper
│   ├── gradle.properties
│   ├── gradlew
│   ├── gradlew.bat
│   ├── local.properties
│   ├── nls_flutter_boilerplate_android.iml
│   └── settings.gradle.kts
├── assets
│   ├── fonts
│   ├── icons
│   │   └── playstore.png
│   ├── images
│   │   ├── camera.png
│   ├── lottie
│   │   └── party_poppor.json
│   └── svgs
│       └── timer.svg
├── flutter_launcher_icons.yaml
├── ios
│   ├── Flutter
│   ├── Podfile
│   ├── Podfile.lock
│   ├── Pods
├── lib
│   ├── app
│   │   ├── core
│   │   │   ├── components
│   │   │   ├── di
│   │   │   │   └── dependancy_injection.dart
│   │   │   ├── theme
│   │   │   ├── translations
│   │   │   └── utils
│   │   ├── data
│   │   │   ├── api
│   │   │   ├── models
│   │   │   ├── repository
│   │   │   ├── requests
│   │   │   └── response
│   │   ├── domain
│   │   │   ├── errors
│   │   │   ├── providers
│   │   │   ├── repository
│   │   │   └── resources
│   │   ├── environment
│   │   ├── modules
│   │   │   ├── home
│   │   │   ├── login
│   │   │   └── splash
│   │   └── routes
│   ├── gen
│   └── main.dart
├── linux
├── macos
├── pubspec.yaml
├── test
├── web
└── windows
🧩 Environments
Supports .env files via environment.dart.

Add your environment files:

bash
Copy code
/assets/env/dev.env
/assets/env/prod.env
Then configure:

dart
Copy code
Environment().init(EnvironmentType.dev);
🏗 Build Runner (if used)
bash
Copy code
flutter pub run build_runner build --delete-conflicting-outputs
🧪 Running Tests
bash
Copy code
flutter test
📝 License
This project is open-source.
Use freely for your applications or customize as needed.

🤝 Contributing
Feel free to open issues or submit PRs to improve the template.