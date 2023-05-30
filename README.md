# Event Board

#### This project was made as an administrator event board manager. The application is a CMS. We have users which make events for others to join and people can comment on these events. The point is so that people can organize events and leave their feedback on the events for others. 

#### We needed a dashboard so that an administrator could moderate bad user events and comments.


#### This project is a full stack application which uses Angular for the front-end, .NET for the backend and MySQL for the database.

#### Technologies used 

- Frontend: Angular
- Backend: .NET 5
- Database: MySQL
- Virtualization: Docker

#

## Run Application


### Docker

##### This application uses Docker so if you have it installed, you just run the following command : 
**docker-compose up -d --build**

### Other

#### If you don't have docker installed, then you have to do this:

- frontend: **npm run build**
- backend: **dotnet start** or just run the backend in visual studio
- databse: import the MySQL file in **db-start**

#

## What it looks like

![Login](/images/login.png)

#### You are greated by a login screen for the administrator and you can enter the username and password for the administrator which are :

- username: **string**
- password: **string**

#### After that, you come to the following pages

![Login](/images/pageUtilisateur.png)

##### This is a page where all the users of your application are show and their respective details. Each use has three buttons. The first button brings you to a detailed page where their detail is shown and where you can see their events which they have made.

![Login](/images/clickDetailUtilisateur.png)

##### This shows the detail of the user and his events. You can also click on these events which then also shows the related comments in a similar fashion as the User detail.

![Login](/images/detailUtilisateur.png)

##### If we go back, and we click this middle button, which is the update button:

![Login](/images/clickEditUtilisateur.png)

##### We are shown a popup in which we can update the user details. Some information are not changeable.

![Login](/images/updateUtilisateur.png)

##### If we go back, and we click this last button, which is the delete button:

![Login](/images/clickDeleteUtilisateur.png)

##### We can delete the user by entring the secret password which is 
**secret**

![Login](/images/deleteUtilisateur.png)

##### The events page is the same thing, but it shows the events and if you click for more details, you can see the posts related to the events and you can modify and delete the events and the comments.