<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="packages.aspx.cs" Inherits="packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Title -->
        <div class="page-title-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 wow fadeIn">
                        <i class="glyphicon glyphicon-gift"></i>
                        <h1>Packages</h1>
                        <p>Here are the packages we have</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="portfolio-container">
	        <div class="container">
			<asp:Repeater ID="rptpackagelist" runat="server" DataSourceID="dbtourlist">
                <HeaderTemplate>
                    <div class="row">
                    	<div class="col-sm-12 portfolio-masonry">
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="portfolio-box web-design">
                        <div class="portfolio-box-container">
                            <a href="/packageview.aspx?id=<%# Eval("id")%>"><img alt="Tour" data-at2x="resourcefile/packages/<%# Eval("id") %>/<%# Eval("packageimage") %>" src="resourcefile/packages/<%# Eval("id") %>/<%# Eval("packageimage") %>" /></a>
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
</asp:Content>

