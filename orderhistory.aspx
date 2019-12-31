<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderhistory.aspx.cs" Inherits="Shopping_Cart.orderhistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        body{
  padding: 2rem 0rem;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            


    
<h1 class=" d-flex justify-content-center text-danger">Order Summary</h1>
            <asp:DataList ID="showhistoryy" runat="server">
    <ItemTemplate>
<div class="mt-3">
<div class="container">
  <div class="row ">
  

      <div class="card"> 
  <h5 class="card-header">Product Name:- <asp:Label ID="name" class="text-success" runat="server" Text='<%# Bind("name") %>'></asp:Label> </h5>
  <div class="card-body">
    <h5 class="card-title">Price:- <asp:Label ID="price" class="card-subtitle mb-2" runat="server" Text='<%# Bind("price") %>'></asp:Label></h5>
    <p class="card-text">Details:-<asp:Label ID="detail" class="card-text" runat="server" Text='<%# Bind("details") %>'></asp:Label></p>
      <p class="card-text d-flex"><p>Category:- </p> <asp:Label ID="category"  class="list-group-item list-group-item-action" runat="server" Text='<%# Bind("category") %>'></asp:Label></p>
      
          <asp:LinkButton runat="server" ID="linkbtn" class="text-light stretched-link btn btn-success" Text="View Details" CommandArgument='<%# Bind("product_id")%>' CommandName="ThisBtnClick" OnClick="Gotodetails" ></asp:LinkButton>
  </div>
</div>
  </div>
</div>
<hr/>
    </div>
    </ItemTemplate>

</asp:DataList>

        

        </div>
    </form>
</body>
</html>
