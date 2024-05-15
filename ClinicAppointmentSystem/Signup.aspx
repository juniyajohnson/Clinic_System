<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ClinicAppointmentSystem.Signup" %>

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
     <section class="minh-100" style="background-color: #508bfc;">
      <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
          <div class="card shadow-2-strong" style="border-radius: 1rem;">
            <form method="post" runat="server">
                  <div class="card-body p-5 text-center">
                       <h3 class="mb-5">Register Here</h3>
                          <div class="form-outline mb-4">                          
                               <asp:Label ID="lbl_fname" runat="server" Text="First Name <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                               <asp:TextBox ID="txt_fname" runat="server" class="form-control form-control-lg" type="text" name="fname" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
                         </div>

                         <div class="form-outline mb-4">                          
                              <asp:Label ID="lbl_lname" runat="server" Text="Last Name <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                              <asp:TextBox ID="txt_lname" runat="server" class="form-control form-control-lg" type="text" name="lname" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
                         </div> 

                        <div class="form-outline mb-4">                          
                           <asp:Label ID="lbl_gender" runat="server" Text="Gender <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>  
                            <asp:DropDownList ID="ddl_gender" runat="server" class="form-control form-control-lg" Height="45px">
                                <asp:ListItem text="Select" Value="-1"></asp:ListItem>  
                                <asp:ListItem  Value="Male">Male</asp:ListItem>  
                                <asp:ListItem  Value="Female">Female</asp:ListItem>  
                                <asp:ListItem  Value="Others">Others</asp:ListItem>  
                            </asp:DropDownList>
                       </div>

                      <div class="form-outline mb-4">                          
                         <asp:Label ID="lbl_dob" runat="server" Text="Date Of Birth" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                         <asp:TextBox ID="txt_dob" runat="server" class="form-control form-control-lg" type="date" name="dob" Height="40px" ForeColor="Black" onchange="calculateAge()"></asp:TextBox>
                      </div> 

                      <div class="form-outline mb-4">                          
                         <asp:Label ID="lbl_age" runat="server" Text="Age <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                         <asp:TextBox ID="txt_age" runat="server" class="form-control form-control-lg" type="number" name="age" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
                     </div> 
                       <div class="form-outline mb-4">                          
                          <asp:Label ID="lbl_address" runat="server" Text="Address <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                          <asp:TextBox ID="txt_address" runat="server" class="form-control form-control-lg" type="text" name="address" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
                       </div> 
                      <div class="form-outline mb-4">                          
                         <asp:Label ID="lbl_mob" runat="server" Text="Contact Number <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                         <asp:TextBox ID="txt_mob" runat="server" class="form-control form-control-lg" type="tel" name="mob" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
                     </div> 
                       <div class="form-outline mb-4">                          
                          <asp:Label ID="lbl_email" runat="server" Text="Email ID <span style='color:Red'>*</span>" Font-Size="Large" ForeColor="Black"></asp:Label>                          
                          <asp:TextBox ID="txt_email" runat="server" class="form-control form-control-lg" type="email" name="email" Height="40px" ForeColor="Black" required="required"></asp:TextBox>
                      </div>
                      
                       <hr class="my-4"/>
                       <div>
                         <asp:Button ID="btn_signup" runat="server" Text="Register" class="btn btn-primary btn-lg btn-block" type="submit" OnClick="btn_signup_Click" />
                      </div> 
                </div>              
           </form>       
        </div>
      </div>
    </div>
  </div>
</section> 


    <script>
        function calculateAge() {
            var dob = document.getElementById('txt_dob').value;
        var today = new Date();
        var birthDate = new Date(dob);
        var age = today.getFullYear() - birthDate.getFullYear();
        var monthDiff = today.getMonth() - birthDate.getMonth();
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }
            document.getElementById('txt_age').value = age;
        }
    </script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
