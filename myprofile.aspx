<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="Shopping_Cart.myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        .txtwidth{
            width:500px;
        }

    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:DataList ID="users" runat="server">
            <ItemTemplate>        <div class="d-flex ">
            <div class="w-25 m-5">
                <asp:Image class="image-fluid" ID="myimage" runat="server"  Width="200px" Height="300px" ImageUrl='<%# Bind("image") %>' />
                
             </div>
            <div class="w-75 bg-white ">
              
                   

                 <div class="font1">Firstname:</div>
              <asp:TextBox runat="server" type="text" ID="txtbox1" class="input-xlarge font form-control" Width="500px" name="firstname" Text='<%# Bind("firstname") %>' placeholder="Firstname" ></asp:TextBox>
                 <div class="font1">LastName:</div>
              <asp:TextBox runat="server" type="text" ID="txtbox2" Width="500px" class="input-xlarge font form-control"  name="lastname" Text='<%# Bind("lastname") %>' placeholder="Lastname" ></asp:TextBox>
                 <div class="font1">password:</div>
              <asp:TextBox runat="server" type="password" ID="txtbox3" Width="500px" class="input-xlarge font form-control" ReadOnly="true" name="password" Text='<%# Bind("password") %>' placeholder="password" ></asp:TextBox>
                 <div class="font1">Email Id: </div>
              <asp:TextBox runat="server" type="text"  ID="txtbox4" class="input-xlarge font form-control" Width="500px" name="email" ReadOnly="true" Text='<%# Bind("email") %>' placeholder="Email" ></asp:TextBox>
                 <div class="font1">Mobile Number:</div>
              <asp:TextBox runat="server" type="text" ID="txtbox5" class="input-xlarge font form-control" Width="500px" name="mobilenumber" Text='<%# Bind("phoneno") %>' placeholder="Mobile Number" ></asp:TextBox>
                  
                </div>
                <asp:Button ID="update" Text="UPDATE" runat="server" OnClick="Updatedetails" />
        </div>
                </ItemTemplate>

            </asp:DataList>
    </form>
</body>
</html>
