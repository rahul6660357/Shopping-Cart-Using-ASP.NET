<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Shopping_Cart.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Fredoka+One);

html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
center,
dl,
dt,
dd,
ol,
ul,
li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
footer,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
  outline: none;
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html {
  overflow-y: scroll;
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 62.5%;
  line-height: 1;
  color: #414141;
  background: #caccf7 url("https://i.imgur.com/Syv2IVk.png"); /* https://subtlepatterns.com/old-map/ */
  padding: 25px 0;
}

::selection {
  background: #bdc0e8;
}
::-moz-selection {
  background: #bdc0e8;
}


br {
  display: block;
  line-height: 1.6em;
}

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
menu,
nav,
section {
  display: block;
}
ol,
ul {
  list-style: none;
}

input,
textarea {
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  outline: none;
}

blockquote,
q {
  quotes: none;
}
blockquote:before,
blockquote:after,
q:before,
q:after {
  content: "";
  content: none;
}
strong,
b {
  font-weight: bold;
}
em,
i {
  font-style: italic;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}
img {
  border: 0;
  max-width: 100%;
  width:100px;
  height:100px;
}

h1 {
  font-family: "Fredoka One", Helvetica, Tahoma, sans-serif;
  color: #fff;
  text-shadow: 1px 2px 0 #7184d8;
  font-size: 3.5em;
  line-height: 1.1em;
  padding: 6px 0;
  font-weight: normal;
  text-align: center;
}

/* page structure */
.w {
  display: block;
  width: 600px;
  margin: 0 auto;
}

#title {
  display: block;
  width: 100%;
  background: #95a6d6;
  padding: 10px 0;
  -webkit-border-top-right-radius: 6px;
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topright: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-right-radius: 6px;
  border-top-left-radius: 6px;
}

.page {
  display: block;
  background: #fff;
  padding: 15px 0;
  -webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
  -moz-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
}

/** cart table **/
#cart {
  display: block;
  border-collapse: collapse;
  margin: 0;
  width: 100%;
  font-size: 1.2em;
  color: #444;
}
#cart thead th {
  padding: 8px 0;
  font-weight: bold;
}

#cart thead th.first {
  width: 175px;
}
#cart thead th.second {
  width: 45px;
}
#cart thead th.third {
  width: 230px;
}
#cart thead th.fourth {
  width: 130px;
}
#cart thead th.fifth {
  width: 20px;
}

#cart tbody td {
  text-align: center;
  margin-top: 4px;
}

tr.productitm {
  height: 65px;
  line-height: 65px;
  border-bottom: 1px solid #d7dbe0;
}

#cart tbody td img.thumb {
  vertical-align: bottom;
  border: 1px solid #ddd;
  margin-bottom: 4px;
}

.qtyinput {
  width: 50px;
  height: 30px;
  border: 1px solid #a3b8d3;
  background: #dae4eb;
  color: #616161;
  text-align: center;
}



.remove {
  /* http://findicons.com/icon/261449/trash_can?id=397422 */
  cursor: pointer;
  position: relative;
  right: 12px;
  top: 5px;
}

.light {
  color: #888b8d;
  text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.45);
  font-size: 1.1em;
  font-weight: normal;
}
.thick {
  color: #272727;
  font-size: 1.7em;
  font-weight: bold;
}




/* https://codepen.io/guvootes/pen/eyDAb */
#submitbtn {
  width: 150px;
  height: 35px;
  outline: none;
  border: none;
  border-radius: 5px;
  margin: 0 0 10px 0;
  font-size: 1.3em;
  letter-spacing: 0.05em;
  font-family: Arial, Tahoma, sans-serif;
  color: #fff;
  text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.2);
  cursor: pointer;
  overflow: hidden;
  border-bottom: 1px solid #0071ff;
  background-image: -webkit-gradient(
    linear,
    50% 0%,
    50% 100%,
    color-stop(0%, #66aaff),
    color-stop(100%, #4d9cff)
  );
  background-image: -webkit-linear-gradient(#66aaff, #4d9cff);
  background-image: -moz-linear-gradient(#66aaff, #4d9cff);
  background-image: -o-linear-gradient(#66aaff, #4d9cff);
  background-image: linear-gradient(#66aaff, #4d9cff);
}
#submitbtn:hover {
  background-image: -webkit-gradient(
    linear,
    50% 0%,
    50% 100%,
    color-stop(0%, #4d9cff),
    color-stop(100%, #338eff)
  );
  background-image: -webkit-linear-gradient(#4d9cff, #338eff);
  background-image: -moz-linear-gradient(#4d9cff, #338eff);
  background-image: -o-linear-gradient(#4d9cff, #338eff);
  background-image: linear-gradient(#4d9cff, #338eff);
}
#submitbtn:active {
  border-bottom: 0;
  background-image: -webkit-gradient(
    linear,
    50% 0%,
    50% 100%,
    color-stop(0%, #338eff),
    color-stop(100%, #4d9cff)
  );
  background-image: -webkit-linear-gradient(#338eff, #4d9cff);
  background-image: -moz-linear-gradient(#338eff, #4d9cff);
  background-image: -o-linear-gradient(#338eff, #4d9cff);
  background-image: linear-gradient(#338eff, #4d9cff);
  -webkit-box-shadow: inset 0 1px 3px 1px rgba(0, 0, 0, 0.25);
  -moz-box-shadow: inset 0 1px 3px 1px rgba(0, 0, 0, 0.25);
  box-shadow: inset 0 1px 3px 1px rgba(0, 0, 0, 0.25);
}
.abcd{
    display:inline-block;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            
  <div class="w">
    <header id="title">
      <h1>My Cart</h1>
    </header>
    <div class="page">

        
           <asp:DataList runat="server" ID="show" >
               <ItemTemplate>
      <table id="cart">
        <thead>
          <tr>
            <th class="first text-center">Photo</th>
            <th class="second text-center">Qty</th>
            <th class="third text-center">Product</th>
            <th class="fourth text-center">Line Total</th>
            <th class="fifth">&nbsp;</th>
          </tr>
        </thead>
        <tbody>
          <!-- shopping cart contents -->
          <tr class="productitm">
            <td><asp:Image runat="server" ID="pimage" ImageUrl='<%# Bind("image") %>' class="thumb img"/></td>
            <td >

                <div class="input-group abcd">
          <div class="input-group-btn">
              <asp:LinkButton runat="server" ID="plusbtn" class="btn btn-danger btn-number fa fa-minus"  CommandArgument='<%# Bind("product_id")%>' OnClick="subtractquantity"   >
              </asp:LinkButton>
          </div>
         <div> <asp:TextBox type="text" runat="server" ID="txtbox" class="form-control input-number" Text='<%# Bind("quantity") %>'></asp:TextBox>
                </div>
             <div class="input-group-btn"> 
              <asp:LinkButton type="button" ID="minusbtn" class="btn btn-success btn-number fa fa-plus" OnClick="addquantity" CommandArgument='<%# Bind("product_id")%>' runat="server">
              </asp:LinkButton>
        
      </div>
            </td>
            <td><asp:Label ID="lblname" class="justify-content-center align-items-center" runat="server"  Text='<%# Bind("name") %>'></asp:Label></td>
              
            <td><asp:Label runat="server" class=" text-center justify-content-center align-items-center" ID="pricelbl"  Text='<%# Bind("price") %>'></asp:Label></td>
            <td><span class="remove"><asp:ImageButton ID="img" class="justify-content-center align-items-center" runat="server"  CommandArgument='<%# Bind("product_id")%>' CommandName="ThisBtnClick" ImageUrl="https://i.imgur.com/h1ldGRr.png"  OnClick="deleteitem" CausesValidation="True"></asp:ImageButton></span></td>
        
               </tr>
          <!-- tax + subtotal -->
         
        </tbody>
      </table>
                   </ItemTemplate>
                   </asp:DataList>
        <div class="w page d-flex">
            <div class="w-50 light text-center text-dark " style="font-size:large">Shipping &amp; Tax</div>
                        <div class="w-50 light text-center text-danger" style="font-size:large">50.00</div>
        </div>
         <div class="w page d-flex">
            <div class="w-50 light text-center text-dark " style="font-size:large">Total</div>
                        <div class="w-50 light text-center text-danger" style="font-size:large">2500</div>
        </div>
        <div class="w page text-center">
            <asp:linkbutton runat="server" ID="submitbtn" class="checkout btn btn-primary " OnClick="checkout" Text="Checkout Now"></asp:linkbutton>
        </div>
           </div>
  </div>
        </div>
    </form>
</body>
</html>
