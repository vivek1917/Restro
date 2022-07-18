<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/index.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Pages_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-xxl bg-white p-0">

        <!-- Heading Section -->
        <div class="container-xxl py-0 bg-dark hero-header mb-5">
            <div class="container text-center my-5 pt-5 pb-4">
                <h1 class="text-white mb-3">Contact Us</h1>
            </div>
        </div>
        <!-- Heading Section End -->


        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container-fluid">
                <div class="text-center">
                    <h1 class="mb-5">Contact For Any Query</h1>
                </div>
                <div class="row g-4">
                    <div class="col-md-6">
                        <iframe class="position-relative rounded w-100 h-100"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118106.71283246104!2d73.10304579997413!3d22.322087608659846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395fc8ab91a3ddab%3A0xac39d3bfe1473fb8!2sVadodara%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1656482679366!5m2!1sen!2sin"
                            frameborder="0" style="min-height: 350px; border: 0;" allowfullscreen="false" aria-hidden="false"
                            tabindex="0"></iframe>
                    </div>
                    <div class="col-md-6">
                        <div class="row g-3">
                            <asp:PlaceHolder ID="alert_ContactPage" runat="server" Visible="false">
                            <div class="alert alert-warning" role="alert">
                                You need to <a href="login.aspx" class="alert-link">login</a> or <a href="signup.aspx" class="alert-link">signup</a>, before you can submit query.
                            </div>
                        </asp:PlaceHolder>
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="c_name" placeholder="Your Name" class="form-control" TextMode="SingleLine" runat="server" required="required"></asp:TextBox>
                                    <label for="name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="c_sub" placeholder="Subject" class="form-control" TextMode="SingleLine" runat="server" required="required"></asp:TextBox>
                                    <label for="subject">Subject</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="c_msg" placeholder="Leave a message here" class="form-control" TextMode="MultiLine" Style="height: 150px" runat="server" required="required"></asp:TextBox>
                                    <label for="message">Message</label>
                                </div>
                            </div>

                            <asp:Label ID="Query_Confirm" runat="server" Text="Query has been sent." Style='color: green;' Visible="false"></asp:Label>
                            <asp:Label ID="Query_Error" runat="server" Text="There was an error. Try again." Style='color: red;' Visible="false"></asp:Label>

                            <div class="col-12">
                                <asp:Button ID="Btn_Contact" class="btn btn-primary w-100 py-3" runat="server" OnClick="Button_Contact" Text="Send Message" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

