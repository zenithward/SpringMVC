<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" />
<base href="<%=basePath%>">
<head>
  <meta charset="UTF-8">

  <meta name="description" content="">
  <meta name="keywords" content="">

  <title>Login</title>

  <link rel="shortcut icon" href="favicon.ico">
  <link href="resource/css/style.css" media="screen" rel="stylesheet" type="text/css">
  <link href="resource/css/grid.css" media="screen" rel="stylesheet" type="text/css">
 
  <script src="resource/js/jquery-1.7.2.min.js" ></script>
  <script src="resource/js/html5.js" ></script>
  <script src="resource/js/jflow.plus.js"></script>
  <script src="resource/js/jquery.carouFredSel-5.2.2-packed.js"></script>
  <script src="resource/js/checkbox.js"></script>
  <script src="resource/js/radio.js"></script>
  <script src="resource/js/selectBox.js"></script>

  <script>
	$(document).ready(function() {
		$("select").selectBox();
	});
  </script>

  <script>
	$(document).ready(function(){
		$("#myController").jFlow({
			controller: ".control", // must be class, use . sign
			slideWrapper : "#jFlowSlider", // must be id, use # sign
			slides: "#slider",  // the div where all your sliding divs are nested in
			selectedWrapper: "jFlowSelected",  // just pure text, no sign
			width: "984px",  // this is the width for the content-slider
			height: "480px",  // this is the height for the content-slider
			duration: 400,  // time in miliseconds to transition one slide
			prev: ".slidprev", // must be class, use . sign
			next: ".slidnext", // must be class, use . sign
			auto: true	
		});
	});
  </script>
   <script type="text/javascript" charset=utf-8>
   function check(event){ 
      var password = document.getElementById("password").value; 
      var repsword = document.getElementById("repassword").value; 
  if(password != repsword) {
   alert("�������벻ͬ������������");
     if (event.preventDefault) {
          event.preventDefault();
      } else {
          event.returnValue = false;
      }
   } else {
      return true;
   }
}
  </script>
  <script>
	$(function() {
	  $('#list_product').carouFredSel({
		prev: '#prev_c1',
		next: '#next_c1',
		auto: false
	  });
          $('#list_product2').carouFredSel({
		prev: '#prev_c2',
		next: '#next_c2',
		auto: false
	  });
	  $('#list_banners').carouFredSel({
		prev: '#ban_prev',
		next: '#ban_next',
		scroll: 1,
		auto: false
	  });
	  $(window).resize();
	});
  </script>
  <script>
       $(document).ready(function(){
	      $("button").click(function(){
		     $(this).addClass('click')
	      });             
       })
  </script>
    
</head>
<body>
  <div class="container_12">
    <div id="top">
      <div class="grid_3">
        <div class="phone_top">
          Call Us +777 (100) 1234
        </div><!-- .phone_top -->
      </div><!-- .grid_3 -->
   
      <div class="grid_6">
        <div class="welcome">
          Welcome visitor you can <a href="login.html">login</a> or <a href="login.html">create an account</a>.
        </div><!-- .welcome -->
      </div><!-- .grid_6 -->
   
      <div class="grid_3">
        <div class="valuta">
          <ul>
            <li class="curent"><a href="#">$</a></li>
            <li><a href="#">&#8364;</a></li>
            <li><a href="#">&#163;</a></li>
          </ul>
        </div><!-- .valuta -->
    
        <div class="lang">
          <ul>
            <li class="curent"><a href="#">EN</a></li>
            <li><a href="#">FR</a></li>
            <li><a href="#">GM</a></li>
          </ul>
        </div><!-- .lang -->
      </div><!-- .grid_3 -->
    </div><!-- #top -->
  
    <div class="clear"></div>
   
    <header id="branding">
      <div class="grid_3">
        <hgroup>
          <h1 id="site_logo"><a href="index.jsp" title=""><img src="resource/images/logo.png" alt="Online Store Theme Logo"/></a></h1>
          <h2 id="site_description">Online Store Theme</h2>
        </hgroup>
      </div><!-- .grid_3 -->
      
      <div class="grid_3">
        <form class="search">
          <input type="text" name="search" class="entry_form" value="" placeholder="Search entire store here..."/>
	</form>
      </div><!-- .grid_3 -->
      
      <div class="grid_6">
        <ul id="cart_nav">
          <li>
            <a class="cart_li" href="#">Cart <span>$0.00</span></a>
            <ul class="cart_cont">
              <li class="no_border"><p>Recently added item(s)</p></li>
              <li>
                <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="resource/images/cart_img.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>
              
              <li>
                <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="resource/images/produkt_slid1.png" alt="" title="" /></div></a>
                <div class="cont_cart">
                  <h4>Caldrea Linen and Room Spray</h4>
                  <div class="price">1 x $399.00</div>
                </div>
                <a title="close" class="close" href="#"></a>
                <div class="clear"></div>
              </li>
	      <li class="no_border">
		<a href="shopping_cart.html" class="view_cart">View shopping cart</a>
		<a href="checkout.html" class="checkout">Procced to Checkout</a>
	      </li>
            </ul>
          </li>
        </ul>
        
        <nav class="private">
          <ul>
            <li><a href="#">My Account</a></li>
		<li class="separator">|</li>
            <li><a href="#">My Wishlist</a></li>
		<li class="separator">|</li>
            <li><a href="login.html">Log In</a></li>
		<li class="separator">|</li>
            <li><a href="login.html">Sign Up</a></li>
          </ul>
        </nav><!-- .private -->        
      </div><!-- .grid_6 -->
    </header><!-- #branding -->
  </div><!-- .container_12 -->
  
  <div class="clear"></div>
  
  <div id="block_nav_primary">
    <div class="container_12">
      <div class="grid_12">
        <nav class="primary">
          <ul>
            <li class="curent"><a href="index.html">Home</a></li>
            <li><a href="catalog_grid.html">Solids</a></li>
            <li><a href="catalog_grid.html">Liquids</a></li>
            <li>
              <a href="catalog_grid.html">Spray</a>
              <ul class="sub">
                <li><a href="catalog_grid.html">For home</a></li>
                <li><a href="catalog_grid.html">For Garden</a></li>
                <li><a href="catalog_grid.html">For Car</a></li>
                <li><a href="catalog_grid.html">Other spray</a></li>
              </ul>
            </li>
            <li><a href="catalog_grid.html">Electric</a></li>
            <li><a href="catalog_grid.html">For cars</a></li>
	    <li>
              <a href="#">All pages</a>
              <ul class="sub">
                <li><a href="index.html">Home</a></li>
                <li><a href="text_page.html">Typography and basic styles</a></li>
		<li><a href="catalog_grid.html">Catalog (grid view)</a></li>
		<li><a href="catalog_list.html">Catalog (list type view)</a></li>
		<li><a href="product_page.html">Product view</a></li>
		<li><a href="shopping_cart.html">Shoping cart</a></li>
		<li><a href="checkout.html">Proceed to checkout</a></li>
		<li><a href="compare.html">Products comparison</a></li>
		<li><a href="login.html">Login</a></li>
		<li><a href="contact_us.html">Contact us</a></li>
		<li><a href="404.html">404</a></li>
		<li><a href="blog.html">Blog posts</a></li>
		<li><a href="blog_post.html">Blog post view</a></li>
              </ul>
            </li>
          </ul>
        </nav><!-- .primary -->
      </div><!-- .grid_12 -->
    </div><!-- .container_12 -->
  </div><!-- .block_nav_primary -->
  
  <div class="clear"></div>
  
  <section id="main" class="entire_width">
    <div class="container_12">      
       <div id="content">
		<div class="grid_12">
			<h1 class="page_title">�û�ע��</h1>
		</div><!-- .grid_12 -->
		
		<div class="grid_6 new_customers">
			<h2>���û�</h2>
			<p>ͨ�����������̵��˻����������˹��̽��������, �洢����ͻ���ַ, �鿴�͸�������˻��͸�������.</p>
		<!-- .grid_6 -->
		<div class="clear"></div>
			
                </div><!-- .grid_6 -->
		
		<div class="grid_6">
			<form class="registed" action="regist.do" method="post">				
		
				<div class="email">
					<strong>�û���</strong><sup class="surely">*</sup><br/>
					<input type="text" name="username" />
				</div><!-- .email -->
							
				<div class="password">
					<strong>����</strong><sup class="surely">*</sup><br/>
					<input id="password" type="password" name="password" style="width:275px; height:28px; border:solid #ccc 1px;"/>
				</div><!-- .password -->
				<div class="repassword">
					<strong>����һ������</strong><sup class="surely">*</sup><br/>
					<input id="repassword" type="password" name="repassword" style="width:275px; height:28px; border:solid #ccc 1px;" />
				</div>
				
				<div class="phonenumber">
					<strong>�ֻ���</strong><sup class="surely">*</sup><br/>
					<input type="text" name="phonenumber" />
				</div>
				
				<div class="remember">
					<input class="niceCheck" type="checkbox" name="Remember_password" />
					<span class="rem">Remember password</span>
				</div><!-- .remember -->
				
				<div class="submit">										
					<input type="submit" value="Login" onclick="check()"/>
					<sup class="surely">*</sup><span>Required Field</span>
				</div><!-- .submit -->
			</form><!-- .registed -->
                </div><!-- .grid_6 -->
       </div><!-- #content -->
       
      <div class="clear"></div>
    </div><!-- .container_12 -->
  </section><!-- #main -->
  
  <div class="clear"></div>
    
  <footer>
    <div class="f_navigation">
      <div class="container_12">
        <div class="grid_3">
          <h3>Contact Us</h3>
          <ul class="f_contact">
            <li>49 Archdale, 2B Charlestone</li>
            <li>+777 (100) 1234</li>
            <li>mail@example.com</li>
          </ul><!-- .f_contact -->
        </div><!-- .grid_3 -->
      
        <div class="grid_3">
          <h3>Information</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="#">About As</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">Terms & Conditions</a></li>
              <li><a href="#">Secure payment</a></li>
            </ul>
          </nav><!-- .private -->
        </div><!-- .grid_3 -->
        
        <div class="grid_3">
          <h3>Costumer Servise</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="contact_us.html">Contact As</a></li>
              <li><a href="#">Return</a></li>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Site Map</a></li>
            </ul>
          </nav><!-- .private -->
        </div><!-- .grid_3 -->
        
        <div class="grid_3">
          <h3>My Account</h3>
          <nav class="f_menu">
            <ul>
              <li><a href="#">My Account</a></li>
              <li><a href="#">Order History</a></li>
              <li><a href="#">Wish List</a></li>
              <li><a href="#">Newsletter</a></li>
            </ul>
          </nav><!-- .private -->
        </div><!-- .grid_3 -->
        
        <div class="clear"></div>
      </div><!-- .container_12 -->
    </div><!-- .f_navigation -->
    
    <div class="f_info">
      <div class="container_12">
        <div class="grid_6">
          <p class="copyright">Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
        </div><!-- .grid_6 -->
        
        <div class="grid_6">
          <div class="soc">
            <a class="google" href="#"></a>
            <a class="twitter" href="#"></a>
            <a class="facebook" href="#"></a>
          </div><!-- .soc -->
        </div><!-- .grid_6 -->
        
        <div class="clear"></div>
      </div><!-- .container_12 -->
    </div><!-- .f_info -->
  </footer>
 
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>