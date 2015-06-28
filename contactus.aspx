<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Title -->
    <div class="page-title-container">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 wow fadeIn">
                    <i class="fa fa-envelope"></i>
                    <h1>Contact Us /</h1>
                    <p>Here is how you can contact us</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Us -->
    <div class="contact-us-container">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 contact-form wow fadeInLeft">
                    <div class="form-group">
                        <asp:Label ID="lblStatus" runat="server" Text="Thanks for contacting us. We'll get get back to you soon!" class="alert alert-danger" Visible="false"></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="contact-name">Name</label>
                        <asp:TextBox runat="server" name="contact-name" placeholder="Enter your name..." class="contact-name" ID="textname" />
                    </div>
                    <div class="form-group">
                        <label for="contact-email">Email</label>
                        <asp:TextBox runat="server" name="contact-email" placeholder="Enter your email..." class="contact-email" ID="txtemail" />
                    </div>
                    <div class="form-group">
                        <label for="contact-subject">Subject</label>
                        <asp:TextBox runat="server" name="contact-subject" placeholder="Your subject..." class="contact-subject" ID="txtsubject" />
                    </div>
                    <div class="form-group">
                        <label for="contact-message">Message</label>
                        <asp:TextBox runat="server" name="contact-message" placeholder="Your message..." class="contact-message" ID="txtmessage" Rows="5" TextMode="multiline" />
                    </div>
                    <asp:Button ID="Save" runat="server" type="submit" class="btn btn-primary" Text="Send" OnClick="save_Click" />
                </div>
                <div class="col-sm-3 contact-address wow fadeInUp">
                    <h3>HEAD OFFICE</h3>
                    <p>15, BELGIUM TOWER, <br> OPP. LINEAR BUS STAND, <br> DELHIGATE, RING ROAD, SURAT – 395002, GUJARAT</p>
                    <p>Phone: 0261-4034500 / 3911379</p>
                    <p>Mobile: 09426706871</p>
                    <p>Email: <a href="mailto:akhil_natrajtravels@rediffmail.com">akhil_natrajtravels@rediffmail.com</a> <br /> <a href="mailto:info@akhilnatrajtravels.com">info@akhilnatrajtravels.com</a> <br /> <a href="mailto:akhilnatrajtravels@gmail.com">akhilnatrajtravels@gmail.com</a></p>
                </div>
                <div class="col-sm-3 contact-address wow fadeInUp">
                    <h3>BRANCH OFFICE</h3>
                    <p>B-131, SUPATH-2 COMPLEX, <br> NR. JUNA VADAJ BUS STOP, <br> ASHRAM ROAD, AHMEDABAD – 13 GUJARAT</p>
                    <p>Phone: 079-27557559</p>
                    <p>Mobile: 8490992137</p>
                    <p>Email: <a href="mailto:amd@akhilnatrajtravels.com">amd@akhilnatrajtravels.com</a></p>
                    <p>Website: <a href="http://www.akhilnatrajtravels.com">www.akhilnatrajtravels.com</a></p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 contact-address">
                    <h3>We Are Here</h3>
                    <div class="map"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

