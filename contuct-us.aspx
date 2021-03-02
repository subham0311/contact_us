<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contuct-us.aspx.cs" Inherits="contuct_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>contuctus</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .main {
            position:center;
            background-color: #fafafa;
            width: 30%;
            margin:auto;
            margin-top: 10%;
            border-radius:5px;
            box-shadow:black 2px 2px 0.5em;
        }

        h1 {
            text-align: center;
            margin: 10px;
            padding: 10px;
        }

        
        .container{
            padding:10px;
            margin:auto;
            text-align:center;
            width:auto;

        }
        
    </style>

    <script type="text/javascript">
        function validateform() {
            var x = document.getElementById("TextBox1").value;
            var y = document.getElementById("TextBox2").value;
            var z = document.getElementById("TextBox3").value;
            if (! /^[a-zA-z\s]*$/ .test(x)) {
                alert("Name is not valid");

            }
            if (! /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(y)) {
                alert("Invalid Email!");
            }
            if (! /^\d{10}$/.test(z)) {
                alert("Mobile no is not valid");

            }
        }
    </script>



</head>
<body>
    <div class="main">
        <form name="contact" id="form1" onsubmit="return validateform()" runat="server">
           <div class="container">
                <h1 class="card-header">Contact Form</h1>
               
            <div class="form-group">
                <asp:TextBox ID="TextBox1" PlaceHolder="Enter Name" cssClass="form-control" runat="server"></asp:TextBox><br />
                <asp:TextBox  ID="TextBox2" PlaceHolder="Enter Email" cssClass="form-control" runat="server" ></asp:TextBox><br />
                <asp:TextBox ID="TextBox3" PlaceHolder="Enter Mobile no" cssClass="form-control" runat="server" ></asp:TextBox><br />
                <asp:TextBox ID="TextBox4" PlaceHolder="Enter Message" cssClass="form-control" runat="server" TextMode="MultiLine" MaxLength="500"></asp:TextBox><br />
                <asp:Label style="float:left;color:forestgreen;" ID="Label5" runat="server"  display="none" Visible="False">Thank you</asp:Label>
            </div>



            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="submit" OnClick="Button1_Click" />

           </div>
        </form>
    </div>
</body>
</html>
