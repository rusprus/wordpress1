<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wordpress1' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'admin' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '1tkT30gkUI8s' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'BgrC=fS41D0(OyYanp=ZN6H}4UG[Ia]bn_jdo)wTTr)BZ sj>d~K.$Q<4] w]jC3' );
define( 'SECURE_AUTH_KEY',  '>5?A&2*{Uiw6*u4prdAO=(K{i.oZdlSy]cEUY,JNqen1E0w^u>x=Yiz,v]7^n<9{' );
define( 'LOGGED_IN_KEY',    ';fP}A|xb7~CZMKG5g?|?&)ztI{`(ib%@2]X8|L>0oAtRRSA=gs=A(W,8Y^PS[cA!' );
define( 'NONCE_KEY',        'P@4$~CfT1bt=qfE/NlR>S<L5a=f$n2mnEx43uk)_D} u| QFsT-#!]tq%j2D; IN' );
define( 'AUTH_SALT',        'N_^zPDO`gS$+IZ1?;yTU-E#o!Eg6P,Pu0&+-8>RYm*DTD7. tbVsObQ/s$_kT=e7' );
define( 'SECURE_AUTH_SALT', '{`;q&wkb)oJz6ih-Xf>Tgyn 9GsgV#u,}=wh B!)eVyl]1PdGZK$f1bn@EFr$$1*' );
define( 'LOGGED_IN_SALT',   '9Ha$#)pbbwJ[.tf,B6;fpP8PXRp[/[?gIxC)v.ESAF!M,C|idQpHhC8i?KuzN$+z' );
define( 'NONCE_SALT',       'b(Y6%[]A|:CHJ>X>R#]i;=&cg>5DDwA+DCe;cBk2:>^.U@hv6RJOlLniR$g`g%R5' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_1';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
