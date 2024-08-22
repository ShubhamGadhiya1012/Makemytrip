<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Resorts.aspx.cs" Inherits="MakemyTrip.Book_Resorts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <title>Make my Trip
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
  background: linear-gradient(135deg, #FF4500, #FF4500);
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
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #FF4500, #FF4500);
 }
 
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg,  #FF4500, #FF4500);
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

        
    
</style>




</head>
<body>
    
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg " >
        
        <div class="container-fluid py-4">
            <div class="row" >
                
                        
                        <div class="card-body px-0 pb-2">
                            <div class="table-responsive p-0">
                                
		   <div class="container">
    <div class="title">Booking Details</div>
    <div class="content">
      <form runat="server">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Name</span>
              
                <asp:TextBox ID="rName" MaxLength="50" PlaceHolder="Enter Your Name" runat="server" required /> 


          </div>
          <div class="input-box">
            <span class="details">Email</span> 

              <asp:TextBox ID="rEmail" MaxLength="50" PlaceHolder="Enter Your Email" runat="server" required /> 


          </div>
          <div class="input-box">
            <span class="details">Phone No.</span>
            
                <asp:TextBox ID="rPhn" MaxLength="50" PlaceHolder="Enter Phone number " runat="server" required /> 

          </div>
          <div class="input-box">
            <span class="details">Address</span>

               <asp:TextBox ID="rAddress" MaxLength="50" PlaceHolder="Enter Address" runat="server" required /> 
              
          </div>
          <div class="input-box">
            <span class="details">Number of Persons</span>
            
              <asp:Textbox id="rPerson" runat="server" textMode="Number" placeholder="2" min="1" required/>
               
              
          </div>
          <div class="input-box">
            <span class="details">Number of Bedroom</span>
            
              <asp:Textbox id="rBed" runat="server" textMode="Number" placeholder="2" min="1" required/>

          </div>
            <div class="input-box">
            <span class="details">Check-in Date</span>
            
              <asp:Textbox id="rCheckin" runat="server" textMode="Date" placeholder="22/4/2002" required/>
               
              
          </div>
          <div class="input-box">
            <span class="details">Check-out Date</span>
            
              <asp:Textbox id="rCheckout" runat="server" textMode="Date" placeholder="22/4/2002" required/>

          </div>
        </div>


 
          <div class="input-box">
         
                 <span class="details">Payment Methods</span>
          </div>
              <div>  
          
          <asp:RadioButton ID="Cash" runat="server" Text="Cash" GroupName="pay" /> <br> 
            <asp:RadioButton ID="Credit" runat="server" Text="Credit card" GroupName="pay" /><br>   
         <asp:RadioButton ID="Upi" runat="server" Text="Upi" GroupName="pay" />  
        
            </div>  
       
        <div class="button">
             <asp:Button  ID="bookBtn" runat="server" Text="Confirm Booking" onClick="btn_res" />
                

        </div>
    
    </div>
  </div>



                           
                    </div>
                </div>
            </div>

</form>
</body>
</html>
