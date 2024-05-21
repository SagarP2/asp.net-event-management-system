<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Event_Managament_Sysyem.Main.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header section starts  -->
    <header class="header">

        <a href="#" class="logo">
            <img src="image/Mlogo.PNG" alt="">
        </a>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#about">about</a>
            <a href="#service">service</a>
            <a href="#gallery">gallery</a>
            <a href="#review">review</a>
            <a href="#contact">contact</a>
        </nav>

        <div id="menu-bars" class="fas fa-bars"></div>

    </header>
    <!-- header section ends -->
    <!-- Home Section Start -->
    <section id="home" class="home">
        <div class="content">
            <h3>When nothing goes right, go left.</h3>
            <p>
                Step into a world of effortless event planning and unforgettable experiences with our cutting-edge event management system.
            </p>
            <a href="Login.aspx" class="btn">Book Now</a>
        </div>
    </section>
    <!-- Home Section End -->
    <!-- about section starts  -->
    <section class="about" id="about">

        <h1 class="heading"><span>about</span> us </h1>

        <div class="row">

            <div class="image">
                <img src="image/about.jpg" alt="">
            </div>

            <div class="content">
                <h3>we will give a very special celebration for you</h3>
                <p>we are dedicated to transforming your visions into unforgettable experiences. With a passion for seamless execution and meticulous attention to detail, we offer a comprehensive suite of tools and solutions that streamline every aspect of event planning and coordination. Our team of experienced professionals is committed to understanding your unique goals and tailoring our services to meet your specific needs, whether you're organizing a corporate conference, a wedding celebration, or a community gathering. From innovative technology integrations to personalized support, we take pride in being your trusted partner on the journey to creating exceptional events that leave a lasting impact.</p>
            </div>
        </div>

    </section>
    <!-- about section ends -->
    <!-- service section starts  -->
    <section class="service" id="service">

        <h1 class="heading">our <span>Events</span> </h1>

        <div class="box-container">

            <div class="box">

                <style>
                    .icon-container i {
    margin-right: 30px; /* Adjust the value as needed */
    margin-left:30px;
}

                </style>
                <div class="icon-container">
                    <i class="fas fa-birthday-cake"></i>

                    <i class="fas fa-user-tie"></i>

                    <i class="fas fa-handshake"></i>

                    <i class="fas fa-glass-cheers"></i>
                </div>
                
                <asp:DataList ID="DataListevent" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div style="padding: 10px; margin: 10px; color: white; font-size: 25px;">
                            <strong></strong><%# Eval("EName") %><br />

                        </div>
                        <div style="padding: 10px; margin: 5px; color: white;">
                            <strong></strong><%# Eval("EDescription") %><br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
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

    <!-- review section ends -->
    <!-- contact section starts  -->
    <style>
        .contact {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            /* Additional styling for spacing if needed */
            padding: 20px;
        }

        .inputBox {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px; /* Adjust spacing between input boxes */
        }

            .inputBox input,
            textarea {
                width: 45%; /* Adjust width of input fields */
                padding: 10px;
                margin: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

        .btn {
            padding: 10px 20px;
            background-color: #007bff; /* Adjust button color */
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            .btn:hover {
                background-color: #0056b3; /* Adjust hover color */
            }
    </style>


    <div class="container">
        <section class="contact" id="contact">
            <h1 class="heading"><span>contact</span> us </h1>
            <%--<div style="display: flex; justify-content: center;">--%>
            <div class="inputBox" style="display: flex; justify-content: center; width: 1500px;">
                <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control" placeholder="name" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />

            <div class="inputBox" style="display: flex; justify-content: center; width: 1250px;">
                <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" placeholder="email" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="emailFormatValidator" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Invalid email format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <br />

            <div class="inputBox" style="display: flex; justify-content: center; width: 1500px;">
                <asp:TextBox ID="numberTextBox" runat="server" CssClass="form-control" placeholder="number" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="numberValidator" runat="server" ControlToValidate="numberTextBox" ErrorMessage="Number is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />

            <div class="inputBox" style="display: flex; justify-content: center; width: 1500px;">
                <asp:TextBox ID="subjectTextBox" runat="server" CssClass="form-control" placeholder="subject" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="subjectValidator" runat="server" ControlToValidate="subjectTextBox" ErrorMessage="Subject is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />

            <asp:TextBox ID="messageTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="your message" required></asp:TextBox>
            <asp:RequiredFieldValidator ID="messageValidator" runat="server" ControlToValidate="messageTextBox" ErrorMessage="Message is required." Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" CssClass="btn" />
        </section>
    </div>

    <style>
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: blue;
            color: white;
            text-align: center;
        }
    </style>

    <div class="footer">
        <p>© Event Management System</p>
    </div>
    <br>
</asp:Content>
