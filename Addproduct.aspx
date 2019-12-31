<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Shopping_Cart.Addproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body style="background-image:url(https://i.imgur.com/Syv2IVk.png)">
   <form class="form-horizontal " id="form1" runat="server">
  <fieldset>

    <!-- Form Name -->
    <legend class="text-center text-success">PRODUCTS</legend>

    <!-- Text input-->


    <!-- Text input-->
    <div class="form-group d-flex">
      <label class="col-md-4 control-label" for="product_name">PRODUCT NAME:-</label>
      <div class="col-md-4">
        <asp:TextBox ID="product_name" runat="server" name="productname"  placeholder="Product Name" class="form-control input-md" type="text"></asp:TextBox>

      </div>
    </div>



    <!-- Select Basic -->
    <div class="form-group d-flex">
      <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY:-</label>
      <div class="col-md-4">
           <asp:DropDownList ID="category1"
                    AutoPostBack="True"
                   
                    runat="server">

                  <asp:ListItem Value="electrical"> electrical </asp:ListItem>
                  <asp:ListItem Value="books">books </asp:ListItem>
                  <asp:ListItem Value="clothes">clothes </asp:ListItem>
                  <asp:ListItem Value="shoes"> shoes </asp:ListItem>
               </asp:DropDownList>
      </div>
    </div>

    <!-- Select Basic -->
    <div class="form-group d-flex">
      <label class="col-md-4 control-label" for="product_subcategorie">PRODUCT SUBCATEGORY:-</label>
      <div class="col-md-4">
<%--                              OnSelectedIndexChanged="Selection_Change"--%>

           <asp:DropDownList ID="DropDownList2"
                    AutoPostBack="True"

                    runat="server">

                <asp:ListItem Value="mobile"> mobile </asp:ListItem>
                <asp:ListItem Value="novel">novel </asp:ListItem>
                <asp:ListItem Value="book">book </asp:ListItem>
                <asp:ListItem Value="tshirt"> tshirt</asp:ListItem>
                <asp:ListItem Value="fridge"> fridge </asp:ListItem>
                <asp:ListItem Value="washing machine"> washing machine</asp:ListItem>
                <asp:ListItem Value="jeans"> jeans </asp:ListItem>
                <asp:ListItem Value="kurta"> kurta</asp:ListItem>
                <asp:ListItem Value="lower"> lower</asp:ListItem>
                <asp:ListItem Value="underwear"> underwear</asp:ListItem>
                <asp:ListItem Value="lehanga"> lehanga</asp:ListItem>
               <asp:ListItem Value="shoes"> shoes</asp:ListItem>
               <asp:ListItem Value="jeweller"> Jewellery</asp:ListItem>
               <asp:ListItem Value="slipper"> slipper</asp:ListItem>
               <asp:ListItem Value="sandal"> sandal</asp:ListItem>
               </asp:DropDownList>
      </div>
    </div>

    <div class="form-group d-flex">
      <label class="col-md-4 control-label" for="active">AVAILABLE:-</label>
      <div class="col-md-4">

           <asp:DropDownList id="DropDownList3"
                    AutoPostBack="True"

                    runat="server">

                 
               <asp:ListItem Value="0"> 0</asp:ListItem>
               <asp:ListItem Value="1"> 1</asp:ListItem>
               </asp:DropDownList>
      </div>
    </div>



    <!-- Textarea -->
    <div class="form-group d-flex">
      <label class="col-md-4 control-label" for="product_description">PRODUCT DESCRIPTION:-</label>
      <div class="col-md-4">
        <asp:TextBox runat="server"  class="form-control" ID="product_description" placeholder="Enter Details here" name="productdescription"></asp:TextBox>
      </div>
    </div>

    <!-- Text input-->
    <div class="form-group d-flex">
      <label class="col-md-4 control-label" for="price">PRODUCT PRICE:-</label>
      <div class="col-md-4 text-center">
        <asp:TextBox runat="server" ID="price" name="price" placeholder="Price" class="form-control input-md" required="" type="text"></asp:TextBox>

      </div>
    </div>

    <!-- Text input-->
    <div class="form-group d-flex">
      <label class="col-md-4 control-label" for="image">PRODUCT IMAGE LINK:-</label>
      <div class="col-md-4">
        <asp:TextBox ID="image" runat="server" name="image" placeholder="Image link" class="form-control input-md" required="" type="text"></asp:TextBox>

      </div>
    </div>
    <div class="form-group d-flex justify-content-center ">

          <div class="col-md-4 ">
            <asp:Button id="singlebutton" runat="server" name="singlebutton"  class="btn btn-primary text-center" Text="ADD PRODUCT" OnClick="singlebutton_Click"></asp:Button>
          </div>
        </div>
  </fieldset>
</form>
</body>
</html>
