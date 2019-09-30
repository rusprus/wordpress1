<?php
   get_header();
 ?>
   <!-- Page Title
   ================================================== -->
   <div id="page-title">

      <div class="row">

         <div class="ten columns centered text-center">
            <h1>Our Blog<span>.</span></h1>

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





<?php
                     // параметры по умолчанию
                        $posts = get_posts( array(
                           'numberposts' => 2,
                           'category'    => 0,
                           /*'orderby'     => 'date',
                           'order'       => 'DESC',
                           'include'     => array(),


                           'exclude'     => array(),
                           'meta_key'    => '',
                           'meta_value'  =>'',*/
                           'post_type'   => 'post',
                           'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
                           'nopaging'=> true,
                        ) );


                        // get_the_posts_pagination( $args );
                           the_posts_pagination(); 
                        foreach( $posts as $post ){
                           setup_postdata($post);
                            ?>

                              <article class="post">

                                 <div class="entry-header cf">

                                    <h1><a href="<?php echo get_permalink(); ?>" title=""><?php the_title();?></a></h1>

                                    <p class="post-meta">

                                       <time class="date" datetime="2014-01-14T11:24">Jan 14, 2014</time>
                                       /
                                       <span class="categories">
                                       <?php the_category('/ '); ?>
                                       </span>

                                    </p>

                                 </div>

                                 <div class="post-thumb">
                                    <a href="<?php echo get_permalink(); ?>" title=""><?php the_post_thumbnail('post-thumb'); ?></a>
                                 </div>

                                 <div class="post-content">

                                    <p><?php the_excerpt(); ?> </p>

                                 </div>

                              </article> <!-- post end -->
                             <?php 
                        }

                       
                        wp_reset_postdata(); // сброс
                         
                   ?>




            <!-- Pagination -->
           
<!--             <nav class="col full pagination">
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

         </div> <!-- Primary End-->

         <div id="secondary" class="four columns end">

<?php get_sidebar(page1);  ?> 

         </div> <!-- Secondary End-->

      </div>

   </div> <!-- Content End-->


<?php 
get_footer();



