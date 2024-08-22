
# MakeMyTrip

## Overview
MakeMyTrip is a dynamic tour and travel booking platform designed to provide users with a seamless experience for planning and booking trips. Implemented using ASP.NET, this project offers robust features for both users and administrators, ensuring efficient management of travel packages, bookings, and user activities.

## Features
- **User Authentication**: Secure registration and login system for users and admins.
- **Trip Search**: Powerful search functionality to find resorts and destination packages.
- **Booking Management**: Streamlined booking system for managing trip reservations.
- **Grid View Display**: User-friendly grid view cards for displaying resorts and destination packages.
- **Dynamic User History**: Tracks and displays every user’s trip booking history.
- **Admin Panel**: Comprehensive admin interface to manage users, bookings, and travel packages.
- **Database Integration**: Efficient use of SSMS (SQL Server Management Studio) for data management.

## Technologies Used
- **Backend**: ASP.NET Framework (C#)
- **Database**: Microsoft SQL Server (SSMS)
- **Frontend**: Razor Pages, HTML, CSS, JavaScript
- **Version Control**: Git

## Prerequisites
Before starting, ensure you have the following installed:
- Visual Studio (with ASP.NET support)
- SQL Server Management Studio (SSMS)
- .NET Framework 4.7.2 or higher

## Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/makemytrip.git
   cd makemytrip
   ```

2. **Open the Project in Visual Studio**
   - Launch Visual Studio and open the `MakeMyTrip.sln` solution file.

3. **Configure the Database**
   - Open SQL Server Management Studio (SSMS).
   - Create a new database for the project.
   - Update the connection string in the `web.config` file with your database details.

4. **Run Migrations (If Applicable)**
   - If the project includes migrations, run them to set up the database schema.

5. **Build and Run the Application**
   - Build the solution in Visual Studio.
   - Run the application using IIS Express or your preferred server.

## Usage
1. **Access the Application**
   - Open your browser and navigate to the URL provided by Visual Studio, usually `http://localhost:xxxx`.

2. **Admin Panel**
   - Access the admin panel by navigating to `http://localhost:xxxx/admin`.
   - Log in using admin credentials to manage users, bookings, and packages.

3. **User Features**
   - Users can register and log in to access their dashboard.
   - Search for resorts and destination packages.
   - Book trips and view booking history in the user dashboard.

## Contributing
To contribute to MakeMyTrip, follow these steps:
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-branch`.
3. Make your changes and commit them: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature-branch`.
5. Submit a pull request.

## Acknowledgements
- [ASP.NET](https://dotnet.microsoft.com/apps/aspnet)
- [SQL Server](https://www.microsoft.com/en-us/sql-server)
- [Visual Studio](https://visualstudio.microsoft.com/)

## Contact
For any inquiries or issues, please contact:
- **Email:** gadhiyashubham10@gmail.com



