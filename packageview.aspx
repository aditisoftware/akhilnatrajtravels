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
		            <div class="col-md-offset-2 col-md-2 text-center">
		            	<img src="<%= packageimage %>" width="100%" />
		            </div>
		            <div class="col-md-7">
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
                	<div class="col-md-offset-2 col-md-9" style="color:#000;">
	                	<div class="col-md-4 text-center text-info alert-info"><h5><strong>Inclusions/Exclusions</strong></h5></div>
	                	<div class="col-md-4 text-center text-info alert-warning"><h5><strong>Rate</strong></h5></div>
	                	<div class="col-md-4 text-center text-info alert-info"><h5><strong>Days</strong></h5></div>
	                </div>
            	</div>
            	<div class="row">
                	<div class="col-md-offset-2 col-md-9" style="color:#000;">
	                	<div class="col-md-4 text-center text-info alert-info">
		                	<div class="row">
			                	<div class="col-md-6 text-center alert-info"><%= Server.HtmlDecode(inclusion) %></div>
								<div class="col-md-6 text-center alert-info"><%= Server.HtmlDecode(exclusion) %></div>
							</div>	
						</div>
	                	<div class="col-md-4 text-center text-info alert-warning">
	                		<%= Server.HtmlDecode(rates) %>
	                	</div>
                		<div class="col-md-4 text-center alert-info">
							<div class="row">
								<div class="col-md-3 text-right">
									<span><strong>Jan.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month1" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Jul.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month7" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Feb.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month2" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Aug.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month8" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Mar.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month3" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Sep.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month9" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Apr.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month4" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Oct.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month10" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>May.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month5" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Nov.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month11" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Jun.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month6" runat="server" Text=""></asp:Label>
								</div>
								<div class="col-md-3 text-right">
									<span><strong>Dec.</strong></span> 
								</div>
								<div class="col-md-3 text-left">
									<asp:Label ID="month12" runat="server" Text=""></asp:Label>
								</div>
							</div>	
						</div>
	                </div>
            	</div>
            	<div class="row"><div class="col-md-12">&nbsp;</div></div>
            	<div class="row">
                	<div class="col-md-offset-2 col-md-9 text-left" style="color:#000;">
						<%= description %>
	                </div>
            	</div>
		    </div>
		</div>
    </div>
</asp:Content>

