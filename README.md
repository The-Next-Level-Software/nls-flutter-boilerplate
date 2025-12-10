# nls_flutter_boilerplate

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

## Project Structure

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
├── build
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
│   ├── Flutter
│   ├── Podfile
│   ├── Runner
│   ├── Runner.xcodeproj
│   ├── Runner.xcworkspace
│   └── RunnerTests
├── nls_flutter_boilerplate.iml
├── pubspec.lock
├── pubspec.yaml
├── README.md
├── test
│   └── widget_test.dart
├── web
│   ├── favicon.png
│   ├── icons
│   ├── index.html
│   └── manifest.json
└── windows
    ├── CMakeLists.txt
    ├── flutter
    └── runner
...