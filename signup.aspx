<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Shopping_Cart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title></title>
    <style>
        body,html{
  height:100%;
  width:100%;
  padding:0;
  margin:0;
  display:flex;
  align-items:center;
  justify-content:center;
}
.container{
  display:flex;
  flex-direction:column;
  border-style:solid;
  border-color:#464159;
  border-width:2px;
  border-radius:10px;
  padding:0;
  background-color:#464159;
  box-shadow: 0 0 4px 2px #464159;
  max-width:50%;
}

.form-title{
  color:#fff;
  padding:2%;
  font-size:2rem;
}
form{
  border-radius:10px 10px 7px 7px;
  background-color:#fff;
  padding:1%;
  margin:0.2%;

}
.form-group{
  padding:7px;
}
.signupbtn{
  margin-right:2%;
}

    </style>
</head>
<body>
 <div>
 <div class="container">
  <div class="form-title text-center">Sign up!</div>
  <form  id="form1" runat="server">
    <div class="form-group form-row">
      <div class="col">
        <label for="fname">First Name</label>
        <asp:TextBox type="text" runat="server" class="form-control" id="fname"></asp:TextBox>
       </div>
      <div class="col">
        <label for="lname">Last Name</label>
        <asp:TextBox type="text" runat="server" class="form-control" id="lname"></asp:TextBox>
      </div>
         <div class="col">
      <label for="email">Email</label>
      <asp:TextBox runat="server" type="text" class="form-control" id="emaill"></asp:TextBox>
               <asp:Label ID="error" class="text-danger" runat="server" Text=""></asp:Label>
    </div>
           <div class="col">
      <label for="password">Password</label>
      <asp:TextBox runat="server" type="text" class="form-control" id="pass"></asp:TextBox>
    </div>
     </div>
   
    <div class="form-group">
     
      <asp:Button class="btn btn-outline-primary btn-primary signupbtn "  runat="server" Text="Sign Up" OnClick="Unnamed1_Click"></asp:Button>
      <asp:HyperLink ID="signup" runat="server" Text="Already have an account?" NavigateUrl="~/login.aspx"></asp:HyperLink>
    </div>
  </form>

</div>
 </div>
    
</body>
</html>
