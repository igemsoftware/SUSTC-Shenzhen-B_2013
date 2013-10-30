<html>
	<head>
		<title>3Miao community</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css">
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/d3.v3.min.js" charset="utf-8"></script>
		<script type="text/javascript" src="js/tab.js" charset="utf-8"></script>  		
		<style type="text/css">
			.node circle {
				r:10;
				cursor: pointer;
				fill: #fff;
				stroke: steelblue;
				stroke-width: 1.5px;
			}

			.node text {
				font-size: 13px;
			}

			path.link {
				fill: none;
				stroke: #ccc;
				stroke-width: 1px;
			}
			body{ 
		        background:url(img/Grunge1.png) no-repeat center center fixed;
		        -webkit-background-size:cover;
		        -moz-background-size:cover;
		        -o-background-size:cover;
		        background-size:cover; 
		    }
			#collapseOne{
		         background: rgba(10,10,10,.7)
	        }
            #accordion-heading{
		       background: rgba(10,10,10,.7)
	        }
            .textimg{
		        margin-left:100px;
	        }
		</style>
		<script>
			$(document).ready(function(){
				$('#myTab a').click(function (e) {
					e.preventDefault();
					$(this).tab('show');
				})
			});
                        function check_login(){
            var userstatus = $.ajax({
                type: "GET",
                url: "comments/check.php",
                dataType: "html"
            });
            userstatus.done(function(data){
                if (data.substring(0,3)==="YES"){
                    $("#comment_user").html(data.substring(3));
                    $("#login_form").hide();
                    $("#comment_form").show(100);
                    
                } else{
                    $("#comment_form").hide();
                    $("#login_form").show(100);
                }
            });
        }
        function fetch(){
            var ecoid;
            ecoid = $("#Ecoid")[0].childNodes[0].data;
            var content = $.ajax({
                type: "GET",
                url: "comments/getcomments.php?id="+ecoid,
                dataType: "html"
            });
            content.done(function(data){
                $("#comment_list").html(data);
            });
        }
        function PostComment(){
            var ecoid;
            ecoid = $("#Ecoid")[0].childNodes[0].data;
            var cp = $.ajax({
                type: "GET",
                url: "comments/addcomment.php",
                data:{id:ecoid,user:$("#comment_user").val(),content:$("#comment_area").val()},
                dataType: "html"
            });
            $("#comment_user").val("");
            cp.done(function(data){
                fetch();
            });
        }
        function postit(){
            PostComment();
        }
        $(document).ready(function(){
            $("#btn_login").click(function(){
                var login_status = $.ajax({
                    type: "GET",
                    url: "comments/login.php",
                    data:{username:$("#login_user").val(),password:$("#login_password").val()},
                    dataType: "html"
                });
                login_status.done(function(){
                    check_login();
                });
            });
            $("#btn_logout").click(function (){
                var logout_status = $.ajax({
                    type: "GET",
                    url: "comments/logout.php",
                    dataType: "html"
                });
                check_login();
            });
            $("#myModal").on('shown',function(){
                fetch();
                check_login();
            });
        });
		</script>
	</head>
	<body>
		<div class="navbar navbar-fixed-top navbar-inverse">
			<div class="navbar-inner">
				<span id="navi">
					<ul class="nav" style="vertical-align:middle">
						<li><img src="img/logo.png" title="logo" style="padding-left:30px;margin-top:10px"></li>
						<li class="divider-vertical"></li>
						<li><a href="index.html" title="Home">HOME</a></li>
						<li class="divider-vertical"></li>
						<li><a href="tutorial.html" title="Tutorial">TUTORIAL</a></li>
						<li class="divider-vertical"></li>
						<li><a href="submit.html" title="Submit">SUBMIT</a></li>
						<li class="divider-vertical"></li>
						<li><a href="about.html" title="About">ABOUT</a></li>
					</ul>
					<form class="navbar-search">
						<input type="text" class="span2 search-query" placeholder="Search">
					</form>
				</span>
			</div>
		</div>
    
		<div class="container" style="padding: 82px;">
			<div id="sorry" class="modal hide fade">
				<div class="modal-header">
					<h3>Oops...</h3>
				</div>
				<div class="modal-body">
					<p>There is no such circuit now... But you can create one~!</p>
				</div>
			</div>
			<!-- Modal -->
            
            
			<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<ul class="nav nav-tabs" id="myTab">
						<li class="active"><a href="#description">Description</a></li>
						<li><a href="#protocol">Protocol</a></li>
						<li><a href="#circuit">Circuit</a></li>
						<li><a href="#reference">Reference</a></li>
						<li><a href="#comment">Comment</a></li>
					</ul>
					<div><span data-toggle="tooltip" title="Project No" style="font-weight: bold" id="Ecoid"></span> in project <span data-toggle="tooltip" title="Project name" style="font-weight: bold" id="pro"></span></div>
					<div>By <span data-toggle="tooltip" title="Author(s)" style="font-weight: bold" id="author"></span>(<span data-toggle="tooltip" title="Year" style="font-weight: bold" id="year"></span>)</div>
					<div>Evidence level: <span data-toggle="tooltip" title="3 star: reported to be functional in peer-reviewed journals&#13;2 stars: reported by one iGEM team and independently successfully reproduced by another iGEM team&#13;1 stars: reported by one iGEM team" id="evidence"></span></div>
				</div>
				<div class="modal-body">
					<div class="tab-content">
						<div class="tab-pane active" id="description">
							<img id="pro_img" src="" style="width: 400px; height: 300px;" />
							<div id="des"></div>
						</div>
						<div class="tab-pane" id="protocol">
							<div id="exp"></div>
						</div>
						<div class="tab-pane" id="circuit">
							<img id="cir_img" src="" style="width: 400px; height: 300px;">
							<div style="margin-top:15px"><a href="#" id="link_lgd"><button class="btn btn-large btn-block btn-primary" type="button" id="link_lgd">View and edit in LGD.</button></a></div>
						</div>
						<div class="tab-pane" id="reference">
							<div id="ref"></div>
						</div>
						<div class="tab-pane" id="comment">
                                                    <div>
                                                    <div class="well" id="comment_form">
                                                        <label>Name:</label><label  id="comment_user"></label><a class="btn btn-danger" id="btn_logout">Logout</a>
                                                        <br><label>Comments</label>
                                                        <br><textarea rows="5" class="span4" style="resize:none" id="comment_area"></textarea>
                                                        <br><button class="btn btn-success" id="comment_post" onclick="postit();">Comment</button>
                                                    </div>
                                                    <div class="well hide" id="login_form">
                                                        <label>Name:</label><input type="text" id="login_user" class="span2"></textbox>
                                                        <br>
                                                        <label>Password:</label><input type="password" id="login_password" class="span2"></textbox>
                                                        <br><a class="btn btn-primary" id="btn_login">Login</a>
                                                    </div>
                                                    <div class="well" id="comment_list"></div>
                                                    
                                                    </div>
                                                </div>
					</div>
				</div>
				<div class="modal-footer">
					<span id="contri"></span>
				</div>
			</div>
            
            <div class="accordion-group">
                    <div class="accordion-heading " id="accordion-heading"><a class="accordion-toggle text-right" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" >
                        <i class=" icon-chevron-down icon-white"></i>
                        </a>
                    </div>
                    <div id="collapseOne" class="accordion-body collapse ">
                        <div class="accordion-inner">
                            <a href="mindroad.php">
                                <img id="mindroadtext" class="textimg" src=
                                "img/MindRoadtext.png" style="background:rgb(181,230,29)">
                            </a> 
                           
                            <a href="CircuitList.php">
                                <img id="circuitlisttext" class="textimg" src="img/CircuitListtext.png" style="background:rgb(0,162,232)">
                            </a>
                            <img id="ttectext"  class="textimg"src="img/TTECtext.png" style="background:rgb(63,72,204)">
                        </div>
                    </div>             
           </div>
            
			<div id="content" style=" background: rgba(10,10,10,.3)"></div>
            
		</div>
        <script type="text/javascript" src="js/mindroad.js"></script>
	</body>
</html>


