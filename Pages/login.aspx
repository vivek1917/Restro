<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/index.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Pages_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-xxl bg-white p-0">

        <!-- Heading Section -->
        <div class="container-xxl py-0 bg-dark hero-header mb-5">
            <div class="container text-center my-5 pt-5 pb-4">
                <h1 class="text-white mb-3">Login</h1>
            </div>
        </div>
        <!-- Heading Section End -->

        <section class="h-75" style="background-color: #eee;">
            <div class="container h-75">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">

                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-1">
                                        <img src="../assets/signup.jpg" class="img-fluid" alt="Sample image">
                                    </div>

                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-2">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4 login_header">Login</p>

                                        <div class="mx-1 mx-md-4" runat="server">

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="ul_email" class="form-control" TextMode="Email" runat="server" required="required"></asp:TextBox>
                                                    <label class="form-label" for="ul_email">Your Email</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="ul_pwd" class="form-control" TextMode="Password" runat="server" required="required"></asp:TextBox>
                                                    <label class="form-label" for="ul_pwd">Password</label>
                                                </div>
                                            </div>

                                            <asp:Label ID="Cred_Error" runat="server" Text="Credentials are incorrect." Visible="false"></asp:Label>

                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <asp:Button ID="Btn_Login" class="btn btn-primary btn-lg" runat="server" OnClick="Button_Login" Text="Login" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <style>
        .login_header {
            text-shadow: 3px 3px 6px;
            color: black;
        }
    </style>
</asp:Content>

