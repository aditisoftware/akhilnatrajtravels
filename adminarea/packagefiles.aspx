<%@ Page Title="" Language="C#" MasterPageFile="~/adminarea/MasterPage.master" AutoEventWireup="true" CodeFile="~/adminarea/packagefiles.cs" Inherits="packagefiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Package Files</h1>
    <hr />
     <div class="row">
        <div class="col-md-12">
            <form role="form" id="Form1" runat="server">
                <div class="row">
                    <div class="col-md-6 margin-bottom-15">
                        <asp:Label ID="lblStatus" runat="server" Text="Label" class="alert-danger" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Package Files <small>[Each File Size Must Be 1[MAX] MB Only]</small></div>
                            <div class="panel-body">
                             <div class="row">
                                <div class="col-md-6 margin-bottom-15">
                                    <label for="packageimage" class="control-label">Package image <small>[File Size 1 MB Only]</small></label>
                                    <asp:FileUpload class="form-control" id="packageimage" name="packageimage" value="" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 margin-bottom-15">
                                    <label for="pdffile" class="control-label">Gujarati PDF <small>[File Size 1 MB Only]</small></label>
                                    <asp:FileUpload class="form-control" id="pdffile" value="" name="pdffile" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 margin-bottom-15">
                                    <label for="itenary" class="control-label">Itenary Image <small>[File Size 1 MB Only]</small></label>
                                    <asp:FileUpload class="form-control" id="itenary" value="" name="itenary" runat="server" />
                                </div>
                            </div>
                        </div>
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
                        <asp:HyperLink ID="Back" class="btn btn-info" runat="server" NavigateUrl="~/adminarea/packageMaster.aspx">Back</asp:HyperLink>
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>

