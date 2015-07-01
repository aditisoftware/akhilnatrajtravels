<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Slider 2 -->
    <div id="mybannershow" class="carousel slide" data-ride="carousel">
        <!-- <ol class="carousel-indicators">
            <li data-target="#mybannershow" data-slide-to="0" class="active"></li>
            <li data-target="#mybannershow" data-slide-to="1"></li>
            <li data-target="#mybannershow" data-slide-to="2"></li>
            <li data-target="#mybannershow" data-slide-to="3"></li>
        </ol> -->
        <div class="carousel-inner" role="listbox">
            <div class="item active" style="width: 100%;  background-position: center;  background-size: cover; background-image:url('assets/img/slider/1.jpg');">
                <div class="row" style="padding-top:15%;">
                    <div class="col-sm-8 col-sm-offset-2 slider-2-text wow flipInX" data-wow-duration="2s" data-wow-delay="1s">
                        <h1>&nbsp;</h1>
                        <p>&nbsp;</p>
                    </div>
                </div>      
            </div>

            <div class="item"  style="width: 100%;  background-position: center;  background-size: cover; background-image:url('assets/img/slider/2.jpg');">
                <div class="row" style="padding-top:15%;">
                    <div class="col-sm-8 col-sm-offset-2 slider-2-text wow flipInX" data-wow-duration="2s" data-wow-delay="1s">
                        <h1>&nbsp;</h1>
                        <p>&nbsp;</p>
                    </div>
                </div>      
            </div>

            <div class="item"  style="width: 100%;  background-position: center;  background-size: cover; background-image:url('assets/img/slider/3.jpg');">
                <div class="row" style="padding-top:15%;">
                    <div class="col-sm-8 col-sm-offset-2 slider-2-text wow flipInX" data-wow-duration="2s" data-wow-delay="1s">
                        <h1>&nbsp;</h1>
                        <p>&nbsp;</p>
                    </div>
                </div>      
            </div>

            <div class="item"  style="width: 100%;  background-position: center;  background-size: cover; background-image:url('assets/img/slider/4.jpg');">
                <div class="row" style="padding-top:15%;">
                    <div class="col-sm-8 col-sm-offset-2 slider-2-text wow fadeInDown">
                        <h1>&nbsp;</h1>
                        <p>&nbsp;</p>
                    </div>
                </div>      
            </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#mybannershow" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#mybannershow" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- Services -->

    <div class="work-container">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 work-title wow fadeIn">
                    <h2>Packages</h2>
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConString %>" SelectCommand="SELECT top(4) [packagetitle], [packageimage], [description], [rate], [DayNight], [id] FROM [package] order by id desc"></asp:SqlDataSource>
            <asp:Repeater ID="rptpackagelist" runat="server" DataSourceID="SqlDataSource2">
                <HeaderTemplate>
                    <div class="row">
                        <div class="col-sm-12 portfolio-masonry">
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="portfolio-box web-design">
                        <div class="portfolio-box-container">
                            <a href="/packageview.aspx?id=<%# Eval("id")%>"><img style="max-height:200px;" alt="Tour" data-at2x="resourcefile/packages/<%# Eval("id") %>/<%# Eval("packageimage") %>" src="resourcefile/packages/<%# Eval("id") %>/<%# Eval("packageimage") %>" /></a>
                            <h3><%# Eval("packagetitle") %></h3>
                            <div class="work-bottom">
                                <a class="big-link-2 view-work" href="resourcefile/packages/<%# Eval("id") %>/<%# Eval("packageimage") %>"><i class="fa fa-search"></i></a>
                                <a class="big-link-2" href="/packageview.aspx?id=<%# Eval("id")%>"><i class="fa fa-link"></i></a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                        </div>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>

    <div class="work-container">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 work-title wow fadeIn">
                    <h2>Tours</h2>
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConString %>" SelectCommand="SELECT * FROM [tourmaster]"></asp:SqlDataSource>
            <div class="row">
                <asp:DataList ID="tourlist" runat="server" DataSourceID="SqlDataSource1" RepeatLayout="Flow" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="col-sm-3">
                            <div class="work wow fadeInDown">
                                <img style="max-height:200px;" alt="Tour" data-at2x="/resourcefile/tour/<%# Eval("id") %>/<%# Eval("tourimage") %>" src="/resourcefile/tour/<%# Eval("id") %>/<%# Eval("tourimage") %>" />
                                <h3><%# Eval("tourname") %></h3>
                                <p><%# Eval("description").ToString().Substring(0, Math.Min(Eval("description").ToString().Length, 150)) %></p>
                                <div class="work-bottom">
                                    <a class="big-link-2 view-work" href="/resourcefile/tour/<%# Eval("id") %>/<%# Eval("tourimage") %>"><i class="fa fa-search"></i></a>
                                    <a class="big-link-2" href="/packages.aspx/<%# Eval("id")%>"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>