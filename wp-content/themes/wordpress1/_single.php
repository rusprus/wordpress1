<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package wordpress1
 */

get_header();
?>

           <section id="intro">

      <!-- Flexslider Start-->
      <div id="intro-slider" class="flexslider">

         <ul class="slides">

            <!-- Slide -->
            <li>
               <div class="row">
                  <div class="twelve columns">
                     <div class="slider-text">
                        <h1>Free amazing site template<span>.</span></h1>
                        <p>Aenean condimentum, lacus sit amet luctus lobortis, dolores et quas molestias excepturi
                        enim tellus ultrices elit, amet consequat enim elit noneas sit amet luctu. lacus sit amet luctus lobortis, dolores et quas molestias excepturi
                        enim tellus ultrices elit.</p>
                     </div>
                     <div class="slider-image">
                        <img src="images/sliders/home-slider-image-01.png" alt="" />
                     </div>
                  </div>
               </div>
            </li>

            <!-- Slide -->
            <li>
               <div class="row">
                  <div class="twelve columns">
                     <div class="slider-text">
                        <h1>Responsive + HTML5 + CSS3<span>.</span></h1>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                        deleniti eos et accusamus. amet consequat enim elit noneas sit amet luctu. lacus sit amet luctus lobortis.
                        Aenean condimentum, lacus sit amet luctus.</p>
                     </div>
                     <div class="slider-image">
                        <img src="images/sliders/home-slider-image-02.png" alt="" />
                     </div>
                  </div>
               </div>
            </li>

         </ul>

      </div> <!-- Flexslider End-->

   </section> <!-- Intro Section End-->


	<div id="primary" class="content-area">
		<main id="main" class="site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

			the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

		</main><!-- #main -->

	</div><!-- #primary -->

<?php
get_sidebar();
get_footer();
