<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Tee4Me.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://images.vexels.com/media/users/3/283861/raw/01bf7f42be7310728c034bfde55140bb-couple-pointing-at-t-shirt-mockup.jpg" class="img-fluid" alt="alternatetext">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777" /></svg>
                <div class="container">
                    <div class="carousel-caption text-start">
                        <h1>Couple shirt?</h1>
                        <p>Oh-uh, Better get customized shirt by aspiring artists</p>
                        <button type="button" class="btn btn-lg btn-primary" data-bs-toggle="modal" data-bs-target="#RegisterModal">
                            Sign up Today
                        </button>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://cf.shopee.ph/file/10e5b26ef78eae2f41c1271f8f4ef2bb" alt="alternatetext">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777" /></svg>
                <div class="container">
                    <div class="carousel-caption">
                        <h1>You can't top a Customized shirt</h1>
                        <p>Have them the way you like it color? size? ü name it</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://vivamake.de/wp-content/uploads/2020/06/couple-sweatshirt-avocado-best-couple.jpg">
                <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777" /></svg>
                <div class="container">
                    <div class="carousel-caption text-end">
                        <h1>Smile</h1>
                        <p>Keep it Comming</p>
                        <button type="button" class="btn btn-lg btn-primary" data-bs-toggle="modal" data-bs-target="#LoginModal">
                            Login now
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</asp:Content>
