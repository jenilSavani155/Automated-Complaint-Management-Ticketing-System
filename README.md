# Automated Complaint Management Ticking System

## Table of Content

1. [Introduction](#Introduction)
2. [Installation Guide](#Installation-Guide)
   - [Required Software](#Required-Software)
3. [User Manuel](#User-Manuel)
   - [User Roles](#User-Roles)
     - [Admin Role](#Admin-Role)
     - [Cloud Engineer Role](#Cloud-Engineer-Role)
     - [User Role](#User-Role)
4. [Notes](#Notes)
5. [Glossary](#Glossary)

## Introduction

## Installation Guide

For this app we will need [XAMPP](https://www.apachefriends.org/download.html) to setup the database MySQL and Apache Web server to run the php file.

### Required Software

- [XAMPP](https://www.apachefriends.org/download.html)
- [Git](https://git-scm.com/)

After installing Git and XAMPP clone the repo in the `htdocs` folder.

For MacOS go to `Users/username/Application/XAMPP/htdocs`
![image showing macos xampp folder structure](assets/readme/macos-folder.png)

For Windows go to `C:/xampp/htdocs`
![image showing windows xampp folder structure](assets/readme/windows-screen.png)

For Linux distor place the project in `/opt/lampp/htdocs/`

```bash
git clone https://github.com/jenilSavani155/Automated-Complaint-Management-Ticketing-System
```

Run MySQL Database and Apache Server from XAMPP on Manage Servers tab.
![XAMPP screen on Manage Server Tab](assets/readme/xampp-screen.png)

Open up MySQL by going to [`http://localhos t/phpmyadmin/`](http://localhost/phpmyadmin/) then import the `complaint.sql` file in this url [`http://localhost/phpmyadmin/index.php?route=/server/import`](http://localhost/phpmyadmin/index.php?route=/server/import) from the projects root folder. This will import the database we have created and all the tables in complaint database.
![import screen of phpMyAdmin](assets/readme/import-screen.png)

Now go to
[`http://localhost/Automated-Complaint-Management-Ticketing-System/index.php`](http://localhost/Automated-Complaint-Management-Ticketing-System/index.php)

The app is now up and running.

For hosting on the cloud please follow this document from official [XAMPP website](https://www.apachefriends.org/hosting.html)

## User Manuel

As requested but the client we have divided the users in three different roles with different levels of authorities and functionalities.

### User Roles

- [Admin Role](#Admin-Role)
- [Cloud Engineer Role](#Cloud-Engineer-Role)
- [User Role](User-Role)

#### Admin Role

#### Cloud Engineer Role

#### User Role

## Notes

## Glossary
