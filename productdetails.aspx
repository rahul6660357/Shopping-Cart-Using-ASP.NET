<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productdetails.aspx.cs" Inherits="Shopping_Cart.productdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script>

    </script>
    <style>
        html {
  height: 100%;
}

body {
  background: linear-gradient(30deg, rgba(74, 219, 239, 0.80) 0%, rgba(249, 140, 87, 0.98) 100%);
  font-family: "Montserrat", sans-serif;
  color: #262626;
  min-height: 100%;
  margin: 0;
}

.container {
  background-color: #fff;
  width: 48vw;
  max-width: 100%;
  margin: 1vw auto;
  display: flex;
  flex-direction: row;
  top: 1rem;
  position: relative;
}
@media (max-width: 1000px) {
  .container {
    flex-direction: column;
    width: 48vw;
    padding-left: 1vw;
  }
}
@media (max-width: 780px) {
  .container {
    width: 98vw;
    padding-left: 1vw;
  }
}
.container .card_left {
  flex: 1 1 50%;
  padding: 60px;
  position: relative;
}
.container .card_left .fa {
  font-size: 1.5rem;
  color: #e8e8e8;
  position: absolute;
  top: 25px;
}
.container .card_left .fa:hover {
  color: #f37d3a;
}
.container .card_left .left {
  left: 20px;
}
.container .card_left .right {
  right: 20px;
}
.container .card_left .img {
  max-width: 100%;
}
@media (max-width: 1000px) {
  .container .card_left .img {
    width: 90%;
    max-width: 200px;
    display: block;
    margin: 0 auto;
  }
}
.container .card_right {
  flex: 1 1 50%;
  padding: 40px;
  background: #f7f5f5;
}
.container .card_right span {
  text-transform: uppercase;
  color: #f37d3a;
  letter-spacing: 1.2px;
  font-size: 0.7rem;
}
.container .card_right h3 {
  font-weight: 500;
  color: #262626;
  font-size: 1.25rem;
}
.container .card_right p {
  font-size: 0.85rem;
  color: #4f4f4f;
  font-weight: 300;
}
.container .card_right .colours {
  display: flex;
}
.container .card_right .colours .colour {
  border-radius: 20px;
  height: 12px;
  width: 12px;
  background: #fff;
  margin: 0 8px;
  position: relative;
}
.container .card_right .colours .colour:nth-child(1) {
  margin-left: 0;
}
.container .card_right .colours .colour:after {
  position: absolute;
  content: "";
  height: 12px;
  width: 12px;
  border-radius: 30px;
}
.container .card_right .colours .orange:after {
  background: #f37d3a;
}
.container .card_right .colours .green:after {
  background: #3af361;
}
.container .card_right .colours .gray:after {
  background: #4f4f4f;
}
.container .card_right .colours .colour:hover {
  opacity: 0.3;
}
.container .card_right .colours .active.colour:after {
  height: 6px;
  width: 6px;
  position: absolute;
  top: 3px;
  left: 3px;
}
.container .card_right .card_footer {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  margin-top: 25px;
}
.container .card_right .card_footer .price {
  color: rgba(38, 38, 38, 0.59);
  letter-spacing: 1px;
  font-size: 1.25rem;
}
.container .card_right .card_footer .btn {
  text-decoration: none;
  text-transform: uppercase;
  font-weight: 500;
  color: #fff;
  background: #f37d3a;
  font-size: 0.7rem;
  padding: 15px 15px;
  border-radius: 30px;
  letter-spacing: 1.2px;
  margin-left: 15px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center align-items-center" >

            <asp:DataList ID="productlist" runat="server" RepeatColumns="4" Height="652px" >
            <ItemTemplate>
            
<div class="container card ">
		<div class="card_left">

			<asp:Image ID="imgid" runat="server" class="img" ImageUrl='<%# Bind("image") %>'/>
		</div>
		<div class="card_right">
			<h2><asp:Label ID="labl1" Font-Size="Larger" class="text-center"  runat="server" Text='<%# Bind("name") %>'></asp:Label></h2>
            <asp:Label ID="lbl1" class="badge badge-danger text-white" runat="server" Text='<%# Bind("name") %>'></asp:Label>
             <asp:Label ID="Label1"  class="badge badge-primary text-white" runat="server" Text='<%# Bind("category") %>'></asp:Label>
             <asp:Label ID="Label2"  class="badge badge-secondary text-white" runat="server" Text='<%# Bind("subcategory") %>'></asp:Label>
             <asp:Label ID="Label3" class="badge badge-success text-white" runat="server" Text='<%# Bind("price") %>'></asp:Label>
           
			<p><asp:Label ID="labl2" class="text-dark" runat="server" Text='<%# Bind("details") %>'></asp:Label> </p>
		
			<div class="card_footer">
				<span class="price">$<asp:Label ID="labl3" class="price" runat="server" Text='<%# Bind("price") %>'></asp:Label></span>
				<asp:LinkButton runat="server" Text="Add to Cart"  class="btn" OnClick="addtocart" OnClientClick="javascript:return alert('Added Successfully');">
					
				</asp:LinkButton>
			</div>
		</div>
	</div>

                </ItemTemplate>
                    </asp:DataList>

        </div>
    </form>
</body>
</html>
