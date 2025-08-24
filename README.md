# 📝 **NoteTaker - Personal Note Taking App**


### 📌 **Project Description**


NoteTaker is a lightweight, web-based Personal Note Taking Application built using JSP, Servlets, Hibernate, and MySQL.

It allows users to create, update, delete, and manage personal notes efficiently with database integration. The app is designed with a clean interface, making it simple to organize thoughts, tasks, and important information in one place.
_______________________________________
### 🚀 **Features**


•	📝 CRUD operations for notes (Add, View, Update, Delete)

•	🎨 User-friendly JSP interface with Bootstrap styling

•	💾 Hibernate ORM for seamless database interaction

•	🔍 View all notes in a structured list format

•	⚡ Lightweight & fast deployment on Apache Tomcat

•	🔄 Centralized transaction management with Hibernate
________________________________________
### 🛠 **Technologies Used**


•	Backend: Java, Servlets, Hibernate ORM

•	Frontend: JSP, HTML, CSS, Bootstrap

•	Database: MySQL

•	Build Tool: Maven

•	Server: Apache Tomcat
________________________________________
### 📂 **Project Structure**


NoteTaker/

│── pom.xml                         # Maven dependencies & build settings

│── src/main/java/com/entities/Note.java          # Hibernate entity for Note

│── src/main/java/com/helper/FactoryProvider.java # Hibernate SessionFactory

│── src/main/java/com/servlets/

│   ├── SaveNoteServlet.java        # Add note

│   ├── UpdateServlet.java          # Edit note

│   └── DeleteServlet.java          # Delete note

│

│── src/main/resources/hibernate.cfg.xml          # Hibernate config

│

│── src/main/webapp/
│   ├── index.jsp                   # Home page

│   ├── add_notes.jsp               # Add Note page

│   ├── all_notes.jsp               # View Notes page

│   ├── edit.jsp                    # Update Note page

│   ├── navbar.jsp                  # Navigation bar

│   ├── all_js_css.jsp              # Shared CSS/JS imports

│   ├── img/                        # App icons/images

│   └── WEB-INF/web.xml             # Deployment descriptor

│

│── pom.xml                           # Maven dependencies & build settings


________________________________________
### 🏆 **Challenges Faced**


•	⚙️ Configuring Hibernate with MySQL and mapping entities

•	🔄 Handling session & transaction management during CRUD operations

•	🎨 Designing a responsive JSP UI with Bootstrap

•	🚀 Fixing Tomcat deployment issues (classpath & libraries)
________________________________________
### 🔮 **Future Enhancements**


•	🔑 User login & authentication (multi-user notes)

•	📂 Categories & tags for notes organization

•	⏰ Reminders & scheduling features

•	🌐 REST API integration for mobile apps

•	🌐 🔒 Security with JWT authentication
________________________________________
### 📸 **Screenshots**


#### 🏠 **Home Page:**

<img width="1908" height="899" alt="Notes Home Page" src="https://github.com/user-attachments/assets/46263306-4a79-4589-8a81-1c1d435c2984" />


#### 📝 **Add Note:**

<img width="1898" height="892" alt="Add Note" src="https://github.com/user-attachments/assets/a65e2995-3399-408d-b419-1e29fdc68caa" />


#### ✏️ **Edit Note:**

<img width="1899" height="895" alt="Update Note" src="https://github.com/user-attachments/assets/010edbe3-5781-4000-bd4a-659e010f325c" />


#### 👥 **All Notes:**

<img width="1877" height="893" alt="All Notes" src="https://github.com/user-attachments/assets/707a53f1-d77d-41f5-9e05-dd0baf792498" />
