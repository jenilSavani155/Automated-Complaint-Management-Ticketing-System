# Automated Complaint Management Ticking System

## Table of Content

1. [Introduction](#Introduction)
2. [Installation Guide](#Installation-Guide)
   - [Required Software](#Required-Software)
3. [Notes](#Notes)

## Introduction

## Installation Guide

For this app we will need [XAMPP](https://www.apachefriends.org/download.html) to setup the database MySQL and Apache Web server to run the php file.

### Required Software

- [XAMPP](https://www.apachefriends.org/download.html)

After installing XAMPP clone the repo in the xampp/htdocs folder.

```bash
git clone https://github.com/jenilSavani155/Automated-Complaint-Management-Ticketing-System
```

Run MySQL Database from XAMPP from Manage Servers tab. Open up MySQL by going to `http://localhost/phpmyadmin/` then import the `complaint.sql` file from the projects root. This will import the database we have created and all the tables in complaint database.

Now start the Apache Web Server from XAMPP as the project folder is in the htdocs just type
`http://localhost/Automated-Complaint-Management-Ticketing-System/index.php`

The app is now up and running.

## Notes
