<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/index.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="Pages_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../scripts/booking.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-xxl bg-white p-0">

        <!-- Heading Section -->
        <div class="container-xxl py-0 bg-dark hero-header mb-5">
            <div class="container text-center my-5 pt-5 pb-4">
                <h1 class="text-white mb-3">Booking</h1>
            </div>
        </div>
        <!-- Heading Section End -->


        <!-- Reservation Start -->
        <div class="container-xxl py-5 px-0">
            <div class="row g-0">
                <div class="col-md-6">
                    <img src="../assets/booking.jpg" class="img-fluid" alt="Sample image">
                </div>
                <div class="col-md-6 bg-dark d-flex align-items-center">
                    <div class="p-5">
                        <h5 class="text-start text-primary">Reservation</h5>
                        <h1 class="text-white mb-4">Book A Table Online</h1>
                        <asp:PlaceHolder ID="alert_BookingPage" runat="server" Visible="false">
                            <div class="alert alert-warning" role="alert">
                                You need to <a href="login.aspx" class="alert-link">login</a> or <a href="signup.aspx" class="alert-link">signup</a>, before you can book online.
                            </div>
                        </asp:PlaceHolder>
                        <div class="row g-3">
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="b_name" placeholder="Your Name" class="form-control" TextMode="SingleLine" runat="server" required="required"></asp:TextBox>
                                    <label for="b_name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating date" id="dateB" data-target-input="nearest">
                                    <asp:TextBox ID="b_date" placeholder="Date & Time" class="form-control" TextMode="Date" runat="server" required="required"></asp:TextBox>
                                    <label for="b_date">Date</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <asp:DropDownList ID="b_nop" class="form-select" runat="server">
                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                        <asp:ListItem Value="3">3</asp:ListItem>
                                        <asp:ListItem Value="More than 3">More than 3</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="b_nop">No. Of People</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="b_msg" placeholder="Leave a message here" class="form-control" TextMode="MultiLine" Style="height: 100px" runat="server"></asp:TextBox>
                                    <label for="b_msg">Special Request</label>
                                </div>
                            </div>

                            <asp:Label ID="Booking_Confirm" runat="server" Text="Booking has been successful." Style='color: green;' Visible="false"></asp:Label>
                            <asp:Label ID="Booking_Error" runat="server" Text="There was an error. Try again." Style='color: red;' Visible="false"></asp:Label>

                            <div class="col-md-6">
                                <asp:Button ID="Btn_Booking" class="btn btn-primary w-100 py-3" runat="server" OnClick="Button_Booking" Text="Book Now" />
                            </div>

                            <div class="col-md-6">
                                <asp:Button ID="Btn_Reset" class="btn btn-secondary w-100 py-3" runat="server" OnClick="Button_Reset" Text="Reset" UseSubmitBehavior="false"/>
                            </div>

                            <div class="col-md-12 text-center">
                                <asp:Button ID="Btn_Receipt" class="btn btn-success col-6 w-50 py-3 my-2" runat="server" OnClick="Button_Receipt" Text="Download Receipt" Visible="false"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

