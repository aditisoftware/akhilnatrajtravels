<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="packageview.aspx.cs" Inherits="packageview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
		<!-- <div class="services-container">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-offset-2 col-md-8 text-center">
		            	<img src="<%= packageimage %>" width="60%">
		            </div>
		        </div>
		    </div>
		</div>
		<div class="services-container">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-offset-2 col-md-8">
		            	<div class="row">
		            		<div class="col-md-6 text-right"><h4>Package Rate <span class="text-success"><%= rate %></span></h4></div>
		            		<div class="col-md-6 text-left"><h4>Package Duration <span class="text-success"><%= daynight %></span></h4></div>
		            	</div>
		            	<div class="row">
		            		<div class="col-md-12 text-center"><h4>Destination <span class="text-success"><%= destination %></span></h4></div>
		            	</div>
		                <div class="row">
		                    <div class="col-md-offset-2 col-md-8 text-justify">
		            	        <%= description %>
		                    </div>
		                </div>
                        <div class="row"><div class="col-md-6">&nbsp;</div></div>
		            	<div class="row">
		            		<div class="col-md-6"><a href="<%= itenary %>" class="btn btn-primary">View Brochure</a></div>
		            		<div class="col-md-6"><a href="<%= pdffile %>" class="btn btn-primary">View PDF (In  Gujarati)</a></div>
		            	</div>
                        <div class="row"><div class="col-md-6">&nbsp;</div></div>
                        <div class="row"><div class="col-md-6">&nbsp;</div></div>
		            </div>
		        </div>
		    </div>
		</div> -->
		<div class="services-container">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-offset-2 col-md-2 text-center">
		            	<img src="<%= packageimage %>" width="100%">
		            </div>
		            <div class="col-md-6">
		            	<div class="row">
		            		<div class="col-md-6 text-left"><h4>Package Duration <span class="text-success"><%= daynight %></span></h4></div>
		            	</div>
		            	<div class="row">
		            		<div class="col-md-12 text-left"><h4>Destination <span class="text-success"><%= destination %></span></h4></div>
		            	</div>
                        <div class="row"><div class="col-md-12">&nbsp;</div></div>
		            	<div class="row">
							<div class="col-md-12">
								<div class="col-md-3"><a href="<%= itenary %>" class="btn btn-primary">View Brochure</a></div>
								<div class="col-md-3"><a href="<%= pdffile %>" class="btn btn-primary">View PDF (In  Gujarati)</a></div>
							</div>
		            	</div>
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
		                    <div class="col-md-offset-2 col-md-8 text-justify" style="color:#000;font-size:14px;">
		            	        <%= description %>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
    </div>
</asp:Content>

