# Task Week2 — MentorShip Project

**Anime / Movies Display App** built with Flutter and Clean Architecture principles.

---

## 🧩 Project Structure & Architecture

This project applies the *Clean Architecture* pattern, dividing code into distinct layers for better separation of concerns, maintainability, and testability:

ib/
┣ core/ # Shared utilities, constants, theme, images, etc.
┃ ┣ utils/
┃ ┣ app_constants.dart
┃ ┣ app_images.dart
┃ ┗ app_theme.dart
┃
┣ features/
┃ ┣ home/
┃ ┣ detail/
┃ ┣ plan/
┃ ┣ rating/
┃ ┣ search/
┃ ┗ setting/


- **core/**: Contains app-wide constants, theme definitions, image assets references, and utility functions.
- **features/**: Each feature (home, detail, plan, rating, search, setting) is modularized — this helps you isolate logic, UI, and data for each feature.
- **main.dart**: Entry point of the application.

---

## 🚀 How to Run

Follow these steps to get the project up and running locally:

1. **Clone the repository**  
   ```bash
   git clone https://github.com/Abdulteef1998/Task-week2-MentorShip-Omar-Ahmed.git
   cd Task-week2-MentorShip-Omar-Ahmed
flutter pub get
flutter run

🎯 Features & Screens

Here are some of the functionalities included (or intended) in the app:

Display list of anime / movies.

Show detailed information on each movie.

Search feature to find particular titles.

Rating UI to allow rating of a movie.

Settings UI (appearance, preferences).

Theming and styling centralized in app_theme.dart.

Asset and image references kept in app_images.dart.

Constants and reusable values in app_constants.dart.

Technologies & Tools Used

Flutter (Dart)

Clean Architecture

State management (if used — e.g. Provider, Riverpod, Bloc)

Material Design / Theming

👤 Author & Contact

Name: Abdulteef Rashid

GitHub: Abdulteef1998

Mentor / Grant: Omar Ahmed Menorshio
 


<img width="971" height="578" alt="folder" src="https://github.com/user-attachments/assets/97128377-0c44-47d2-9526-b6d23096bcbb" />
<img width="1920" height="1080" alt="home_screen" src="https://github.com/user-attachments/assets/60c77b6a-3bd1-4256-b1de-d744b8e92fd0" />
<img width="1920" height="1080" alt="watch" src="https://github.com/user-attachments/assets/b54bb4fc-4bdf-49d1-bb8c-ecb303e85a27" />

<img width="1920" height="1080" alt="plan" src="https://github.com/user-attachments/assets/d64be1bb-48fc-414a-bb1b-e0dc587452ab" />
