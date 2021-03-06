{extends designs/site.tpl}

{block js-bottom}
    {$dwoo.parent}
    {jsmin "features/sidebar-tags.js+features/sidebar-checkin.js"}
{/block}

{block header}
    {$dwoo.parent}
  
   <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1>CODE. YOUR. COMMUNITY.</h1>
                <h2>Make Philly a better place to live, work and play through technology.</h2>
               <p>
                <a href="#reg" class="btn btn-primary btn-xl">Start Hacking</a>
               </p>
            </div>
        </div>
    </header>
      <a name="reg"></a>
     <section class="bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Come Hack With Us</h2>
                    <h3>Next Meetup:</h3>
                   
                    <h2>January 27, 2015</h2>
                    <h3 class="text-faded"><a href="https://goo.gl/maps/6xMY4tWV5jN2" target="_blank">@Devnuts</h3>
                    <a href="#" class="btn btn-default btn-xl">RSVP on Meetup.com</a>
                </div>
            </div>
        </div>
    </section>

        <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Join the Civic Tech Movement</h2>
                   
                </div>
            </div>
        </div>
      
        <div class="container" >
            <div class="row">
                 <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                       
                        <h3>Civic Hacking</h3>
                        <p class="text-muted">Civic hacking uses technology to improve civic life.</p>
                         <p> <a href="https://codeforphilly.org/mission" class="btn btn-primary btn-xl" id="btn-bttm-marg">Learn More</a></p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                       
                        <h3>Commit</h3>
                        <p class="text-muted">Registering with Code for Philly is the first step towards making a difference.</p>
                        <p><a href="#" class="btn btn-primary btn-xl" id="btn-bttm-marg">Register</a></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                       
                        <h3>Code</h3>
                        <p class="text-muted">There are over 150 projects you can join to learn to code or flex your existing coding skills.</p>
                        <p><a href="https://codeforphilly.org/projects" class="btn btn-primary btn-xl" id="btn-bttm-marg">Browse Projects</a></p>
                    </div>
                </div>
               
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                       
                        <h3>Need a Push?</h3>
                        <p class="text-muted">You can attend or host a coding workshop on the first Tuesday of every month.</p>
                         <p><a href="#" class="btn btn-primary btn-xl" id="btn-bttm-marg">Learn More</a></p>
                    </div>
                </div>

            </div>
        </div>
    </section>


       <!--  <div class="hero-unit">
           <div class="caption-marg">
            <div class="caption">
               
                <p class="text-center">{Laddr::$siteSlogan|escape}</p>
                <p class="text-center">
                    <a href="{tif $.User ? '/projects' : '/register'}" class="btn btn-primary">{_ "Start Hacking"}</a>
                    <small>or <a href="/mission">{_ "Learn More"}&hellip;</a></small>
                </p>
            </div>
        </div>
    
         </div> -->

{/block}

{block content-wrapper-open}<div class="container-fluid">{/block}
{block content}

    {template tagLink tagData rootUrl}
        <a href="{$rootUrl}?tag={$tagData.Handle}">{$tagData.Title}{if $tagData.itemsCount} <span class="badge pull-right">{$tagData.itemsCount|number_format}</span>{/if}</a>
    {/template}

   

<!--     <nav class="sidebar right">

        <section class="tagsSummary projects">
            <a class="btn btn-success btn-mini pull-right" href="/projects/create">{_ "Add project"}</a>
            <h4><a href="/projects">{_ "Projects"} <span class="badge badge-info">{$projectsTotal|number_format}</span></a></h4>

            <header class="btn-group">
                <a href="#projects-by-tech" class="tagFilter active btn btn-mini" data-group="byTech">{_ "by tech"}</a> |
                <a href="#projects-by-topic" class="tagFilter btn btn-mini" data-group="byTopic">{_ "by topic"}</a> |
                <a href="#projects-by-event" class="tagFilter btn btn-mini" data-group="byEvent">{_ "by event"}</a> |
                <a href="#projects-by-event" class="tagFilter btn btn-mini" data-group="byStage">{_ "by stage"}</a>
            </header>

            <ul class="tags nav nav-tabs nav-stacked byTech">
                {foreach item=tag from=$projectsTags.byTech}
                    <li>{tagLink tagData=$tag rootUrl="/projects"}</li>
                {/foreach}
            </ul>

            <ul class="tags nav nav-tabs nav-stacked byTopic" style="display: none">
                {foreach item=tag from=$projectsTags.byTopic}
                    <li>{tagLink tagData=$tag rootUrl="/projects"}</li>
                {/foreach}
            </ul>

            <ul class="tags nav nav-tabs nav-stacked byEvent" style="display: none">
                {foreach item=tag from=$projectsTags.byEvent}
                    <li>{tagLink tagData=$tag rootUrl="/projects"}</li>
                {/foreach}
            </ul>

            <ul class="tags nav nav-tabs nav-stacked byStage" style="display: none">
                {foreach item=stage from=$projectsStages}
                    <li><a href="/projects?stage={$stage.Stage}">{$stage.Stage} <span class="badge pull-right">{$stage.itemsCount|number_format}</span></a></li>
                {/foreach}
            </ul>
        </section>

        <section class="tagsSummary members">
            <h4><a href="/people">{_ "Members"} <span class="badge badge-info">{$membersTotal|number_format}</span></a></h4>

            <header class="btn-group">
                <a href="#members-by-tech" class="tagFilter active btn btn-mini" data-group="byTech">{_ "by tech"}</a> |
                <a href="#members-by-topic" class="tagFilter btn btn-mini" data-group="byTopic">{_ "by topic"}</a>
            </header>

            <ul class="tags nav nav-tabs nav-stacked byTech">
                {foreach item=tag from=$membersTags.byTech}
                    <li>{tagLink tagData=$tag rootUrl="/people"}</li>
                {/foreach}
            </ul>

            <ul class="tags nav nav-tabs nav-stacked byTopic" style="display: none">
                {foreach item=tag from=$membersTags.byTopic}
                    <li>{tagLink tagData=$tag rootUrl="/people"}</li>
                {/foreach}
            </ul>
        </section>

        {include includes/home.resources.tpl}

        {*
        <a href="#"><h5>Events (108)</h5></a>
        <ul>
            <li><a href="#">Workshops (100/3)</h3></a></li>
            <li><a href="#">Hackathons (10/4)</h3></a></li>
            <li><a href="#">Social (6/3)</h3></a></li>
        </ul>
        <h6><a href="#">event count</a> | <a href="#">next closest</a></h6>

        <a href="#"><h5>Help Wanted (10)</h5></a>
        <ul>
            <li><a href="#">PHP (1)</a></li>
            <li><a href="#">JS (2)</a></li>
            <li><a href="#">Python (100)</a></li>
            <li><a href="#">Rails (42)</a></li>
        </ul>
        <h6><a href="#">job count</a> | <a href="#">by tech</a></h6>

        <a href="#"><h5>Help Offered</h5></a>
        <ul>
            <li><a href="#">Django (2)</a></li>
            <li><a href="#">Node.js (1)</a></li>
        </ul>
        <h6><a href="#">job count</a> | <a href="#">by tech</a></h6>
        *}
    </nav>

    

 <aside class="sidebar left meetups">

        {if $currentMeetup}
            <article class="meetup meetup-current">
                <h3>{_ "Current Meetup"}</h3>
                {meetup $currentMeetup showRsvp=false}
                <form class="checkin" action="/checkin" method="POST">
                    <input type="hidden" name="MeetupID" value="{$currentMeetup.id}">
                    <select name="ProjectID" class="project-picker">
                        <option value="">Current Project (if any)</option>
                        {foreach item=Project from=Laddr\Project::getAll()}
                            <option value="{$Project->ID}">{$Project->Title|escape}</option>
                        {/foreach}
                    </select>
                    <input type="submit" value="Check In" class="btn btn-success">
                </form>
                <aside class="checkins">
                    <h4>{_ "Checked-in Members"}</h4>
                    {$lastProjectID = false}
                    <h5 class="muted">{_ "No Current Project"}</h5>
                    <ul class="nav nav-pills nav-stacked">
                    {foreach item=Checkin from=$currentMeetup.checkins}
                        {if $Checkin->ProjectID != $lastProjectID || $lastProjectID === false}
                            {if $lastProjectID}
                                </ul>
                            {/if}
                            <h5>{if $Checkin->Project}{projectLink $Checkin->Project}{/if}</h5>
                            {$lastProjectID = $Checkin->ProjectID}
                            <ul class="nav nav-pills nav-stacked">
                        {/if}
                        <li>{personLink $Checkin->Member photo=yes photoSize=32}</li>
                    {/foreach}
                    </ul>
                </aside>
            </article>
        {/if}

        {if $nextMeetup}
            <article class="meetup meetup-next">
                <h3>{_ "Next Meetup"}</h3>
                {meetup $nextMeetup}
            </article>
        {/if}

        {if count($futureMeetups)}
            <h3>{_ "Future Meetups"}</h3>
            {foreach item=futureMeetup from=$futureMeetups}
                <article class="meetup meetup-future">
                    {meetup $futureMeetup}
                </article>
            {/foreach}
        {/if}

    </aside>


    <section class="content fixed-fixed">
        {include includes/home.announcements.tpl}

        <section>
            <h2>{_ "Latest Project Activity"}</h2>

            <div class="row-fluid">
                {foreach item=Article from=$activity}
                    {projectActivity $Article headingLevel=h3 showProject=true}
                {foreachelse}
                    <em>{_ "No project updates have been posted on this site yet."}</em>
                {/foreach}
            </div> 

        <div class="row-fluid">
                <a href="/project-updates" class="btn">{_ "Browse all project updates"}</a>
                <a href="/project-buzz" class="btn">{_ "Browse all project buzz"}</a>
                <a href="/blog" class="btn">{_ "Browse all blog posts"}</a>
            </div> 
        </section>
    </section> --> 
{/block}
{block content-wrapper-close}</div>{/block}