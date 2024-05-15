<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ClinicAppointmentSystem.HomePage" %>

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
        <a class="navbar-brand" href="HomePage.aspx">Clinic Appointment System</a>
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

 <section class="vh-100" style="background-color: #508bfc;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">       
            <form method="post" runat="server">
                <div class="card-body p-5 text-center">
                     <h2 class="mb-5" style="color:darkred">Welcome to the Clinic</h2>
                 <div>
                     <h3>My Booking</h3>
                    <asp:Panel ID="panelcount" runat="server" BackColor="#FF9966" BorderColor="#0066FF" BorderStyle="Solid" Height="100px" HorizontalAlign="Center" Font-Size="XX-Large">
                      <asp:Label ID="lbl_count" runat="server" Text="Label" Height="50px" Width="50px" ForeColor="White"></asp:Label>
                    </asp:Panel>
                 </div>
                <br />
                  <div>
                      <h3>Next Appointment Date</h3>
                      <asp:Panel ID="paneldate" runat="server" BackColor="#FF9966" BorderColor="#0066FF" BorderStyle="Solid" Height="100px" HorizontalAlign="Center" Font-Size="Medium">
                       <asp:Label ID="lbl_date" runat="server" Text="Label" Height="100px" Width="200px" ForeColor="White" Font-Size="X-Large"></asp:Label>
                      </asp:Panel>
                 </div>
              </div>
           </form>       
        </div>
      </div>
    </div>
</section> 

            

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
