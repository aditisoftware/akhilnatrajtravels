<%@ Page Title="" Language="C#" MasterPageFile="~/adminarea/MasterPage.master" AutoEventWireup="true" CodeFile="tour.aspx.cs" Inherits="tour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Tour</h1>
    <div class="row">
        <div class="col-md-12">
            <form role="form" id="Form1" runat="server">
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <asp:Label ID="lblStatus" runat="server" Text="Label" class="alert-danger" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="tourtitle" class="control-label">Tour Name</label>
                        <asp:TextBox runat="server" class="form-control" id="title" value="" name="tourtitle" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="description" class="control-label">Tour Description</label>
                        <asp:TextBox runat="server" class="form-control" id="description" value="" name="description" rows="5" TextMode="multiline"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <label for="tourimage" class="control-label">Tour image</label>
                        <asp:FileUpload class="form-control" id="tourimage" name="tourimage" value="" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        &nbsp;
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                    <asp:HiddenField ID="id" Value="" runat="server" />
                    <asp:Button ID="Save" runat="server" type="submit" class="btn btn-primary" Text="Save" OnClick="save_Click" />
                    <asp:Button ID="Update" runat="server" class="btn btn-info" Text="Update" OnClick="Update_Click" />
                    <asp:Button ID="Delete" runat="server" class="btn btn-danger" Text="Delete" OnClick="Delete_Click" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        &nbsp;
                    </div>
                </div>
                <div class="row templatemo-form-buttons">
                    <div class="col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                            Tour list</div>
                            <div class="panel-body">
                                <asp:GridView ID="grdTour" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grdTour_SelectedIndexChanged" CssClass="table table-striped">
                            <Columns>
                                <asp:BoundField DataField="tourname" HeaderText="Tour Name" />
                                <asp:BoundField DataField="id" ShowHeader="False" >
                                <ControlStyle Width="0px" />
                                <FooterStyle Width="0px" />
                                <HeaderStyle Width="0px" Wrap="True" />
                                <ItemStyle Width="0px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>

