<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="packageview.aspx.cs" Inherits="packageview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
	div{
		font-size: 14px;
	}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Title -->
        <div class="page-title-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 wow fadeIn">
                        <h3><i class="glyphicon glyphicon-gift"></i> <asp:Label ID="lblPackageTitle" runat="server" Text="Package Title" value="<%= packagetitle %>"></asp:Label></h3>
                    </div>
                </div>
            </div>
        </div>
		<div class="services-container">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-offset-1 col-md-3 text-center">
		            	<img src="<%= packageimage %>" width="100%">
		            </div>
		            <div class="col-md-6">
		            	<div class="row" style="font-size: 14px;font-weight: bold;">
		            		<div class="col-md-6 text-left alert alert-success"><%= destination %></div>
		            		<div class="col-md-3 text-left alert alert-info"><%= daynight %></div>
		            	</div>
		            	<div class="row" style="font-size: 14px;font-weight: bold;">
							<div class="col-md-6"><a href="<%= itenary %>" class="btn btn-primary">View Brochure</a></div>
							<div class="col-md-3"><a href="<%= pdffile %>" class="btn btn-primary col-md-12">View Gujarati</a></div>
		            	</div>
		            </div>
		        </div>
				<div class="row"><div class="col-md-12">&nbsp;</div></div>
                <div class="row">
                	<div class="col-md-offset-1 col-md-10" style="color:#000;">
	                	<div class="col-md-1 text-center text-info alert-info"><strong>Itinerary</strong></div>
	                	<div class="col-md-4 text-center text-info alert-warning"><strong>Dates</strong></div>
	                	<div class="col-md-4 text-center text-info alert-info"><strong>Inclusions/Exclusions</strong></div>
	                	<div class="col-md-2 text-center text-info alert-warning"><strong>Rate</strong></div>
	                	<div class="col-md-1 text-center text-info alert-info"><strong>Seatchart</strong></div>
	                </div>
            	</div>
            	<div class="row"><div class="col-md-12">&nbsp;</div></div>
            	<div class="row">
            		<div class="col-md-offset-1 col-md-10" style="color:#000; font-weight: 600;">
						<div class="col-md-1 text-left alert-info">Itinerary</div>
						<div class="col-md-4 text-center alert-warning">
							<div class="row">
								<div class="col-md-6"><span><strong>January</strong></span> [<asp:Label ID="month1" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>July</strong></span> [<asp:Label ID="month7" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>February</strong></span> [<asp:Label ID="month2" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>August</strong></span> [<asp:Label ID="month8" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>March</strong></span> [<asp:Label ID="month3" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>September</strong></span> [<asp:Label ID="month9" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>April</strong></span> [<asp:Label ID="month4" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>October</strong></span> [<asp:Label ID="month10" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>May</strong></span> [<asp:Label ID="month5" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>November</strong></span> [<asp:Label ID="month11" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>June</strong></span> [<asp:Label ID="month6" runat="server" Text=""></asp:Label>]</div>
								<div class="col-md-6"><span><strong>December</strong></span> [<asp:Label ID="month12" runat="server" Text=""></asp:Label>]</div>
							</div>	
						</div>
						<div class="col-md-2 text-center alert-info"><%= Server.HtmlDecode(inclusion) %></div>
						<div class="col-md-2 text-center alert-info"><%= Server.HtmlDecode(exclusion) %></div>
						<div class="col-md-2 text-center alert-warning" ><%= Server.HtmlDecode(rates) %></div>
						<div class="col-md-1 text-center alert-info"><a href="javascript:void(0);"><i class="fa fa-sitemap"></i></a></div>
					</div>
            	</div>

		    </div>
		</div>
		<div class="services-container">
		    <div class="container">
				<div class="row"><div class="col-md-12">&nbsp;</div></div>
				<div class="row"><div class="col-md-12">&nbsp;</div></div>
		        <div class="row">
		            <div class="col-md-12">
		                <div class="row">
		                    <div class="col-md-offset-1 col-md-10 text-justify" style="color:#000;font-size:14px;">
		            	        <%= description %>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
    </div>
</asp:Content>

