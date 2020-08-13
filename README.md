# flutter_login_facebook Implementation

Add Bloc Flutter application to be template for user authentication by Facebook login.

## Getting Started
### Set up Bloc project:
1) From master branch.
2) Set up flutter_login_facebook library in pubspec.yaml
  - Found error after try to build:
  com.android.builder.dexing.DexArchiveMergerException: Error while merging dex archives: 
  The number of method references in a .dex file cannot exceed 64K.
  - Solution: Edit android/app/build.gradle by
    - add 
      defaultConfig {
        multiDexEnabled true
    - add 
      dependencies {
        implementation 'com.android.support:multidex:1.0.3'
  
3) Create Event files.
5) Create State files.
6) Create Bloc files
7) Create Barrel files.
8) Create UI Page files.
9) Create UI Widgets files.
3) Create Repository files.

10) Create Bloc Observer file.
11) Create main.dart with 
  - WidgetsFlutterBinding.ensureInitialized()
  - Initial Repository.
  - Initial BlocProvider.
11) Putting it all together.


A few resources to get you started if this is your first Flutter project:
- [Good practice for Bloc study](https://bloclibrary.dev/#/flutterfirebaselogintutorial)
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
