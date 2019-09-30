-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2019 at 10:32 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1-log
-- PHP Version: 7.3.6-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_1commentmeta`
--

CREATE TABLE `wp_1commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_1comments`
--

CREATE TABLE `wp_1comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1comments`
--

INSERT INTO `wp_1comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-26 19:15:59', '2019-08-26 16:15:59', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_1cp_calculated_fields_form_discount_codes`
--

CREATE TABLE `wp_1cp_calculated_fields_form_discount_codes` (
  `id` mediumint(9) NOT NULL,
  `form_id` mediumint(9) NOT NULL DEFAULT '1',
  `code` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `discount` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `availability` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `used` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_1cp_calculated_fields_form_posts`
--

CREATE TABLE `wp_1cp_calculated_fields_form_posts` (
  `id` mediumint(9) NOT NULL,
  `formid` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddr` varchar(41) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `notifyto` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `paypal_post` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `paid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_1cp_calculated_fields_form_revision`
--

CREATE TABLE `wp_1cp_calculated_fields_form_revision` (
  `id` mediumint(9) NOT NULL,
  `formid` mediumint(9) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `revision` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_1cp_calculated_fields_form_settings`
--

CREATE TABLE `wp_1cp_calculated_fields_form_settings` (
  `id` mediumint(9) NOT NULL,
  `form_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `form_structure` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `fp_from_email` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_destination_emails` text COLLATE utf8mb4_unicode_520_ci,
  `fp_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_inc_additional_info` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_return_page` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_message` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `fp_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_enable_copy_to_user` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_user_email_field` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cu_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_message` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `cu_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailfrommethod` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `enable_paypal_option_yes` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `enable_paypal_option_no` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_use_validation` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_is_required` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_is_email` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_datemmddyyyy` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_dateddmmyyyy` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_number` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_digits` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_max` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_min` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_submitbtn` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_previousbtn` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_nextbtn` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_all_texts` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enable_paypal` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `enable_submit` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_notiemails` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `request_cost` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_product_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_mode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_recurrent` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_recurrent_setup` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_recurrent_setup_days` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_identify_prices` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_zero_payment` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_base_amount` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_address` tinyint(4) NOT NULL DEFAULT '1',
  `cv_enable_captcha` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_width` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_height` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_chars` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_font` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_min_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_max_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise_length` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_background` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_border` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_text_enter_valid_captcha` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1cp_calculated_fields_form_settings`
--

INSERT INTO `wp_1cp_calculated_fields_form_settings` (`id`, `form_name`, `form_structure`, `fp_from_email`, `fp_destination_emails`, `fp_subject`, `fp_inc_additional_info`, `fp_return_page`, `fp_message`, `fp_emailformat`, `cu_enable_copy_to_user`, `cu_user_email_field`, `cu_subject`, `cu_message`, `cu_emailformat`, `fp_emailfrommethod`, `enable_paypal_option_yes`, `enable_paypal_option_no`, `vs_use_validation`, `vs_text_is_required`, `vs_text_is_email`, `vs_text_datemmddyyyy`, `vs_text_dateddmmyyyy`, `vs_text_number`, `vs_text_digits`, `vs_text_max`, `vs_text_min`, `vs_text_submitbtn`, `vs_text_previousbtn`, `vs_text_nextbtn`, `vs_all_texts`, `enable_paypal`, `enable_submit`, `paypal_notiemails`, `paypal_email`, `request_cost`, `paypal_product_name`, `currency`, `paypal_language`, `paypal_mode`, `paypal_recurrent`, `paypal_recurrent_setup`, `paypal_recurrent_setup_days`, `paypal_identify_prices`, `paypal_zero_payment`, `paypal_base_amount`, `paypal_address`, `cv_enable_captcha`, `cv_width`, `cv_height`, `cv_chars`, `cv_font`, `cv_min_font_size`, `cv_max_font_size`, `cv_noise`, `cv_noise_length`, `cv_background`, `cv_border`, `cv_text_enter_valid_captcha`, `cache`) VALUES
(1, 'Simple Operations', '[[{\"name\":\"fieldname5\",\"index\":0,\"title\":\"Simple Sum of two numbers\",\"userhelp\":\"\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname2\",\"index\":1,\"title\":\"First Number\",\"userhelp\":\"\",\"dformat\":\"number\",\"min\":\"\",\"max\":\"\",\"predefined\":\"3\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname6\",\"index\":2,\"title\":\"Second Number\",\"predefined\":\"2\",\"ftype\":\"fnumber\",\"userhelp\":\"\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname4\",\"index\":3,\"readonly\":true,\"title\":\"Sum\",\"predefined\":\"\",\"userhelp\":\"Note: Sum of First Number + Second Number\",\"eq\":\"fieldname2+fieldname6\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"required\":false,\"size\":\"medium\"},{\"name\":\"fieldname7\",\"index\":4,\"title\":\"Sum of selected fields\",\"userhelp\":\"\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"choices\":[\"Item A: $10\",\"Item B: $20\",\"Item C: $40\"],\"choiceSelected\":[true,true,false],\"name\":\"fieldname8\",\"index\":5,\"title\":\"Select/un-select some items\",\"ftype\":\"fcheck\",\"userhelp\":\"\",\"csslayout\":\"\",\"layout\":\"one_column\",\"required\":false},{\"name\":\"fieldname9\",\"index\":6,\"title\":\"Sum of selected items\",\"eq\":\"fieldname8\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Simple Operations\",\"description\":\"Below you can test two simple and frequent operations.\",\"formlayout\":\"top_aligned\"}]]', 'admin@localhost', 'kazanpiter@gmail.com', 'Contact from the blog...', 'true', 'http://localhost/wordpress1/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(2, 'Calculation with Dates', '[[{\"name\":\"fieldname1\",\"index\":0,\"title\":\"Check-in\",\"ftype\":\"fdate\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"size\":\"medium\",\"required\":false,\"dformat\":\"mm/dd/yyyy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"formats\":[\"mm/dd/yyyy\",\"dd/mm/yyyy\"]},{\"name\":\"fieldname2\",\"index\":1,\"title\":\"Check-out\",\"ftype\":\"fdate\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"size\":\"medium\",\"required\":false,\"dformat\":\"mm/dd/yyyy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"formats\":[\"mm/dd/yyyy\",\"dd/mm/yyyy\"]},{\"choices\":[\"Parking - $10\",\"Breakfast - $20\",\"Premium Internet Access - $3\"],\"choiceSelected\":[false,false,false],\"name\":\"fieldname3\",\"index\":2,\"title\":\"Optional Services\",\"ftype\":\"fcheck\",\"userhelp\":\"\",\"csslayout\":\"\",\"layout\":\"one_column\",\"required\":false,\"choicesVal\":[\"10\",\"20\",\"3\"]},{\"name\":\"fieldname4\",\"index\":3,\"title\":\"\",\"userhelp\":\"Note: The cost of the optional services are per each night.\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname5\",\"index\":4,\"title\":\"Total Cost\",\"eq\":\"abs(fieldname2-fieldname1) * (fieldname3+50)\",\"userhelp\":\"The formula is: (checkout - checkin) * (optionals + base rate)<br />Without the optional services the formula would be: (checkout-checkin) * base rate\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Calculation with Dates\",\"description\":\"The form below gives a quote for a stay in a hotel based in the check-in date, check-out date and some optional services. The base rate used is $50 per night.\",\"formlayout\":\"top_aligned\"}]]', 'admin@localhost', 'kazanpiter@gmail.com', 'Contact from the blog...', 'true', 'http://localhost/wordpress1/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(3, 'Ideal Weight Calculator', '[[{\"name\":\"fieldname2\",\"index\":0,\"title\":\"Height\",\"userhelp\":\"In centimeters\",\"dformat\":\"number\",\"min\":\"30\",\"max\":\"250\",\"predefined\":\"180\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"formats\":[\"digits\",\"number\"]},{\"choices\":[\"Male\",\"Female\"],\"name\":\"fieldname3\",\"index\":1,\"choiceSelected\":\"Male\",\"title\":\"Sex\",\"ftype\":\"fdropdown\",\"userhelp\":\"\",\"csslayout\":\"\",\"size\":\"medium\",\"required\":false},{\"name\":\"fieldname5\",\"index\":2,\"title\":\"Ideal Weight\",\"userhelp\":\"Formula used:<br />Men: (height - 100)*0.90<br />Woman: (height - 100)*0.85\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname4\",\"index\":3,\"readonly\":true,\"title\":\"Ideal Weight\",\"predefined\":\"\",\"userhelp\":\"Note: Based in the above data and formula\",\"eq\":\"(fieldname2-100)*(fieldname3==\'Male\'?0.90:0.85)\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"required\":false,\"size\":\"medium\"}],[{\"title\":\"Ideal Weight Calculator\",\"description\":\"This sample uses a simple formula but with a conditional rule (if male or female).  The conditional expression is built using the JavaScript ternary operator. It\'s basically as follows: <em>condition ? value_if_true : value_if_false</em>.\",\"formlayout\":\"top_aligned\"}]]', 'admin@localhost', 'kazanpiter@gmail.com', 'Contact from the blog...', 'true', 'http://localhost/wordpress1/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(4, 'Pregnancy Calculator', '[[{\"name\":\"fieldname1\",\"index\":0,\"title\":\"Enter the first day of last menstrual period\",\"ftype\":\"fdate\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"01/01/2013\",\"size\":\"medium\",\"required\":false,\"dformat\":\"mm/dd/yyyy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"formats\":[\"mm/dd/yyyy\",\"dd/mm/yyyy\"]},{\"name\":\"fieldname4\",\"index\":1,\"title\":\"\",\"userhelp\":\"Note: The dates below are approximate calculations. The real date may be slightly different.\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname5\",\"index\":2,\"title\":\"Conception Date\",\"eq\":\"cdate(fieldname1+14)\",\"userhelp\":\"\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false},{\"name\":\"fieldname6\",\"index\":3,\"title\":\"Due Date\",\"eq\":\"cdate(fieldname1+40*7)\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Pregnancy Calculator\",\"description\":\"The form below calculates the conception date and due date based in the first day of last menstrual period. The calculated values are converted to date again after the calculation.\",\"formlayout\":\"top_aligned\"}]]', 'admin@localhost', 'kazanpiter@gmail.com', 'Contact from the blog...', 'true', 'http://localhost/wordpress1/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(5, 'Lease Calculator', '[[{\"name\":\"fieldname2\",\"index\":0,\"title\":\"Loan Amount\",\"userhelp\":\"\",\"dformat\":\"number\",\"min\":\"\",\"max\":\"\",\"predefined\":\"20000\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname6\",\"index\":1,\"title\":\"Residual Value\",\"userhelp\":\"\",\"predefined\":\"10000\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"dformat\":\"number\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname7\",\"index\":2,\"predefined\":\"7.5\",\"title\":\"Interest Rate %\",\"ftype\":\"fnumber\",\"userhelp\":\"\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"dformat\":\"number\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname8\",\"index\":3,\"title\":\"Number of Months\",\"dformat\":\"number\",\"predefined\":\"36\",\"ftype\":\"fnumber\",\"userhelp\":\"\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname5\",\"index\":4,\"title\":\"\",\"userhelp\":\"Results based in the data entered above:\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname4\",\"index\":5,\"readonly\":true,\"title\":\"Monthly Payment\",\"predefined\":\"\",\"userhelp\":\"\",\"eq\":\"prec((fieldname2*fieldname7/1200*pow(1+fieldname7/1200,fieldname8)-fieldname6*fieldname7/1200)/(pow(1+fieldname7/1200,fieldname8)-1),2)\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"required\":false,\"size\":\"medium\",\"dformat\":\"number\"},{\"name\":\"fieldname9\",\"index\":6,\"title\":\"Total Payment\",\"readonly\":true,\"eq\":\"prec(fieldname4*fieldname8,2)\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\"},{\"name\":\"fieldname10\",\"index\":7,\"title\":\"Interest Amount\",\"eq\":\"prec(fieldname6+fieldname9-fieldname2,2)\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Lease Calculator\",\"description\":\"This sample uses a more complex formula for a lease calculator. It includes the \\\"power\\\" (pow) and \\\"precision\\\" (prec) functions.\",\"formlayout\":\"top_aligned\"}]]', 'admin@localhost', 'kazanpiter@gmail.com', 'Contact from the blog...', 'true', 'http://localhost/wordpress1/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_1links`
--

CREATE TABLE `wp_1links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_1options`
--

CREATE TABLE `wp_1options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1options`
--

INSERT INTO `wp_1options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress1', 'yes'),
(2, 'home', 'http://localhost/wordpress1', 'yes'),
(3, 'blogname', 'wordpress1', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kazanpiter@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wordpress1', 'yes'),
(41, 'stylesheet', 'wordpress1', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:4:\"Text\";s:4:\"text\";s:148:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor officia saepe debitis reprehenderit dolores aperiam ex vitae nulla corrupti numquam.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:10:\"Текст\";s:4:\"text\";s:148:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor officia saepe debitis reprehenderit dolores aperiam ex vitae nulla corrupti numquam.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:17:\"Address and Phone\";s:4:\"text\";s:85:\"Sparrow Studio\r\n1600 Amphitheatre Parkway\r\nMountain View, CA 94043 US\r\n(123) 456-7890\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:16:\"Email and Social\";s:4:\"text\";s:416:\"E-mail: info{@}sparrow.com\r\nTwitter: <a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/contact.html#\">@sparrow</a>\r\nFacebook: <a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/contact.html#\">sparrow FB page</a>\r\nGoogle+: <a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/contact.html#\">sparrow G+ page</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_1user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:6:\"Search\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:11:\"top-sidebar\";a:0:{}s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:6:\"text-2\";i:2;s:12:\"categories-2\";i:3;s:11:\"tag_cloud-2\";}s:9:\"sidebar-2\";a:5:{i:0;s:8:\"search-3\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:15:\"media_gallery-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1569880720;a:1:{s:22:\"cpcff_clean_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569881762;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1569903362;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1569903363;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1569928475;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569946561;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569946579;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:\"title\";s:11:\"Photostream\";s:3:\"ids\";a:1:{i:0;i:77;}s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:4:\"Tags\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566836221;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(129, 'can_compress_scripts', '0', 'no'),
(144, 'current_theme', 'wordpress1', 'yes'),
(145, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566837777;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(149, 'theme_mods_wordpress1', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-1\";i:3;s:3:\"top\";i:2;s:6:\"bottom\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:63:\"http://localhost/wordpress1/wp-content/uploads/2019/09/logo.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:80;s:3:\"url\";s:63:\"http://localhost/wordpress1/wp-content/uploads/2019/09/logo.png\";s:13:\"thumbnail_url\";s:63:\"http://localhost/wordpress1/wp-content/uploads/2019/09/logo.png\";s:6:\"height\";i:48;s:5:\"width\";i:226;}s:11:\"custom_logo\";i:82;}', 'yes'),
(180, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(219, 'recovery_mode_email_last_sent', '1567439468', 'yes'),
(249, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"kazanpiter@gmail.com\";s:7:\"version\";s:5:\"5.2.3\";s:9:\"timestamp\";i:1569490382;}', 'no'),
(250, '_site_transient_timeout_browser_cceb8a489b9bc502997cd7218008482b', '1570096780', 'no'),
(251, '_site_transient_browser_cceb8a489b9bc502997cd7218008482b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"69.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(252, '_site_transient_timeout_php_check_9b13febddec350e6146a01431df9fca2', '1570096781', 'no'),
(253, '_site_transient_php_check_9b13febddec350e6146a01431df9fca2', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(291, 'recently_activated', 'a:0:{}', 'yes'),
(297, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1569872444;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(299, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1569872443;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:10:\"wordpress1\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(300, 'CP_CALCULATEDFIELDSF_VERSION', '1.0.330', 'yes'),
(302, '_transient_codepeople_promote_banner_codepeople-calculated-fields-form', '1569621521', 'yes'),
(309, 'new_admin_email', 'kazanpiter@gmail.com', 'yes'),
(353, '_site_transient_timeout_theme_roots', '1569874241', 'no'),
(354, '_site_transient_theme_roots', 'a:5:{s:10:\"Sparrow101\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:10:\"wordpress1\";s:7:\"/themes\";}', 'no'),
(355, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1569872445;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";s:7:\"1.0.330\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/calculated-fields-form\";s:4:\"slug\";s:22:\"calculated-fields-form\";s:6:\"plugin\";s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";s:11:\"new_version\";s:7:\"1.0.331\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/calculated-fields-form/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/calculated-fields-form.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/calculated-fields-form/assets/icon-256x256.jpg?rev=1734377\";s:2:\"1x\";s:75:\"https://ps.w.org/calculated-fields-form/assets/icon-128x128.jpg?rev=1734377\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/calculated-fields-form/assets/banner-1544x500.png?rev=1734377\";s:2:\"1x\";s:77:\"https://ps.w.org/calculated-fields-form/assets/banner-772x250.png?rev=1734395\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:220:\"<p>Important note: If you are using the Professional version don&#039;t update via the WP dashboard but using your personal update link. Contact us if you need further information: http://cff.dwbooster.com/contact-us</p>\";s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(360, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_1postmeta`
--

CREATE TABLE `wp_1postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1postmeta`
--

INSERT INTO `wp_1postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(21, 7, '_edit_lock', '1569851004:1'),
(30, 10, '_edit_lock', '1569851759:1'),
(31, 12, '_edit_lock', '1567435203:1'),
(32, 14, '_edit_lock', '1569791223:1'),
(33, 16, '_edit_lock', '1569791251:1'),
(34, 18, '_edit_lock', '1567435278:1'),
(35, 20, '_edit_lock', '1569614578:1'),
(36, 22, '_menu_item_type', 'post_type'),
(37, 22, '_menu_item_menu_item_parent', '0'),
(38, 22, '_menu_item_object_id', '20'),
(39, 22, '_menu_item_object', 'page'),
(40, 22, '_menu_item_target', ''),
(41, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 22, '_menu_item_xfn', ''),
(43, 22, '_menu_item_url', ''),
(45, 23, '_menu_item_type', 'post_type'),
(46, 23, '_menu_item_menu_item_parent', '0'),
(47, 23, '_menu_item_object_id', '18'),
(48, 23, '_menu_item_object', 'page'),
(49, 23, '_menu_item_target', ''),
(50, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 23, '_menu_item_xfn', ''),
(52, 23, '_menu_item_url', ''),
(54, 24, '_menu_item_type', 'post_type'),
(55, 24, '_menu_item_menu_item_parent', '0'),
(56, 24, '_menu_item_object_id', '16'),
(57, 24, '_menu_item_object', 'page'),
(58, 24, '_menu_item_target', ''),
(59, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 24, '_menu_item_xfn', ''),
(61, 24, '_menu_item_url', ''),
(63, 25, '_menu_item_type', 'post_type'),
(64, 25, '_menu_item_menu_item_parent', '0'),
(65, 25, '_menu_item_object_id', '14'),
(66, 25, '_menu_item_object', 'page'),
(67, 25, '_menu_item_target', ''),
(68, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 25, '_menu_item_xfn', ''),
(70, 25, '_menu_item_url', ''),
(72, 26, '_menu_item_type', 'post_type'),
(73, 26, '_menu_item_menu_item_parent', '0'),
(74, 26, '_menu_item_object_id', '12'),
(75, 26, '_menu_item_object', 'page'),
(76, 26, '_menu_item_target', ''),
(77, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 26, '_menu_item_xfn', ''),
(79, 26, '_menu_item_url', ''),
(81, 27, '_menu_item_type', 'post_type'),
(82, 27, '_menu_item_menu_item_parent', '0'),
(83, 27, '_menu_item_object_id', '10'),
(84, 27, '_menu_item_object', 'page'),
(85, 27, '_menu_item_target', ''),
(86, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 27, '_menu_item_xfn', ''),
(88, 27, '_menu_item_url', ''),
(90, 28, '_menu_item_type', 'post_type'),
(91, 28, '_menu_item_menu_item_parent', '0'),
(92, 28, '_menu_item_object_id', '20'),
(93, 28, '_menu_item_object', 'page'),
(94, 28, '_menu_item_target', ''),
(95, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 28, '_menu_item_xfn', ''),
(97, 28, '_menu_item_url', ''),
(99, 29, '_menu_item_type', 'post_type'),
(100, 29, '_menu_item_menu_item_parent', '0'),
(101, 29, '_menu_item_object_id', '18'),
(102, 29, '_menu_item_object', 'page'),
(103, 29, '_menu_item_target', ''),
(104, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 29, '_menu_item_xfn', ''),
(106, 29, '_menu_item_url', ''),
(108, 30, '_menu_item_type', 'post_type'),
(109, 30, '_menu_item_menu_item_parent', '0'),
(110, 30, '_menu_item_object_id', '16'),
(111, 30, '_menu_item_object', 'page'),
(112, 30, '_menu_item_target', ''),
(113, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 30, '_menu_item_xfn', ''),
(115, 30, '_menu_item_url', ''),
(117, 31, '_menu_item_type', 'post_type'),
(118, 31, '_menu_item_menu_item_parent', '0'),
(119, 31, '_menu_item_object_id', '14'),
(120, 31, '_menu_item_object', 'page'),
(121, 31, '_menu_item_target', ''),
(122, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 31, '_menu_item_xfn', ''),
(124, 31, '_menu_item_url', ''),
(126, 32, '_menu_item_type', 'post_type'),
(127, 32, '_menu_item_menu_item_parent', '0'),
(128, 32, '_menu_item_object_id', '12'),
(129, 32, '_menu_item_object', 'page'),
(130, 32, '_menu_item_target', ''),
(131, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 32, '_menu_item_xfn', ''),
(133, 32, '_menu_item_url', ''),
(135, 33, '_menu_item_type', 'post_type'),
(136, 33, '_menu_item_menu_item_parent', '0'),
(137, 33, '_menu_item_object_id', '10'),
(138, 33, '_menu_item_object', 'page'),
(139, 33, '_menu_item_target', ''),
(140, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 33, '_menu_item_xfn', ''),
(142, 33, '_menu_item_url', ''),
(144, 34, '_menu_item_type', 'post_type'),
(145, 34, '_menu_item_menu_item_parent', '32'),
(146, 34, '_menu_item_object_id', '7'),
(147, 34, '_menu_item_object', 'page'),
(148, 34, '_menu_item_target', ''),
(149, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 34, '_menu_item_xfn', ''),
(151, 34, '_menu_item_url', ''),
(153, 35, '_menu_item_type', 'post_type'),
(154, 35, '_menu_item_menu_item_parent', '0'),
(155, 35, '_menu_item_object_id', '2'),
(156, 35, '_menu_item_object', 'page'),
(157, 35, '_menu_item_target', ''),
(158, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 35, '_menu_item_xfn', ''),
(160, 35, '_menu_item_url', ''),
(162, 36, '_menu_item_type', 'post_type'),
(163, 36, '_menu_item_menu_item_parent', '35'),
(164, 36, '_menu_item_object_id', '7'),
(165, 36, '_menu_item_object', 'page'),
(166, 36, '_menu_item_target', ''),
(167, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 36, '_menu_item_xfn', ''),
(169, 36, '_menu_item_url', ''),
(171, 37, '_edit_lock', '1569874616:1'),
(173, 39, '_edit_lock', '1569874538:1'),
(180, 39, '_thumbnail_id', '87'),
(182, 44, '_edit_lock', '1569878280:1'),
(185, 44, '_thumbnail_id', '85'),
(187, 39, '_wp_old_date', '2019-09-03'),
(190, 37, '_wp_old_date', '2019-09-03'),
(191, 48, '_edit_lock', '1569521774:1'),
(192, 49, '_edit_lock', '1569521941:1'),
(193, 50, '_edit_lock', '1569522125:1'),
(197, 54, '_wp_attached_file', '2019/09/sample-image.jpg'),
(198, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:240;s:4:\"file\";s:24:\"2019/09/sample-image.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sample-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 55, '_wp_attached_file', '2019/09/coffee-cup.jpg'),
(200, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:22:\"2019/09/coffee-cup.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"coffee-cup-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"coffee-cup-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-mythumb\";a:4:{s:4:\"file\";s:22:\"coffee-cup-479x500.jpg\";s:5:\"width\";i:479;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 57, '_edit_lock', '1569779545:1'),
(204, 58, '_edit_lock', '1569779550:1'),
(205, 59, '_edit_lock', '1569779593:1'),
(206, 60, '_edit_lock', '1569779606:1'),
(207, 61, '_edit_lock', '1569779639:1'),
(208, 62, '_edit_lock', '1569779654:1'),
(209, 63, '_edit_lock', '1569779659:1'),
(210, 64, '_edit_lock', '1569779602:1'),
(211, 65, '_edit_lock', '1569779752:1'),
(212, 66, '_edit_lock', '1569779896:1'),
(213, 67, '_edit_lock', '1569780008:1'),
(214, 68, '_edit_lock', '1569780016:1'),
(215, 69, '_edit_lock', '1569780020:1'),
(216, 70, '_edit_lock', '1569780045:1'),
(217, 71, '_edit_lock', '1569780189:1'),
(218, 72, '_edit_lock', '1569780378:1'),
(219, 73, '_edit_lock', '1569780402:1'),
(220, 75, '_edit_lock', '1569780568:1'),
(221, 76, '_edit_lock', '1569875797:1'),
(222, 77, '_wp_attached_file', '2019/09/console.jpg'),
(223, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:19:\"2019/09/console.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"console-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"console-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:19:\"console-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 76, '_thumbnail_id', '77'),
(225, 14, '_wp_page_template', 'portfolio.php'),
(226, 78, '_edit_lock', '1569875626:1'),
(227, 79, '_wp_attached_file', '2019/09/camera-man.jpg'),
(228, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:22:\"2019/09/camera-man.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"camera-man-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"camera-man-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-thumb\";a:4:{s:4:\"file\";s:22:\"camera-man-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 78, '_thumbnail_id', '79'),
(230, 78, '_wp_page_template', 'portfolio-post.php'),
(231, 76, '_wp_page_template', 'portfolio-post.php'),
(232, 80, '_wp_attached_file', '2019/09/logo.png'),
(233, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:226;s:6:\"height\";i:48;s:4:\"file\";s:16:\"2019/09/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x48.png\";s:5:\"width\";i:150;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 80, '_wp_attachment_custom_header_last_used_wordpress1', '1569848717'),
(235, 80, '_wp_attachment_is_custom_header', 'wordpress1'),
(236, 81, '_wp_trash_meta_status', 'publish'),
(237, 81, '_wp_trash_meta_time', '1569848717'),
(238, 82, '_wp_attached_file', '2019/09/cropped-logo.png'),
(239, 82, '_wp_attachment_context', 'custom-logo'),
(240, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:226;s:6:\"height\";i:48;s:4:\"file\";s:24:\"2019/09/cropped-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-150x48.png\";s:5:\"width\";i:150;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 83, '_wp_trash_meta_status', 'publish'),
(242, 83, '_wp_trash_meta_time', '1569848969'),
(243, 84, '_wp_attached_file', '2019/09/cropped-logo-1.png'),
(244, 84, '_wp_attachment_context', 'custom-logo'),
(245, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:226;s:6:\"height\";i:48;s:4:\"file\";s:26:\"2019/09/cropped-logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-1-150x48.png\";s:5:\"width\";i:150;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 85, '_wp_attached_file', '2019/09/post-image-1300x500-01.jpg'),
(247, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2019/09/post-image-1300x500-01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-01-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-01-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"post-image-1300x500-01-1024x394.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 87, '_wp_attached_file', '2019/09/post-image-1300x500-02.jpg'),
(251, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2019/09/post-image-1300x500-02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-02-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-02-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"post-image-1300x500-02-1024x394.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 89, '_wp_attached_file', '2019/09/post-image-1300x500-03.jpg'),
(254, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2019/09/post-image-1300x500-03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-03-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-03-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"post-image-1300x500-03-1024x394.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 37, '_thumbnail_id', '89'),
(257, 1, '_wp_trash_meta_status', 'publish'),
(258, 1, '_wp_trash_meta_time', '1569874774'),
(259, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(260, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(261, 92, '_edit_lock', '1569878257:1'),
(263, 92, '_wp_page_template', 'portfolio-post.php'),
(264, 93, '_edit_lock', '1569875584:1'),
(265, 94, '_wp_attached_file', '2019/09/into-the-light.jpg'),
(266, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:26:\"2019/09/into-the-light.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"into-the-light-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"into-the-light-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:26:\"into-the-light-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 93, '_thumbnail_id', '94'),
(268, 93, '_wp_page_template', 'portfolio-post.php'),
(271, 96, '_edit_lock', '1569875557:1'),
(272, 97, '_wp_attached_file', '2019/09/farmerboy.jpg'),
(273, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:21:\"2019/09/farmerboy.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"farmerboy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"farmerboy-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:21:\"farmerboy-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 96, '_thumbnail_id', '97'),
(275, 98, '_edit_lock', '1569875530:1'),
(276, 99, '_wp_attached_file', '2019/09/coffee-cup-1.jpg'),
(277, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:24:\"2019/09/coffee-cup-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"coffee-cup-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"coffee-cup-1-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:24:\"coffee-cup-1-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 98, '_thumbnail_id', '99'),
(279, 100, '_edit_lock', '1569879028:1'),
(280, 101, '_wp_attached_file', '2019/09/console-1.jpg'),
(281, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:21:\"2019/09/console-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"console-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"console-1-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:21:\"console-1-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 100, '_thumbnail_id', '101'),
(283, 100, '_wp_page_template', 'portfolio-post.php'),
(284, 98, '_wp_old_slug', '%d1%87%d0%b0%d1%88%d0%ba%d0%b0-%d0%ba%d0%be%d1%84%d0%b5'),
(285, 98, '_wp_page_template', 'portfolio-post.php'),
(286, 96, '_wp_old_slug', '%d0%bc%d0%b0%d0%bb%d1%8c%d1%87%d0%b8%d0%ba-%d1%84%d0%b5%d1%80%d0%bc%d0%b5%d1%80'),
(287, 96, '_wp_page_template', 'portfolio-post.php'),
(288, 93, '_wp_old_slug', '%d0%b2%d1%85%d0%be%d0%b6%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b2-%d1%81%d0%b2%d0%b5%d1%82'),
(289, 78, '_wp_old_slug', '%d0%b5%d0%b6%d0%b8%d0%ba%d0%b8-%d0%b2-%d0%bd%d0%b0%d1%81%d1%82%d1%83%d0%bf%d0%bb%d0%b5%d0%bd%d0%b8%d0%b8'),
(290, 76, '_wp_old_slug', '%d0%b4%d0%b5%d0%bb%d0%be-%d0%be-%d0%ba%d0%b5%d0%bd%d0%b3%d1%83%d1%80%d1%83'),
(291, 102, '_wp_attached_file', '2019/09/geometrics.jpg'),
(292, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:22:\"2019/09/geometrics.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"geometrics-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"geometrics-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:22:\"geometrics-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(293, 103, '_wp_attached_file', '2019/09/geometrics-1.jpg'),
(294, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:24:\"2019/09/geometrics-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"geometrics-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"geometrics-1-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:24:\"geometrics-1-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(295, 92, '_thumbnail_id', '103');

-- --------------------------------------------------------

--
-- Table structure for table `wp_1posts`
--

CREATE TABLE `wp_1posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1posts`
--

INSERT INTO `wp_1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-26 19:15:59', '2019-08-26 16:15:59', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2019-09-30 23:19:34', '2019-09-30 20:19:34', '', 0, 'http://localhost/wordpress1/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-26 19:15:59', '2019-08-26 16:15:59', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/wordpress1/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-08-26 19:15:59', '2019-08-26 16:15:59', '', 0, 'http://localhost/wordpress1/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-26 19:15:59', '2019-08-26 16:15:59', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost/wordpress1.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-26 19:15:59', '2019-08-26 16:15:59', '', 0, 'http://localhost/wordpress1/?page_id=3', 0, 'page', '', 0),
(7, 1, '2019-08-29 14:16:36', '2019-08-29 11:16:36', '<!-- wp:paragraph -->\n<p>sadadasdasdasdasd</p>\n<!-- /wp:paragraph -->', 'Blog post', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-09-30 16:30:44', '2019-09-30 13:30:44', '', 2, 'http://localhost/wordpress1/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-08-29 14:16:36', '2019-08-29 11:16:36', '<!-- wp:paragraph -->\n<p>sadadasdasdasdasd</p>\n<!-- /wp:paragraph -->', 'Blog post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-08-29 14:16:36', '2019-08-29 11:16:36', '', 7, 'http://localhost/wordpress1/2019/08/29/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-09-02 17:42:02', '2019-09-02 14:42:02', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Home</a></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-09-28 16:11:53', '2019-09-28 13:11:53', '', 0, 'http://localhost/wordpress1/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-09-02 17:42:02', '2019-09-02 14:42:02', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Home</a></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-09-02 17:42:02', '2019-09-02 14:42:02', '', 10, 'http://localhost/wordpress1/2019/09/02/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-09-02 17:42:24', '2019-09-02 14:42:24', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Blog</a></p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-09-02 17:42:24', '2019-09-02 14:42:24', '', 0, 'http://localhost/wordpress1/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-09-02 17:42:24', '2019-09-02 14:42:24', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Blog</a></p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-09-02 17:42:24', '2019-09-02 14:42:24', '', 12, 'http://localhost/wordpress1/2019/09/02/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-09-02 17:42:42', '2019-09-02 14:42:42', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Portfolio</a></p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-09-29 21:34:17', '2019-09-29 18:34:17', '', 0, 'http://localhost/wordpress1/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-09-02 17:42:42', '2019-09-02 14:42:42', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Portfolio</a></p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-09-02 17:42:42', '2019-09-02 14:42:42', '', 14, 'http://localhost/wordpress1/2019/09/02/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-09-02 17:43:26', '2019-09-02 14:43:26', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">About</a></p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-09-02 17:43:26', '2019-09-02 14:43:26', '', 0, 'http://localhost/wordpress1/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-09-02 17:43:26', '2019-09-02 14:43:26', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">About</a></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-02 17:43:26', '2019-09-02 14:43:26', '', 16, 'http://localhost/wordpress1/2019/09/02/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-09-02 17:43:42', '2019-09-02 14:43:42', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Contact</a></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-09-02 17:43:42', '2019-09-02 14:43:42', '', 0, 'http://localhost/wordpress1/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-09-02 17:43:42', '2019-09-02 14:43:42', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Contact</a></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-09-02 17:43:42', '2019-09-02 14:43:42', '', 18, 'http://localhost/wordpress1/2019/09/02/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-09-02 17:43:53', '2019-09-02 14:43:53', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Features</a></p>\n<!-- /wp:paragraph -->', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2019-09-02 17:43:53', '2019-09-02 14:43:53', '', 0, 'http://localhost/wordpress1/?page_id=20', 0, 'page', '', 0),
(21, 1, '2019-09-02 17:43:53', '2019-09-02 14:43:53', '<!-- wp:paragraph -->\n<p><a href=\"file:///home/rus/Documents/jaguar/app/wordpress1/wp-content/themes/Sparrow101/index.html#\">Features</a></p>\n<!-- /wp:paragraph -->', 'Features', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-09-02 17:43:53', '2019-09-02 14:43:53', '', 20, 'http://localhost/wordpress1/2019/09/02/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-09-02 17:45:11', '2019-09-02 14:45:11', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-09-02 17:53:06', '2019-09-02 14:53:06', '', 0, 'http://localhost/wordpress1/?p=22', 6, 'nav_menu_item', '', 0),
(23, 1, '2019-09-02 17:45:12', '2019-09-02 14:45:12', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-09-02 17:53:06', '2019-09-02 14:53:06', '', 0, 'http://localhost/wordpress1/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2019-09-02 17:45:12', '2019-09-02 14:45:12', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-09-02 17:53:05', '2019-09-02 14:53:05', '', 0, 'http://localhost/wordpress1/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2019-09-02 17:45:12', '2019-09-02 14:45:12', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-09-02 17:53:05', '2019-09-02 14:53:05', '', 0, 'http://localhost/wordpress1/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2019-09-02 17:45:13', '2019-09-02 14:45:13', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-09-02 17:53:05', '2019-09-02 14:53:05', '', 0, 'http://localhost/wordpress1/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2019-09-02 17:45:13', '2019-09-02 14:45:13', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-09-02 17:53:05', '2019-09-02 14:53:05', '', 0, 'http://localhost/wordpress1/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2019-09-02 17:55:47', '2019-09-02 14:55:47', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-09-02 17:55:47', '2019-09-02 14:55:47', '', 0, 'http://localhost/wordpress1/?p=28', 7, 'nav_menu_item', '', 0),
(29, 1, '2019-09-02 17:55:46', '2019-09-02 14:55:46', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-09-02 17:55:46', '2019-09-02 14:55:46', '', 0, 'http://localhost/wordpress1/?p=29', 6, 'nav_menu_item', '', 0),
(30, 1, '2019-09-02 17:55:46', '2019-09-02 14:55:46', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-09-02 17:55:46', '2019-09-02 14:55:46', '', 0, 'http://localhost/wordpress1/?p=30', 5, 'nav_menu_item', '', 0),
(31, 1, '2019-09-02 17:55:45', '2019-09-02 14:55:45', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-09-02 17:55:45', '2019-09-02 14:55:45', '', 0, 'http://localhost/wordpress1/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2019-09-02 17:55:44', '2019-09-02 14:55:44', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-09-02 17:55:44', '2019-09-02 14:55:44', '', 0, 'http://localhost/wordpress1/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2019-09-02 17:55:44', '2019-09-02 14:55:44', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-09-02 17:55:44', '2019-09-02 14:55:44', '', 0, 'http://localhost/wordpress1/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2019-09-02 17:55:45', '2019-09-02 14:55:45', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-09-02 17:55:45', '2019-09-02 14:55:45', '', 2, 'http://localhost/wordpress1/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2019-09-02 18:16:36', '2019-09-02 15:16:36', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-09-02 18:16:36', '2019-09-02 15:16:36', '', 0, 'http://localhost/wordpress1/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2019-09-02 18:16:37', '2019-09-02 15:16:37', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-09-02 18:16:37', '2019-09-02 15:16:37', '', 2, 'http://localhost/wordpress1/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2019-09-02 11:00:40', '2019-09-02 08:00:40', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->', 'Утренний лес', '', 'publish', 'open', 'open', '', 'internet1', '', '', '2019-09-30 23:18:57', '2019-09-30 20:18:57', '', 0, 'http://localhost/wordpress1/?p=37', 0, 'post', '', 0),
(38, 1, '2019-09-03 11:00:40', '2019-09-03 08:00:40', '', 'Internet1', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-09-03 11:00:40', '2019-09-03 08:00:40', '', 37, 'http://localhost/wordpress1/2019/09/03/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-09-02 11:01:11', '2019-09-02 08:01:11', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->', 'Минивен на пляже', '', 'publish', 'open', 'open', '', 'design1', '', '', '2019-09-30 23:17:56', '2019-09-30 20:17:56', '', 0, 'http://localhost/wordpress1/?p=39', 0, 'post', '', 0),
(40, 1, '2019-09-03 11:01:11', '2019-09-03 08:01:11', '', 'Design1', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-09-03 11:01:11', '2019-09-03 08:01:11', '', 39, 'http://localhost/wordpress1/2019/09/03/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-09-03 13:49:34', '2019-09-03 10:49:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->', 'Design1', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-09-03 13:49:34', '2019-09-03 10:49:34', '', 39, 'http://localhost/wordpress1/2019/09/03/39-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-09-03 14:28:51', '2019-09-03 11:28:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->', 'Design1', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-09-03 14:28:51', '2019-09-03 11:28:51', '', 39, 'http://localhost/wordpress1/2019/09/03/39-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-09-03 14:38:04', '2019-09-03 11:38:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->', 'Велосипед на дороге', '', 'publish', 'open', 'open', '', 'designs2', '', '', '2019-09-30 23:16:31', '2019-09-30 20:16:31', '', 0, 'http://localhost/wordpress1/?p=44', 0, 'post', '', 0),
(45, 1, '2019-09-03 14:38:04', '2019-09-03 11:38:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->', 'Designs2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-09-03 14:38:04', '2019-09-03 11:38:04', '', 44, 'http://localhost/wordpress1/2019/09/03/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-09-03 15:24:02', '2019-09-03 12:24:02', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->', 'Internet1', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-09-03 15:24:02', '2019-09-03 12:24:02', '', 37, 'http://localhost/wordpress1/2019/09/03/37-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-09-26 12:59:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-26 12:59:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?p=47', 0, 'post', '', 0),
(48, 1, '2019-09-26 21:16:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-26 21:16:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?p=48', 0, 'post', '', 0),
(49, 1, '2019-09-26 21:18:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-26 21:18:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?p=49', 0, 'post', '', 0),
(50, 1, '2019-09-26 21:21:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-26 21:21:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?p=50', 0, 'post', '', 0),
(52, 1, '2019-09-28 01:01:23', '2019-09-27 22:01:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[CP_CALCULATED_FIELDS id=\"1\"]</p>\n<!-- /wp:paragraph -->', 'Designs2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-09-28 01:01:23', '2019-09-27 22:01:23', '', 44, 'http://localhost/wordpress1/2019/09/28/44-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-09-28 01:02:30', '2019-09-27 22:02:30', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->', 'Designs2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-09-28 01:02:30', '2019-09-27 22:02:30', '', 44, 'http://localhost/wordpress1/2019/09/28/44-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-09-28 04:02:08', '2019-09-28 01:02:08', '', 'sample-image', '', 'inherit', 'open', 'closed', '', 'sample-image', '', '', '2019-09-28 04:02:08', '2019-09-28 01:02:08', '', 44, 'http://localhost/wordpress1/wp-content/uploads/2019/09/sample-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-09-28 04:02:52', '2019-09-28 01:02:52', '', 'coffee-cup', '', 'inherit', 'open', 'closed', '', 'coffee-cup', '', '', '2019-09-28 04:02:52', '2019-09-28 01:02:52', '', 44, 'http://localhost/wordpress1/wp-content/uploads/2019/09/coffee-cup.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-09-29 20:52:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:52:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=57', 0, 'post_type_name', '', 0),
(58, 1, '2019-09-29 20:52:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:52:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=58', 0, 'post_type_name', '', 0),
(59, 1, '2019-09-29 20:53:12', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:53:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=59', 0, 'post_type_name', '', 0),
(60, 1, '2019-09-29 20:53:26', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:53:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=60', 0, 'post_type_name', '', 0),
(61, 1, '2019-09-29 20:53:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:53:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=61', 0, 'post_type_name', '', 0),
(62, 1, '2019-09-29 20:54:13', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:54:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=62', 0, 'post_type_name', '', 0),
(63, 1, '2019-09-29 20:54:19', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:54:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=63', 0, 'post_type_name', '', 0),
(64, 1, '2019-09-29 20:55:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-29 20:55:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?p=64', 0, 'post', '', 0),
(65, 1, '2019-09-29 20:55:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:55:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=65', 0, 'post_type_name', '', 0),
(66, 1, '2019-09-29 20:58:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 20:58:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=post_type_name&p=66', 0, 'post_type_name', '', 0),
(67, 1, '2019-09-29 21:00:08', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:00:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=67', 0, 'portfolio', '', 0),
(68, 1, '2019-09-29 21:00:16', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:00:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=68', 0, 'portfolio', '', 0),
(69, 1, '2019-09-29 21:00:19', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:00:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=69', 0, 'portfolio', '', 0),
(70, 1, '2019-09-29 21:00:45', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=70', 0, 'portfolio', '', 0),
(71, 1, '2019-09-29 21:03:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:03:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=71', 0, 'portfolio', '', 0),
(72, 1, '2019-09-29 21:08:25', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:08:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=72', 0, 'portfolio', '', 0),
(73, 1, '2019-09-29 21:08:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:08:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=73', 0, 'portfolio', '', 0),
(74, 1, '2019-09-29 21:09:07', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:09:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=74', 0, 'portfolio', '', 0),
(75, 1, '2019-09-29 21:09:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-29 21:09:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&p=75', 0, 'portfolio', '', 0),
(76, 1, '2019-09-29 21:12:23', '2019-09-29 18:12:23', '<!-- wp:paragraph -->\n<p>Дело о Кенгуру.</p>\n<!-- /wp:paragraph -->', 'Дело о Кенгуру.', '', 'publish', 'closed', 'closed', '', 'animal2', '', '', '2019-09-30 23:36:29', '2019-09-30 20:36:29', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&#038;p=76', 0, 'portfolio', '', 0),
(77, 1, '2019-09-29 21:18:32', '2019-09-29 18:18:32', '', 'console', '', 'inherit', 'open', 'closed', '', 'console', '', '', '2019-09-29 21:18:32', '2019-09-29 18:18:32', '', 76, 'http://localhost/wordpress1/wp-content/uploads/2019/09/console.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-09-29 21:52:40', '2019-09-29 18:52:40', '<!-- wp:paragraph {\"backgroundColor\":\"luminous-vivid-orange\"} -->\n<p class=\"has-background has-luminous-vivid-orange-background-color\">Стратегия хищника.</p>\n<!-- /wp:paragraph -->', 'Ежики в наступлении.', '', 'publish', 'open', 'closed', '', 'animal', '', '', '2019-09-30 23:36:10', '2019-09-30 20:36:10', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&#038;p=78', 0, 'portfolio', '', 0),
(79, 1, '2019-09-29 21:53:26', '2019-09-29 18:53:26', '', 'camera-man', '', 'inherit', 'open', 'closed', '', 'camera-man', '', '', '2019-09-29 21:53:26', '2019-09-29 18:53:26', '', 78, 'http://localhost/wordpress1/wp-content/uploads/2019/09/camera-man.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-09-30 16:04:04', '2019-09-30 13:04:04', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-09-30 16:04:04', '2019-09-30 13:04:04', '', 0, 'http://localhost/wordpress1/wp-content/uploads/2019/09/logo.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_1posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(81, 1, '2019-09-30 16:05:16', '2019-09-30 13:05:16', '{\n    \"wordpress1::header_image\": {\n        \"value\": \"http://localhost/wordpress1/wp-content/uploads/2019/09/logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-30 13:05:16\"\n    },\n    \"wordpress1::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress1/wp-content/uploads/2019/09/logo.png\",\n            \"thumbnail_url\": \"http://localhost/wordpress1/wp-content/uploads/2019/09/logo.png\",\n            \"timestamp\": 1569848662989,\n            \"attachment_id\": 80,\n            \"width\": 226,\n            \"height\": 48\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-30 13:05:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0fd4535e-059a-4ea6-b27c-b1f83f66e866', '', '', '2019-09-30 16:05:16', '2019-09-30 13:05:16', '', 0, 'http://localhost/wordpress1/2019/09/30/0fd4535e-059a-4ea6-b27c-b1f83f66e866/', 0, 'customize_changeset', '', 0),
(82, 1, '2019-09-30 16:09:13', '2019-09-30 13:09:13', 'http://localhost/wordpress1/wp-content/uploads/2019/09/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2019-09-30 16:09:13', '2019-09-30 13:09:13', '', 0, 'http://localhost/wordpress1/wp-content/uploads/2019/09/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2019-09-30 16:09:29', '2019-09-30 13:09:29', '{\n    \"wordpress1::custom_logo\": {\n        \"value\": 82,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-30 13:09:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '366bfeec-ce47-413f-be20-8c44669079e1', '', '', '2019-09-30 16:09:29', '2019-09-30 13:09:29', '', 0, 'http://localhost/wordpress1/2019/09/30/366bfeec-ce47-413f-be20-8c44669079e1/', 0, 'customize_changeset', '', 0),
(84, 1, '2019-09-30 16:15:49', '2019-09-30 13:15:49', 'http://localhost/wordpress1/wp-content/uploads/2019/09/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2019-09-30 16:15:49', '2019-09-30 13:15:49', '', 0, 'http://localhost/wordpress1/wp-content/uploads/2019/09/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2019-09-30 16:46:10', '2019-09-30 13:46:10', '', 'post-image-1300x500-01', '', 'inherit', 'open', 'closed', '', 'post-image-1300x500-01', '', '', '2019-09-30 16:46:10', '2019-09-30 13:46:10', '', 44, 'http://localhost/wordpress1/wp-content/uploads/2019/09/post-image-1300x500-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2019-09-30 23:16:31', '2019-09-30 20:16:31', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->', 'Велосипед на дороге', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-09-30 23:16:31', '2019-09-30 20:16:31', '', 44, 'http://localhost/wordpress1/2019/09/30/44-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-09-30 23:17:52', '2019-09-30 20:17:52', '', 'post-image-1300x500-02', '', 'inherit', 'open', 'closed', '', 'post-image-1300x500-02', '', '', '2019-09-30 23:17:52', '2019-09-30 20:17:52', '', 39, 'http://localhost/wordpress1/wp-content/uploads/2019/09/post-image-1300x500-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-09-30 23:17:56', '2019-09-30 20:17:56', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga veniam vero, consequuntur porro illum culpa tempore quos asperiores odit dolores. Officiis harum, eius ipsa rem quisquam ipsum mollitia nam expedita.</p>\n<!-- /wp:paragraph -->', 'Минивен на пляже', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-09-30 23:17:56', '2019-09-30 20:17:56', '', 39, 'http://localhost/wordpress1/2019/09/30/39-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-09-30 23:18:52', '2019-09-30 20:18:52', '', 'post-image-1300x500-03', '', 'inherit', 'open', 'closed', '', 'post-image-1300x500-03', '', '', '2019-09-30 23:18:52', '2019-09-30 20:18:52', '', 37, 'http://localhost/wordpress1/wp-content/uploads/2019/09/post-image-1300x500-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-09-30 23:18:57', '2019-09-30 20:18:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat consequuntur laborum, ea velit atque debitis magnam, quibusdam odio, quidem, similique id assumenda repudiandae? Dignissimos tempore nesciunt assumenda excepturi? Vel magni, repudiandae labore libero ab vero autem optio est id iure distinctio, tenetur saepe voluptatem possimus esse quo quasi! Quod, delectus earum voluptate officiis amet excepturi, nemo maxime veritatis ipsam similique eos reprehenderit. Excepturi doloremque temporibus atque alias cumque sunt perspiciatis eveniet quam nam ea, reiciendis exercitationem sapiente quia consectetur rerum. Officiis blanditiis quam ratione molestiae dolore deserunt ipsum deleniti neque voluptate officia atque hic id cum aliquam, adipisci voluptatum. Recusandae excepturi corporis, quam quo soluta est itaque placeat eos nesciunt, hic provident commodi sit qui facilis ea voluptate, consectetur adipisci ut assumenda. Voluptas, ipsa distinctio cupiditate sit perferendis facilis itaque est animi eos veniam quasi laborum alias nisi ipsum velit quaerat id, corporis labore provident veritatis similique! Cupiditate ipsum adipisci a minima enim quo necessitatibus asperiores inventore nihil, sunt praesentium omnis eos? Vel perspiciatis aut et, in hic a maiores architecto fugit tempora accusamus vitae reprehenderit odio numquam, soluta recusandae? Velit quam dolores et laudantium adipisci aut doloribus rem nobis recusandae accusantium, earum, sunt a numquam nihil. Repellendus minus ad voluptates recusandae perferendis nobis unde minima illo qui. Dicta repellat corporis recusandae dolores, fugit sint illum. Rerum accusamus vero eius aspernatur, tenetur ipsum modi reiciendis. A dignissimos, eveniet deleniti corporis recusandae expedita molestiae quod, minima excepturi cupiditate accusantium alias repudiandae inventore sed. Dolores neque, soluta quia id quisquam amet officia. Distinctio atque cupiditate pariatur a est placeat debitis suscipit possimus! Quae id veniam harum natus optio eum, asperiores, a sequi velit itaque quia facilis vitae blanditiis praesentium. Officiis voluptatibus sunt, debitis dolorum voluptatum, expedita quia recusandae laudantium molestiae minus quam eligendi cum commodi consequuntur eum vitae ipsum, praesentium! Sit velit autem libero, porro illum corporis sint ut ab. Illum ratione quisquam ab quae, sit suscipit, iusto nobis. Voluptas accusantium similique consequatur, minus odit aliquid laborum, aut ipsam architecto! Odio esse iste, in delectus ratione magni expedita similique dolore, reiciendis molestiae ipsam qui dignissimos veritatis maxime fuga porro sed modi harum laborum aut perferendis quis rem soluta nobis. Perspiciatis placeat beatae nam necessitatibus aspernatur dignissimos nostrum aliquid, quo deserunt vero, voluptatibus recusandae suscipit. Dolorem sequi ut est sapiente facere explicabo magnam itaque, cumque dicta illum inventore, recusandae sunt aut veritatis vitae quae temporibus id maxime ipsa. Iusto repudiandae sapiente atque omnis.</p>\n<!-- /wp:paragraph -->', 'Утренний лес', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-09-30 23:18:57', '2019-09-30 20:18:57', '', 37, 'http://localhost/wordpress1/2019/09/30/37-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-09-30 23:19:34', '2019-09-30 20:19:34', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-09-30 23:19:34', '2019-09-30 20:19:34', '', 1, 'http://localhost/wordpress1/2019/09/30/1-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-09-30 23:26:04', '2019-09-30 20:26:04', '<!-- wp:heading {\"level\":5} -->\n<h5>Геометрические фигуры</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Геометрические фигуры', '', 'publish', 'open', 'closed', '', 'geometrics', '', '', '2019-10-01 00:09:10', '2019-09-30 21:09:10', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&#038;p=92', 0, 'portfolio', '', 0),
(93, 1, '2019-09-30 23:28:37', '2019-09-30 20:28:37', '<!-- wp:paragraph -->\n<p>Тематическая сессия</p>\n<!-- /wp:paragraph -->', 'Вхождение в свет', 'Тематическая сессия', 'publish', 'open', 'closed', '', 'ligth', '', '', '2019-09-30 23:35:27', '2019-09-30 20:35:27', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&#038;p=93', 0, 'portfolio', '', 0),
(94, 1, '2019-09-30 23:28:28', '2019-09-30 20:28:28', '', 'into-the-light', '', 'inherit', 'open', 'closed', '', 'into-the-light', '', '', '2019-09-30 23:28:28', '2019-09-30 20:28:28', '', 93, 'http://localhost/wordpress1/wp-content/uploads/2019/09/into-the-light.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-09-30 23:31:20', '2019-09-30 20:31:20', '<!-- wp:paragraph -->\n<p>Сельское хозяйство</p>\n<!-- /wp:paragraph -->', 'Мальчик фермер', '', 'publish', 'open', 'closed', '', 'farmer', '', '', '2019-09-30 23:34:56', '2019-09-30 20:34:56', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&#038;p=96', 0, 'portfolio', '', 0),
(97, 1, '2019-09-30 23:31:12', '2019-09-30 20:31:12', '', 'farmerboy', '', 'inherit', 'open', 'closed', '', 'farmerboy', '', '', '2019-09-30 23:31:12', '2019-09-30 20:31:12', '', 96, 'http://localhost/wordpress1/wp-content/uploads/2019/09/farmerboy.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-09-30 23:31:59', '2019-09-30 20:31:59', '<!-- wp:paragraph -->\n<p>Бодрись</p>\n<!-- /wp:paragraph -->', 'Чашка кофе', '', 'publish', 'open', 'closed', '', 'coffe', '', '', '2019-09-30 23:34:32', '2019-09-30 20:34:32', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&#038;p=98', 0, 'portfolio', '', 0),
(99, 1, '2019-09-30 23:31:55', '2019-09-30 20:31:55', '', 'coffee-cup', '', 'inherit', 'open', 'closed', '', 'coffee-cup-2', '', '', '2019-09-30 23:31:55', '2019-09-30 20:31:55', '', 98, 'http://localhost/wordpress1/wp-content/uploads/2019/09/coffee-cup-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-09-30 23:33:54', '2019-09-30 20:33:54', '<!-- wp:paragraph -->\n<p>Игры острова дураков</p>\n<!-- /wp:paragraph -->', 'Консольные игры', '', 'publish', 'open', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%81%d0%be%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d0%b8%d0%b3%d1%80%d1%8b', '', '', '2019-09-30 23:33:54', '2019-09-30 20:33:54', '', 0, 'http://localhost/wordpress1/?post_type=portfolio&#038;p=100', 0, 'portfolio', '', 0),
(101, 1, '2019-09-30 23:33:44', '2019-09-30 20:33:44', '', 'console', '', 'inherit', 'open', 'closed', '', 'console-2', '', '', '2019-09-30 23:33:44', '2019-09-30 20:33:44', '', 100, 'http://localhost/wordpress1/wp-content/uploads/2019/09/console-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2019-10-01 00:08:14', '2019-09-30 21:08:14', '', 'geometrics', '', 'inherit', 'open', 'closed', '', 'geometrics-2', '', '', '2019-10-01 00:08:14', '2019-09-30 21:08:14', '', 92, 'http://localhost/wordpress1/wp-content/uploads/2019/09/geometrics.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-10-01 00:09:04', '2019-09-30 21:09:04', '', 'geometrics', '', 'inherit', 'open', 'closed', '', 'geometrics-3', '', '', '2019-10-01 00:09:04', '2019-09-30 21:09:04', '', 92, 'http://localhost/wordpress1/wp-content/uploads/2019/09/geometrics-1.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_1termmeta`
--

CREATE TABLE `wp_1termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_1terms`
--

CREATE TABLE `wp_1terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1terms`
--

INSERT INTO `wp_1terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Prim', 'prim', 0),
(4, 'Bottom Menu', 'bottom-menu', 0),
(5, 'Designs', 'designs', 0),
(6, 'Internet', 'internet', 0),
(7, 'post-format-video', 'post-format-video', 0),
(8, 'Typography', 'trypography', 0),
(9, 'Photography', 'photography', 0),
(10, 'Web Development', 'web_development', 0),
(11, 'Projects', 'projects', 0),
(12, 'Other Stuff', 'other_stuff', 0),
(13, 'drupal', 'drupal', 0),
(14, 'joomla', 'joomla', 0),
(15, 'ghost', 'ghost', 0),
(16, 'wordpress', 'wordpress', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_1term_relationships`
--

CREATE TABLE `wp_1term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1term_relationships`
--

INSERT INTO `wp_1term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 4, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 3, 0),
(36, 3, 0),
(37, 6, 0),
(39, 5, 0),
(44, 5, 0),
(44, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_1term_taxonomy`
--

CREATE TABLE `wp_1term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1term_taxonomy`
--

INSERT INTO `wp_1term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 1),
(7, 7, 'post_format', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 0),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'post_tag', '', 0, 0),
(15, 15, 'post_tag', '', 0, 0),
(16, 16, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_1usermeta`
--

CREATE TABLE `wp_1usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1usermeta`
--

INSERT INTO `wp_1usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_1capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_1user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6803284b89b90e1fe6bba693e600d6980ae4e200b4d5b55849b5a470aa2f8895\";a:4:{s:10:\"expiration\";i:1570021393;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569848593;}}'),
(17, 1, 'wp_1dashboard_quick_press_last_post_id', '47'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_1user-settings', 'libraryContent=browse'),
(23, 1, 'wp_1user-settings-time', '1569878398');

-- --------------------------------------------------------

--
-- Table structure for table `wp_1users`
--

CREATE TABLE `wp_1users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_1users`
--

INSERT INTO `wp_1users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjxkUXQgmSy/2nChDXq6Vi7pKVqRmo0', 'admin', 'kazanpiter@gmail.com', '', '2019-08-26 16:15:57', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_1commentmeta`
--
ALTER TABLE `wp_1commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_1comments`
--
ALTER TABLE `wp_1comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_1cp_calculated_fields_form_discount_codes`
--
ALTER TABLE `wp_1cp_calculated_fields_form_discount_codes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_1cp_calculated_fields_form_posts`
--
ALTER TABLE `wp_1cp_calculated_fields_form_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_1cp_calculated_fields_form_revision`
--
ALTER TABLE `wp_1cp_calculated_fields_form_revision`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_1cp_calculated_fields_form_settings`
--
ALTER TABLE `wp_1cp_calculated_fields_form_settings`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_1links`
--
ALTER TABLE `wp_1links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_1options`
--
ALTER TABLE `wp_1options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_1postmeta`
--
ALTER TABLE `wp_1postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_1posts`
--
ALTER TABLE `wp_1posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_1termmeta`
--
ALTER TABLE `wp_1termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_1terms`
--
ALTER TABLE `wp_1terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_1term_relationships`
--
ALTER TABLE `wp_1term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_1term_taxonomy`
--
ALTER TABLE `wp_1term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_1usermeta`
--
ALTER TABLE `wp_1usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_1users`
--
ALTER TABLE `wp_1users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_1commentmeta`
--
ALTER TABLE `wp_1commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_1comments`
--
ALTER TABLE `wp_1comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_1cp_calculated_fields_form_discount_codes`
--
ALTER TABLE `wp_1cp_calculated_fields_form_discount_codes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_1cp_calculated_fields_form_posts`
--
ALTER TABLE `wp_1cp_calculated_fields_form_posts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_1cp_calculated_fields_form_revision`
--
ALTER TABLE `wp_1cp_calculated_fields_form_revision`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_1cp_calculated_fields_form_settings`
--
ALTER TABLE `wp_1cp_calculated_fields_form_settings`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_1links`
--
ALTER TABLE `wp_1links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_1options`
--
ALTER TABLE `wp_1options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `wp_1postmeta`
--
ALTER TABLE `wp_1postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `wp_1posts`
--
ALTER TABLE `wp_1posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wp_1termmeta`
--
ALTER TABLE `wp_1termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_1terms`
--
ALTER TABLE `wp_1terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_1term_taxonomy`
--
ALTER TABLE `wp_1term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_1usermeta`
--
ALTER TABLE `wp_1usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_1users`
--
ALTER TABLE `wp_1users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
