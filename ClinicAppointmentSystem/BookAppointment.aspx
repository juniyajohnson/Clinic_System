<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookAppointment.aspx.cs" Inherits="ClinicAppointmentSystem.BookAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>Clinic Appointment System</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta content="" name="keywords"/>
<meta content="" name="description"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body>
 <nav class="navbar navbar-expand-xxl navbar-light bg-light">
    <a class="navbar-brand" href="HomePage.aspx">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="BookAppointment.aspx">Book Appointment</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="MyAppointments.aspx">My Appointments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Login.aspx">Logout</a>
            </li>              
        </ul>
    </div>
</nav>

   
<section class="text-center">
  
  <div class="p-5 bg-image" style="
        background-image: url('https://mdbootstrap.com/img/new/textures/full/171.jpg');
        height: 300px;"></div>
 
  <div class="card mx-4 mx-md-5 shadow-5-strong bg-body-tertiary" style="
        margin-top: -100px;
        backdrop-filter: blur(30px); ">

 <div class="card-body py-5 px-md-5">
   <div class="row d-flex justify-content-center">
      <div class="col-lg-8">
        <h2 class="fw-bold mb-5">Book Appointment</h2>
    <form method="post" runat="server">          
            <div class="row">
              <div class="col-md-6 mb-4">
                <div  class="form-outline">
                  <asp:Label ID="lbl_fname" runat="server" Text="First Name <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                  <asp:TextBox ID="txt_fname" runat="server" class="form-control form-control-lg" type="text" Height="40px" ForeColor="Black" readonly></asp:TextBox>
                </div>
              </div>
              <div class="col-md-6 mb-4">
                <div  class="form-outline">
                    <asp:Label ID="lbl_lname" runat="server" Text="Last Name <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                    <asp:TextBox ID="txt_lname" runat="server" class="form-control form-control-lg" type="text" Height="40px" ForeColor="Black" readonly></asp:TextBox>
                </div>
              </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-4">
                  <div  class="form-outline">
                    <asp:Label ID="lbl_gender" runat="server" Text="Gender <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>  
                    <asp:TextBox ID="txt_gender" runat="server" class="form-control form-control-lg" type="text" Height="40px" ForeColor="Black" readonly></asp:TextBox>
                 </div>
             </div>
             <div class="col-md-6 mb-4">
               <div  class="form-outline">
                 <asp:Label ID="lbl_dob" runat="server" Text="Date of Birth" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                 <asp:TextBox ID="txt_dob" runat="server" class="form-control form-control-lg" type="text"  Height="40px" ForeColor="Black" readonly></asp:TextBox>
              </div>
            </div>
          </div>

         <div class="row">
            <div class="col-md-6 mb-4">
              <div  class="form-outline">
                <asp:Label ID="lbl_age" runat="server" Text="Age <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>  
                <asp:TextBox ID="txt_age" runat="server" class="form-control form-control-lg" type="text" Height="40px" ForeColor="Black" readonly></asp:TextBox>
             </div>
           </div>
         
       </div>

       <div class="row">
          <div class="col-md-6 mb-4">
            <div  class="form-outline">
              <asp:Label ID="lbl_appdate" runat="server" Text="Appointment Date <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
              <asp:TextBox ID="txt_appdate" runat="server" class="form-control form-control-lg" type="date" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
           </div>
        </div>
         <div class="col-md-6 mb-4">
            <div  class="form-outline">
               <asp:Label ID="lbl_time" runat="server" Text="Time <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
               <asp:TextBox ID="txt_time" runat="server" class="form-control form-control-lg" type="text" TextMode="Time" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
           </div>
        </div>
    </div>

      <div class="row">
         <div class="col-md-6 mb-4">
           <div  class="form-outline">
              <asp:Label ID="lbl_doctor" runat="server" Text="Doctor Name" Font-Size="Large" ForeColor="Black"></asp:Label>   
                <asp:DropDownList ID="ddl_doctor" runat="server" class="form-control form-control-lg" Height="45px">
                     <asp:ListItem text="Select" Value="-1"></asp:ListItem>  
                     <asp:ListItem  Value="Doctor 1">Doctor 1</asp:ListItem>  
                     <asp:ListItem  Value="Doctor 2">Doctor 2</asp:ListItem>                     
                </asp:DropDownList>
            </div>
      </div>
     <div class="col-md-6 mb-4">
        <div  class="form-outline">
           <asp:Label ID="lbl_purpose" runat="server" Text="Purpose Of Visit <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
           <asp:TextBox ID="txt_purpose" runat="server" class="form-control form-control-lg" type="text"  Height="40px" ForeColor="Black" required="required"></asp:TextBox>
       </div>
    </div>
   </div>       
              
        <div>
            <asp:Button ID="btn_book" runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block" type="submit" OnClick="btn_book_Click" />
        </div>
      </form>
        </div>
      </div>
    </div>
  </div>
</section>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
