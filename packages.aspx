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

        <!-- Portfolio
        <div class="portfolio-container">
	        <div class="container">
	            <div class="row">
	            	<div class="col-sm-12 portfolio-filters wow fadeInLeft">
	            		<a href="#" class="filter-all active">All</a> / 
	            		<a href="#" class="filter-web-design">Web Design</a> / 
	            		<a href="#" class="filter-logo-design">Logo Design</a> / 
	            		<a href="#" class="filter-print-design">Print Design</a>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-sm-12 portfolio-masonry">
		                <div class="portfolio-box web-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work1.jpg" alt="" data-at2x="assets/img/portfolio/work1.jpg">
			                	<div class="portfolio-box-text">
			                		<h3>Lorem Website</h3>
			                		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
			                	</div>
			                </div>
		                </div>
		                <div class="portfolio-box logo-design">
		                	<div class="portfolio-box-container">
			                	<img class="portfolio-video" src="assets/img/portfolio/work2.jpg" alt="" data-at2x="assets/img/portfolio/work2.jpg" 
			                										data-portfolio-video="http://vimeo.com/84910153?autoplay=0">
			                	<i class="portfolio-box-icon fa fa-play"></i>
		                		<div class="portfolio-box-text">
		                			<h3>Ipsum Logo</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box print-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work3.jpg" alt="" data-at2x="assets/img/portfolio/work3.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Dolor Prints</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box web-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work4.jpg" alt="" data-at2x="assets/img/portfolio/work4.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Sit Amet Website</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box logo-design">
		                	<div class="portfolio-box-container">
			                	<img class="portfolio-video" src="assets/img/portfolio/work5.jpg" alt="" data-at2x="assets/img/portfolio/work5.jpg" 
			                										data-portfolio-video="https://www.youtube.com/watch?v=tFTLxkMmY4M">
			                	<i class="portfolio-box-icon fa fa-play"></i>
		                		<div class="portfolio-box-text">
		                			<h3>Consectetur Logo</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box print-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work6.jpg" alt="" data-at2x="assets/img/portfolio/work6.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Adipisicing Print</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box web-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work7.jpg" alt="" data-at2x="assets/img/portfolio/work7.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Elit Website</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box print-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work8.jpg" alt="" data-at2x="assets/img/portfolio/work8.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Sed Do Prints</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box web-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work9.jpg" alt="" data-at2x="assets/img/portfolio/work9.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Eiusmod Website</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box logo-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work10.jpg" alt="" data-at2x="assets/img/portfolio/work10.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Tempor Logo</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box web-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work11.jpg" alt="" data-at2x="assets/img/portfolio/work11.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Incididunt Website</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
		                <div class="portfolio-box print-design">
		                	<div class="portfolio-box-container">
			                	<img src="assets/img/portfolio/work12.jpg" alt="" data-at2x="assets/img/portfolio/work12.jpg">
		                		<div class="portfolio-box-text">
		                			<h3>Ut Labore Print</h3>
		                			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
		                		</div>
	                		</div>
		                </div>
	                </div>
	            </div>
	        </div>
        </div> -->
        <div class="portfolio-container">
	        <div class="container">
            <!-- <div class="row">
	            <div class="col-sm-12 portfolio-filters wow fadeInLeft">
	            	<a href="#" class="filter-all active">All</a> / 
	            	<a href="#" class="filter-web-design">Web Design</a> / 
	            	<a href="#" class="filter-logo-design">Logo Design</a> / 
	            	<a href="#" class="filter-print-design">Print Design</a>
	            </div>
	        </div> -->
            <!-- <div class="row">
	            <div class="col-sm-12 portfolio-masonry">
                    <asp:SqlDataSource ID="dbtourlist" runat="server" ConnectionString="<%$ ConnectionStrings:ConString %>" SelectCommand="SELECT [packagetitle], [packageimage], [description], [rate], [DayNight], [id] FROM [package]"></asp:SqlDataSource>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="dbtourlist">
                        <ItemTemplate>
		                    <div class="portfolio-box web-design">
		                        <div class="portfolio-box-container">
                                    <a href="/packageview.aspx?id=<%# Eval("id")%>"><img alt="Tour" data-at2x="resourcefile/packages/<%# Eval("id") %>/<%# Eval("packageimage") %>" src="resourcefile/packages/<%# Eval("id") %>/<%# Eval("packageimage") %>" /></a>
		                            <h3><%# Eval("packagetitle") %></h3>
		                            <p><%# Eval("description") %></p>
		                            <div class="work-bottom">
		                                <a class="big-link-2 view-work" href="/resourcefile/package/<%# Eval("id") %>/<%# Eval("packageimage") %>"><i class="fa fa-search"></i></a>
		                                <a class="big-link-2" href="/packageview.aspx?id=<%# Eval("id")%>"><i class="fa fa-link"></i></a>
		                            </div>
                                </div>
                             </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div> -->
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

