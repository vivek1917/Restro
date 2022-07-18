<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/index.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Pages_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-xxl bg-white p-0">

        <!-- Heading Section -->
        <div class="container-xxl py-0 bg-dark hero-header mb-5">
            <div class="container text-center my-5 pt-5 pb-4">
                <h1 class="text-white mb-3">About Us</h1>
            </div>
        </div>
        <!-- Heading Section End -->

        <div class="container-xxl py-5">
            <div class="container-fluid">
                <div class="row g-5 align-items-center">

                    <div class="col-lg-6">
                        <h1 class="mb-4">Welcome to Restoran</h1>
                        <p class="mb-4">
                            The Restaurant strives to create an elegant dining experience that caters to 
                            people desiring quality food in a welcoming atmosphere. Since our inception in 1980, 
                            we have believed in only using the best ingredients to create unique dishes that all can enjoy. 
                            We pride ourselves in superior service and will never compromise quality. Our menu is diverse, 
                            encompassing dishes inspired by many different influences.
                        </p>
                        <p class="mb-4">We look forward to serving you!</p>
                    </div>
                    <div class="col-lg-6">
                        <img src="../assets/aboutus.jpg" class="img-fluid" />
                    </div>
                </div>
            </div>
        </div>


        <div class="container-xxl pt-5 pb-3 mb-3">
            <div class="container">
                <div class="text-center">
                    <h5 class="text-center text-primary">Team Members</h5>
                    <h1 class="mb-5">Our Master Chefs</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item text-center rounded">
                            <img class="img-fluid" src="../assets/team1.jpg" alt="team_1">
                            <h5 class="mb-0">Sanjeev Kapoor</h5>
                            <small>Head Chef</small>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item text-center rounded">
                            <img class="img-fluid" src="../assets/team2.jpg" alt="team_2">
                            <h5 class="mb-0">Vikas Khanna</h5>
                            <small>Dupty Chef</small>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item text-center rounded">
                            <img class="img-fluid" src="../assets/team3.jpg" alt="team_3">
                            <h5 class="mb-0">Shipra Khanna</h5>
                            <small>Station Chef</small>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item text-center rounded">
                            <img class="img-fluid" src="../assets/team4.jpg" alt="team_4">
                            <h5 class="mb-0">Vicky Ratnani</h5>
                            <small>Station Chef</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

