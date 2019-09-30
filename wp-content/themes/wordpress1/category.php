<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *

 */

get_header();
?>



   <!-- Page Title
   ================================================== -->
   <div id="page-title">

      <div class="row">

         <div class="ten columns centered text-center">
            <h1>Category1<span>.</span></h1>

            <p>Aenean condimentum, lacus sit amet luctus lobortis, dolores et quas molestias excepturi
            enim tellus ultrices elit, amet consequat enim elit noneas sit amet luctu. </p>
         </div>

      </div>

   </div> <!-- Page Title End-->

   <!-- Content
   ================================================== -->
   <div class="content-outer">

      <div id="page-content" class="row">

         <div id="primary" class="eight columns">

            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
               
               <article class="post">

               <div class="entry-header cf">

                  <h1><a href="<?php echo get_permalink(); ?>" title=""><?php the_title() ?> </a></h1>
     
                  <p class="post-meta">

                     <time class="date" datetime="2014-01-14T11:24"><?php  the_date()  ?></time>
                     /
                     <span class="categories">
                      <?php the_category('/ '); ?>
                     </span>

                  </p>

               </div>

               <div class="post-thumb">
                  <a href="<?php echo get_permalink(); ?>" title=""><?php the_post_thumbnail('post_thumb'); ?></a>
               </div>

               <div class="post-content">

                  <?php the_excerpt(); ?>

               </div>

            </article> <!-- post end -->
            <?php endwhile; ?>
               <!-- Pagination -->
               <?php the_posts_pagination( $args ); ?>
           <!--  <nav class="col full pagination">
               <ul>
                  <li><span class="page-numbers prev inactive">Prev</span></li>
                  <li><span class="page-numbers current">1</span></li>
                  <li><a href="#" class="page-numbers">2</a></li>
                  <li><a href="#" class="page-numbers">3</a></li>
                  <li><a href="#" class="page-numbers">4</a></li>
                  <li><a href="#" class="page-numbers">5</a></li>
                  <li><a href="#" class="page-numbers">6</a></li>
                  <li><a href="#" class="page-numbers">7</a></li>
                  <li><a href="#" class="page-numbers">8</a></li>
                  <li><a href="#" class="page-numbers">9</a></li>
                  <li><a href="#" class="page-numbers next">Next</a></li>
               </ul>
            </nav> -->
            <?php endif; ?>

            

            

         </div> <!-- Primary End-->

         <div id="secondary" class="four columns end">

    <?php get_sidebar(page);  ?> 

         </div> <!-- Secondary End-->

      </div>

   </div> <!-- Content End-->



<?php

get_footer();
