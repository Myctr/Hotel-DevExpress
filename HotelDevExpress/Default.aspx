<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HotelDevExpress.Default" %>

<%@ Register Assembly="DevExpress.XtraCharts.v18.1.Web, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.XtraCharts.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com -->
  <title>DevExpress Hotel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    margin-left: auto;
    margin-right: auto;
      }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <dx:ASPxImage ID="ASPxImage1" runat="server" ShowLoadingImage="true" Height="60px" ImageUrl="/resimler/hotellogo.png" Width="240px"></dx:ASPxImage>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">GALERİ</a></li>
        <li><a href="#services">İSTATİSTİKLER</a></li>
        <li><a href="#portfolio">HAKKIMIZDA</a></li>
        <li><a href="#pricing">İLETİŞİM</a></li>
      </ul>
    </div>
  </div>
</nav>

<form runat="server">
<div class="jumbotron text-center" style="background-image: url('/resimler/sahil.jpg')">
  
    <div style="text-align: left">
        <table>
                <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Lokasyon Seçin" Font-Size="Medium"></dx:ASPxLabel>
            <dx:ASPxComboBox ID="Cmb1" runat="server" Width="285px" DropDownWidth="550px" TextFormatString="{0}"
                CallbackPageSize="30" DataSourceID="SqlDataSource1" Theme="Office365" SelectedIndex="0">
                <Columns>
                    <dx:ListBoxColumn FieldName="ULKE" Width="100%" />
                    <dx:ListBoxColumn FieldName="ID" Width="130px" />
                </Columns>
            </dx:ASPxComboBox>             
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDxDBConnectionString %>" SelectCommand="SELECT * FROM [TBLULKELER] ORDER BY [SAYAC] DESC"></asp:SqlDataSource>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Kişi Sayısı Seçin" Font-Size="Medium"></dx:ASPxLabel>
                <dx:ASPxSpinEdit ID="ASPxSpinEdit1" runat="server" Number="0" Theme="Office365" MaxValue="4" MinValue="1">
                </dx:ASPxSpinEdit>
                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Giris Tarihi" Font-Size="Medium"></dx:ASPxLabel>
                <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Date="05/04/2019 15:33:47" Theme="Office365">
                    <DropDownButton>
                        <Image IconID="scheduling_switchtimescalesto_32x32">
                        </Image>
                    </DropDownButton>
            </dx:ASPxDateEdit>
            <tr>
            
                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Çıkış Tarihi" Font-Size="Medium"></dx:ASPxLabel>
                <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server" Date="2019-05-04" Theme="Office365">
                    <DropDownButton>
                        <Image IconID="scheduling_switchtimescalesto_32x32">
                        </Image>
                    </DropDownButton>
            </dx:ASPxDateEdit>
            </tr>
                <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Captcha Kontrol" Theme="Office365"></dx:ASPxLabel>
                <dx:ASPxCaptcha ID="ASPxCaptcha1" runat="server" Theme="Office365"></dx:ASPxCaptcha>
            <br/>
                <asp:Button ID="Button1" runat="server" Text="Oda Ara" CssClass="btn btn-warning" OnClick="Button1_Click" />
            <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text=""></dx:ASPxLabel>
            </table>
    </div>  
</div>


<!-- Container (About Section) -->
<div id="about" class="container-fluid" style="width:827px">
    <dx:ASPxImageSlider ID="ASPxImageSlider1" runat="server" ImageSourceFolder="/SliderImages/" Width="827px">
        <SettingsImageArea AnimationType="Fade" EnableLoopNavigation="True" />
        <SettingsNavigationBar Mode="Dots" />
        <SettingsAutoGeneratedImages ImageCacheFolder="~/Thumb/" />
    </dx:ASPxImageSlider>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
    <div>
        <table>
            <tr>

                <td>
                    <dx:WebChartControl ID="WebChartControl2" runat="server" CrosshairEnabled="True" Height="500px" Width="1300px" DataSourceID="SqlDataSource1" Style="margin-top: 0px" PaletteBaseColorNumber="1" PaletteName="Oriel">
                        <BorderOptions Color="255, 255, 0"></BorderOptions>
                        <DiagramSerializable>
                            <dx:XYDiagram>
                                <AxisX VisibleInPanesSerializable="-1"></AxisX>

                                <AxisY VisibleInPanesSerializable="-1"></AxisY>
                            </dx:XYDiagram>
                        </DiagramSerializable>

                        <SeriesSerializable>
                            <dx:Series Name="Ulkeler">
                            </dx:Series>
                        </SeriesSerializable>
                        <SeriesTemplate ArgumentDataMember="ULKE"></SeriesTemplate>
                    </dx:WebChartControl>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey"> 
    <h1>İsteğe bağlı maximum bir yatak takviyesi isteyebilirsiniz tamamen ücretsizdir.</h1>
    <h1>Kahvaltı servisimiz mevcuttur.</h1>
    <h1>7/24 Saat açık kaplıca hizmetimizden dilediğinizce yararlanabilirsiniz.</h1>
    <h5>Tek kişilik odalarımızın fiyatı 120TLdir</h5>
    <h5>İki kişilik odalarımızın fiyatı 150TLdir</h5>
    <h5>Üç kişilik odalarımızın fiyatı 200TLdir</h5>
    <h5>Dört kişilik odalarımızın fiyatı 250TLdir</h5>

  </div>  
 
<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
      <h2 class="text-center">İLETİŞİM</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Bizimle iletişim kurun.24 Saat içinde geri döneceğiz.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Mersin, TR</p>
      <p><span class="glyphicon glyphicon-phone"></span> +90 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> ycotur05@gmail.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
            <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="Adınızı Giriniz:"></dx:ASPxLabel>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="col-sm-6 form-group">
          <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Mailinizi Giriniz:"></dx:ASPxLabel>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
      </div>
        <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="Mesajınızı buraya giriniz."></dx:ASPxLabel>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="100px" Width="700px"></asp:TextBox>
      <br />
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Gönder" OnClick="ASPxButton1_Click"></dx:ASPxButton>
    </div>
  </div>
  </div>
</div>
</form>
<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Otel mi? Trivvvago! :(</p>
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>

