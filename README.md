# microverse_final_project


![Microverse](https://img.shields.io/badge/Microverse-blueviolet)


 This is the final project of the Microverse curriculum. It consists of a backend built with Ruby on Rails and a frontend built withReactjs/Redux. 

 The project itself offers a service, the renting of a boat for a period of time. 

 We did follow the given design of the website, but personalized the content, i.e., instead of booking an appointment to try a motorcycle, we built an app to book an trip in a ship. 

 
The user can manage ships and reservations. As well as explore the ones existing. 

Even if we are a team of two people, we decided to build the project based on the requirements of the group of 5 people.

[App Requirements](https://github.com/microverseinc/curriculum-final-capstone/blob/main/projects/business_requirements.md)

=======

### API Documentation

[API Documentation](https://frozen-dusk-66130.herokuapp.com/api-docs/index.html)

### Deployed App

[API Deployed](https://frozen-dusk-66130.herokuapp.com/api-docs/index.html)

=======


### NOTE TO CODE REVIEWERS 

- To test the app locally ensure that the rails backend is running,so this 
react app uses the address http://locahost:3001

- In order to try the features exclusive for administrator signup with the defaul values.
Or input: 

```cmd
email as@as.com
password: 123456 
```

### Kanban board screenshot
![https://i.imgur.com/8G0sWBn.png](https://i.imgur.com/8G0sWBn.png)

### Screenshots
Main page
![https://i.imgur.com/ueP13ao.png](https://i.imgur.com/ueP13ao.png)

Signup page
![https://i.imgur.com/DkMI117.png](https://i.imgur.com/DkMI117.png)

Details page
![https://i.imgur.com/NOJezfx.png](https://i.imgur.com/NOJezfx.png)


 This project is composed by this repository and a frontend created with ReactJS. 
 
 [Get the ReactJS App here](https://github.com/Metsanpeitto/microverse_final_project_front)

 [Visit the front end here](https://dry-peak-20261.herokuapp.com/)

 In order to run it locally this rails app should be 
initialized before the ReactJS app.

- So Rails app will run on:

```cmd
 http://localhost:3000
```

- And the ReactJS app will run on:

```cmd
 http://localhost:3001
```
There is also a chance that the front end app is already obtaining the data from the deployed Rails API.

=======

## Built With 

- Ruby on Rails
- Rubocop

=======

### Prerequisites

To run this project you must to have ruby installed in your machine. If you don't have it
follow the instructions [here](https://www.ruby-lang.org/en/documentation/installation/)

=======


### Getting Started

If you want a copy of this file go to the github repository and download it from there

- [`git clone https://github.com/Metsanpeitto/microverse_final_project`](https://github.com/Metsanpeitto/microverse_final_project)


### Setup

```cmd
git clone  https://github.com/Metsanpeitto/microverse_final_project.git
cd ./microverse_final_project
```

### Install gems

```cmd
bundle install
```

### Add the secret key

In order to be able to run the database and make Devise working propperly, the user should go
to the folder src/config/master.key and remove the key in there, then add:

```cmd
c226854fe4a838c57265d7088709aa53
```

### Apply migration (only if you generate a new migration file)

```cmd
rails db:migrate
```

### Usage

```cmd
$ruby main.rb
```

### Verify rubocop

```
$ rubocop -A
```

### Install style lint

```
npm install --save-dev stylelint@13.x stylelint-scss@3.x stylelint-config-standard@21.x stylelint-csstree-validator@1.x
```

### Run stylelint autofix

```
npx stylelint "**/*.{css,scss}" --fix
```
=======

### Instruction for non technical persons

If you are non a technical person you can download the zip file.

- To do that you have to go to the green button that says 'Code' and then press on it.
- Choose the option 'Download Zip' and wait until it download.
- Then you need to decompress it.
- You will need to have Zip compress file software installed in your computer. If you don't have it you can download it from here
  [`https://www.7-zip.org/download.html`](https://www.7-zip.org/download.html)
- Do double click on the Capstone-1.zip and choose a folder where to place all teh decompressed files.
- Once you are done decompressing, you can open the created folder.
- In it you can double click on the index.html file and choose a browser to open it (For example google Chrome Browser).
- Now you should be able to see the project.
- Remember to use the mouse to navigate through the website. Also you can use the keys 'arrow up' and 'arrow down' of your keyboard
  to scroll up and down.

=======

## Authors

👤 **Abraham Rodriguez**

- GitHub: [@metsanpeitto](https://github.com/Metsanpeitto)
- LinkedIn: [Abraham Rodriguez](https://www.linkedin.com/in/abraham-rodriguez-3283a319a/)
- Portfolio: [Waldenberg](https://portfolio.waldenberginc.com)


👤 **Akasha Rojee**

- GitHub: [@AkashaRojee](https://github.com/AkashaRojee)
- Twitter: [@AkashaRojee](https://twitter.com/AkashaRojee)
- LinkedIn: [Akasha Rojee](https://linkedin.com/in/AkashaRojee)


=======

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

=======

## Show your support

Give a ⭐️ if you like this project!

=======

## Acknowledgments

- Microverse for giving me this chance
- The amazing code reviewers for making me improve every day :thumbsup:

=======


[![License: CC BY-NC 4.0](https://licensebuttons.net/l/by-nc/4.0/80x15.png)](https://creativecommons.org/licenses/by-nc/4.0/)
[![License: CC0-1.0](https://licensebuttons.net/l/zero/1.0/80x15.png)](http://creativecommons.org/publicdomain/zero/1.0/)


