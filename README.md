##Digital Picture Frame App

Purpose

The Digital Picture Frame App is a Flutter-based application that continuously rotates through a set of images stored in the cloud. It provides a visually appealing way to display images with a customizable border and a pause/resume feature for user control.

Features

Automatically cycles through images every 10 seconds.

Supports images hosted online via URLs.

Customizable border for an elegant display.

Pause and resume functionality to control the slideshow.

Error handling for image loading failures.

Uses CachedNetworkImage for optimized image loading and caching.

How It Works

The application loads a predefined list of image URLs.

A Timer updates the displayed image every 10 seconds.

Users can pause or resume the slideshow using the floating action button.

Images are displayed with a rounded border for enhanced aesthetics.

The app uses CachedNetworkImage to efficiently load and cache images, improving performance and reducing network requests.

Installation and Usage

Clone the repository:

git clone <repository-url>

Navigate to the project directory:

cd digital_picture_frame

Install dependencies:

flutter pub get

Run the application:

flutter run

Technologies Used

Flutter: Cross-platform UI toolkit.

Dart: Programming language used for Flutter development.

CachedNetworkImage: Provides efficient image caching and loading.

Timer: Used for automatic image transitions.

Future Enhancements

Allow users to upload their own images.

Enable cloud storage integration for dynamic image updates.

Add transition effects between image changes.

Implement user-defined timing intervals for image rotation.
