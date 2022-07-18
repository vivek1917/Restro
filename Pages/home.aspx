<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/index.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Pages_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Using the Carousel-->
    <br />
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../assets/carousel_2.jpg" alt="italian Food" height="400" width="1400">
            </div>
            <div class="carousel-item">
                <img src="../assets/carousel_1.jpg" alt="italian Food" height="400" width="1400">
            </div>
            <div class="carousel-item">
                <img src="../assets/carousel_3.jpg" alt="italian Food" height="400" width="1400">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="container-xxl bg-white p-0">
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
        <%--<asp:Button ID="homeBtn" Text="Click to hide" OnClick="home_Btn" runat="server"/>--%>
        <div class="container-xxl py-5">
            <div class="container-fluid">
                <h1 class="mb-4">Popular Dishes</h1>
                <div class="row g-5 align-items-center">
                    <div class="col-lg-4">
                        <img src="../assets/home01.png" class="img-fluid" />
                    </div>
                    <div class="col-lg-4">
                        <img src="../assets/home02.png" class="img-fluid" />
                    </div>
                    <div class="col-lg-4">
                        <img src="../assets/home03.png" class="img-fluid" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
