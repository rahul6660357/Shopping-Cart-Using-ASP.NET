<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Shopping_Cart.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script>
        $('.carousel').carousel({
            pause: "false" /* Change to true to make it paused when your mouse cursor enter the background */
        });
    </script>
    <style>
        .container-fluid.main{
  position: relative; /* To make the navbar positions relative to this container */
  padding: 0;
}

.navbar-default {
  background-image: none;
  background-color: transparent; /* Make the menu become transparent */
  border-radius: 0px;
  border: 0;
  box-shadow: none;
  padding: 10px;
  position: absolute; /* Make the menu out of the document flow so it can placed anywhere without disturbing other widgets */
  top: 0;
  left: 0;
  right: 0;
  z-index: 10; /* If you delete this line, your menu link won't be clicked because it is behind the background. Applying this code bring the menu in front of the background */
}

.navbar-default .navbar-brand {
  font-family: Verdana;
  color: #ffffff;
  font-size: 20px;
}

.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #ffffff;
  background-color: transparent;
}

.navbar-default .navbar-nav > li > a {
  color: #ffffff;
}

.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #ffffff;
  background-color: transparent;
}

.navbar-default .navbar-toggle {
  border-color: transparent;
}

.navbar-default .navbar-toggle:hover {
  background-color: transparent;
}

.navbar-default .navbar-toggle:focus {
  background-color: transparent;
}

.navbar-default .navbar-toggle .icon-bar {
  background-color: #ffffff;
}

.carousel .background {
  background-position: center center;
  background-size: 100% 100%;
  background-repeat: no-repeat;
  height: 500px;
}

@media (max-width:991px) {
  .carousel .background {
    background-size: cover; /* To make the background image looks good */
  }
}

.carousel .background.a {
  background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://images-eu.ssl-images-amazon.com/images/G/31/img19/Wireless/Xiaomi/RedmiNote8Pro/ICICI_Graphics/Special_Open_sale/V151730641_IN_WLME_Redmi_Note8Series_FlashSale_DesktopTallHero_1500x600_New._CB426966610_.jpg");
}

.carousel .background.b {
  background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://images-eu.ssl-images-amazon.com/images/G/31/img18/AmazonDevices/Dw/GW/1x_Asin._CB426940653_.jpg");
}

.carousel .background.c {
  background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://images-eu.ssl-images-amazon.com/images/G/31/Events/ChristmasStore/Gateway/2_christmas_18_pc_1500X600._CB444885044_.jpg");
}

.carousel-fade .carousel-inner .item {
  opacity: 0;
  transition: opacity 0.5s; /* The 0.5s describes the duration to make the opacity from 0 to 1 */
}

.carousel-fade .carousel-inner .active {
  opacity: 1; 
}

/* CSS Hack to trigger GPU for smooth transition */
@media all and (transform-3d),
(-webkit-transform-3d) {
  .carousel-fade .carousel-inner > .item.next,
  .carousel-fade .carousel-inner > .item.active.right {
    opacity: 0;
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
  .carousel-fade .carousel-inner > .item.prev,
  .carousel-fade .carousel-inner > .item.active.left {
    opacity: 0;
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
  .carousel-fade .carousel-inner > .item.next.left,
  .carousel-fade .carousel-inner > .item.prev.right,
  .carousel-fade .carousel-inner > .item.active {
    opacity: 1;
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}
/* CSS Hack to trigger GPU for smooth transition */

.covertext {
  position: absolute; /* To make the div to be place anywhere. It is out of the document flow */
  top: 200px; /* The distance between the div with the top of document */
  left: 0px; /* Make the div full width */
  right: 0px; /* Make the div full width */
}

.title {
  font-family: Verdana;
  font-weight: 600;
  font-size: 60px;
  color: #ffffff;
  text-align: center;
}

.subtitle {
  font-family: Verdana;
  font-size: 23px;
  color: #ffffff;
  text-align: center;
}

.explore {
  text-align: center;
  margin-top: 10px;
}

.explore .btn-lg,
.explore .btn-lg:hover {
  border-radius: 30px;
  padding: 15px 25px;
  font-size: 22px;
  background-image: none;
  background-color: #FF4000;
  border-color: #FF4000;
  color: #ffffff;
}

.btn,
.btn:hover {
  border-radius: 0px;
  background-image: none;
  background-color: #FF4000;
  border-color: #FF4000;
  color: #ffffff;
  margin-bottom: 20px;
  box-shadow: none;
  outline: none;
}

.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  color: #ffffff;
  outline: none;
}

    </style>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);

* {
  font-family: Open Sans;
}

section {
  width: 100%;
  display: inline-block;
  background: #333;
  height: 50vh;
  text-align: center;
  font-size: 22px;
  font-weight: 700;
  text-decoration: underline;
}

.footer-distributed{
	background: #666;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 40%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Open Sans', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  lightseagreen;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
  font-weight:400;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #222;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
  font-weight:400;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  lightseagreen;
	text-decoration: none;
}

.footer-distributed .footer-links a:before {
  content: "|";
  font-weight:300;
  font-size: 20px;
  left: 0;
  color: #fff;
  display: inline-block;
  padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
  content: none;
}

/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}



.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
.ullu{
    display:flex;
    justify-content:space-between;

}

.btn{
  border-color:cadetblue;
  cursor: pointer;
}
.search{
  width: 50%;
  margin: 10px auto;
}
.company-style{
  font-family: cursive;
}
        .abc {
        display:flex;
        }
        .backgroundclass{
            background-color:gray;
            display:flex;
        }
        .firstdiv{
            width:25%;
        }
        .seconddiv{
            width:75%;
            display:flex;
            flex-wrap:wrap;
            margin:20px;
        }
        .cardd{
            margin:10px;
        }
        .ulli{
            cursor:pointer;

        }

        .btn{
  border-color:cadetblue;
  cursor: pointer;
}
.company-style{
  font-family: cursive;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">

<%--        top navbar--%>

        
  <div class="abc ullu" style="background-color:black">
    <div class="mr-auto text-white"><h3 class="company-style mt-1">Rahul's_Shopping-Cart</h3></div>
      <div class="abc " style="align-content:center">
    <div class="p-2 text-white"><button class=" btn">Add New Product</button></div>
    <div class="p-2"><button class=" btn">My Profile</button></div>
    <div class="p-2"><button class=" btn">My Cart</button></div>
    <div class="p-2"><button class=" btn">LogOut</button></div>
  </div>
      </div>
           



        <ul class=" ullu nav nav-pills nav-fill bg-info  ">
  <li class="nav-item">
    <asp:LinkButton  class="nav-link text-white ulli" runat="server" Click="showhome" Text="HOME"></asp:LinkButton>
  </li>
  <li class="nav-item">
    <asp:LinkButton runat="server"  class="nav-link text-white ulli" Text="ELECTRONICS"  Click="showelectronics"></asp:LinkButton>
  </li>
  <li class="nav-item">
    <asp:HyperLink runat="server" class="nav-link text-white ulli" Text="BOOKS"></asp:HyperLink>
  </li>
  <li class="nav-item">
    <asp:HyperLink runat="server" Text="SHOES"  class="nav-link text-white ulli" ></asp:HyperLink>
  </li>
  <li class="nav-item">
    <asp:HyperLink runat="server"  class="nav-link text-white ulli" Text="CLOTHINGS"></asp:HyperLink>
  </li>
</ul>

<%--searchbar--%>
         <div class="search">
             <div class="input-group">
                 <div class="abc">
                 <asp:TextBox runat="server" Style="width: 500px" type="text" class="form-control"></asp:TextBox>
                       <asp:Button ID="searchbtn" runat="server" Text="Search" class="btn btn-primary"/>
                
                </div>
                    
             </div>
  </div>

        <div>

<div class="container-fluid main">

  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span> 
        </button>
        <a class="navbar-brand" href="#">Khareedo</a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="#bottom">About</a></li>
          <li><a href="#bottom">Contact Us</a></li>
        </ul>

      </div>
    </div>
  </nav>

  <div id="myCarousel" class="carousel carousel-fade slide" data-ride="carousel" data-interval="3000">
    <div class="carousel-inner" role="listbox">
      <div class="item active background a"></div>
      <div class="item background b"></div>
      <div class="item background c"></div>
    </div>
  </div>
  
  <div class="covertext">
    <div class="col-lg-10" style="float:none; margin:0 auto;">
      <h1 class="title">Khareedo</h1>
      <h3 class="subtitle">The Place Where Your Cart Cann't Be Empty</h3>
    </div>
    <div class="col-xs-12 explore">
      <a href="#"><asp:Button type="button" runat="server" class="btn btn-lg explorebtn" Text="EXPLORE"></asp:Button></a>
    </div>
  </div>
  
</div>
</div>

<%--this is main home page here--%>

        <div class=" backgroundclass" >
            <div class="firstdiv bg-dark ">
              
  <div  style="margin:20px ">
    <div class="card bg-info m-5">
      <div class="card-body text-center">
        <h4  class="text-danger">Filter Items</h4>
        <div class="form-check">
          <label class="form-check-label">
            <asp:RadioButton ID="radio1" runat="server" class="form-check-input" GroupName="price" Text="99-2000"/>
          </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
            <asp:RadioButton ID="radio2" class="form-check-input" runat="server" GroupName="price" Text="2000-4000"/>
          </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
            <asp:RadioButton runat="server"  ID="radio3" class="form-check-input" GroupName="price" Text="4000-6000"/>
          </label>
        </div>
          <div class="form-check">
          <label class="form-check-label">
            <asp:RadioButton runat="server"  ID="RadioButton1" class="form-check-input" GroupName="price" Text="6000-10000"/>
          </label>
        </div>
          <div class="form-check">
          <label class="form-check-label">
            <asp:RadioButton runat="server"  ID="RadioButton2" class="form-check-input" GroupName="price" Text="10000-20000"/>
          </label>
        </div>
      </div>
    </div>
  </div>
 </div>
            <div class="seconddiv">
               
                <asp:DataList ID="productlist" runat="server" RepeatColumns="4">
            <ItemTemplate>

                <div  class="m-2 cardd bg-info">

    <div class="card" style="width:225px; height: 320px">

      <div class="mt-3 mx-auto ">
        <asp:Image ImageUrl='<%# Bind("image") %>' Width="225px" Height="130px" runat="server" ID="img1"  />
      </div>
      <div class="card-body text-center">
        <h4 class="card-title text-center mb-2">
          
            <asp:Label ID="lbl2" runat="server" Text='<%# Bind("name") %>'>
           
            </asp:Label>
        </h4>

        <div class="bg-success text-white text-center">
              Price:
           <asp:Label runat="server" Text= '<%# Bind("price") %>' ID="pricelbl"></asp:Label>
        </div>
      <div>  <a href="#" class="text-primary stretched-link " >View Details</a></div>
        <a href="#" class="btn btn-primary  stretched-link">Add To Cart</a>
      </div>
    </div>


                </ItemTemplate>
                    </asp:DataList>
        </div>
</div>






<%--        <div class="d-flex" style="background-color: lightgray">
<div class="d-flex bg-dark  w-25"  >
  <div  style="margin-left:10px;margin-top:20px">
    <div class="card bg-info m-5">
      <div class="card-body">
        <h4>Filter Items</h4>
        <div class="form-check">
          <label class="form-check-label">
            <asp:CheckBox ID="checkbox" runat="server" class="form-check-input" Text="Option 1"/>
          </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
            <asp:CheckBox ID="checkbox2" class="form-check-input" runat="server" Text="Option 2"/>
          </label>
        </div>
        <div class="form-check">
          <label class="form-check-label">
            <asp:CheckBox runat="server"  ID="checkbox3" class="form-check-input" Text="Option 3"/>
          </label>
        </div>
      </div>
    </div>
  </div>

</div>
             <asp:DataList ID="productlist" runat="server">
            <ItemTemplate>
  <div class="w-75 m-4 my-2 d-flex flex-wrap">
    <div  class="m-2">

    <div class="card" style="width:225px; height: 320px">

      <div class="mt-3 mx-auto">
        <asp:Image ImageUrl='<%# Bind("image") %>' runat="server" ID="img1"  />
      </div>
      <div class="card-body text-center">
        <h4 class="card-title text-center mb-2">
            <asp:Label ID="lbl2" runat="server" Text= '<%# Bind("name") %>'>
           
            </asp:Label>
        </h4>

        <div class="bg-success text-white text-center mb-3">
           <asp:Label runat="server" Text= '<%# Bind("price") %>' ID="pricelbl"></asp:Label>
        </div>
        <a href="#" class="text-primary stretched-link mb-3">View Details</a>
        <a href="#" class="btn btn-primary  stretched-link">Add To Cart</a>
      </div>
    </div>

    </div>
</div>
                  </ItemTemplate>
        </asp:DataList>
</div>--%>

<%--this is main home page here--%>
     
       
<footer id="bottom" class="footer-distributed">

			<div class="footer-left">
                <asp:Image ImageUrl="~/Images/kharedo.jpg" runat="server" Height="100px" Width="300px" />
				<%--<h3>company<span>logo</span></h3>--%>

				<p class="footer-links">
					<a href="#" class="link-1">Home</a>
					
					<a href="#">Products</a>
				
					<a href="#">Pricing</a>
				
					<a href="#">About</a>
					
				
					
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">Rahul ki Company</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>Plot no 12, Civil Lines</span>Gurgaon 122001 </p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>9996660357</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="rahulsharma6660357@gmail.com">rahulsharma6660357.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about text-white">
					<span>About the Developer</span>
					Designed By rahul Sharma.
				</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>

    </form>
</body>
</html>
