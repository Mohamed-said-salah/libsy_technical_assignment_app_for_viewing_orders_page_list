# Libsy Task For Vintage Market App 📱
This Flutter application is a solution for the Libsy Technical Assignment. It implements a feature to display user orders, divided into Purchases and Sales, retrieved from a provided API. The app adheres to the Libsy design language while ensuring functional and visually appealing interfaces.

# Languages and frameworks 📑
 * Flutter: version 3.24.5
 * Dart
   
## Packages & Plugins 🔎
 * flutter_dotenv : For managing environment variables (like api token) securely.
 * http : For making HTTP requests to fetch data from APIs.
 * Flutter Bloc : For propper state management handling
 * Fast Cahced Network Image : For efficient image caching and loading.
 * Path Provider : For accessing file system paths like temporary directories.
 * Equatable : For simplifying equality comparisons in Dart objects.
 * Flutter Screenutil : For building responsive layouts across devices.
 * smooth page indicator : For creating smooth and stylish page indicators.

## Features 🥇
 * Order Listing: Displays user purchases and sales in separate sections.
  * Includes item details such as name, buyer/seller information, and order status.
 * Order Details: Allows users to view more detailed information about a specific order.
 * Dynamic API Integration: Fetches data from the provided API, with proper handling of loading states.
 * Intuitive UI Design: Follows modern app design principles inspired by libsy.

## IDEs 💻
 * VS code
 * Android Studio

## Get the App 📱
 * Get the apk of the app from [**Drive**](https://drive.google.com/file/d/1mUKyTPygvfdWe33nLk1Q_TXUvot1iPRU/view?usp=sharing)

## Setup 💽
To get a local copy up and running, follow these instructions.

Prerequisites

 * Flutter SDK: Ensure Flutter is installed on your system. Follow Flutter installation guide
 * Android Studio or Visual Studio Code for development and testing.
 * clone the repository
 * Ensure your device's Intrenet are enabled.
 * Define the api key at the .env file
 * and run the app on any plugged android physical device or emulator.

## Installation
   ``` bash 
      # Clone the repository
      git clone https://github.com/Mohamed-said-salah/libsy_technical_assignment_app_for_viewing_orders_page_list.git

      cd libsy_technical_assignment
   ```
   ``` bash
      # Install dependencies
      flutter pub get
   ```
   ``` bash
      # Run the application on an physical device or emulator 
      flutter run
   ```

   ``` bash
      # Build the APK
      flutter build apk --release
   ```

## Project Structure
   ``` bash
    .
    └── lib/
        ├── api/
        │   └── order_api.dart
        ├── models/
        │   ├── responses/
        │   │   └── orders_response.dart
        │   ├── item.dart
        │   ├── order.dart
        │   ├── profile.dart
        │   └── sale.dart
        ├── logic/
        │   └── cubit/
        │       ├── orders_cubit.dart
        │       └── orders_state.dart
        ├── views/
        │   ├── screens/
        │   │   ├── order_details_screen.dart
        │   │   ├── orders_screen.dart
        │   │   └── splash_screen.dart
        │   └── widgets/
        │       ├── avatars/...
        │       ├── components/...
        │       ├── shimmers/...
        │       └── tiles/...
        └── main.dart
   ```

## ScreenShots 🖼️
<div align='center'>
  <img height="460px" src="https://github.com/user-attachments/assets/9cfb6b31-2c9c-408b-9ebc-89f89c849abd">
  <img height="460px" src="https://github.com/user-attachments/assets/3ce7c6ad-b33b-464c-84a7-db8a50b56f72">
  <img height="460px" src="https://github.com/user-attachments/assets/d35fda79-fedb-410a-a9d5-57220b257f9c">
  <img height="460px" src="https://github.com/user-attachments/assets/7d76812b-5e96-454f-bb03-fd96b18ed184">
<hr/>
</div>
