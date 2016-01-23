{load_templates subtemplates/people.tpl}




 <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">{include includes/site.brand.tpl}
</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                     {include includes/site.nav-sitelinks.tpl}
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>



<!-- <nav class="navbar navbar-inverse navbar-fixed-top navbar-site">
    <section class="navbar-inner">
        <div class="container">  -->

            <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
   <!--          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
 
          {include includes/site.brand.tpl}

            <div class="nav-collapse collapse">
                <ul class="nav">
                    {include includes/site.nav-sitelinks.tpl}
                </ul>

                <ul class="nav pull-right">
                    {if $.User}
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">{avatar $.User 18} {$.User->FirstName} <b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu">
                                {include includes/site.nav-userlinks.tpl}
                            </ul>
                        </li>
                    {else}
                        <li><a href="/login?return={$.server.REQUEST_URI|escape:url}">{_ "Login"}</a></li>
                        <li><a href="/register?return={$.server.REQUEST_URI|escape:url}">{_ "Sign up"}</a></li>
                    {/if}
                </ul>
            </div>
        </div>
    </section>
</nav>   -->



