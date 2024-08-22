<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminResort_Update.aspx.cs" Inherits="MakemyTrip.Admin_Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
    <link rel="icon" type="image/png" href="img/favicon.png">
    <title>Resorts
  </title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="css/nucleo-icons.css" rel="stylesheet" />
    <link href="css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="css/material-dashboard.css?v=3.0.4" rel="stylesheet" />

        <style>

   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
 
}

.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 200px;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #fa7fbb, #f5077a);
 }
 
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg,  #fa7fbb, #f5077a);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

        table {
        
        
            border:2px solid black;
            border-radius:5px;

        }

        
       .dataview th {

            padding: 0px;
            border-radius:100px;
        
            border: 1px solid black;
            padding-bottom: 4px;
            padding-top: 4px;
            background-color: darkgray;

        }

        .dataview td {

            padding: 0px;
            border: 1px solid black;
            padding-bottom: 4px;
        
            padding-top: 4px;
            text-align: center;


        }
    
</style>


</head>
<body class="g-sidenav-show  bg-gray-200">
   
    <div class="container-fluid py-4">
            <div class="row">
                <div class="col-12">
                    <div class="card my-4">
                        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                            <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                <h6 class="text-white text-capitalize ps-3">Update Destination</h6>
                            </div>
                        </div>
                        <div class="card-body px-0 pb-2">
                            <div class="table-responsive p-0">
                                
		   <div class="container">
    <div class="title">Destination Details</div>
    <div class="content">
      <form runat="server">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Destination Name</span>
              
                <asp:TextBox ID="TextBox1" MaxLength="50" PlaceHolder="Enter Destination Name" runat="server" autocomplete="off" /> 


          </div>
          <div class="input-box">
            <span class="details">No of Days Nights</span> 

              <asp:TextBox ID="TextBox2" MaxLength="50" PlaceHolder="Enter No of Days Nights" runat="server" autocomplete="off"/> 


          </div>
          <div class="input-box">
            <span class="details">Description</span>
            
                <asp:TextBox ID="TextBox3" MaxLength="50" PlaceHolder="Enter Description " runat="server" autocomplete="off"/> 

          </div>
          <div class="input-box">
            <span class="details">Places Name</span>

               <asp:TextBox ID="TextBox4" MaxLength="50" PlaceHolder="Enter Places Name" runat="server" autocomplete="off"/> 
              
          </div>
          <div class="input-box">
            <span class="details">Package Price</span>
            
              
               <asp:TextBox ID="TextBox5" MaxLength="50" PlaceHolder="Enter Package Price" runat="server" autocomplete="off" /> 
              
          </div>
             <div class="input-box">
            <span class="details">Package Facilites</span>
            
              
               <asp:TextBox ID="TextBox6" MaxLength="50" PlaceHolder="Enter Package Price" runat="server" autocomplete="off" /> 
              
          </div>

             <div class="button">
             <asp:Button  ID="retrivebtn" runat="server" Text="Retrive" onClick="get_res" />
        </div>
       
             <div class="button">
             <asp:Button  ID="updateBtn" runat="server" Text="Update" onClick="update_des" />
             </div>
       
            

            </form>
            </body>
</html>
