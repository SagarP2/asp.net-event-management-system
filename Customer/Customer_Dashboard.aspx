<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Customer_Dashboard.aspx.cs" Inherits="Event_Managament_Sysyem.Customer.Customer_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .avatar {
            vertical-align: middle;
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }
    </style>

    <header class="header">

        <a href="#" class="logo">
            <img src="image/Mlogo.png" alt="">
        </a>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#event">Event</a>
            <a href="#venues">Venues</a>
            <a href="#packages">Packages</a>
            <a href="#gallery">gallery</a>
            <a href="#review">review</a>
        </nav>
        
        <a href="Profile.aspx">
            <img src="./image/logo copy.png" style="width: 50px; height: 50px;"></a>
    </header>

    <!-- Home Section Start -->
    <section id="home" class="home">
        <div class="content">
            <h3>When nothing goes right, go left.</h3>
            <p>
                Step into a world of effortless event planning and unforgettable experiences with our cutting-edge event management system.
            </p>
            <a href="../Main/Booking.aspx" class="btn">Event Book</a>
        </div>
    </section>

    <!-- service section starts  -->

    <!-- service section starts  -->
    <section class="event" id="event">

        <h1 class="heading">our <span>Events</span> </h1>

        <div class="box-container">

            <div class="box">

                <i class="fas fa-birthday-cake"></i>

                <i class="fas fa-user-tie"></i>

                <i class="fas fa-handshake"></i>

                <i class="fas fa-glass-cheers"></i>

                <asp:DataList ID="DataListevent" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div style="padding: 10px; margin: 10px; color: white; font-size: 25px; font-weight: bold;">
                            <strong></strong><%# Eval("EName") %><br />

                        </div>
                        <div style="padding: 10px; margin: 5px; color: white; font-size: 15px;">
                            <strong></strong><%# Eval("EDescription") %><br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
    </section>


    <section class="venues" id="venues">

        <h1 class="heading">our <span>Venues</span> </h1>

       <div class="box-container">

            <div class="box">

              <asp:DataList ID="DataListvenues" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div style="padding: 10px; margin: 10px; color: white; font-size: 25px; font-weight: bold;">
                            <strong></strong><%# Eval("VName") %><br />
                        </div>

                        <div style="padding: 10px; margin: 10px; color: white; font-size:15px;">
                            <strong>Area : </strong><%# Eval("VArea") %><br />
                            <strong>Addrees : </strong><%# Eval("VAddress") %><br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
     </section>

    <section class="packages" id="packages">
        <h1 class="heading">our <span>Packages</span> </h1>
        <div class="box-container">

            <div class="box">

              <asp:DataList ID="DataListpackage" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div style="padding: 10px; margin: 10px; color: white; font-size: 25px; font-weight: bold;">
                            <strong></strong><%# Eval("PName") %><br />
                        </div>

                        <div style="padding: 10px; margin: 10px; color: white; font-size:15px;">
                            <strong>Price : </strong><%# Eval("PPrice") %><br />
                            <strong>Description : </strong><%# Eval("PDescription") %><br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
       <%-- <div class="box-container">
            <div class="box">
                <i class="fas fa-birthday-cake"></i>
                <h3>Golden</h3>
                <p>Price = 150000</p>
                <p>Breakfast/Lunch/Dinner Included</p>
                <p>Decoration & Catering Included</p>
                <p>Basic Sound System Included</p>
            </div>

            <div class="box">
                <i class="fas fa-handshake"></i>
                <h3>Sliver</h3>
                <p>Price = 100000</p>
                <p>Breakfast/Lunch/Dinner Included</p>
                <p>Decoration & Catering Included</p>
            </div>

            <div class="box">
                <i class="fas fa-user-tie"></i>
                <h3>Platinum</h3>
                <p>Prive = 200000</p>
                <p>High-Base Sound System Included</p>
                <p>Breakfast/Lunch/Dinner Included</p>
                <p>Decoration & Catering Included</p>
            </div>
        </div>--%>
    </section>

    <!-- gallery section starts  -->
    <section class="gallery" id="gallery">
        <h1 class="heading">our <span>gallery</span></h1>

        <div class="box-container">

            <div class="box">
                <img src="image/gallery1.jpg" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="image/gallery2.jpg" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="image/gallery3.jpg" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="image/gallery4.jpg" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="image/gallery5.jpg" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>
        </div>
    </section>
    <!-- gallery section ends -->

    <!-- review section starts  -->

    <section class="reivew" id="review">

        <h1 class="heading">client's <span>review</span></h1>

        <div class="review-slider swiper-container" />

        <div class="swiper-wrapper" />

        <div class="swiper-slide box">
            <i class="fas fa-quote-right"></i>
            <div class="user">
                    <img src="image/testi1.jpg" alt="">
                <div class="user-info">
                    <h3></h3>
                    <span>Elina</span>
                </div>
            </div>
            <p>The user-friendly interface made registration a breeze, and the personalized agenda feature ensured I didn't miss any sessions. Timely updates and clear communication kept me informed, while the networking tools helped me connect effortlessly with other attendees. The system's technical reliability was remarkable, providing a seamless experience from start to finish. Overall, this event management system greatly enhanced my event participation and I'm excited to use it again in the future.</p>
        </div>
    </section>
</asp:Content>
