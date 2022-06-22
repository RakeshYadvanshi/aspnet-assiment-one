<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"
    CodeBehind="Order.aspx.cs" Inherits="Ch07Cart.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <form runat="server">

        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
        <div class="container">
            <!-- product -->
            <div class="product-content product-wrap clearfix product-deatil">
                <div class="form-group">
                    <label class="col-sm-5">Please select a product:</label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource1" DataTextField="Name"
                            DataValueField="ProductID" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                            ConnectionString='<%$ ConnectionStrings:HalloweenConnection %>'
                            SelectCommand="SELECT [ProductID], [Name], [ShortDescription], 
                                [LongDescription], [ImageFile], [UnitPrice] FROM [Products] 
                                ORDER BY [Name]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 col-sm-12 col-xs-12">
                        <div class="product-image">
                            <div id="myCarousel-2" class="carousel slide">
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel-2" data-slide-to="0" class=""></li>
                                    <li data-target="#myCarousel-2" data-slide-to="1" class="active"></li>
                                    <li data-target="#myCarousel-2" data-slide-to="2" class=""></li>
                                </ol>
                                <div class="carousel-inner">
                                    <!-- Slide 1 -->
                                    <div class="item active">
                                        <asp:Image ID="imgProduct" runat="server" CssClass="img-responsive" />
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#myCarousel-2" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                                <a class="right carousel-control" href="#myCarousel-2" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-md-offset-1 col-sm-12 col-xs-12">
                        <h2 class="name">
                            <asp:Label ID="lblName" runat="server"></asp:Label>
                            <small>Product by <a href="javascript:void(0);">Rakesh</a></small>
                            <i class="fa fa-star fa-2x text-primary"></i>
                            <i class="fa fa-star fa-2x text-primary"></i>
                            <i class="fa fa-star fa-2x text-primary"></i>
                            <i class="fa fa-star fa-2x text-primary"></i>
                            <i class="fa fa-star fa-2x text-muted"></i>
                            <span class="fa fa-2x">
                                <h5>(109) Votes</h5>
                            </span>
                            <a href="javascript:void(0);">109 customer reviews</a>
                        </h2>
                        <hr />
                        <h3 class="price-container">
                            <asp:Label ID="lblUnitPrice" runat="server"></asp:Label>
                            <small>*includes tax</small>
                        </h3>
                        <div class="certified">
                            <ul>
                                <li>
                                    <a href="javascript:void(0);">Delivery time<span>7 Working Days</span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">Certified<span>Quality Assured</span></a>
                                </li>
                            </ul>
                        </div>
                        <hr />
                        <div class="description description-tabs">
                            <ul id="myTab" class="nav nav-pills">
                                <li class=" nav-item active">
                                    <a href="#more-information" data-toggle="pill" class="no-margin nav-link active" aria-selected="true">
                                        Product Description </a></li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#specifications" data-toggle="pill">Specifications</a
                                        ></li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#reviews" data-toggle="pill">Reviews</a>

                                </li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade show active" id="more-information">
                                    <br />
                                    <strong>Description Title</strong>
                                    <p>
                                        <asp:Label ID="lblShortDescription" runat="server"></asp:Label>
                                    </p>
                                </div>
                                <div class="tab-pane fade" id="specifications">
                                    <br />
                                    <asp:Label ID="lblLongDescription" runat="server"></asp:Label>
                                </div>
                                <div class="tab-pane fade" id="reviews">
                                    <br />
                                    <form method="post" class="well padding-bottom-10" onsubmit="return false;">
                                        <textarea rows="2" class="form-control" placeholder="Write a review"></textarea>
                                        <div class="margin-top-10">
                                            <button type="submit" class="btn btn-sm btn-primary pull-right">
                                                Submit Review
                                            </button>
                                            <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add Location"><i class="fa fa-location-arrow"></i></a>
                                            <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add Voice"><i class="fa fa-microphone"></i></a>
                                            <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add Photo"><i class="fa fa-camera"></i></a>
                                            <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add File"><i class="fa fa-file"></i></a>
                                        </div>
                                    </form>

                                    <div class="chat-body no-padding profile-message">
                                        <ul>
                                            <li class="message">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="online" />
                                                <span class="message-text">
                                                    <a href="javascript:void(0);" class="username">Alisha Molly
                                                <span class="badge">Purchase Verified</span>
                                                        <span class="pull-right">
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-muted"></i>
                                                        </span>
                                                    </a>
                                                    Can't divide were divide fish forth fish to. Was can't form the, living life grass darkness very image let unto fowl isn't in blessed fill life yielding above all moved
                                                </span>
                                                <ul class="list-inline font-xs">
                                                    <li>
                                                        <a href="javascript:void(0);" class="text-info"><i class="fa fa-thumbs-up"></i>This was helpful (22)</a>
                                                    </li>
                                                    <li class="pull-right">
                                                        <small class="text-muted pull-right ultra-light">Posted 1 year ago </small>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="message">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar2.png" class="online" />
                                                <span class="message-text">
                                                    <a href="javascript:void(0);" class="username">Aragon Zarko
                                                <span class="badge">Purchase Verified</span>
                                                        <span class="pull-right">
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                            <i class="fa fa-star fa-2x text-primary"></i>
                                                        </span>
                                                    </a>
                                                    Excellent product, love it!
                                                </span>
                                                <ul class="list-inline font-xs">
                                                    <li>
                                                        <a href="javascript:void(0);" class="text-info"><i class="fa fa-thumbs-up"></i>This was helpful (22)</a>
                                                    </li>
                                                    <li class="pull-right">
                                                        <small class="text-muted pull-right ultra-light">Posted 1 year ago </small>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-sm-12 col-md-6 col-lg-6">
                                <asp:TextBox ID="txtQuantity" runat="server"
                                    CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger"
                                    runat="server" ControlToValidate="txtQuantity" Display="Dynamic"
                                    ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="text-danger"
                                    ControlToValidate="txtQuantity" Display="Dynamic"
                                    ErrorMessage="Quantity must range from 1 to 500."
                                    MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                            </div>

                            <asp:Button ID="Button1" runat="server" Text="Add to Cart"
                                OnClick="btnAdd_Click" CssClass="btn btn-success btn-lg" />
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="btn-group pull-right">
                                <button class="btn btn-white btn-default"><i class="fa fa-star"></i>Add to wishlist</button>
                                <asp:Button ID="Button2" runat="server" Text="Go to Cart"
                                    PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn btn-white btn-default" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end product -->
    </form>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
