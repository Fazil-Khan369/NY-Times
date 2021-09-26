# NY Times Most Popular Articles 


A simple app to hit the NY Times Most Popular Articles API and:
* Show a list of articles newest first(sorted based on date)
* Shows details when items on the list are tapped. 


Using the most viewed section of this API.
http://api.nytimes.com/svc/mostpopular/v2/mostviewed/{section}/{period}.json?apikey= sample-key To test this API, 
For testAPI we used 
* all-sections for the section path component in the URL
* 7 for period

This is configurable in Constants.Swift file in Project. 
Used MVC Design pattern and swift generic approach to develop this application.

## Tools And Resources Used

- [CocoaPods](https://cocoapods.org/) - CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects. It has over 33 thousand libraries and is used in over 2.2 million apps. CocoaPods can help you scale your projects elegantly.


## Library Used
- [Moya](https://github.com/Moya/Moya) - Network abstraction layer written in Swift.
- [Kingfisher](https://github.com/onevcat/Kingfisher) - A lightweight, pure-Swift library for downloading and caching images from the web.
- [SVProgressHUD ](https://github.com/SVProgressHUD/SVProgressHUD) - SVProgressHUD is a clean and easy-to-use HUD meant to display the progress of an ongoing task on iOS and tvOS.

&nbsp; 

# How to build and run the code?

* Start by cloning the repository
* Go to directory
* Open "NY Times Most Popular Articles.xcworkspace" using Xcode 
* use command + B or Product -> Build to build the project
* Incase of build fail due to dependency Kingfisher, install Kingfisher using CocoaPods.
* Incase of build fail due to dependency Moya, install Moya using CocoaPods.
* Incase of build fail due to dependency SVProgressHUD, install SVProgressHUD using CocoaPods.
* Press run icon in Xcode or command + R to run the project on Simulator

&nbsp; 




## Running The Tests Manually 

Follow the steps to get test case reports:
* Enable coverage Data under test schema section:
* Select the Test Icon by pressing and holding Xcode Run Icon OR press `Command+Control+U`
* In the Project Navigator under Test Navigator tab, check test status and coverage 

# Architecture

The project uses an object oriented programming approach with MVC architecture and utilizes structs, extensions and some class inheritance to separate and define the code more clearly.

&nbsp; 
&nbsp; 


