<?php
/**
 * wordpress1 functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package wordpress1
 */

if ( ! function_exists( 'wordpress1_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function wordpress1_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on wordpress1, use a find and replace
		 * to change 'wordpress1' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'wordpress1', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );


		add_theme_support( 'post-formats', array( 'video', 'aside' ) );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );


		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails',['post', 'portfolio'] );

		add_image_size( 'post_thumb', 1300, 500,  true);


		// удаляет H2 из шаблона пагинации
		add_filter('navigation_markup_template', 'my_navigation_template', 10, 2 );
		function my_navigation_template( $template, $class ){
			/*
			Вид базового шаблона:
			<nav class="navigation %1$s" role="navigation">
				<h2 class="screen-reader-text">%2$s</h2>
				<div class="nav-links">%3$s</div>
			</nav>
			*/

			return '
			<nav class="navigation %1$s" role="navigation">
				<div class="nav-links">%3$s</div>
			</nav>    
			';
		}

		// выводим пагинацию
		the_posts_pagination( array(
			'end_size' => 2,
		) ); 

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'wordpress1' ),
			'top' => 'Top Menu',
			'bottom' => 'Bottom Menu',
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'wordpress1_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'wordpress1_setup' );


/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function wordpress1_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'wordpress1_content_width', 640 );
}
add_action( 'after_setup_theme', 'wordpress1_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function wordpress1_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'wordpress1' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'wordpress1' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar2', 'wordpress1' ),
		'id'            => 'sidebar-2',
		'description'   => 'Второй сайдбар',
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );
}
add_action( 'widgets_init', 'wordpress1_widgets_init' );



/*function register_my_widgets(){
	register_sidebar( array(
		'name'          => 'Left Sidebar',
		'id'            => 'left_sidebar'
		'description'   => 'Описание нашего сайдбара',
	
	) );
}
add_action( 'widgets_init', 'register_my_widgets' );*/

/**
 * Enqueue scripts and styles.
 */

function wordpress1_styles() {
	wp_enqueue_style( 'style', get_stylesheet_uri() );
	wp_enqueue_style( 'default', get_template_directory_uri() . '/assets/css/default.css' );
	wp_enqueue_style( 'fonts', get_template_directory_uri() . '/assets/css/fonts.css' );
	wp_enqueue_style( 'layout', get_template_directory_uri() . '/assets/css/layout.css' );
	wp_enqueue_style( 'media-queries', get_template_directory_uri() . '/assets/css/media-queries.css' );
	





// 	wp_enqueue_style( 'wordpress1-style', get_stylesheet_uri() );

// 	wp_enqueue_script( 'wordpress1-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

// 	wp_enqueue_script( 'wordpress1-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

// 	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
// 		wp_enqueue_script( 'comment-reply' );
// 	}
}

add_action( 'wp_head', 'wp_enqueue_scripts', 1 );
add_action( 'wp_enqueue_scripts', 'wordpress1_styles' );


function wordpress1_scripts() {
		wp_deregister_script('jquery');
	wp_register_script('jquery', '//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js');
	wp_enqueue_script('jquery');
	wp_enqueue_script( 'flexslider', get_template_directory_uri() . '/assets/js/jquery.flexslider.js',['jquery'], null, true);
	wp_enqueue_script( 'doubletaptogo', get_template_directory_uri() . '/assets/js/doubletaptogo.js',['jquery'], null, true);

	wp_enqueue_script( 'init', get_template_directory_uri() . '/assets/js/init.js',['jquery'], null, true);
	wp_enqueue_script( 'modernizr', get_template_directory_uri() . '/assets/js/modernizr.js', null, null, false );
	
	


}

add_action( 'wp_footer', 'wordpress1_scripts', 1 );

/*
	Menu registration
*/

/*add_action( 'after_setup_theme', 'theme_register_nav_menu' );

function theme_register_nav_menu() {
	register_nav_menus( ['top' => 'Top Menu',
	'bottom' => 'Bottom Menu'] );
}*/

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

add_action( 'init', 'register_post_types' );
function register_post_types(){
	register_post_type('portfolio', array(
		'label'  => null,
		'labels' => array(
			'name'               => 'Порфолио', // основное название для типа записи
			'singular_name'      => 'Порфолио', // название для одной записи этого типа
			'add_new'            => 'Добавить работу', // для добавления новой записи
			'add_new_item'       => 'Добавление работы', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редактирование работы', // для редактирования типа записи
			'new_item'           => 'Новая работа', // текст новой записи
			'view_item'          => 'Смотреть работу', // для просмотра записи этого типа.
			'search_items'       => 'Искать работу', // для поиска по этим типам записи
			'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Портфолио', // название меню
		),
		'description'         => 'Наши работы',
		'public'              => true,
		'publicly_queryable'  => true, // зависит от public
		'exclude_from_search' => true, // зависит от public
		'show_ui'             => true, // зависит от public
		'show_in_nav_menus'   => true, // зависит от public
		'show_in_menu'        => true, // показывать ли в меню адмнки
		'show_in_admin_bar'   => true, // зависит от show_in_menu
		'show_in_rest'        => true, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => 4,
		'menu_icon'           => null, 
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor', 'title','editor','author','thumbnail','excerpt','post-formats', 'comments'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => array(),
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	) );
}