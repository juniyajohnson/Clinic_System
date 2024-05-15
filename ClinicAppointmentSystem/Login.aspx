<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClinicAppointmentSystem.Login" %>

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
 <section class="vh-100" style="background-color: #508bfc;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
          <div class="card shadow-2-strong" style="border-radius: 1rem;">
            <form method="post" runat="server">
                  <div class="card-body p-5 text-center">
                       <h3 class="mb-5">Login</h3>
                         <div class="form-outline mb-4">
                           <asp:TextBox ID="txt_email" runat="server" class="form-control form-control-lg" type="text" placeholder="Email ID" name="email" required="required" ></asp:TextBox>
                         </div>

                        <div class="form-outline mb-4">
                            <asp:TextBox ID="txt_pwd" runat="server" class="form-control form-control-lg" placeholder="Password" name="pwd" type="password" required="required" ></asp:TextBox>                                                                                          
                        </div> 

                        <div>
                          <p class="text-lg-start"><asp:Label ID="lbl_login" runat="server" Font-Size="Small" ForeColor="Red" ></asp:Label></p>
                          <asp:Button ID="btn_login" runat="server" Text="Login" class="btn btn-primary btn-lg btn-block" type="login" OnClick="btn_login_Click" />
                       </div> 
                      
                       <hr class="my-4"/>
                       <div class="form-outline mb-4">
                          <asp:Label ID="lbl_register" runat="server" Text="Don't have an account?"></asp:Label>
                          <asp:HyperLink ID="hyplink_signup" runat="server" ForeColor="#0033CC" NavigateUrl="Signup.aspx" Font-Size="Large">Sign Up</asp:HyperLink>
                     </div>
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
