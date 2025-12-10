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
```


Run the project:
```bash
flutter run
```

📁 Project Structure:

```bash

├── analysis_options.yaml
├── android
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
├── build
├── flutter_launcher_icons.yaml
├── ios
├── lib
│   ├── app
│   │   ├── core
│   │   │   ├── components
│   │   │   ├── di
│   │   │   │   └── dependancy_injection.dart
│   │   │   ├── theme
│   │   │   │   ├── app_colors.dart
│   │   │   │   └── app_theme.dart
│   │   │   ├── translations
│   │   │   │   ├── ar_AR
│   │   │   │   ├── en_US
│   │   │   │   ├── localization_service.dart
│   │   │   │   └── strings_enum.dart
│   │   │   └── utils
│   │   │       └── consts.dart
│   │   ├── data
│   │   │   ├── api
│   │   │   │   ├── api_endpoints.dart
│   │   │   │   ├── auth_interceptor.dart
│   │   │   │   ├── base_client.dart
│   │   │   │   ├── handle_resource_call.dart
│   │   │   │   └── logging_interceptor.dart
│   │   │   ├── models
│   │   │   │   ├── get_payment_model.dart
│   │   │   │   ├── json
│   │   │   │   │   └── json_parser.dart
│   │   │   │   └── user_model.dart
│   │   │   ├── repository
│   │   │   │   └── auth_repository_impl.dart
│   │   │   ├── requests
│   │   │   │   ├── login_params.dart
│   │   │   │   ├── register_params.dart
│   │   │   │   ├── reset_password_params.dart
│   │   │   │   ├── update_password_params.dart
│   │   │   │   └── verify_code_params.dart
│   │   │   └── response
│   │   │       └── empty_api_response.dart
│   │   ├── domain
│   │   │   ├── errors
│   │   │   │   └── failure.dart
│   │   │   ├── providers
│   │   │   │   ├── image_provider.dart
│   │   │   │   ├── in_app_service.dart
│   │   │   │   ├── one_signal.dart
│   │   │   │   ├── payment_method_service.dart
│   │   │   │   ├── shared_prefrence.dart
│   │   │   │   ├── storage_provider.dart
│   │   │   │   ├── storage_service.dart
│   │   │   │   ├── user_provider_impl.dart
│   │   │   │   └── user_provider.dart
│   │   │   ├── repository
│   │   │   │   └── auth_repository.dart
│   │   │   └── resources
│   │   │       ├── resource_widget.dart
│   │   │       └── resource.dart
│   │   ├── environment
│   │   │   └── environment.dart
│   │   ├── modules
│   │   │   ├── home
│   │   │   │   ├── bindings
│   │   │   │   │   └── home_binding.dart
│   │   │   │   ├── controllers
│   │   │   │   │   └── home_controller.dart
│   │   │   │   └── views
│   │   │   │       └── home_view.dart
│   │   │   ├── login
│   │   │   │   ├── bindings
│   │   │   │   │   └── login_binding.dart
│   │   │   │   ├── controllers
│   │   │   │   │   └── login_controller.dart
│   │   │   │   └── views
│   │   │   │       └── login_view.dart
│   │   │   └── splash
│   │   │       ├── bindings
│   │   │       │   └── splash_binding.dart
│   │   │       ├── controllers
│   │   │       │   └── splash_controller.dart
│   │   │       └── views
│   │   │           └── splash_view.dart
│   │   └── routes
│   │       ├── app_pages.dart
│   │       └── app_routes.dart
│   ├── gen
│   └── main.dart
├── linux
│   ├── CMakeLists.txt
│   ├── flutter
│   └── runner
├── macos
├── nls_flutter_boilerplate.iml
├── pubspec.lock
├── pubspec.yaml
├── README.md
├── test
│   └── widget_test.dart
├── web
└── windows
```
🏗 Make Dart Class Models Using Jsafe:

```bash
flutter pub add jsafe
dart pub global activate jsafe
```
Create Dart file and paste json inside it and save

Then Run This Command To Create Dart Class Models Using Jsafe:
```bash
jsafe create path/to/file(Example: lib/data/models/user_model.dart)
```
🏗 Build Runner (if used):

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

🧪 Running Tests
```bash
flutter test
```
📝 License
This project is open-source.
Use freely for your applications or customize as needed.

🤝 Contributing
Feel free to open issues or submit PRs to improve the template.