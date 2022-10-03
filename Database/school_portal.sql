-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2022 at 03:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_codes`
--

CREATE TABLE `attendance_codes` (
  `attendance_codes_id` int(8) UNSIGNED NOT NULL,
  `attendance_codes_desc` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_codes`
--

INSERT INTO `attendance_codes` (`attendance_codes_id`, `attendance_codes_desc`) VALUES
(1, 'No Note from Parent'),
(2, 'Fees Unpaid - Driven'),
(3, 'Driven Home - Cultism/Drug'),
(4, 'Improperly Dressed'),
(5, 'Unavoidably Absent'),
(6, 'Sent home for Misconduct'),
(7, 'Surjery'),
(8, 'Travel - Field Trip Excused '),
(9, 'Driven for Lateness'),
(10, 'Parents Traveled'),
(11, 'Note From Parent demanding child'),
(12, 'Physical Deformity'),
(13, 'Funeral'),
(14, 'Sickness'),
(15, 'Starting Home Schooling'),
(16, 'ISS Other '),
(17, 'Ran away from School');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_history`
--

CREATE TABLE `attendance_history` (
  `attendance_history_id` int(10) UNSIGNED NOT NULL,
  `attendance_history_student` int(8) UNSIGNED DEFAULT NULL,
  `attendance_history_school` int(8) UNSIGNED DEFAULT NULL,
  `attendance_history_term` int(3) NOT NULL,
  `attendance_history_grade` int(3) NOT NULL,
  `attendance_history_year` int(8) UNSIGNED DEFAULT NULL,
  `attendance_history_date` varchar(30) DEFAULT NULL,
  `attendance_history_code` int(8) UNSIGNED DEFAULT NULL,
  `attendance_history_notes` tinytext DEFAULT NULL,
  `attendance_history_user` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_history`
--

INSERT INTO `attendance_history` (`attendance_history_id`, `attendance_history_student`, `attendance_history_school`, `attendance_history_term`, `attendance_history_grade`, `attendance_history_year`, `attendance_history_date`, `attendance_history_code`, `attendance_history_notes`, `attendance_history_user`) VALUES
(1, 11, 0, 1, 15, 1, '02/10/2015', 13, 'went for fathers  funeral', 8),
(2, 17, 0, 2, 16, 1, '05/08/2017', 4, 'Was driven home for Improper dressing.', 8),
(3, 10, 0, 2, 15, 1, '06/08/2017', 1, 'Was warned previously and no note from the parent', 8);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(8) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `location` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `sort`, `name`, `status`, `location`) VALUES
(1, '', 'First Bank PLC', 1, 'NG'),
(4, '', 'Guaranty Trust Bank', 1, 'NG'),
(5, '', 'Union Bank of Nigeria', 1, 'NG'),
(6, '', 'Afri Bank', 1, 'NG'),
(7, '', 'Sterling Bank', 1, 'NG'),
(8, '', 'EcoBank Nigeria PLC', 1, 'NG'),
(9, '', 'United Bank for Africa', 1, 'NG'),
(10, '', 'WEMA Bank', 1, 'NG'),
(11, '', 'Access Bank', 1, 'NG'),
(12, '', 'Unity Bank', 1, 'NG'),
(13, '', 'First City Monument Bank', 1, 'NG'),
(14, '', 'Heritage Bank', 1, 'NG'),
(15, '', 'Keystone Bank', 1, 'NG'),
(16, '', 'Zenith Bank', 1, 'NG'),
(17, '', 'Fidelity Bank', 1, 'NG'),
(18, '', 'Diamond Bank', 1, 'NG'),
(19, '', 'Skye Bank', 1, 'NG'),
(20, '', 'Stanbic IBTC Bank', 1, 'NG'),
(21, '', 'Citi Bank', 1, 'NG'),
(22, '', 'Standard Chartered Bank PLC', 1, 'NG');

-- --------------------------------------------------------

--
-- Table structure for table `bulk_sms_store`
--

CREATE TABLE `bulk_sms_store` (
  `id` int(9) NOT NULL,
  `category` varchar(20) NOT NULL,
  `others` varchar(50) NOT NULL,
  `message_body` text NOT NULL,
  `date_sent` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulk_sms_store`
--

INSERT INTO `bulk_sms_store` (`id`, `category`, `others`, `message_body`, `date_sent`) VALUES
(1, 'Single Message', 'Sender ID: HTN School', 'Hello Kelvin', '04-09-2015');

-- --------------------------------------------------------

--
-- Table structure for table `classnote`
--

CREATE TABLE `classnote` (
  `classnote_id` bigint(20) NOT NULL,
  `teacher_id` int(8) DEFAULT NULL,
  `session` int(3) NOT NULL,
  `term` int(3) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subject` int(3) NOT NULL,
  `grade` int(3) NOT NULL,
  `date_uploaded` varchar(30) NOT NULL,
  `classnote_file` text NOT NULL,
  `added_info` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classnote`
--

INSERT INTO `classnote` (`classnote_id`, `teacher_id`, `session`, `term`, `name`, `subject`, `grade`, `date_uploaded`, `classnote_file`, `added_info`) VALUES
(2, 8, 1, 2, 'Project File for Racheal', 22, 15, '05/08/2017', 'cw_staff_aed50f0374_Project - Rachael.docx', 'Download the note and call me');

-- --------------------------------------------------------

--
-- Table structure for table `cognitive_domain`
--

CREATE TABLE `cognitive_domain` (
  `id` int(3) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cognitive_domain`
--

INSERT INTO `cognitive_domain` (`id`, `value`) VALUES
(1, 'Neatness'),
(2, 'Puntuality'),
(3, 'Attitude to Property'),
(4, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` char(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua and Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Aland Islands'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia and Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BR', 'Brazil'),
('BS', 'Bahamas'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Islands'),
('CD', 'Democratic Republic of the Congo'),
('CF', 'Central African Republic'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Cote D\'Ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CS', 'Serbia and Montenegro'),
('CU', 'Cuba'),
('CV', 'Cape Verde'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('EU', 'European Union'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands'),
('FM', 'Federated States of Micronesia'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Great Britain'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GF', 'French Guiana'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'S. Georgia and S. Sandwich Islands'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island and McDonald Islands'),
('HN', 'Honduras'),
('HR', 'Croatia (Hrvatska)'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IN', 'India'),
('IO', 'British Indian Ocean Territory'),
('IQ', 'Iraq'),
('IR', 'Iran'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts and Nevis'),
('KP', 'Korea (North)'),
('KR', 'Korea (South)'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Laos'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NE', 'Niger'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'New Zealand (Aotearoa)'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre and Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territory'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SD', 'Sudan'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard and Jan Mayen'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('ST', 'Sao Tome and Principe'),
('SU', 'USSR (former)'),
('SV', 'El Salvador'),
('SY', 'Syria'),
('SZ', 'Swaziland'),
('TC', 'Turks and Caicos Islands'),
('TD', 'Chad'),
('TF', 'French Southern Territories'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TP', 'East Timor'),
('TR', 'Turkey'),
('TT', 'Trinidad and Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan'),
('TZ', 'Tanzania'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UK', 'United Kingdom'),
('UM', 'United States Minor Outlying Islands'),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VA', 'Vatican City State'),
('VC', 'Saint Vincent and the Grenadines'),
('VE', 'Venezuela'),
('VG', 'Virgin Islands (UK)'),
('VI', 'Virgin Islands (US)'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis and Futuna'),
('WS', 'Samoa'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZR', 'Zaire'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `discipline_history`
--

CREATE TABLE `discipline_history` (
  `discipline_history_id` int(10) UNSIGNED NOT NULL,
  `discipline_history_student` int(8) UNSIGNED DEFAULT NULL,
  `discipline_history_school` tinyint(1) UNSIGNED DEFAULT NULL,
  `discipline_history_term` tinyint(1) NOT NULL,
  `discipline_history_grade` int(2) NOT NULL,
  `discipline_history_year` int(3) UNSIGNED DEFAULT NULL,
  `discipline_history_code` int(3) UNSIGNED DEFAULT NULL,
  `discipline_history_date` varchar(30) DEFAULT NULL,
  `discipline_history_sdate` varchar(30) DEFAULT NULL,
  `discipline_history_edate` varchar(30) DEFAULT NULL,
  `discipline_history_action` varchar(50) DEFAULT NULL,
  `discipline_history_notes` tinytext DEFAULT NULL,
  `discipline_history_reporter` varchar(40) DEFAULT NULL,
  `discipline_history_user` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discipline_history`
--

INSERT INTO `discipline_history` (`discipline_history_id`, `discipline_history_student`, `discipline_history_school`, `discipline_history_term`, `discipline_history_grade`, `discipline_history_year`, `discipline_history_code`, `discipline_history_date`, `discipline_history_sdate`, `discipline_history_edate`, `discipline_history_action`, `discipline_history_notes`, `discipline_history_reporter`, `discipline_history_user`) VALUES
(1, 11, 0, 1, 15, 1, 10, '11/09/2015', '10/08/2015', '10/08/2015', 'Sent Home', 'He came late for school at about 10:23am', 'Gateman', 8),
(2, 17, 0, 2, 16, 1, 14, '05/08/2017', '10/08/2017', '10/08/2017', 'Flogged 6 Strokes', 'Could not have a hand in the kids marriage', 'Gateman', 8),
(3, 11, 0, 2, 15, 1, 7, '09/03/2018', '09/03/2018', '09/03/2018', 'He was flogged 18 stokes', 'Kbuids biv sducbksud  usdgjsdbcsd', 'Cleaner', 8);

-- --------------------------------------------------------

--
-- Table structure for table `ethnicity`
--

CREATE TABLE `ethnicity` (
  `ethnicity_id` int(3) NOT NULL,
  `ethnicity_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ethnicity`
--

INSERT INTO `ethnicity` (`ethnicity_id`, `ethnicity_desc`) VALUES
(1, 'Abua'),
(2, 'Andoni'),
(3, 'Badenchi'),
(4, 'Efik'),
(5, 'Esako'),
(6, 'Esan(Ishan)'),
(7, 'Fulani'),
(8, 'Hausa'),
(9, 'Ibani'),
(10, 'Ibibio (Ibeno)'),
(11, 'Idoma'),
(12, 'Igbo'),
(13, 'Igede'),
(14, 'Ijaw'),
(15, 'Ijebu'),
(16, 'Ijesa'),
(17, 'Ikwere'),
(18, 'Isekiri'),
(19, 'Isoko'),
(20, 'Junkun'),
(21, 'kafa'),
(22, 'Kalabari'),
(23, 'kanuri'),
(24, 'Kwale'),
(25, 'Mbe'),
(26, 'Nupe'),
(27, 'Ogoni'),
(28, 'Okpe'),
(29, 'Okriki'),
(30, 'Opobo'),
(31, 'Owan'),
(32, 'TIV'),
(33, 'Urhobo'),
(34, 'Yewa'),
(35, 'Yoruba'),
(36, 'Ughelli'),
(37, 'Eggon'),
(38, 'Agbo'),
(39, 'Akaju-Ndem'),
(40, 'Amo'),
(41, 'Anaguta'),
(42, 'Bachama'),
(43, 'Banso (Panso)'),
(44, 'Baruba (Barba)'),
(45, 'Bassa'),
(46, 'Baushi'),
(47, 'Bette'),
(48, 'Bini'),
(49, 'Bobua'),
(50, 'Bunu'),
(51, 'Buru'),
(52, 'Buli (Buji)'),
(53, 'Challa'),
(54, 'Chibok (Chibbak)'),
(55, 'Daba'),
(56, 'Dakarkari'),
(57, 'Degema'),
(58, 'Deno (Denawa)'),
(59, 'Diba'),
(60, 'Ebu'),
(61, 'Egun'),
(62, 'Ejagham'),
(63, 'Etsako'),
(64, 'Etuno'),
(65, 'Gade'),
(66, 'Gombi'),
(67, 'Gonia'),
(68, 'Gude (Gudu)'),
(69, 'Gwa (Gurawa)'),
(70, 'Gwom'),
(71, 'Jaku (Jara)'),
(72, 'Kadara (Kafanchan)'),
(73, 'Kajuru (Kajurawa)'),
(74, 'Kantana'),
(75, 'Kariya'),
(76, 'Kenern (Koenoem)'),
(77, 'Kiballo (Kiwollo)'),
(78, 'Kugama'),
(79, 'Kulere (Kaler)'),
(80, 'Kwaro'),
(81, 'Limono'),
(82, 'Mambilla'),
(83, 'Mama'),
(84, 'Mbembe'),
(85, 'Mbula'),
(86, 'Mbum'),
(87, 'Miango'),
(88, 'Miya (Miyawa)'),
(89, 'Nunku'),
(90, 'Njayi'),
(91, 'Ngamo'),
(92, 'Mushere'),
(93, 'Ogori'),
(94, 'Olulumo'),
(95, 'Owan'),
(96, 'Oworo (Owe)'),
(97, 'Pkanzom (Poll)'),
(98, 'Polchi Habe'),
(99, 'Rindire (Rendre)'),
(100, 'Rubu'),
(101, 'Rumada (Rumaya)'),
(102, 'Segidi (Sigidawa)'),
(103, 'Shomo'),
(104, 'Shuwa'),
(105, 'Sura'),
(106, 'Teshena (Teshenawa)'),
(107, 'Tula'),
(108, 'Zzz - Not Listed');

-- --------------------------------------------------------

--
-- Table structure for table `exams_types`
--

CREATE TABLE `exams_types` (
  `exams_types_id` int(11) UNSIGNED NOT NULL,
  `exams_types_desc` varchar(50) DEFAULT NULL COMMENT 'good boy'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams_types`
--

INSERT INTO `exams_types` (`exams_types_id`, `exams_types_desc`) VALUES
(1, 'Examination'),
(7, 'JAMB'),
(6, 'NECO'),
(2, 'Test 1'),
(3, 'Test 2'),
(5, 'WAEC');

-- --------------------------------------------------------

--
-- Table structure for table `forum_answer`
--

CREATE TABLE `forum_answer` (
  `question_id` int(4) NOT NULL DEFAULT 0,
  `a_id` int(4) NOT NULL DEFAULT 0,
  `a_name` varchar(65) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `a_email` varchar(65) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `a_answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `a_datetime` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '03/11/10 20:12:16'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_question`
--

CREATE TABLE `forum_question` (
  `id` int(4) NOT NULL,
  `topic` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(65) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(65) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `datetime` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `view` int(4) NOT NULL DEFAULT 0,
  `reply` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_mailing`
--

CREATE TABLE `general_mailing` (
  `id` int(8) NOT NULL,
  `from` varchar(40) NOT NULL,
  `from_cat` varchar(20) NOT NULL,
  `to` varchar(40) NOT NULL,
  `to_cat` varchar(20) NOT NULL,
  `head` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `from_starred` tinyint(1) NOT NULL,
  `to_starred` tinyint(1) NOT NULL,
  `time` varchar(30) NOT NULL,
  `attachment` text NOT NULL,
  `from_status` tinyint(1) NOT NULL,
  `to_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_mailing`
--

INSERT INTO `general_mailing` (`id`, `from`, `from_cat`, `to`, `to_cat`, `head`, `message`, `from_starred`, `to_starred`, `time`, `attachment`, `from_status`, `to_status`) VALUES
(1, 'staff', 'staff', 'student', 'student', 'Hello', 'I saw a message that you sent to me when I was in thehj ejbdhcivguig dwdjbdde uibiudcvuwdcwc', 1, 1, '03/02/2016', 'Case Study.docx', 1, 0),
(2, 'student', 'student', 'staff', 'staff', 'This you see my reply now', 'This you see my reply now, just commenting on your message anyway', 1, 1, '18/02/2016', '', 3, 0),
(3, 'student', 'student', 'staff', 'staff', 'Hello', 'Check the attachment and download the file at once', 1, 1, '03/08/2017', 'facebook.gif', 1, 2),
(4, 'neweyo', 'student', 'eyo', 'student', 'Hello, Testing', 'Doing great', 1, 1, '18/09/2022', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `generations`
--

CREATE TABLE `generations` (
  `generations_id` int(8) UNSIGNED NOT NULL,
  `generations_desc` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generations`
--

INSERT INTO `generations` (`generations_id`, `generations_desc`) VALUES
(1, 'III'),
(2, 'Sr.'),
(3, 'Jr.'),
(4, '--');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `grades_id` int(8) UNSIGNED NOT NULL,
  `grades_desc` varchar(20) NOT NULL DEFAULT '',
  `grades_active` tinyint(1) NOT NULL DEFAULT 1,
  `grades_domain` int(3) NOT NULL COMMENT 'connnect to grade_domain'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='static table';

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grades_id`, `grades_desc`, `grades_active`, `grades_domain`) VALUES
(1, 'PRE NURSERY', 1, 1),
(2, 'NURSERY 1', 1, 2),
(3, 'NURSERY 2', 1, 2),
(4, 'NURSERY 3', 1, 2),
(5, 'PRIMARY 1 ', 1, 3),
(6, 'GRADE 2', 1, 3),
(7, 'GRADE 3', 1, 3),
(8, 'GRADE 4', 1, 3),
(9, 'GRADE 5', 1, 3),
(10, 'GRADE 6', 1, 3),
(11, 'GRADE 7', 1, 4),
(12, 'GRADE 8', 1, 4),
(13, 'GRADE 9', 1, 4),
(14, 'GRADE 10', 1, 5),
(15, 'GRADE 11', 1, 5),
(16, 'GRADE 12', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `grades_domain`
--

CREATE TABLE `grades_domain` (
  `grades_domain_id` tinyint(1) NOT NULL,
  `grades_domain_desc` varchar(20) NOT NULL,
  `grades_domain_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades_domain`
--

INSERT INTO `grades_domain` (`grades_domain_id`, `grades_domain_desc`, `grades_domain_status`) VALUES
(4, 'Junior Secondary', 1),
(2, 'Nursery', 1),
(1, 'Pre Nursery', 1),
(3, 'Primary', 1),
(5, 'Senior Secondary', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grade_history_primary`
--

CREATE TABLE `grade_history_primary` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_type` tinyint(2) NOT NULL,
  `student` int(8) NOT NULL,
  `year` int(3) NOT NULL,
  `quarter` int(3) NOT NULL COMMENT 'Semester or term',
  `course_code` int(2) NOT NULL,
  `ca_score1` int(2) NOT NULL,
  `ca_score2` int(2) NOT NULL,
  `exam_score` int(2) NOT NULL,
  `level_taken` int(3) NOT NULL,
  `date` varchar(30) NOT NULL,
  `aprove` int(1) NOT NULL COMMENT 'is it aproved by form master',
  `notes` varchar(50) NOT NULL,
  `user` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='In this table, grade_history_primary_user is the Teacher name.';

--
-- Dumping data for table `grade_history_primary`
--

INSERT INTO `grade_history_primary` (`id`, `exam_type`, `student`, `year`, `quarter`, `course_code`, `ca_score1`, `ca_score2`, `exam_score`, `level_taken`, `date`, `aprove`, `notes`, `user`) VALUES
(1, 1, 9, 1, 1, 4, 20, 15, 30, 15, '12/12/2015', 1, 'Great Performance', 8),
(2, 1, 10, 1, 1, 4, 20, 15, 30, 15, '12/12/2015', 1, 'Great Performance', 8),
(3, 1, 8, 1, 1, 4, 20, 14, 50, 15, '12/12/2015', 1, 'Great Performance', 8),
(4, 1, 11, 1, 1, 4, 20, 15, 60, 15, '12/12/2015', 1, 'Great Performance', 8),
(5, 1, 9, 1, 1, 8, 20, 20, 60, 15, '12/12/2015', 1, 'Great Performance', 8),
(6, 1, 10, 1, 1, 8, 20, 20, 50, 15, '12/12/2015', 1, 'Great Performance', 8),
(7, 1, 8, 1, 1, 8, 15, 15, 45, 15, '12/12/2015', 1, 'Great Performance', 8),
(8, 1, 11, 1, 1, 8, 15, 15, 40, 15, '12/12/2015', 1, 'Great Performance', 8),
(9, 1, 9, 1, 1, 28, 12, 16, 40, 15, '13/12/2015', 1, 'Nice performance', 8),
(10, 1, 10, 1, 1, 28, 20, 12, 44, 15, '13/12/2015', 1, 'Nice performance', 8),
(11, 1, 8, 1, 1, 28, 19, 18, 44, 15, '13/12/2015', 1, 'Nice performance', 8),
(12, 1, 11, 1, 1, 28, 20, 20, 37, 15, '13/12/2015', 1, 'Nice performance', 8),
(13, 1, 9, 1, 1, 19, 12, 12, 30, 15, '13/12/2015', 1, 'Nice performance', 8),
(14, 1, 10, 1, 1, 19, 12, 12, 30, 15, '13/12/2015', 1, 'Nice performance', 8),
(15, 1, 8, 1, 1, 19, 19, 20, 40, 15, '13/12/2015', 1, 'Nice performance', 8),
(16, 1, 11, 1, 1, 19, 18, 17, 40, 15, '13/12/2015', 1, 'Nice performance', 8),
(17, 1, 9, 1, 1, 17, 13, 16, 36, 15, '13/12/2015', 1, 'Nice Performance', 8),
(18, 1, 10, 1, 1, 17, 16, 19, 44, 15, '13/12/2015', 1, 'Nice Performance', 8),
(19, 1, 8, 1, 1, 17, 12, 16, 30, 15, '13/12/2015', 1, 'Nice Performance. Keep it up.', 8),
(20, 1, 11, 1, 1, 17, 19, 20, 47, 15, '13/12/2015', 1, 'Nice Performance', 8),
(33, 1, 9, 1, 2, 6, 10, 14, 33, 15, '07/08/2017', 1, 'Very Good. Keep it up', 8),
(34, 1, 10, 1, 2, 6, 18, 18, 40, 15, '07/08/2017', 1, 'Very Good. Keep it up', 8),
(35, 1, 8, 1, 2, 6, 18, 16, 60, 15, '07/08/2017', 1, 'Very Good. Keep it up', 8),
(36, 1, 11, 1, 2, 6, 20, 20, 59, 15, '07/08/2017', 1, 'Very Good. Keep it up', 8),
(37, 1, 9, 1, 2, 4, 20, 12, 60, 15, '07/08/2017', 1, 'Excellent Result', 8),
(38, 1, 10, 1, 2, 4, 17, 11, 40, 15, '07/08/2017', 1, 'Excellent Result', 8),
(39, 1, 8, 1, 2, 4, 18, 0, 40, 15, '07/08/2017', 1, 'Excellent Result', 8),
(40, 1, 11, 1, 2, 4, 10, 12, 30, 15, '07/08/2017', 1, 'Excellent Result', 8),
(41, 1, 9, 1, 1, 26, 17, 11, 33, 15, '07/08/2017', 1, 'Good', 8),
(42, 1, 10, 1, 1, 26, 17, 11, 50, 15, '07/08/2017', 1, 'Good', 8),
(43, 1, 8, 1, 1, 26, 10, 14, 59, 15, '07/08/2017', 1, 'Good', 8),
(44, 1, 11, 1, 1, 26, 19, 0, 33, 15, '07/08/2017', 1, 'Good', 8),
(45, 1, 9, 1, 1, 7, 20, 20, 40, 15, '07/08/2017', 1, 'Good', 8),
(46, 1, 10, 1, 1, 7, 20, 20, 40, 15, '07/08/2017', 1, 'Good', 8),
(47, 1, 8, 1, 1, 7, 12, 18, 48, 15, '07/08/2017', 1, 'Good', 8),
(48, 1, 11, 1, 1, 7, 15, 14, 42, 15, '07/08/2017', 1, 'Good', 8),
(49, 1, 9, 1, 1, 6, 10, 14, 14, 15, '07/08/2017', 1, 'Good', 8),
(50, 1, 10, 1, 1, 6, 10, 17, 22, 15, '07/08/2017', 1, 'Poor', 8),
(51, 1, 8, 1, 1, 6, 10, 12, 33, 15, '07/08/2017', 1, 'Poor', 8),
(52, 1, 11, 1, 1, 6, 15, 14, 58, 15, '07/08/2017', 1, 'Excellent', 8),
(56, 1, 9, 1, 1, 32, 20, 18, 33, 15, '09/08/2017', 1, 'She can do better', 8),
(57, 1, 10, 1, 1, 32, 16, 15, 40, 15, '09/08/2017', 1, 'poor', 8),
(58, 1, 8, 1, 1, 32, 20, 20, 40, 15, '09/08/2017', 1, 'poor', 8),
(59, 1, 11, 1, 1, 32, 20, 18, 15, 15, '09/08/2017', 1, 'Not good', 8),
(60, 1, 10, 1, 2, 17, 10, 20, 20, 15, '09/03/2018', 1, 'Nice Job', 8),
(61, 1, 8, 1, 2, 17, 10, 10, 30, 15, '09/03/2018', 1, 'Nice Work', 8),
(62, 1, 11, 1, 2, 17, 20, 20, 59, 15, '09/03/2018', 1, 'Need to work harder', 8),
(63, 1, 9, 1, 2, 19, 10, 10, 30, 15, '09/03/2018', 1, 'Nice Job', 8),
(64, 1, 10, 1, 2, 19, 12, 19, 34, 15, '09/03/2018', 1, 'Nice Job', 8),
(65, 1, 8, 1, 2, 19, 10, 20, 30, 15, '09/03/2018', 1, 'Nice Job', 8),
(66, 1, 11, 1, 2, 19, 5, 5, 20, 15, '09/03/2018', 1, 'Poor Job', 8);

-- --------------------------------------------------------

--
-- Table structure for table `grade_subjects`
--

CREATE TABLE `grade_subjects` (
  `grade_subject_id` int(8) NOT NULL,
  `grade_subject_desc` varchar(50) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL,
  `grade` int(3) NOT NULL,
  `describe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='storing subject names';

--
-- Dumping data for table `grade_subjects`
--

INSERT INTO `grade_subjects` (`grade_subject_id`, `grade_subject_desc`, `code`, `grade`, `describe`) VALUES
(2, 'Social Studies', 'Sos', 0, ''),
(3, 'Use of Library', 'Lib', 0, ''),
(4, 'English', 'Eng', 0, ''),
(5, 'Business Studies', 'Bstd', 0, ''),
(6, 'Chemistry', 'Chem', 0, ''),
(7, 'Physics', 'Phy', 0, ''),
(8, 'Mathematics', 'Math', 0, ''),
(9, 'Physical and Health Education', 'Phe', 0, ''),
(10, 'Home Economics', 'H.E', 0, ''),
(11, 'Geography', 'Geo', 0, ''),
(12, 'Music', 'Music', 0, ''),
(13, 'Economics', 'Econs', 0, ''),
(17, 'Data Processing/ICT', 'ICT', 0, ''),
(19, 'Biology', 'Bio', 0, ''),
(20, 'Literature', 'Lit', 0, ''),
(21, 'Basic Science', 'B.Sci', 0, ''),
(22, 'Basic. Tech', 'B.Tech', 0, ''),
(23, 'Christian Religious Study', 'CRK', 0, ''),
(24, 'Accounting', 'Acc', 0, ''),
(25, 'Civic Education', 'C.Edu', 0, ''),
(26, 'Further Mathematics', 'F.Math', 0, ''),
(27, 'Technical Drawing', 'T.D', 0, ''),
(28, 'Agricultural Science', 'Agric', 0, ''),
(29, 'Food and Nutrition', 'F&N', 0, ''),
(30, 'Creative Art', 'Art', 0, ''),
(31, 'Yoruba', 'Yor', 0, ''),
(32, 'French', 'FR', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `grade_terms`
--

CREATE TABLE `grade_terms` (
  `grade_terms_id` int(1) NOT NULL,
  `grade_terms_desc` varchar(40) NOT NULL DEFAULT '',
  `current` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_terms`
--

INSERT INTO `grade_terms` (`grade_terms_id`, `grade_terms_desc`, `current`) VALUES
(1, 'First Term', 1),
(2, 'Second Term', 0),
(3, 'Third Term', 0),
(4, 'Holiday', 0);

-- --------------------------------------------------------

--
-- Table structure for table `grade_terms_days`
--

CREATE TABLE `grade_terms_days` (
  `grade_terms_days_id` int(8) NOT NULL,
  `grade_terms_days_session` int(3) NOT NULL,
  `grade_terms_days_term` tinyint(1) NOT NULL,
  `grade_terms_days_no_of_days` int(5) NOT NULL,
  `resumption` varchar(10) NOT NULL,
  `vacation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_terms_days`
--

INSERT INTO `grade_terms_days` (`grade_terms_days_id`, `grade_terms_days_session`, `grade_terms_days_term`, `grade_terms_days_no_of_days`, `resumption`, `vacation`) VALUES
(1, 1, 1, 60, '01/09/2015', '30/11/2015'),
(2, 1, 2, 60, '04/01/2016', '09/03/2016'),
(3, 1, 3, 60, '31/03/2016', '27/05/2016'),
(4, 2, 1, 60, '', ''),
(5, 2, 2, 60, '', ''),
(6, 2, 3, 60, '', ''),
(7, 3, 1, 60, '', ''),
(8, 3, 2, 60, '', ''),
(9, 3, 3, 60, '', ''),
(10, 4, 1, 60, '', ''),
(11, 4, 2, 60, '', ''),
(12, 4, 3, 60, '', ''),
(13, 5, 1, 60, '', ''),
(14, 5, 2, 60, '', ''),
(15, 5, 3, 60, '', ''),
(16, 6, 1, 60, '', ''),
(17, 6, 2, 60, '', ''),
(18, 6, 3, 60, '', ''),
(19, 7, 1, 60, '', ''),
(20, 7, 2, 60, '', ''),
(21, 7, 3, 60, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `health_allergy`
--

CREATE TABLE `health_allergy` (
  `health_allergy_id` int(8) UNSIGNED NOT NULL,
  `health_allergy_desc` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_allergy`
--

INSERT INTO `health_allergy` (`health_allergy_id`, `health_allergy_desc`) VALUES
(10, 'Anger'),
(12, 'Anti-Social'),
(13, 'Anxiety'),
(9, 'Dandruff'),
(14, 'Depression'),
(11, 'Hair loss'),
(1, 'Headaches'),
(2, 'Itch or dry throat'),
(3, 'Itchy watery eyes'),
(15, 'Mood Swings'),
(4, 'Nasal'),
(5, 'Red eyes after spending time outdoors'),
(6, 'Runny nose'),
(16, 'Sinus Pain'),
(7, 'Sneezing'),
(8, 'Stuffy nose');

-- --------------------------------------------------------

--
-- Table structure for table `health_allergy_history`
--

CREATE TABLE `health_allergy_history` (
  `health_allergy_history_id` bigint(20) UNSIGNED NOT NULL,
  `health_allergy_history_student` int(8) UNSIGNED DEFAULT 0,
  `health_allergy_history_year` int(3) UNSIGNED DEFAULT 0,
  `health_allergy_history_term` tinyint(1) NOT NULL,
  `health_allergy_history_school` tinyint(1) UNSIGNED DEFAULT 0,
  `health_allergy_history_code` int(3) UNSIGNED DEFAULT 0,
  `health_allergy_history_date` varchar(30) DEFAULT '0000-00-00',
  `health_allergy_history_notes` varchar(100) DEFAULT NULL,
  `health_allergy_history_user` int(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_allergy_history`
--

INSERT INTO `health_allergy_history` (`health_allergy_history_id`, `health_allergy_history_student`, `health_allergy_history_year`, `health_allergy_history_term`, `health_allergy_history_school`, `health_allergy_history_code`, `health_allergy_history_date`, `health_allergy_history_notes`, `health_allergy_history_user`) VALUES
(1, 11, 1, 1, 0, 13, '11/09/2015', 'Gets scared when shouted upon', 8);

-- --------------------------------------------------------

--
-- Table structure for table `health_codes`
--

CREATE TABLE `health_codes` (
  `health_codes_id` int(8) UNSIGNED NOT NULL,
  `health_codes_desc` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_codes`
--

INSERT INTO `health_codes` (`health_codes_id`, `health_codes_desc`) VALUES
(8, 'Acne'),
(15, 'Anemia'),
(5, 'Arthritis'),
(16, 'Ask Health Question'),
(44, 'Bad breath'),
(18, 'Black Eye'),
(37, 'Body Pain'),
(19, 'Cancer'),
(20, 'Cataracts'),
(22, 'Common Cold'),
(21, 'Constipation'),
(7, 'Difficulty breathing'),
(11, 'Ear Ache'),
(23, 'Eczema'),
(24, 'Epilepsy'),
(47, 'Fever'),
(45, 'Gout'),
(25, 'Gum disease'),
(1, 'Headache'),
(26, 'Heart attack'),
(27, 'Heart Burn'),
(28, 'High blood pressure'),
(46, 'High cholesterol'),
(29, 'Hiv/aids'),
(3, 'Hungry'),
(30, 'Kidney disease'),
(31, 'Liver problems'),
(13, 'Lost Tooth'),
(32, 'Lung disease'),
(48, 'Malaria'),
(9, 'Menstural Issues'),
(33, 'Migraines'),
(34, 'Mineral deficiency'),
(14, 'Nauseous'),
(6, 'Nosebleed'),
(35, 'Nosebleeds frequent'),
(36, 'Obesity'),
(38, 'Skin rash'),
(12, 'Sore Throat '),
(2, 'Stomach Ache '),
(39, 'Stroke'),
(41, 'Tumor'),
(17, 'Twisted Ankle'),
(40, 'Ulcer'),
(42, 'Urination problems'),
(43, 'Vaginal infections');

-- --------------------------------------------------------

--
-- Table structure for table `health_history`
--

CREATE TABLE `health_history` (
  `health_history_id` int(8) UNSIGNED NOT NULL,
  `health_history_student` int(8) UNSIGNED DEFAULT NULL,
  `health_history_school` tinyint(1) UNSIGNED DEFAULT NULL,
  `health_history_year` int(3) UNSIGNED DEFAULT NULL,
  `health_history_term` tinyint(1) NOT NULL,
  `health_history_code` int(4) UNSIGNED DEFAULT NULL,
  `health_history_medicine_1` int(4) NOT NULL,
  `health_history_medicine_2` int(4) NOT NULL,
  `health_history_date` varchar(30) DEFAULT NULL,
  `health_history_notes` text DEFAULT NULL,
  `health_history_user` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_history`
--

INSERT INTO `health_history` (`health_history_id`, `health_history_student`, `health_history_school`, `health_history_year`, `health_history_term`, `health_history_code`, `health_history_medicine_1`, `health_history_medicine_2`, `health_history_date`, `health_history_notes`, `health_history_user`) VALUES
(1, 11, 0, 1, 1, 48, 16, 15, '11/09/2015', 'Was sick and down on malaria after class in the afternoon', '8'),
(2, 4, 0, 1, 1, 22, 35, 28, '17/12/2015', 'asked to return after 2 days', '8');

-- --------------------------------------------------------

--
-- Table structure for table `health_immunz`
--

CREATE TABLE `health_immunz` (
  `health_immunz_id` int(8) UNSIGNED NOT NULL,
  `health_immunz_desc` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_immunz`
--

INSERT INTO `health_immunz` (`health_immunz_id`, `health_immunz_desc`) VALUES
(2, 'Rubella'),
(3, 'Polio'),
(4, 'Mumps'),
(5, 'Chickenpox');

-- --------------------------------------------------------

--
-- Table structure for table `health_immunz_history`
--

CREATE TABLE `health_immunz_history` (
  `health_immunz_history_id` bigint(20) UNSIGNED NOT NULL,
  `health_immunz_history_student` int(11) UNSIGNED DEFAULT 0,
  `health_immunz_history_year` int(8) UNSIGNED DEFAULT 0,
  `health_immunz_history_term` tinyint(1) NOT NULL,
  `health_immunz_history_school` tinyint(1) UNSIGNED DEFAULT 0,
  `health_immunz_history_code` int(3) UNSIGNED DEFAULT 0,
  `health_immunz_history_date` varchar(30) DEFAULT '0000-00-00',
  `health_immunz_history_notes` varchar(100) DEFAULT NULL,
  `health_immunz_history_user` int(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_immunz_history`
--

INSERT INTO `health_immunz_history` (`health_immunz_history_id`, `health_immunz_history_student`, `health_immunz_history_year`, `health_immunz_history_term`, `health_immunz_history_school`, `health_immunz_history_code`, `health_immunz_history_date`, `health_immunz_history_notes`, `health_immunz_history_user`) VALUES
(1, 11, 1, 1, 0, 5, '11/09/2015', 'W.H.O immunized Kester of Chicken Pox because of the fear of its Existence. ', 8);

-- --------------------------------------------------------

--
-- Table structure for table `health_medicine`
--

CREATE TABLE `health_medicine` (
  `health_medicine_id` int(8) UNSIGNED NOT NULL,
  `health_medicine_desc` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_medicine`
--

INSERT INTO `health_medicine` (`health_medicine_id`, `health_medicine_desc`) VALUES
(21, 'Actifed'),
(5, 'Afrin'),
(6, 'Alavert'),
(34, 'Ambien'),
(3, 'Ampicillin2'),
(18, 'Asmanex'),
(35, 'Aspirin'),
(4, 'Asthma Inhaler'),
(26, 'Avandia'),
(7, 'Beconase'),
(28, 'Blood Tonic'),
(11, 'Celebrex'),
(17, 'Chloroqin'),
(8, 'Dimetapp'),
(22, 'Dristan'),
(14, 'Fevin'),
(25, 'Fibercon'),
(27, 'Fluoxetine'),
(29, 'Insulin'),
(16, 'Medic 5-5'),
(31, 'Naproxen'),
(9, 'Nasal sprays'),
(15, 'Panadol'),
(30, 'Plavix'),
(12, 'Prednisone'),
(20, 'Prevachol'),
(32, 'Prevacid'),
(23, 'Quintex'),
(13, 'Remicade'),
(1, 'Ritalin'),
(19, 'Serevent'),
(2, 'Sominex'),
(24, 'Tamilflu'),
(10, 'Tavist'),
(33, 'Tylenol');

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `homework_id` bigint(20) NOT NULL,
  `teacher_id` int(8) DEFAULT NULL,
  `session` int(3) NOT NULL,
  `term` int(3) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subject` int(3) NOT NULL,
  `grade` int(3) NOT NULL,
  `date_assigned` varchar(30) NOT NULL,
  `date_due` varchar(30) NOT NULL,
  `homework_file` text NOT NULL,
  `instruction` varchar(200) NOT NULL,
  `notepad_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`homework_id`, `teacher_id`, `session`, `term`, `name`, `subject`, `grade`, `date_assigned`, `date_due`, `homework_file`, `instruction`, `notepad_text`) VALUES
(2, 8, 1, 2, 'Biology Homework', 19, 15, '07/08/2017', '11/08/2017', '', 'All questions carry equal marks', '<p>Answer all questions. All carries equal marks:</p>\r\n\r\n<ol>\r\n	<li>What is the impact of marketing communication on the performance of hospitality industry?</li>\r\n	<li>What is the role marketing communication plays in maximizing profits in the hospitality industry?</li>\r\n	<li>What is the importance/benefits of marketing communication to the hospitality industry?</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `open_status` int(1) NOT NULL COMMENT '1 means hostel is open, 0 means closed',
  `reserve_status` int(1) NOT NULL COMMENT '1 means reserved for specifc student. only student with reserve key can be assigned. reserve key can come from hostel overide table',
  `occupant_sex` varchar(1) NOT NULL COMMENT 'm,f,b for male female both',
  `hostel_type` int(1) NOT NULL DEFAULT 1 COMMENT 'hostel_type table for executive or more ',
  `hostel_image_url` varchar(50) NOT NULL COMMENT 'uploaded by admin, stored in /files/images.. if empty use /hostels.png',
  `hostel_grade` int(11) NOT NULL DEFAULT 0 COMMENT 'which grade can use this hostel',
  `ability_type` int(11) NOT NULL DEFAULT 1 COMMENT 'from hostels-ability_types.id showing if hostel is for disabled or not. note rooms ability type overrides this'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostels_allocation`
--

CREATE TABLE `hostels_allocation` (
  `id` int(11) NOT NULL,
  `bed_space` int(11) NOT NULL COMMENT 'from hostels_bed_space. each bed spaces already have hostels, rooms and series property',
  `student` int(11) NOT NULL DEFAULT 0,
  `session` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active, admin may decide to suspend room after allocation',
  `paid` int(1) NOT NULL DEFAULT 0 COMMENT '1 means the student has paid: when a student apply, student is updated, if he fail to pay after three days, colum is deleted by crone job',
  `date_pd` varchar(20) NOT NULL COMMENT 'payment date, seen as date by which student enters the room'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='this table will be used to know list of available rooms, if std=1 its asigned';

-- --------------------------------------------------------

--
-- Table structure for table `hostels_bed_space`
--

CREATE TABLE `hostels_bed_space` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'sometimes bed space have names A,B,C,D, thus 1=A, 2=B etc',
  `hostel` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `room` int(11) NOT NULL COMMENT 'goten from her series table',
  `override_open_status` int(1) NOT NULL DEFAULT 1 COMMENT '1 means open, 0 means closed',
  `override_reserve_status` int(1) NOT NULL DEFAULT 0 COMMENT '1 means space is reserves for specific student ',
  `override_age` int(1) NOT NULL COMMENT 'define the age of the student for this bed space if left as default 0, all age will apply',
  `overide_sex` varchar(1) NOT NULL DEFAULT '0' COMMENT 'm,f,b',
  `override_grade` int(11) NOT NULL DEFAULT 0 COMMENT 'what geade can use this hostel room bed space',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT 'from hostels_type 1 means normal',
  `override_ability` int(11) NOT NULL DEFAULT 1 COMMENT 'from hostel_ability',
  `asign` int(1) NOT NULL DEFAULT 0 COMMENT '1 means space is asigned, not important, you can know asssigned rooms from hostel allocation table, this one is just for ease of action. update when you asign '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostels_fees`
--

CREATE TABLE `hostels_fees` (
  `id` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `hostel` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostels_tbl_ability`
--

CREATE TABLE `hostels_tbl_ability` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='static table';

-- --------------------------------------------------------

--
-- Table structure for table `hostels_tbl_series`
--

CREATE TABLE `hostels_tbl_series` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='static table';

-- --------------------------------------------------------

--
-- Table structure for table `hostels_tbl_types`
--

CREATE TABLE `hostels_tbl_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostels_tbl_types`
--

INSERT INTO `hostels_tbl_types` (`id`, `name`) VALUES
(1, 'Normal'),
(2, 'Executive'),
(3, 'Hall');

-- --------------------------------------------------------

--
-- Table structure for table `infraction_codes`
--

CREATE TABLE `infraction_codes` (
  `infraction_codes_id` int(8) UNSIGNED NOT NULL,
  `infraction_codes_desc` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infraction_codes`
--

INSERT INTO `infraction_codes` (`infraction_codes_id`, `infraction_codes_desc`) VALUES
(1, 'Disruptive Behavior'),
(2, 'Disrespect'),
(3, 'Obscene Language'),
(4, 'Obscene Gesture'),
(5, 'Not Following Direction '),
(6, 'Throwing Objects '),
(7, 'Fighting'),
(8, 'Roughhousing'),
(9, 'Cheating'),
(10, 'Late'),
(11, 'Theft'),
(12, 'Substance Abuse'),
(13, 'Truancy'),
(14, 'Not Where Assigned '),
(15, 'Skipping Detention'),
(16, 'Vandalism'),
(17, 'Threatening Behavior'),
(18, 'Harassment'),
(19, 'Explosive devices'),
(20, 'Flammable devices'),
(21, 'Unauthorized Leaving '),
(22, 'Other'),
(23, 'Bus Issue ');

-- --------------------------------------------------------

--
-- Table structure for table `media_codes`
--

CREATE TABLE `media_codes` (
  `media_codes_id` int(8) NOT NULL,
  `media_codes_desc` varchar(50) NOT NULL,
  `id1` varchar(20) NOT NULL,
  `id2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_codes`
--

INSERT INTO `media_codes` (`media_codes_id`, `media_codes_desc`, `id1`, `id2`) VALUES
(1, 'Things Fall Apart - Chinua Achebe S', 'Shelf 2', 'Slide 14'),
(7, 'There was a country - Dida', 'Shelf 2', 'Shell 1'),
(10, 'Behind the Smile - Vvone Chinyere', 'Shelf 2', 'Slot  3'),
(11, 'Faceless - Eva Bondell', 'Shelf 6', 'Slot 5');

-- --------------------------------------------------------

--
-- Table structure for table `media_history`
--

CREATE TABLE `media_history` (
  `media_history_id` bigint(20) UNSIGNED NOT NULL,
  `media_history_borrower` int(8) UNSIGNED DEFAULT NULL,
  `media_history_school` smallint(1) UNSIGNED DEFAULT NULL,
  `media_history_year` int(3) UNSIGNED DEFAULT NULL,
  `media_history_code` int(8) UNSIGNED DEFAULT NULL,
  `media_history_dateout` varchar(30) DEFAULT NULL,
  `media_history_datedue` varchar(30) DEFAULT NULL,
  `media_history_borrower_type` varchar(9) DEFAULT NULL,
  `media_history_action` varchar(50) DEFAULT NULL,
  `media_history_user` int(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_history`
--

INSERT INTO `media_history` (`media_history_id`, `media_history_borrower`, `media_history_school`, `media_history_year`, `media_history_code`, `media_history_dateout`, `media_history_datedue`, `media_history_borrower_type`, `media_history_action`, `media_history_user`) VALUES
(1, 2, 0, 1, 11, '08/08/2017', '', 'stf', 'Borrowed the note to read books and solve mathemat', 8);

-- --------------------------------------------------------

--
-- Table structure for table `parent_to_kids`
--

CREATE TABLE `parent_to_kids` (
  `parent_to_kids_id` int(11) NOT NULL,
  `parent_id` int(8) NOT NULL DEFAULT 0,
  `student_id` int(8) NOT NULL DEFAULT 0,
  `confirmation` tinyint(1) NOT NULL COMMENT '0 = requested by parent, 1=approved by admin, 2=parent deleted the child'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_to_kids`
--

INSERT INTO `parent_to_kids` (`parent_to_kids_id`, `parent_id`, `student_id`, `confirmation`) VALUES
(1, 3, 9, 2),
(2, 3, 8, 0),
(3, 3, 11, 1),
(4, 3, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_receipts`
--

CREATE TABLE `payment_receipts` (
  `tuition_history_id` int(10) NOT NULL,
  `tution_paid_by_user_id` int(8) NOT NULL,
  `tution_paid_by_std_par` varchar(20) NOT NULL,
  `tution_amount_paid` int(8) NOT NULL,
  `tution_paid_sch_years` int(3) NOT NULL,
  `tution_paid_grade` int(2) NOT NULL,
  `tution_paid_terms` tinyint(1) NOT NULL,
  `tution_paid_type` tinyint(1) NOT NULL,
  `school_item_price_relid` int(3) NOT NULL DEFAULT 0,
  `qty` tinyint(1) NOT NULL,
  `tution_paid_date` varchar(30) NOT NULL,
  `cleared` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_receipts`
--

INSERT INTO `payment_receipts` (`tuition_history_id`, `tution_paid_by_user_id`, `tution_paid_by_std_par`, `tution_amount_paid`, `tution_paid_sch_years`, `tution_paid_grade`, `tution_paid_terms`, `tution_paid_type`, `school_item_price_relid`, `qty`, `tution_paid_date`, `cleared`) VALUES
(1, 11, 'Student', 1000, 1, 15, 1, 10, 0, 0, '12/12/2015', 0),
(4, 11, 'Student', 0, 1, 15, 1, 10, 0, 0, '09/01/2016', 0),
(5, 11, 'Student', 500000, 1, 15, 1, 1, 0, 0, '18/02/2016', 0),
(15, 11, 'Student', 100, 1, 15, 2, 11, 0, 1, '03/08/2017', 1),
(16, 11, 'Student', 100, 1, 15, 2, 11, 0, 1, '03/08/2017', 1),
(17, 11, 'Student', 1000, 1, 15, 2, 10, 0, 0, '07/08/2017', 0),
(18, 11, 'Student', 1000, 1, 15, 1, 10, 0, 0, '07/08/2017', 0),
(20, 11, 'Student', 530000, 1, 15, 2, 1, 0, 0, '07/08/2017', 0),
(21, 11, 'Student', 1000, 1, 15, 2, 10, 0, 0, '07/08/2017', 0),
(22, 11, 'Student', 1000, 1, 15, 1, 10, 0, 0, '10/08/2017', 0),
(23, 11, 'Student', 4000, 1, 15, 1, 5, 2, 1, '09/03/2018', 0),
(24, 11, 'Student', 100, 1, 15, 1, 11, 0, 1, '09/03/2018', 0),
(25, 11, 'Student', 1000, 1, 15, 1, 10, 0, 0, '09/03/2018', 1),
(26, 11, 'Student', 1000, 1, 15, 2, 10, 0, 0, '09/03/2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_recharge_receipts`
--

CREATE TABLE `payment_recharge_receipts` (
  `tuition_history_id` int(10) NOT NULL,
  `tution_recharge_by_user_id` int(8) NOT NULL,
  `tution_recharge_by_std_par` varchar(20) NOT NULL,
  `tution_amount_recharged` int(8) NOT NULL,
  `tution_recharge_sch_years` int(3) NOT NULL,
  `tution_recharge_grade` int(2) NOT NULL,
  `tution_recharge_terms` tinyint(1) NOT NULL,
  `recharge_means` varchar(30) NOT NULL,
  `tution_recharge_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_recharge_receipts`
--

INSERT INTO `payment_recharge_receipts` (`tuition_history_id`, `tution_recharge_by_user_id`, `tution_recharge_by_std_par`, `tution_amount_recharged`, `tution_recharge_sch_years`, `tution_recharge_grade`, `tution_recharge_terms`, `recharge_means`, `tution_recharge_date`) VALUES
(1, 11, 'Student', 500000, 1, 15, 1, 'Wallet Pin', '12/12/2015'),
(2, 11, 'Student', 500000, 1, 15, 1, 'Wallet Pin', '12/12/2015'),
(5, 17, 'Student', 500000, 1, 16, 2, 'Wallet Pin', '02/08/2017'),
(6, 17, 'Student', 500000, 1, 16, 2, 'Wallet Pin', '02/08/2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_pins`
--

CREATE TABLE `reg_pins` (
  `id` bigint(20) NOT NULL,
  `codec` varchar(14) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `used_by` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(8) NOT NULL,
  `description` varchar(70) NOT NULL,
  `creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_pins`
--

INSERT INTO `reg_pins` (`id`, `codec`, `sn`, `used_by`, `status`, `amount`, `description`, `creation`) VALUES
(1, '4A6C809172', '724601308951', 0, 0, 100, 'Adminsion', '2022-09-12'),
(2, '2615517012', '027918064351', 0, 0, 100, 'Adminsion', '2022-09-12'),
(3, '178A0F78C2', '815920673104', 0, 0, 100, 'Adminsion', '2022-09-12'),
(4, '8794AC0618', '082151367094', 0, 0, 100, 'Adminsion', '2022-09-12'),
(5, '6D5B7D721C', '123064012597', 0, 0, 100, 'Adminsion', '2022-09-12'),
(6, '6C0719A284', '012376409152', 0, 0, 100, 'Adminsion', '2022-09-12'),
(7, '0572DB1DC1', '913675021042', 0, 0, 100, 'Adminsion', '2022-09-12'),
(8, '711DBC65D2', '100356284917', 27, 1, 100, 'Adminsion', '2022-09-12'),
(9, '6BD17D72C5', '046270235191', 26, 1, 100, 'Adminsion', '2022-09-12'),
(10, '025671C419', '202679431105', 25, 1, 100, 'Adminsion', '2022-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `reg_pins_old`
--

CREATE TABLE `reg_pins_old` (
  `id` bigint(20) NOT NULL,
  `codec` varchar(14) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `used_by` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `description` varchar(70) NOT NULL,
  `amount` int(11) NOT NULL,
  `creation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `relations_codes`
--

CREATE TABLE `relations_codes` (
  `relation_codes_id` int(8) UNSIGNED NOT NULL,
  `relation_codes_desc` varchar(30) DEFAULT NULL,
  `relation_codes_unique` tinyint(1) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relations_codes`
--

INSERT INTO `relations_codes` (`relation_codes_id`, `relation_codes_desc`, `relation_codes_unique`) VALUES
(1, 'Father', 1),
(2, 'Mother', 1),
(3, 'Brother', 1),
(4, 'Sister', 1),
(5, 'Uncle', 1),
(6, 'Aunt', 1),
(7, 'Grandfather', 1),
(8, 'Grandmother', 1),
(9, 'Stepfather', 1),
(10, 'Stepmother', 1),
(12, 'Grandfather', 1),
(13, 'Guardian', 1),
(14, 'Nephew', 1),
(15, 'Niece', 1),
(16, 'Daughter-in-Law', 1),
(17, 'Son-Daughter-in-Law', 1),
(18, 'Mother-in-Law', 1),
(19, 'Father-in-Law', 1),
(20, 'Sister-in-Law', 1),
(21, 'Brother-in-Law', 1),
(22, 'Grandmother', 1),
(23, 'Zzz - Not Listed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_calendar`
--

CREATE TABLE `school_calendar` (
  `id` int(10) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `start_date` varchar(35) NOT NULL,
  `end_date` varchar(35) NOT NULL,
  `event_color` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_calendar`
--

INSERT INTO `school_calendar` (`id`, `event_name`, `start_date`, `end_date`, `event_color`) VALUES
(1, 'Ogwashi-Ukwu Graduation Ceremony', '26/08/2015', '27/08/2015', '#990000'),
(2, 'School General Allnight', '28/08/2015', '28/08/2015', '#0073b7'),
(3, 'Open Day', '10/03/2018', '11/03/2018', '#f56954');

-- --------------------------------------------------------

--
-- Table structure for table `school_class_periods`
--

CREATE TABLE `school_class_periods` (
  `id` int(4) NOT NULL,
  `periods` varchar(30) NOT NULL,
  `desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_class_periods`
--

INSERT INTO `school_class_periods` (`id`, `periods`, `desc`) VALUES
(1, '8:00am - 9:00am', 'First Period'),
(2, '9:00am - 10:00am', 'Second Period'),
(3, '10:00am - 11:00am', 'Third Period'),
(4, '11:00am - 12:00pm', 'Fourth Period'),
(5, '12:00pm - 1:00pm', 'Fifth Period'),
(6, '1:00pm - 2:00pm', 'Sixth Period'),
(7, '2:00pm - 3:00pm', 'Seventh Period'),
(8, '3:00pm - 4:00pm', 'Eight Period');

-- --------------------------------------------------------

--
-- Table structure for table `school_fees`
--

CREATE TABLE `school_fees` (
  `id` bigint(50) NOT NULL,
  `component` varchar(200) NOT NULL,
  `grades` int(10) NOT NULL,
  `grades_term` int(1) NOT NULL,
  `school_year` int(2) NOT NULL,
  `price` int(9) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `creator` varchar(40) NOT NULL,
  `comment` text NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_fees`
--

INSERT INTO `school_fees` (`id`, `component`, `grades`, `grades_term`, `school_year`, `price`, `date`, `creator`, `comment`, `active`) VALUES
(512, 'total', 14, 1, 1, 470000, '0000-00-00', 'Principal', '', 1),
(513, 'total', 14, 2, 1, 500000, '0000-00-00', 'Principal', '', 1),
(514, 'total', 14, 3, 1, 550000, '0000-00-00', 'Principal', '', 1),
(515, 'total', 13, 1, 1, 460000, '0000-00-00', 'Principal', '', 1),
(516, 'total', 13, 2, 1, 550000, '0000-00-00', 'Principal', '', 1),
(517, 'total', 13, 3, 1, 500000, '0000-00-00', 'Principal', '', 1),
(518, 'total', 12, 1, 1, 550000, '0000-00-00', 'Principal', '', 1),
(519, 'total', 12, 2, 1, 550000, '0000-00-00', 'Principal', '', 1),
(520, 'total', 12, 3, 1, 480000, '0000-00-00', 'Principal', '', 1),
(521, 'total', 11, 1, 1, 515000, '0000-00-00', 'Principal', '', 1),
(522, 'total', 11, 2, 1, 515000, '0000-00-00', 'Principal', '', 1),
(523, 'total', 11, 3, 1, 515000, '0000-00-00', 'Principal', '', 1),
(524, 'total', 10, 1, 1, 460000, '0000-00-00', 'Principal', '', 1),
(525, 'total', 10, 2, 1, 460000, '0000-00-00', 'Principal', '', 1),
(526, 'total', 10, 3, 1, 460000, '0000-00-00', 'Principal', '', 1),
(527, 'total', 9, 1, 1, 455000, '0000-00-00', 'Principal', '', 1),
(528, 'total', 9, 2, 1, 455000, '0000-00-00', 'Principal', '', 1),
(529, 'total', 9, 3, 1, 455000, '0000-00-00', 'Principal', '', 1),
(530, 'total', 8, 1, 1, 450000, '0000-00-00', 'Principal', '', 1),
(531, 'total', 8, 2, 1, 450000, '0000-00-00', 'Principal', '', 1),
(532, 'total', 8, 3, 1, 450000, '0000-00-00', 'Principal', '', 1),
(533, 'total', 7, 1, 1, 425000, '0000-00-00', 'Principal', '', 1),
(534, 'total', 7, 2, 1, 425000, '0000-00-00', 'Principal', '', 1),
(535, 'total', 7, 3, 1, 425000, '0000-00-00', 'Principal', '', 1),
(536, 'total', 6, 1, 1, 420000, '0000-00-00', 'Principal', '', 1),
(537, 'total', 6, 2, 1, 420000, '0000-00-00', 'Principal', '', 1),
(538, 'total', 6, 3, 1, 420000, '0000-00-00', 'Principal', '', 1),
(539, 'total', 5, 1, 1, 415000, '0000-00-00', 'Principal', '', 1),
(540, 'total', 5, 2, 1, 415000, '0000-00-00', 'Principal', '', 1),
(541, 'total', 5, 3, 1, 415000, '0000-00-00', 'Principal', '', 1),
(542, 'total', 4, 1, 1, 370000, '0000-00-00', 'Principal', '', 1),
(543, 'total', 4, 2, 1, 370000, '0000-00-00', 'Principal', '', 1),
(544, 'total', 4, 3, 1, 370000, '0000-00-00', 'Principal', '', 1),
(545, 'total', 3, 1, 1, 360000, '0000-00-00', 'Principal', '', 1),
(546, 'total', 3, 2, 1, 360000, '0000-00-00', 'Principal', '', 1),
(547, 'total', 3, 3, 1, 360000, '0000-00-00', 'Principal', '', 1),
(548, 'total', 2, 1, 1, 350000, '0000-00-00', 'Principal', '', 1),
(549, 'total', 2, 2, 1, 350000, '0000-00-00', 'Principal', '', 1),
(550, 'total', 2, 3, 1, 350000, '0000-00-00', 'Principal', '', 1),
(551, 'total', 1, 1, 1, 300000, '0000-00-00', 'Principal', '', 1),
(552, 'total', 1, 2, 1, 309000, '0000-00-00', 'Principal', '', 1),
(553, 'total', 1, 3, 1, 310000, '0000-00-00', 'Principal', '', 1),
(554, 'Security', 14, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(555, 'Health Service', 14, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(556, 'Libary', 14, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(557, 'Examination', 14, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(558, 'Tuition', 14, 1, 1, 180000, '0000-00-00', 'Principal', '', 1),
(559, 'Library', 14, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(560, 'Health Service', 14, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(561, 'Security', 14, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(562, 'Examination', 14, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(563, 'Tuition', 14, 2, 1, 200000, '0000-00-00', 'Principal', '', 1),
(564, 'Development Fees', 14, 3, 1, 47000, '0000-00-00', 'Principal', '', 1),
(565, 'Hostel Fees', 14, 3, 1, 10000, '0000-00-00', 'Principal', '', 1),
(566, 'PTA', 14, 3, 1, 48000, '0000-00-00', 'Principal', '', 1),
(567, 'Tution and Security', 14, 3, 1, 6800, '0000-00-00', 'Principal', '', 1),
(568, 'Health', 14, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(569, 'Libary', 13, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(570, 'Health Service', 13, 1, 1, 45000, '0000-00-00', 'Principal', '', 1),
(571, 'Security', 13, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(572, 'Examination', 13, 1, 1, 70000, '0000-00-00', 'Principal', '', 1),
(573, 'Tuition', 13, 1, 1, 160000, '0000-00-00', 'Principal', '', 1),
(574, 'Security', 13, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(575, 'Libary', 13, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(576, 'ICT', 13, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(577, 'Health Service', 13, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(578, 'Tuition', 13, 2, 1, 260000, '0000-00-00', 'Principal', '', 1),
(579, 'Examination', 13, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(580, 'Health Service', 13, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(581, 'Library', 13, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(582, 'Security', 13, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(583, 'Tuition', 13, 3, 1, 250000, '0000-00-00', 'Principal', '', 1),
(584, 'Health Service', 12, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(585, 'Libary', 12, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(586, 'Security', 12, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(587, 'Examination', 12, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(588, 'Tuition', 12, 1, 1, 250000, '0000-00-00', 'Principal', '', 1),
(589, 'Books', 12, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(590, 'Health Service', 12, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(591, 'Library', 12, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(592, 'Examination', 12, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(593, 'Tuition', 12, 2, 1, 250000, '0000-00-00', 'Principal', '', 1),
(594, 'ICT', 12, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(595, 'Examination', 12, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(596, 'Health Service', 12, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(597, 'Security', 12, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(598, 'Tuition', 12, 3, 1, 190000, '0000-00-00', 'Principal', '', 1),
(599, 'Health Care', 11, 1, 1, 35000, '0000-00-00', 'Principal', '', 1),
(600, 'ICT', 11, 1, 1, 50000, '0000-00-00', 'Principal', '', 1),
(601, 'Library', 11, 1, 1, 50000, '0000-00-00', 'Principal', '', 1),
(602, 'Examination', 11, 1, 1, 80000, '0000-00-00', 'Principal', '', 1),
(603, 'Tuition', 11, 1, 1, 200000, '0000-00-00', 'Principal', '', 1),
(604, 'Health Care', 11, 2, 1, 35000, '0000-00-00', 'Principal', '', 1),
(605, 'ICT', 11, 2, 1, 50000, '0000-00-00', 'Principal', '', 1),
(606, 'Library', 11, 2, 1, 50000, '0000-00-00', 'Principal', '', 1),
(607, 'Examination', 11, 2, 1, 80000, '0000-00-00', 'Principal', '', 1),
(608, 'Tuition', 11, 2, 1, 200000, '0000-00-00', 'Principal', '', 1),
(609, 'Health Care', 11, 3, 1, 35000, '0000-00-00', 'Principal', '', 1),
(610, 'ICT', 11, 3, 1, 50000, '0000-00-00', 'Principal', '', 1),
(611, 'Library', 11, 3, 1, 50000, '0000-00-00', 'Principal', '', 1),
(612, 'Examination', 11, 3, 1, 80000, '0000-00-00', 'Principal', '', 1),
(613, 'Tuition', 11, 3, 1, 200000, '0000-00-00', 'Principal', '', 1),
(614, 'Health Care', 10, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(615, 'ICT', 10, 1, 1, 35000, '0000-00-00', 'Principal', '', 1),
(616, 'Library', 10, 1, 1, 35000, '0000-00-00', 'Principal', '', 1),
(617, 'Examination', 10, 1, 1, 75000, '0000-00-00', 'Principal', '', 1),
(618, 'Tuition', 10, 1, 1, 185000, '0000-00-00', 'Principal', '', 1),
(619, 'Health Care', 10, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(620, 'ICT', 10, 2, 1, 35000, '0000-00-00', 'Principal', '', 1),
(621, 'Library', 10, 2, 1, 35000, '0000-00-00', 'Principal', '', 1),
(622, 'Examination', 10, 2, 1, 75000, '0000-00-00', 'Principal', '', 1),
(623, 'Tuition', 10, 2, 1, 185000, '0000-00-00', 'Principal', '', 1),
(624, 'Health Care', 10, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(625, 'ICT', 10, 3, 1, 35000, '0000-00-00', 'Principal', '', 1),
(626, 'Library', 10, 3, 1, 35000, '0000-00-00', 'Principal', '', 1),
(627, 'Examination', 10, 3, 1, 75000, '0000-00-00', 'Principal', '', 1),
(628, 'Tuition', 10, 3, 1, 185000, '0000-00-00', 'Principal', '', 1),
(629, 'Health Care', 9, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(630, 'ICT', 9, 1, 1, 35000, '0000-00-00', 'Principal', '', 1),
(631, 'Library', 9, 1, 1, 35000, '0000-00-00', 'Principal', '', 1),
(632, 'Examination', 9, 1, 1, 75000, '0000-00-00', 'Principal', '', 1),
(633, 'Tuition', 9, 1, 1, 180000, '0000-00-00', 'Principal', '', 1),
(634, 'Health Care', 9, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(635, 'ICT', 9, 2, 1, 35000, '0000-00-00', 'Principal', '', 1),
(636, 'Library', 9, 2, 1, 35000, '0000-00-00', 'Principal', '', 1),
(637, 'Examination', 9, 2, 1, 75000, '0000-00-00', 'Principal', '', 1),
(638, 'Tuition', 9, 2, 1, 180000, '0000-00-00', 'Principal', '', 1),
(639, 'Health Care', 9, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(640, 'ICT', 9, 3, 1, 35000, '0000-00-00', 'Principal', '', 1),
(641, 'Library', 9, 3, 1, 35000, '0000-00-00', 'Principal', '', 1),
(642, 'Examination', 9, 3, 1, 75000, '0000-00-00', 'Principal', '', 1),
(643, 'Tuition', 9, 3, 1, 180000, '0000-00-00', 'Principal', '', 1),
(644, 'Health Care', 8, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(645, 'ICT', 8, 1, 1, 35000, '0000-00-00', 'Principal', '', 1),
(646, 'Library', 8, 1, 1, 35000, '0000-00-00', 'Principal', '', 1),
(647, 'Examination', 8, 1, 1, 75000, '0000-00-00', 'Principal', '', 1),
(648, 'Tuition', 8, 1, 1, 175000, '0000-00-00', 'Principal', '', 1),
(649, 'Health Care', 8, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(650, 'ICT', 8, 2, 1, 35000, '0000-00-00', 'Principal', '', 1),
(651, 'Library', 8, 2, 1, 35000, '0000-00-00', 'Principal', '', 1),
(652, 'Examination', 8, 2, 1, 75000, '0000-00-00', 'Principal', '', 1),
(653, 'Tuition', 8, 2, 1, 175000, '0000-00-00', 'Principal', '', 1),
(654, 'Health Care', 8, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(655, 'ICT', 8, 3, 1, 35000, '0000-00-00', 'Principal', '', 1),
(656, 'Library', 8, 3, 1, 35000, '0000-00-00', 'Principal', '', 1),
(657, 'Examination', 8, 3, 1, 75000, '0000-00-00', 'Principal', '', 1),
(658, 'Tuition', 8, 3, 1, 175000, '0000-00-00', 'Principal', '', 1),
(659, 'Health Care', 7, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(660, 'ICT', 7, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(661, 'Library', 7, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(662, 'Examination', 7, 1, 1, 70000, '0000-00-00', 'Principal', '', 1),
(663, 'Tuition', 7, 1, 1, 170000, '0000-00-00', 'Principal', '', 1),
(664, 'Health Care', 7, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(665, 'ICT', 7, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(666, 'Library', 7, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(667, 'Examination', 7, 2, 1, 70000, '0000-00-00', 'Principal', '', 1),
(668, 'Tuition', 7, 2, 1, 170000, '0000-00-00', 'Principal', '', 1),
(669, 'sub_total1_grade7', 7, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(670, 'sub_total2_grade7', 7, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(671, 'sub_total3_grade7', 7, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(672, 'sub_total4_grade7', 7, 3, 1, 70000, '0000-00-00', 'Principal', '', 1),
(673, 'sub_total5_grade7', 7, 3, 1, 170000, '0000-00-00', 'Principal', '', 1),
(674, 'Health Care', 6, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(675, 'ICT', 6, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(676, 'Library', 6, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(677, 'Examination', 6, 1, 1, 70000, '0000-00-00', 'Principal', '', 1),
(678, 'Tuition', 6, 1, 1, 165000, '0000-00-00', 'Principal', '', 1),
(679, 'Health Care', 6, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(680, 'ICT', 6, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(681, 'Library', 6, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(682, 'Examination', 6, 2, 1, 70000, '0000-00-00', 'Principal', '', 1),
(683, 'Tuition', 6, 2, 1, 165000, '0000-00-00', 'Principal', '', 1),
(684, 'Health Care', 6, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(685, 'ICT', 6, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(686, 'Library', 6, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(687, 'Examination', 6, 3, 1, 70000, '0000-00-00', 'Principal', '', 1),
(688, 'Tuition', 6, 3, 1, 165000, '0000-00-00', 'Principal', '', 1),
(689, 'Health Care', 5, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(690, 'ICT', 5, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(691, 'Library', 5, 1, 1, 30000, '0000-00-00', 'Principal', '', 1),
(692, 'Examination', 5, 1, 1, 70000, '0000-00-00', 'Principal', '', 1),
(693, 'Tuition', 5, 1, 1, 160000, '0000-00-00', 'Principal', '', 1),
(694, 'Health Care', 5, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(695, 'ICT', 5, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(696, 'Library', 5, 2, 1, 30000, '0000-00-00', 'Principal', '', 1),
(697, 'Examination', 5, 2, 1, 70000, '0000-00-00', 'Principal', '', 1),
(698, 'Tuition', 5, 2, 1, 160000, '0000-00-00', 'Principal', '', 1),
(699, 'Health Care', 5, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(700, 'ICT', 5, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(701, 'Library', 5, 3, 1, 30000, '0000-00-00', 'Principal', '', 1),
(702, 'Examination', 5, 3, 1, 70000, '0000-00-00', 'Principal', '', 1),
(703, 'Tuition', 5, 3, 1, 160000, '0000-00-00', 'Principal', '', 1),
(704, 'Health Care', 4, 1, 1, 20000, '0000-00-00', 'Principal', '', 1),
(705, 'ICT', 4, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(706, 'Library', 4, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(707, 'Examination', 4, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(708, 'Tuition', 4, 1, 1, 140000, '0000-00-00', 'Principal', '', 1),
(709, 'Health Care', 4, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(710, 'ICT', 4, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(711, 'Library', 4, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(712, 'Examination', 4, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(713, 'Tuition', 4, 2, 1, 140000, '0000-00-00', 'Principal', '', 1),
(714, 'Health Care', 4, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(715, 'ICT', 4, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(716, 'Library', 4, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(717, 'Examination', 4, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(718, 'Tuition', 4, 3, 1, 140000, '0000-00-00', 'Principal', '', 1),
(719, 'Health Care', 3, 1, 1, 20000, '0000-00-00', 'Principal', '', 1),
(720, 'ICT', 3, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(721, 'Library', 3, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(722, 'Examination', 3, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(723, 'Tuition', 3, 1, 1, 130000, '0000-00-00', 'Principal', '', 1),
(724, 'Health Care', 3, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(725, 'ICT', 3, 2, 1, 20500, '0000-00-00', 'Principal', '', 1),
(726, 'Library', 3, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(727, 'Examination', 3, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(728, 'Tuition', 3, 2, 1, 130000, '0000-00-00', 'Principal', '', 1),
(729, 'Health Care', 3, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(730, 'ICT', 3, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(731, 'Library', 3, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(732, 'Examination', 3, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(733, 'Tuition', 3, 3, 1, 130000, '0000-00-00', 'Principal', '', 1),
(734, 'Health Care', 2, 1, 1, 20000, '0000-00-00', 'Principal', '', 1),
(735, 'ICT', 2, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(736, 'Library', 2, 1, 1, 25000, '0000-00-00', 'Principal', '', 1),
(737, 'Examination', 2, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(738, 'Tuition', 2, 1, 1, 120000, '0000-00-00', 'Principal', '', 1),
(739, 'Health Care', 2, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(740, 'ICT', 2, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(741, 'Library', 2, 2, 1, 25000, '0000-00-00', 'Principal', '', 1),
(742, 'Examination', 2, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(743, 'Tuition', 2, 2, 1, 120000, '0000-00-00', 'Principal', '', 1),
(744, 'Health Care', 2, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(745, 'ICT', 2, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(746, 'Library', 2, 3, 1, 25000, '0000-00-00', 'Principal', '', 1),
(747, 'Examination', 2, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(748, 'Tuition', 2, 3, 1, 120000, '0000-00-00', 'Principal', '', 1),
(749, 'ICT', 1, 1, 1, 20000, '0000-00-00', 'Principal', '', 1),
(750, 'Library', 1, 1, 1, 20000, '0000-00-00', 'Principal', '', 1),
(751, 'Health', 1, 1, 1, 20000, '0000-00-00', 'Principal', '', 1),
(752, 'Examination', 1, 1, 1, 50000, '0000-00-00', 'Principal', '', 1),
(753, 'Tuition', 1, 1, 1, 100000, '0000-00-00', 'Principal', '', 1),
(754, 'ICT', 1, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(755, 'Libary', 1, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(756, 'Health', 1, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(757, 'Examination', 1, 2, 1, 20000, '0000-00-00', 'Principal', '', 1),
(758, 'Tuition', 1, 2, 1, 100000, '0000-00-00', 'Principal', '', 1),
(759, 'Health', 1, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(760, 'ICT', 1, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(761, 'Libary', 1, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(762, 'Examination', 1, 3, 1, 20000, '0000-00-00', 'Principal', '', 1),
(763, 'Tuition', 1, 3, 1, 100000, '0000-00-00', 'Principal', '', 1),
(764, 'total', 15, 1, 1, 500000, '0000-00-00', 'Principal', '', 1),
(765, 'total', 15, 2, 1, 530000, '0000-00-00', 'Principal', '', 1),
(766, 'total', 15, 3, 1, 520000, '0000-00-00', 'Principal', '', 1),
(767, 'Hostels', 15, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(768, 'Library', 15, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(769, 'Security', 15, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(770, 'Examination', 15, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(771, 'Tuition', 15, 1, 1, 200000, '0000-00-00', 'Principal', '', 1),
(772, 'Books', 15, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(773, 'Health Service', 15, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(774, 'Library', 15, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(775, 'Examination', 15, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(776, 'Tuition', 15, 2, 1, 220000, '0000-00-00', 'Principal', '', 1),
(777, 'Development Fees', 15, 3, 1, 47000, '0000-00-00', 'Principal', '', 1),
(778, 'Hostel Fees', 15, 3, 1, 10000, '0000-00-00', 'Principal', '', 1),
(779, 'PTA', 15, 3, 1, 48000, '0000-00-00', 'Principal', '', 1),
(780, 'Tution and Security', 15, 3, 1, 160000, '0000-00-00', 'Principal', '', 1),
(781, 'Health', 15, 3, 1, 60000, '0000-00-00', 'Principal', '', 1),
(782, 'total', 16, 1, 1, 470000, '0000-00-00', 'Principal', '', 1),
(783, 'total', 16, 2, 1, 490000, '0000-00-00', 'Principal', '', 1),
(784, 'total', 16, 3, 1, 500000, '0000-00-00', 'Principal', '', 1),
(785, 'Health Service', 16, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(786, 'External Exam', 16, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(787, 'Library', 16, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(788, 'Examination', 16, 1, 1, 60000, '0000-00-00', 'Principal', '', 1),
(789, 'Tuition', 16, 1, 1, 150000, '0000-00-00', 'Principal', '', 1),
(790, 'Library', 16, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(791, 'JAMB', 16, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(792, 'Health Service', 16, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(793, 'Examination', 16, 2, 1, 60000, '0000-00-00', 'Principal', '', 1),
(794, 'Tuition', 16, 2, 1, 150000, '0000-00-00', 'Principal', '', 1),
(795, 'Development Fees', 16, 3, 1, 47000, '0000-00-00', 'Principal', '', 1),
(796, 'Hostel Fees', 16, 3, 1, 10000, '0000-00-00', 'Principal', '', 1),
(797, 'PTA', 16, 3, 1, 48000, '0000-00-00', 'Principal', '', 1),
(798, 'Security', 16, 3, 1, 6800, '0000-00-00', 'Principal', '', 1),
(799, 'Tuition', 16, 3, 1, 150000, '0000-00-00', 'Principal', '', 1),
(800, 'total', 14, 1, 2, 470000, '0000-00-00', 'Principal', '', 1),
(801, 'total', 14, 2, 2, 500000, '0000-00-00', 'Principal', '', 1),
(802, 'total', 14, 3, 2, 550000, '0000-00-00', 'Principal', '', 1),
(803, 'total', 13, 1, 2, 460000, '0000-00-00', 'Principal', '', 1),
(804, 'total', 13, 2, 2, 550000, '0000-00-00', 'Principal', '', 1),
(805, 'total', 13, 3, 2, 500000, '0000-00-00', 'Principal', '', 1),
(806, 'total', 12, 1, 2, 550000, '0000-00-00', 'Principal', '', 1),
(807, 'total', 12, 2, 2, 550000, '0000-00-00', 'Principal', '', 1),
(808, 'total', 12, 3, 2, 480000, '0000-00-00', 'Principal', '', 1),
(809, 'total', 11, 1, 2, 515000, '0000-00-00', 'Principal', '', 1),
(810, 'total', 11, 2, 2, 515000, '0000-00-00', 'Principal', '', 1),
(811, 'total', 11, 3, 2, 515000, '0000-00-00', 'Principal', '', 1),
(812, 'total', 10, 1, 2, 460000, '0000-00-00', 'Principal', '', 1),
(813, 'total', 10, 2, 2, 460000, '0000-00-00', 'Principal', '', 1),
(814, 'total', 10, 3, 2, 460000, '0000-00-00', 'Principal', '', 1),
(815, 'total', 9, 1, 2, 455000, '0000-00-00', 'Principal', '', 1),
(816, 'total', 9, 2, 2, 455000, '0000-00-00', 'Principal', '', 1),
(817, 'total', 9, 3, 2, 455000, '0000-00-00', 'Principal', '', 1),
(818, 'total', 8, 1, 2, 450000, '0000-00-00', 'Principal', '', 1),
(819, 'total', 8, 2, 2, 450000, '0000-00-00', 'Principal', '', 1),
(820, 'total', 8, 3, 2, 450000, '0000-00-00', 'Principal', '', 1),
(821, 'total', 7, 1, 2, 425000, '0000-00-00', 'Principal', '', 1),
(822, 'total', 7, 2, 2, 425000, '0000-00-00', 'Principal', '', 1),
(823, 'total', 7, 3, 2, 425000, '0000-00-00', 'Principal', '', 1),
(824, 'total', 6, 1, 2, 420000, '0000-00-00', 'Principal', '', 1),
(825, 'total', 6, 2, 2, 420000, '0000-00-00', 'Principal', '', 1),
(826, 'total', 6, 3, 2, 420000, '0000-00-00', 'Principal', '', 1),
(827, 'total', 5, 1, 2, 415000, '0000-00-00', 'Principal', '', 1),
(828, 'total', 5, 2, 2, 415000, '0000-00-00', 'Principal', '', 1),
(829, 'total', 5, 3, 2, 415000, '0000-00-00', 'Principal', '', 1),
(830, 'total', 4, 1, 2, 370000, '0000-00-00', 'Principal', '', 1),
(831, 'total', 4, 2, 2, 370000, '0000-00-00', 'Principal', '', 1),
(832, 'total', 4, 3, 2, 370000, '0000-00-00', 'Principal', '', 1),
(833, 'total', 3, 1, 2, 360000, '0000-00-00', 'Principal', '', 1),
(834, 'total', 3, 2, 2, 360000, '0000-00-00', 'Principal', '', 1),
(835, 'total', 3, 3, 2, 360000, '0000-00-00', 'Principal', '', 1),
(836, 'total', 2, 1, 2, 350000, '0000-00-00', 'Principal', '', 1),
(837, 'total', 2, 2, 2, 350000, '0000-00-00', 'Principal', '', 1),
(838, 'total', 2, 3, 2, 350000, '0000-00-00', 'Principal', '', 1),
(839, 'total', 1, 1, 2, 300000, '0000-00-00', 'Principal', '', 1),
(840, 'total', 1, 2, 2, 309000, '0000-00-00', 'Principal', '', 1),
(841, 'total', 1, 3, 2, 310000, '0000-00-00', 'Principal', '', 1),
(842, 'Security', 14, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(843, 'Health Service', 14, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(844, 'Libary', 14, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(845, 'Examination', 14, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(846, 'Tuition', 14, 1, 2, 180000, '0000-00-00', 'Principal', '', 1),
(847, 'Library', 14, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(848, 'Health Service', 14, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(849, 'Security', 14, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(850, 'Examination', 14, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(851, 'Tuition', 14, 2, 2, 200000, '0000-00-00', 'Principal', '', 1),
(852, 'Development Fees', 14, 3, 2, 47000, '0000-00-00', 'Principal', '', 1),
(853, 'Hostel Fees', 14, 3, 2, 10000, '0000-00-00', 'Principal', '', 1),
(854, 'PTA', 14, 3, 2, 48000, '0000-00-00', 'Principal', '', 1),
(855, 'Tution and Security', 14, 3, 2, 6800, '0000-00-00', 'Principal', '', 1),
(856, 'Health', 14, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(857, 'Libary', 13, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(858, 'Health Service', 13, 1, 2, 45000, '0000-00-00', 'Principal', '', 1),
(859, 'Security', 13, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(860, 'Examination', 13, 1, 2, 70000, '0000-00-00', 'Principal', '', 1),
(861, 'Tuition', 13, 1, 2, 160000, '0000-00-00', 'Principal', '', 1),
(862, 'Security', 13, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(863, 'Libary', 13, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(864, 'ICT', 13, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(865, 'Health Service', 13, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(866, 'Tuition', 13, 2, 2, 260000, '0000-00-00', 'Principal', '', 1),
(867, 'Examination', 13, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(868, 'Health Service', 13, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(869, 'Library', 13, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(870, 'Security', 13, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(871, 'Tuition', 13, 3, 2, 250000, '0000-00-00', 'Principal', '', 1),
(872, 'Health Service', 12, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(873, 'Libary', 12, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(874, 'Security', 12, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(875, 'Examination', 12, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(876, 'Tuition', 12, 1, 2, 250000, '0000-00-00', 'Principal', '', 1),
(877, 'Books', 12, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(878, 'Health Service', 12, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(879, 'Library', 12, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(880, 'Examination', 12, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(881, 'Tuition', 12, 2, 2, 250000, '0000-00-00', 'Principal', '', 1),
(882, 'ICT', 12, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(883, 'Examination', 12, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(884, 'Health Service', 12, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(885, 'Security', 12, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(886, 'Tuition', 12, 3, 2, 190000, '0000-00-00', 'Principal', '', 1),
(887, 'Health Care', 11, 1, 2, 35000, '0000-00-00', 'Principal', '', 1),
(888, 'ICT', 11, 1, 2, 50000, '0000-00-00', 'Principal', '', 1),
(889, 'Library', 11, 1, 2, 50000, '0000-00-00', 'Principal', '', 1),
(890, 'Examination', 11, 1, 2, 80000, '0000-00-00', 'Principal', '', 1),
(891, 'Tuition', 11, 1, 2, 200000, '0000-00-00', 'Principal', '', 1),
(892, 'Health Care', 11, 2, 2, 35000, '0000-00-00', 'Principal', '', 1),
(893, 'ICT', 11, 2, 2, 50000, '0000-00-00', 'Principal', '', 1),
(894, 'Library', 11, 2, 2, 50000, '0000-00-00', 'Principal', '', 1),
(895, 'Examination', 11, 2, 2, 80000, '0000-00-00', 'Principal', '', 1),
(896, 'Tuition', 11, 2, 2, 200000, '0000-00-00', 'Principal', '', 1),
(897, 'Health Care', 11, 3, 2, 35000, '0000-00-00', 'Principal', '', 1),
(898, 'ICT', 11, 3, 2, 50000, '0000-00-00', 'Principal', '', 1),
(899, 'Library', 11, 3, 2, 50000, '0000-00-00', 'Principal', '', 1),
(900, 'Examination', 11, 3, 2, 80000, '0000-00-00', 'Principal', '', 1),
(901, 'Tuition', 11, 3, 2, 200000, '0000-00-00', 'Principal', '', 1),
(902, 'Health Care', 10, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(903, 'ICT', 10, 1, 2, 35000, '0000-00-00', 'Principal', '', 1),
(904, 'Library', 10, 1, 2, 35000, '0000-00-00', 'Principal', '', 1),
(905, 'Examination', 10, 1, 2, 75000, '0000-00-00', 'Principal', '', 1),
(906, 'Tuition', 10, 1, 2, 185000, '0000-00-00', 'Principal', '', 1),
(907, 'Health Care', 10, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(908, 'ICT', 10, 2, 2, 35000, '0000-00-00', 'Principal', '', 1),
(909, 'Library', 10, 2, 2, 35000, '0000-00-00', 'Principal', '', 1),
(910, 'Examination', 10, 2, 2, 75000, '0000-00-00', 'Principal', '', 1),
(911, 'Tuition', 10, 2, 2, 185000, '0000-00-00', 'Principal', '', 1),
(912, 'Health Care', 10, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(913, 'ICT', 10, 3, 2, 35000, '0000-00-00', 'Principal', '', 1),
(914, 'Library', 10, 3, 2, 35000, '0000-00-00', 'Principal', '', 1),
(915, 'Examination', 10, 3, 2, 75000, '0000-00-00', 'Principal', '', 1),
(916, 'Tuition', 10, 3, 2, 185000, '0000-00-00', 'Principal', '', 1),
(917, 'Health Care', 9, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(918, 'ICT', 9, 1, 2, 35000, '0000-00-00', 'Principal', '', 1),
(919, 'Library', 9, 1, 2, 35000, '0000-00-00', 'Principal', '', 1),
(920, 'Examination', 9, 1, 2, 75000, '0000-00-00', 'Principal', '', 1),
(921, 'Tuition', 9, 1, 2, 180000, '0000-00-00', 'Principal', '', 1),
(922, 'Health Care', 9, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(923, 'ICT', 9, 2, 2, 35000, '0000-00-00', 'Principal', '', 1),
(924, 'Library', 9, 2, 2, 35000, '0000-00-00', 'Principal', '', 1),
(925, 'Examination', 9, 2, 2, 75000, '0000-00-00', 'Principal', '', 1),
(926, 'Tuition', 9, 2, 2, 180000, '0000-00-00', 'Principal', '', 1),
(927, 'Health Care', 9, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(928, 'ICT', 9, 3, 2, 35000, '0000-00-00', 'Principal', '', 1),
(929, 'Library', 9, 3, 2, 35000, '0000-00-00', 'Principal', '', 1),
(930, 'Examination', 9, 3, 2, 75000, '0000-00-00', 'Principal', '', 1),
(931, 'Tuition', 9, 3, 2, 180000, '0000-00-00', 'Principal', '', 1),
(932, 'Health Care', 8, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(933, 'ICT', 8, 1, 2, 35000, '0000-00-00', 'Principal', '', 1),
(934, 'Library', 8, 1, 2, 35000, '0000-00-00', 'Principal', '', 1),
(935, 'Examination', 8, 1, 2, 75000, '0000-00-00', 'Principal', '', 1),
(936, 'Tuition', 8, 1, 2, 175000, '0000-00-00', 'Principal', '', 1),
(937, 'Health Care', 8, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(938, 'ICT', 8, 2, 2, 35000, '0000-00-00', 'Principal', '', 1),
(939, 'Library', 8, 2, 2, 35000, '0000-00-00', 'Principal', '', 1),
(940, 'Examination', 8, 2, 2, 75000, '0000-00-00', 'Principal', '', 1),
(941, 'Tuition', 8, 2, 2, 175000, '0000-00-00', 'Principal', '', 1),
(942, 'Health Care', 8, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(943, 'ICT', 8, 3, 2, 35000, '0000-00-00', 'Principal', '', 1),
(944, 'Library', 8, 3, 2, 35000, '0000-00-00', 'Principal', '', 1),
(945, 'Examination', 8, 3, 2, 75000, '0000-00-00', 'Principal', '', 1),
(946, 'Tuition', 8, 3, 2, 175000, '0000-00-00', 'Principal', '', 1),
(947, 'Health Care', 7, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(948, 'ICT', 7, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(949, 'Library', 7, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(950, 'Examination', 7, 1, 2, 70000, '0000-00-00', 'Principal', '', 1),
(951, 'Tuition', 7, 1, 2, 170000, '0000-00-00', 'Principal', '', 1),
(952, 'Health Care', 7, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(953, 'ICT', 7, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(954, 'Library', 7, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(955, 'Examination', 7, 2, 2, 70000, '0000-00-00', 'Principal', '', 1),
(956, 'Tuition', 7, 2, 2, 170000, '0000-00-00', 'Principal', '', 1),
(957, 'sub_total1_grade7', 7, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(958, 'sub_total2_grade7', 7, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(959, 'sub_total3_grade7', 7, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(960, 'sub_total4_grade7', 7, 3, 2, 70000, '0000-00-00', 'Principal', '', 1),
(961, 'sub_total5_grade7', 7, 3, 2, 170000, '0000-00-00', 'Principal', '', 1),
(962, 'Health Care', 6, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(963, 'ICT', 6, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(964, 'Library', 6, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(965, 'Examination', 6, 1, 2, 70000, '0000-00-00', 'Principal', '', 1),
(966, 'Tuition', 6, 1, 2, 165000, '0000-00-00', 'Principal', '', 1),
(967, 'Health Care', 6, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(968, 'ICT', 6, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(969, 'Library', 6, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(970, 'Examination', 6, 2, 2, 70000, '0000-00-00', 'Principal', '', 1),
(971, 'Tuition', 6, 2, 2, 165000, '0000-00-00', 'Principal', '', 1),
(972, 'Health Care', 6, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(973, 'ICT', 6, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(974, 'Library', 6, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(975, 'Examination', 6, 3, 2, 70000, '0000-00-00', 'Principal', '', 1),
(976, 'Tuition', 6, 3, 2, 165000, '0000-00-00', 'Principal', '', 1),
(977, 'Health Care', 5, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(978, 'ICT', 5, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(979, 'Library', 5, 1, 2, 30000, '0000-00-00', 'Principal', '', 1),
(980, 'Examination', 5, 1, 2, 70000, '0000-00-00', 'Principal', '', 1),
(981, 'Tuition', 5, 1, 2, 160000, '0000-00-00', 'Principal', '', 1),
(982, 'Health Care', 5, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(983, 'ICT', 5, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(984, 'Library', 5, 2, 2, 30000, '0000-00-00', 'Principal', '', 1),
(985, 'Examination', 5, 2, 2, 70000, '0000-00-00', 'Principal', '', 1),
(986, 'Tuition', 5, 2, 2, 160000, '0000-00-00', 'Principal', '', 1),
(987, 'Health Care', 5, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(988, 'ICT', 5, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(989, 'Library', 5, 3, 2, 30000, '0000-00-00', 'Principal', '', 1),
(990, 'Examination', 5, 3, 2, 70000, '0000-00-00', 'Principal', '', 1),
(991, 'Tuition', 5, 3, 2, 160000, '0000-00-00', 'Principal', '', 1),
(992, 'Health Care', 4, 1, 2, 20000, '0000-00-00', 'Principal', '', 1),
(993, 'ICT', 4, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(994, 'Library', 4, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(995, 'Examination', 4, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(996, 'Tuition', 4, 1, 2, 140000, '0000-00-00', 'Principal', '', 1),
(997, 'Health Care', 4, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(998, 'ICT', 4, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(999, 'Library', 4, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1000, 'Examination', 4, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1001, 'Tuition', 4, 2, 2, 140000, '0000-00-00', 'Principal', '', 1),
(1002, 'Health Care', 4, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1003, 'ICT', 4, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1004, 'Library', 4, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1005, 'Examination', 4, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1006, 'Tuition', 4, 3, 2, 140000, '0000-00-00', 'Principal', '', 1),
(1007, 'Health Care', 3, 1, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1008, 'ICT', 3, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1009, 'Library', 3, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1010, 'Examination', 3, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1011, 'Tuition', 3, 1, 2, 130000, '0000-00-00', 'Principal', '', 1),
(1012, 'Health Care', 3, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1013, 'ICT', 3, 2, 2, 20500, '0000-00-00', 'Principal', '', 1),
(1014, 'Library', 3, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1015, 'Examination', 3, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1016, 'Tuition', 3, 2, 2, 130000, '0000-00-00', 'Principal', '', 1),
(1017, 'Health Care', 3, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1018, 'ICT', 3, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1019, 'Library', 3, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1020, 'Examination', 3, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1021, 'Tuition', 3, 3, 2, 130000, '0000-00-00', 'Principal', '', 1),
(1022, 'Health Care', 2, 1, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1023, 'ICT', 2, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1024, 'Library', 2, 1, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1025, 'Examination', 2, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1026, 'Tuition', 2, 1, 2, 120000, '0000-00-00', 'Principal', '', 1),
(1027, 'Health Care', 2, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1028, 'ICT', 2, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1029, 'Library', 2, 2, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1030, 'Examination', 2, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1031, 'Tuition', 2, 2, 2, 120000, '0000-00-00', 'Principal', '', 1),
(1032, 'Health Care', 2, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1033, 'ICT', 2, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1034, 'Library', 2, 3, 2, 25000, '0000-00-00', 'Principal', '', 1),
(1035, 'Examination', 2, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1036, 'Tuition', 2, 3, 2, 120000, '0000-00-00', 'Principal', '', 1),
(1037, 'ICT', 1, 1, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1038, 'Library', 1, 1, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1039, 'Health', 1, 1, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1040, 'Examination', 1, 1, 2, 50000, '0000-00-00', 'Principal', '', 1),
(1041, 'Tuition', 1, 1, 2, 100000, '0000-00-00', 'Principal', '', 1),
(1042, 'ICT', 1, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1043, 'Libary', 1, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1044, 'Health', 1, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1045, 'Examination', 1, 2, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1046, 'Tuition', 1, 2, 2, 100000, '0000-00-00', 'Principal', '', 1),
(1047, 'Health', 1, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1048, 'ICT', 1, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1049, 'Libary', 1, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1050, 'Examination', 1, 3, 2, 20000, '0000-00-00', 'Principal', '', 1),
(1051, 'Tuition', 1, 3, 2, 100000, '0000-00-00', 'Principal', '', 1),
(1052, 'total', 15, 1, 2, 500000, '0000-00-00', 'Principal', '', 1),
(1053, 'total', 15, 2, 2, 530000, '0000-00-00', 'Principal', '', 1),
(1054, 'total', 15, 3, 2, 520000, '0000-00-00', 'Principal', '', 1),
(1055, 'Hostels', 15, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1056, 'Library', 15, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1057, 'Security', 15, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1058, 'Examination', 15, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1059, 'Tuition', 15, 1, 2, 200000, '0000-00-00', 'Principal', '', 1),
(1060, 'Books', 15, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1061, 'Health Service', 15, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1062, 'Library', 15, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1063, 'Examination', 15, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1064, 'Tuition', 15, 2, 2, 220000, '0000-00-00', 'Principal', '', 1),
(1065, 'Development Fees', 15, 3, 2, 47000, '0000-00-00', 'Principal', '', 1),
(1066, 'Hostel Fees', 15, 3, 2, 10000, '0000-00-00', 'Principal', '', 1),
(1067, 'PTA', 15, 3, 2, 48000, '0000-00-00', 'Principal', '', 1),
(1068, 'Tution and Security', 15, 3, 2, 160000, '0000-00-00', 'Principal', '', 1),
(1069, 'Health', 15, 3, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1070, 'total', 16, 1, 2, 470000, '0000-00-00', 'Principal', '', 1),
(1071, 'total', 16, 2, 2, 490000, '0000-00-00', 'Principal', '', 1),
(1072, 'total', 16, 3, 2, 500000, '0000-00-00', 'Principal', '', 1),
(1073, 'Health Service', 16, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1074, 'External Exam', 16, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1075, 'Library', 16, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1076, 'Examination', 16, 1, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1077, 'Tuition', 16, 1, 2, 150000, '0000-00-00', 'Principal', '', 1),
(1078, 'Library', 16, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1079, 'JAMB', 16, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1080, 'Health Service', 16, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1081, 'Examination', 16, 2, 2, 60000, '0000-00-00', 'Principal', '', 1),
(1082, 'Tuition', 16, 2, 2, 150000, '0000-00-00', 'Principal', '', 1),
(1083, 'Development Fees', 16, 3, 2, 47000, '0000-00-00', 'Principal', '', 1),
(1084, 'Hostel Fees', 16, 3, 2, 10000, '0000-00-00', 'Principal', '', 1),
(1085, 'PTA', 16, 3, 2, 48000, '0000-00-00', 'Principal', '', 1),
(1086, 'Security', 16, 3, 2, 6800, '0000-00-00', 'Principal', '', 1),
(1087, 'Tuition', 16, 3, 2, 150000, '0000-00-00', 'Principal', '', 1),
(1311, 'total', 14, 1, 3, 470000, '0000-00-00', 'Principal', '', 1),
(1312, 'total', 14, 2, 3, 500000, '0000-00-00', 'Principal', '', 1),
(1313, 'total', 14, 3, 3, 550000, '0000-00-00', 'Principal', '', 1),
(1314, 'total', 13, 1, 3, 460000, '0000-00-00', 'Principal', '', 1),
(1315, 'total', 13, 2, 3, 550000, '0000-00-00', 'Principal', '', 1),
(1316, 'total', 13, 3, 3, 500000, '0000-00-00', 'Principal', '', 1),
(1317, 'total', 12, 1, 3, 550000, '0000-00-00', 'Principal', '', 1),
(1318, 'total', 12, 2, 3, 550000, '0000-00-00', 'Principal', '', 1),
(1319, 'total', 12, 3, 3, 480000, '0000-00-00', 'Principal', '', 1),
(1320, 'total', 11, 1, 3, 515000, '0000-00-00', 'Principal', '', 1),
(1321, 'total', 11, 2, 3, 515000, '0000-00-00', 'Principal', '', 1),
(1322, 'total', 11, 3, 3, 515000, '0000-00-00', 'Principal', '', 1),
(1323, 'total', 10, 1, 3, 460000, '0000-00-00', 'Principal', '', 1),
(1324, 'total', 10, 2, 3, 460000, '0000-00-00', 'Principal', '', 1),
(1325, 'total', 10, 3, 3, 460000, '0000-00-00', 'Principal', '', 1),
(1326, 'total', 9, 1, 3, 455000, '0000-00-00', 'Principal', '', 1),
(1327, 'total', 9, 2, 3, 455000, '0000-00-00', 'Principal', '', 1),
(1328, 'total', 9, 3, 3, 455000, '0000-00-00', 'Principal', '', 1),
(1329, 'total', 8, 1, 3, 450000, '0000-00-00', 'Principal', '', 1),
(1330, 'total', 8, 2, 3, 450000, '0000-00-00', 'Principal', '', 1),
(1331, 'total', 8, 3, 3, 450000, '0000-00-00', 'Principal', '', 1),
(1332, 'total', 7, 1, 3, 425000, '0000-00-00', 'Principal', '', 1),
(1333, 'total', 7, 2, 3, 425000, '0000-00-00', 'Principal', '', 1),
(1334, 'total', 7, 3, 3, 425000, '0000-00-00', 'Principal', '', 1),
(1335, 'total', 6, 1, 3, 420000, '0000-00-00', 'Principal', '', 1),
(1336, 'total', 6, 2, 3, 420000, '0000-00-00', 'Principal', '', 1),
(1337, 'total', 6, 3, 3, 420000, '0000-00-00', 'Principal', '', 1),
(1338, 'total', 5, 1, 3, 415000, '0000-00-00', 'Principal', '', 1),
(1339, 'total', 5, 2, 3, 415000, '0000-00-00', 'Principal', '', 1),
(1340, 'total', 5, 3, 3, 415000, '0000-00-00', 'Principal', '', 1),
(1341, 'total', 4, 1, 3, 370000, '0000-00-00', 'Principal', '', 1),
(1342, 'total', 4, 2, 3, 370000, '0000-00-00', 'Principal', '', 1),
(1343, 'total', 4, 3, 3, 370000, '0000-00-00', 'Principal', '', 1),
(1344, 'total', 3, 1, 3, 360000, '0000-00-00', 'Principal', '', 1),
(1345, 'total', 3, 2, 3, 360000, '0000-00-00', 'Principal', '', 1),
(1346, 'total', 3, 3, 3, 360000, '0000-00-00', 'Principal', '', 1),
(1347, 'total', 2, 1, 3, 350000, '0000-00-00', 'Principal', '', 1),
(1348, 'total', 2, 2, 3, 350000, '0000-00-00', 'Principal', '', 1),
(1349, 'total', 2, 3, 3, 350000, '0000-00-00', 'Principal', '', 1),
(1350, 'total', 1, 1, 3, 300000, '0000-00-00', 'Principal', '', 1),
(1351, 'total', 1, 2, 3, 309000, '0000-00-00', 'Principal', '', 1),
(1352, 'total', 1, 3, 3, 310000, '0000-00-00', 'Principal', '', 1),
(1353, 'Security', 14, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1354, 'Health Service', 14, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1355, 'Libary', 14, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1356, 'Examination', 14, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1357, 'Tuition', 14, 1, 3, 180000, '0000-00-00', 'Principal', '', 1),
(1358, 'Library', 14, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1359, 'Health Service', 14, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1360, 'Security', 14, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1361, 'Examination', 14, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1362, 'Tuition', 14, 2, 3, 200000, '0000-00-00', 'Principal', '', 1),
(1363, 'Development Fees', 14, 3, 3, 47000, '0000-00-00', 'Principal', '', 1),
(1364, 'Hostel Fees', 14, 3, 3, 10000, '0000-00-00', 'Principal', '', 1),
(1365, 'PTA', 14, 3, 3, 48000, '0000-00-00', 'Principal', '', 1),
(1366, 'Tution and Security', 14, 3, 3, 6800, '0000-00-00', 'Principal', '', 1),
(1367, 'Health', 14, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1368, 'Libary', 13, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1369, 'Health Service', 13, 1, 3, 45000, '0000-00-00', 'Principal', '', 1),
(1370, 'Security', 13, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1371, 'Examination', 13, 1, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1372, 'Tuition', 13, 1, 3, 160000, '0000-00-00', 'Principal', '', 1),
(1373, 'Security', 13, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1374, 'Libary', 13, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1375, 'ICT', 13, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1376, 'Health Service', 13, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1377, 'Tuition', 13, 2, 3, 260000, '0000-00-00', 'Principal', '', 1),
(1378, 'Examination', 13, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1379, 'Health Service', 13, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1380, 'Library', 13, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1381, 'Security', 13, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1382, 'Tuition', 13, 3, 3, 250000, '0000-00-00', 'Principal', '', 1),
(1383, 'Health Service', 12, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1384, 'Libary', 12, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1385, 'Security', 12, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1386, 'Examination', 12, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1387, 'Tuition', 12, 1, 3, 250000, '0000-00-00', 'Principal', '', 1),
(1388, 'Books', 12, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1389, 'Health Service', 12, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1390, 'Library', 12, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1391, 'Examination', 12, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1392, 'Tuition', 12, 2, 3, 250000, '0000-00-00', 'Principal', '', 1),
(1393, 'ICT', 12, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1394, 'Examination', 12, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1395, 'Health Service', 12, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1396, 'Security', 12, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1397, 'Tuition', 12, 3, 3, 190000, '0000-00-00', 'Principal', '', 1),
(1398, 'Health Care', 11, 1, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1399, 'ICT', 11, 1, 3, 50000, '0000-00-00', 'Principal', '', 1),
(1400, 'Library', 11, 1, 3, 50000, '0000-00-00', 'Principal', '', 1),
(1401, 'Examination', 11, 1, 3, 80000, '0000-00-00', 'Principal', '', 1),
(1402, 'Tuition', 11, 1, 3, 200000, '0000-00-00', 'Principal', '', 1),
(1403, 'Health Care', 11, 2, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1404, 'ICT', 11, 2, 3, 50000, '0000-00-00', 'Principal', '', 1),
(1405, 'Library', 11, 2, 3, 50000, '0000-00-00', 'Principal', '', 1),
(1406, 'Examination', 11, 2, 3, 80000, '0000-00-00', 'Principal', '', 1),
(1407, 'Tuition', 11, 2, 3, 200000, '0000-00-00', 'Principal', '', 1),
(1408, 'Health Care', 11, 3, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1409, 'ICT', 11, 3, 3, 50000, '0000-00-00', 'Principal', '', 1),
(1410, 'Library', 11, 3, 3, 50000, '0000-00-00', 'Principal', '', 1),
(1411, 'Examination', 11, 3, 3, 80000, '0000-00-00', 'Principal', '', 1),
(1412, 'Tuition', 11, 3, 3, 200000, '0000-00-00', 'Principal', '', 1),
(1413, 'Health Care', 10, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1414, 'ICT', 10, 1, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1415, 'Library', 10, 1, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1416, 'Examination', 10, 1, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1417, 'Tuition', 10, 1, 3, 185000, '0000-00-00', 'Principal', '', 1),
(1418, 'Health Care', 10, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1419, 'ICT', 10, 2, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1420, 'Library', 10, 2, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1421, 'Examination', 10, 2, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1422, 'Tuition', 10, 2, 3, 185000, '0000-00-00', 'Principal', '', 1),
(1423, 'Health Care', 10, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1424, 'ICT', 10, 3, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1425, 'Library', 10, 3, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1426, 'Examination', 10, 3, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1427, 'Tuition', 10, 3, 3, 185000, '0000-00-00', 'Principal', '', 1),
(1428, 'Health Care', 9, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1429, 'ICT', 9, 1, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1430, 'Library', 9, 1, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1431, 'Examination', 9, 1, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1432, 'Tuition', 9, 1, 3, 180000, '0000-00-00', 'Principal', '', 1),
(1433, 'Health Care', 9, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1434, 'ICT', 9, 2, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1435, 'Library', 9, 2, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1436, 'Examination', 9, 2, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1437, 'Tuition', 9, 2, 3, 180000, '0000-00-00', 'Principal', '', 1),
(1438, 'Health Care', 9, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1439, 'ICT', 9, 3, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1440, 'Library', 9, 3, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1441, 'Examination', 9, 3, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1442, 'Tuition', 9, 3, 3, 180000, '0000-00-00', 'Principal', '', 1),
(1443, 'Health Care', 8, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1444, 'ICT', 8, 1, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1445, 'Library', 8, 1, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1446, 'Examination', 8, 1, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1447, 'Tuition', 8, 1, 3, 175000, '0000-00-00', 'Principal', '', 1),
(1448, 'Health Care', 8, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1449, 'ICT', 8, 2, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1450, 'Library', 8, 2, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1451, 'Examination', 8, 2, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1452, 'Tuition', 8, 2, 3, 175000, '0000-00-00', 'Principal', '', 1),
(1453, 'Health Care', 8, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1454, 'ICT', 8, 3, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1455, 'Library', 8, 3, 3, 35000, '0000-00-00', 'Principal', '', 1),
(1456, 'Examination', 8, 3, 3, 75000, '0000-00-00', 'Principal', '', 1),
(1457, 'Tuition', 8, 3, 3, 175000, '0000-00-00', 'Principal', '', 1),
(1458, 'Health Care', 7, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1459, 'ICT', 7, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1460, 'Library', 7, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1461, 'Examination', 7, 1, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1462, 'Tuition', 7, 1, 3, 170000, '0000-00-00', 'Principal', '', 1),
(1463, 'Health Care', 7, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1464, 'ICT', 7, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1465, 'Library', 7, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1466, 'Examination', 7, 2, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1467, 'Tuition', 7, 2, 3, 170000, '0000-00-00', 'Principal', '', 1),
(1468, 'sub_total1_grade7', 7, 3, 3, 25000, '0000-00-00', 'Principal', '', 1);
INSERT INTO `school_fees` (`id`, `component`, `grades`, `grades_term`, `school_year`, `price`, `date`, `creator`, `comment`, `active`) VALUES
(1469, 'sub_total2_grade7', 7, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1470, 'sub_total3_grade7', 7, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1471, 'sub_total4_grade7', 7, 3, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1472, 'sub_total5_grade7', 7, 3, 3, 170000, '0000-00-00', 'Principal', '', 1),
(1473, 'Health Care', 6, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1474, 'ICT', 6, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1475, 'Library', 6, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1476, 'Examination', 6, 1, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1477, 'Tuition', 6, 1, 3, 165000, '0000-00-00', 'Principal', '', 1),
(1478, 'Health Care', 6, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1479, 'ICT', 6, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1480, 'Library', 6, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1481, 'Examination', 6, 2, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1482, 'Tuition', 6, 2, 3, 165000, '0000-00-00', 'Principal', '', 1),
(1483, 'Health Care', 6, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1484, 'ICT', 6, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1485, 'Library', 6, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1486, 'Examination', 6, 3, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1487, 'Tuition', 6, 3, 3, 165000, '0000-00-00', 'Principal', '', 1),
(1488, 'Health Care', 5, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1489, 'ICT', 5, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1490, 'Library', 5, 1, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1491, 'Examination', 5, 1, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1492, 'Tuition', 5, 1, 3, 160000, '0000-00-00', 'Principal', '', 1),
(1493, 'Health Care', 5, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1494, 'ICT', 5, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1495, 'Library', 5, 2, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1496, 'Examination', 5, 2, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1497, 'Tuition', 5, 2, 3, 160000, '0000-00-00', 'Principal', '', 1),
(1498, 'Health Care', 5, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1499, 'ICT', 5, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1500, 'Library', 5, 3, 3, 30000, '0000-00-00', 'Principal', '', 1),
(1501, 'Examination', 5, 3, 3, 70000, '0000-00-00', 'Principal', '', 1),
(1502, 'Tuition', 5, 3, 3, 160000, '0000-00-00', 'Principal', '', 1),
(1503, 'Health Care', 4, 1, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1504, 'ICT', 4, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1505, 'Library', 4, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1506, 'Examination', 4, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1507, 'Tuition', 4, 1, 3, 140000, '0000-00-00', 'Principal', '', 1),
(1508, 'Health Care', 4, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1509, 'ICT', 4, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1510, 'Library', 4, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1511, 'Examination', 4, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1512, 'Tuition', 4, 2, 3, 140000, '0000-00-00', 'Principal', '', 1),
(1513, 'Health Care', 4, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1514, 'ICT', 4, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1515, 'Library', 4, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1516, 'Examination', 4, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1517, 'Tuition', 4, 3, 3, 140000, '0000-00-00', 'Principal', '', 1),
(1518, 'Health Care', 3, 1, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1519, 'ICT', 3, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1520, 'Library', 3, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1521, 'Examination', 3, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1522, 'Tuition', 3, 1, 3, 130000, '0000-00-00', 'Principal', '', 1),
(1523, 'Health Care', 3, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1524, 'ICT', 3, 2, 3, 20500, '0000-00-00', 'Principal', '', 1),
(1525, 'Library', 3, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1526, 'Examination', 3, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1527, 'Tuition', 3, 2, 3, 130000, '0000-00-00', 'Principal', '', 1),
(1528, 'Health Care', 3, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1529, 'ICT', 3, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1530, 'Library', 3, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1531, 'Examination', 3, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1532, 'Tuition', 3, 3, 3, 130000, '0000-00-00', 'Principal', '', 1),
(1533, 'Health Care', 2, 1, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1534, 'ICT', 2, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1535, 'Library', 2, 1, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1536, 'Examination', 2, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1537, 'Tuition', 2, 1, 3, 120000, '0000-00-00', 'Principal', '', 1),
(1538, 'Health Care', 2, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1539, 'ICT', 2, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1540, 'Library', 2, 2, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1541, 'Examination', 2, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1542, 'Tuition', 2, 2, 3, 120000, '0000-00-00', 'Principal', '', 1),
(1543, 'Health Care', 2, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1544, 'ICT', 2, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1545, 'Library', 2, 3, 3, 25000, '0000-00-00', 'Principal', '', 1),
(1546, 'Examination', 2, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1547, 'Tuition', 2, 3, 3, 120000, '0000-00-00', 'Principal', '', 1),
(1548, 'ICT', 1, 1, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1549, 'Library', 1, 1, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1550, 'Health', 1, 1, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1551, 'Examination', 1, 1, 3, 50000, '0000-00-00', 'Principal', '', 1),
(1552, 'Tuition', 1, 1, 3, 100000, '0000-00-00', 'Principal', '', 1),
(1553, 'ICT', 1, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1554, 'Libary', 1, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1555, 'Health', 1, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1556, 'Examination', 1, 2, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1557, 'Tuition', 1, 2, 3, 100000, '0000-00-00', 'Principal', '', 1),
(1558, 'Health', 1, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1559, 'ICT', 1, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1560, 'Libary', 1, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1561, 'Examination', 1, 3, 3, 20000, '0000-00-00', 'Principal', '', 1),
(1562, 'Tuition', 1, 3, 3, 100000, '0000-00-00', 'Principal', '', 1),
(1563, 'total', 15, 1, 3, 500000, '0000-00-00', 'Principal', '', 1),
(1564, 'total', 15, 2, 3, 530000, '0000-00-00', 'Principal', '', 1),
(1565, 'total', 15, 3, 3, 520000, '0000-00-00', 'Principal', '', 1),
(1566, 'Hostels', 15, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1567, 'Library', 15, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1568, 'Security', 15, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1569, 'Examination', 15, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1570, 'Tuition', 15, 1, 3, 200000, '0000-00-00', 'Principal', '', 1),
(1571, 'Books', 15, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1572, 'Health Service', 15, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1573, 'Library', 15, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1574, 'Examination', 15, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1575, 'Tuition', 15, 2, 3, 220000, '0000-00-00', 'Principal', '', 1),
(1576, 'Development Fees', 15, 3, 3, 47000, '0000-00-00', 'Principal', '', 1),
(1577, 'Hostel Fees', 15, 3, 3, 10000, '0000-00-00', 'Principal', '', 1),
(1578, 'PTA', 15, 3, 3, 48000, '0000-00-00', 'Principal', '', 1),
(1579, 'Tution and Security', 15, 3, 3, 160000, '0000-00-00', 'Principal', '', 1),
(1580, 'Health', 15, 3, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1581, 'total', 16, 1, 3, 470000, '0000-00-00', 'Principal', '', 1),
(1582, 'total', 16, 2, 3, 490000, '0000-00-00', 'Principal', '', 1),
(1583, 'total', 16, 3, 3, 500000, '0000-00-00', 'Principal', '', 1),
(1584, 'Health Service', 16, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1585, 'External Exam', 16, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1586, 'Library', 16, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1587, 'Examination', 16, 1, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1588, 'Tuition', 16, 1, 3, 150000, '0000-00-00', 'Principal', '', 1),
(1589, 'Library', 16, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1590, 'JAMB', 16, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1591, 'Health Service', 16, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1592, 'Examination', 16, 2, 3, 60000, '0000-00-00', 'Principal', '', 1),
(1593, 'Tuition', 16, 2, 3, 150000, '0000-00-00', 'Principal', '', 1),
(1594, 'Development Fees', 16, 3, 3, 47000, '0000-00-00', 'Principal', '', 1),
(1595, 'Hostel Fees', 16, 3, 3, 10000, '0000-00-00', 'Principal', '', 1),
(1596, 'PTA', 16, 3, 3, 48000, '0000-00-00', 'Principal', '', 1),
(1597, 'Security', 16, 3, 3, 6800, '0000-00-00', 'Principal', '', 1),
(1598, 'Tuition', 16, 3, 3, 150000, '0000-00-00', 'Principal', '', 1),
(1822, 'total', 14, 1, 4, 470000, '0000-00-00', 'Principal', '', 1),
(1823, 'total', 14, 2, 4, 500000, '0000-00-00', 'Principal', '', 1),
(1824, 'total', 14, 3, 4, 550000, '0000-00-00', 'Principal', '', 1),
(1825, 'total', 13, 1, 4, 460000, '0000-00-00', 'Principal', '', 1),
(1826, 'total', 13, 2, 4, 550000, '0000-00-00', 'Principal', '', 1),
(1827, 'total', 13, 3, 4, 500000, '0000-00-00', 'Principal', '', 1),
(1828, 'total', 12, 1, 4, 550000, '0000-00-00', 'Principal', '', 1),
(1829, 'total', 12, 2, 4, 550000, '0000-00-00', 'Principal', '', 1),
(1830, 'total', 12, 3, 4, 480000, '0000-00-00', 'Principal', '', 1),
(1831, 'total', 11, 1, 4, 515000, '0000-00-00', 'Principal', '', 1),
(1832, 'total', 11, 2, 4, 515000, '0000-00-00', 'Principal', '', 1),
(1833, 'total', 11, 3, 4, 515000, '0000-00-00', 'Principal', '', 1),
(1834, 'total', 10, 1, 4, 460000, '0000-00-00', 'Principal', '', 1),
(1835, 'total', 10, 2, 4, 460000, '0000-00-00', 'Principal', '', 1),
(1836, 'total', 10, 3, 4, 460000, '0000-00-00', 'Principal', '', 1),
(1837, 'total', 9, 1, 4, 455000, '0000-00-00', 'Principal', '', 1),
(1838, 'total', 9, 2, 4, 455000, '0000-00-00', 'Principal', '', 1),
(1839, 'total', 9, 3, 4, 455000, '0000-00-00', 'Principal', '', 1),
(1840, 'total', 8, 1, 4, 450000, '0000-00-00', 'Principal', '', 1),
(1841, 'total', 8, 2, 4, 450000, '0000-00-00', 'Principal', '', 1),
(1842, 'total', 8, 3, 4, 450000, '0000-00-00', 'Principal', '', 1),
(1843, 'total', 7, 1, 4, 425000, '0000-00-00', 'Principal', '', 1),
(1844, 'total', 7, 2, 4, 425000, '0000-00-00', 'Principal', '', 1),
(1845, 'total', 7, 3, 4, 425000, '0000-00-00', 'Principal', '', 1),
(1846, 'total', 6, 1, 4, 420000, '0000-00-00', 'Principal', '', 1),
(1847, 'total', 6, 2, 4, 420000, '0000-00-00', 'Principal', '', 1),
(1848, 'total', 6, 3, 4, 420000, '0000-00-00', 'Principal', '', 1),
(1849, 'total', 5, 1, 4, 415000, '0000-00-00', 'Principal', '', 1),
(1850, 'total', 5, 2, 4, 415000, '0000-00-00', 'Principal', '', 1),
(1851, 'total', 5, 3, 4, 415000, '0000-00-00', 'Principal', '', 1),
(1852, 'total', 4, 1, 4, 370000, '0000-00-00', 'Principal', '', 1),
(1853, 'total', 4, 2, 4, 370000, '0000-00-00', 'Principal', '', 1),
(1854, 'total', 4, 3, 4, 370000, '0000-00-00', 'Principal', '', 1),
(1855, 'total', 3, 1, 4, 360000, '0000-00-00', 'Principal', '', 1),
(1856, 'total', 3, 2, 4, 360000, '0000-00-00', 'Principal', '', 1),
(1857, 'total', 3, 3, 4, 360000, '0000-00-00', 'Principal', '', 1),
(1858, 'total', 2, 1, 4, 350000, '0000-00-00', 'Principal', '', 1),
(1859, 'total', 2, 2, 4, 350000, '0000-00-00', 'Principal', '', 1),
(1860, 'total', 2, 3, 4, 350000, '0000-00-00', 'Principal', '', 1),
(1861, 'total', 1, 1, 4, 300000, '0000-00-00', 'Principal', '', 1),
(1862, 'total', 1, 2, 4, 309000, '0000-00-00', 'Principal', '', 1),
(1863, 'total', 1, 3, 4, 310000, '0000-00-00', 'Principal', '', 1),
(1864, 'Security', 14, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1865, 'Health Service', 14, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1866, 'Libary', 14, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1867, 'Examination', 14, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1868, 'Tuition', 14, 1, 4, 180000, '0000-00-00', 'Principal', '', 1),
(1869, 'Library', 14, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1870, 'Health Service', 14, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1871, 'Security', 14, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1872, 'Examination', 14, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1873, 'Tuition', 14, 2, 4, 200000, '0000-00-00', 'Principal', '', 1),
(1874, 'Development Fees', 14, 3, 4, 47000, '0000-00-00', 'Principal', '', 1),
(1875, 'Hostel Fees', 14, 3, 4, 10000, '0000-00-00', 'Principal', '', 1),
(1876, 'PTA', 14, 3, 4, 48000, '0000-00-00', 'Principal', '', 1),
(1877, 'Tution and Security', 14, 3, 4, 6800, '0000-00-00', 'Principal', '', 1),
(1878, 'Health', 14, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1879, 'Libary', 13, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1880, 'Health Service', 13, 1, 4, 45000, '0000-00-00', 'Principal', '', 1),
(1881, 'Security', 13, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1882, 'Examination', 13, 1, 4, 70000, '0000-00-00', 'Principal', '', 1),
(1883, 'Tuition', 13, 1, 4, 160000, '0000-00-00', 'Principal', '', 1),
(1884, 'Security', 13, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1885, 'Libary', 13, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1886, 'ICT', 13, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1887, 'Health Service', 13, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(1888, 'Tuition', 13, 2, 4, 260000, '0000-00-00', 'Principal', '', 1),
(1889, 'Examination', 13, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1890, 'Health Service', 13, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1891, 'Library', 13, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1892, 'Security', 13, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1893, 'Tuition', 13, 3, 4, 250000, '0000-00-00', 'Principal', '', 1),
(1894, 'Health Service', 12, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1895, 'Libary', 12, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1896, 'Security', 12, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1897, 'Examination', 12, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1898, 'Tuition', 12, 1, 4, 250000, '0000-00-00', 'Principal', '', 1),
(1899, 'Books', 12, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1900, 'Health Service', 12, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1901, 'Library', 12, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1902, 'Examination', 12, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1903, 'Tuition', 12, 2, 4, 250000, '0000-00-00', 'Principal', '', 1),
(1904, 'ICT', 12, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(1905, 'Examination', 12, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1906, 'Health Service', 12, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1907, 'Security', 12, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(1908, 'Tuition', 12, 3, 4, 190000, '0000-00-00', 'Principal', '', 1),
(1909, 'Health Care', 11, 1, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1910, 'ICT', 11, 1, 4, 50000, '0000-00-00', 'Principal', '', 1),
(1911, 'Library', 11, 1, 4, 50000, '0000-00-00', 'Principal', '', 1),
(1912, 'Examination', 11, 1, 4, 80000, '0000-00-00', 'Principal', '', 1),
(1913, 'Tuition', 11, 1, 4, 200000, '0000-00-00', 'Principal', '', 1),
(1914, 'Health Care', 11, 2, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1915, 'ICT', 11, 2, 4, 50000, '0000-00-00', 'Principal', '', 1),
(1916, 'Library', 11, 2, 4, 50000, '0000-00-00', 'Principal', '', 1),
(1917, 'Examination', 11, 2, 4, 80000, '0000-00-00', 'Principal', '', 1),
(1918, 'Tuition', 11, 2, 4, 200000, '0000-00-00', 'Principal', '', 1),
(1919, 'Health Care', 11, 3, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1920, 'ICT', 11, 3, 4, 50000, '0000-00-00', 'Principal', '', 1),
(1921, 'Library', 11, 3, 4, 50000, '0000-00-00', 'Principal', '', 1),
(1922, 'Examination', 11, 3, 4, 80000, '0000-00-00', 'Principal', '', 1),
(1923, 'Tuition', 11, 3, 4, 200000, '0000-00-00', 'Principal', '', 1),
(1924, 'Health Care', 10, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1925, 'ICT', 10, 1, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1926, 'Library', 10, 1, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1927, 'Examination', 10, 1, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1928, 'Tuition', 10, 1, 4, 185000, '0000-00-00', 'Principal', '', 1),
(1929, 'Health Care', 10, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1930, 'ICT', 10, 2, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1931, 'Library', 10, 2, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1932, 'Examination', 10, 2, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1933, 'Tuition', 10, 2, 4, 185000, '0000-00-00', 'Principal', '', 1),
(1934, 'Health Care', 10, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1935, 'ICT', 10, 3, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1936, 'Library', 10, 3, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1937, 'Examination', 10, 3, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1938, 'Tuition', 10, 3, 4, 185000, '0000-00-00', 'Principal', '', 1),
(1939, 'Health Care', 9, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1940, 'ICT', 9, 1, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1941, 'Library', 9, 1, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1942, 'Examination', 9, 1, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1943, 'Tuition', 9, 1, 4, 180000, '0000-00-00', 'Principal', '', 1),
(1944, 'Health Care', 9, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1945, 'ICT', 9, 2, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1946, 'Library', 9, 2, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1947, 'Examination', 9, 2, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1948, 'Tuition', 9, 2, 4, 180000, '0000-00-00', 'Principal', '', 1),
(1949, 'Health Care', 9, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1950, 'ICT', 9, 3, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1951, 'Library', 9, 3, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1952, 'Examination', 9, 3, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1953, 'Tuition', 9, 3, 4, 180000, '0000-00-00', 'Principal', '', 1),
(1954, 'Health Care', 8, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1955, 'ICT', 8, 1, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1956, 'Library', 8, 1, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1957, 'Examination', 8, 1, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1958, 'Tuition', 8, 1, 4, 175000, '0000-00-00', 'Principal', '', 1),
(1959, 'Health Care', 8, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1960, 'ICT', 8, 2, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1961, 'Library', 8, 2, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1962, 'Examination', 8, 2, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1963, 'Tuition', 8, 2, 4, 175000, '0000-00-00', 'Principal', '', 1),
(1964, 'Health Care', 8, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1965, 'ICT', 8, 3, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1966, 'Library', 8, 3, 4, 35000, '0000-00-00', 'Principal', '', 1),
(1967, 'Examination', 8, 3, 4, 75000, '0000-00-00', 'Principal', '', 1),
(1968, 'Tuition', 8, 3, 4, 175000, '0000-00-00', 'Principal', '', 1),
(1969, 'Health Care', 7, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(1970, 'ICT', 7, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1971, 'Library', 7, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1972, 'Examination', 7, 1, 4, 70000, '0000-00-00', 'Principal', '', 1),
(1973, 'Tuition', 7, 1, 4, 170000, '0000-00-00', 'Principal', '', 1),
(1974, 'Health Care', 7, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(1975, 'ICT', 7, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1976, 'Library', 7, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1977, 'Examination', 7, 2, 4, 70000, '0000-00-00', 'Principal', '', 1),
(1978, 'Tuition', 7, 2, 4, 170000, '0000-00-00', 'Principal', '', 1),
(1979, 'sub_total1_grade7', 7, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(1980, 'sub_total2_grade7', 7, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1981, 'sub_total3_grade7', 7, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1982, 'sub_total4_grade7', 7, 3, 4, 70000, '0000-00-00', 'Principal', '', 1),
(1983, 'sub_total5_grade7', 7, 3, 4, 170000, '0000-00-00', 'Principal', '', 1),
(1984, 'Health Care', 6, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(1985, 'ICT', 6, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1986, 'Library', 6, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1987, 'Examination', 6, 1, 4, 70000, '0000-00-00', 'Principal', '', 1),
(1988, 'Tuition', 6, 1, 4, 165000, '0000-00-00', 'Principal', '', 1),
(1989, 'Health Care', 6, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(1990, 'ICT', 6, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1991, 'Library', 6, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1992, 'Examination', 6, 2, 4, 70000, '0000-00-00', 'Principal', '', 1),
(1993, 'Tuition', 6, 2, 4, 165000, '0000-00-00', 'Principal', '', 1),
(1994, 'Health Care', 6, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(1995, 'ICT', 6, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1996, 'Library', 6, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(1997, 'Examination', 6, 3, 4, 70000, '0000-00-00', 'Principal', '', 1),
(1998, 'Tuition', 6, 3, 4, 165000, '0000-00-00', 'Principal', '', 1),
(1999, 'Health Care', 5, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2000, 'ICT', 5, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(2001, 'Library', 5, 1, 4, 30000, '0000-00-00', 'Principal', '', 1),
(2002, 'Examination', 5, 1, 4, 70000, '0000-00-00', 'Principal', '', 1),
(2003, 'Tuition', 5, 1, 4, 160000, '0000-00-00', 'Principal', '', 1),
(2004, 'Health Care', 5, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2005, 'ICT', 5, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(2006, 'Library', 5, 2, 4, 30000, '0000-00-00', 'Principal', '', 1),
(2007, 'Examination', 5, 2, 4, 70000, '0000-00-00', 'Principal', '', 1),
(2008, 'Tuition', 5, 2, 4, 160000, '0000-00-00', 'Principal', '', 1),
(2009, 'Health Care', 5, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2010, 'ICT', 5, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(2011, 'Library', 5, 3, 4, 30000, '0000-00-00', 'Principal', '', 1),
(2012, 'Examination', 5, 3, 4, 70000, '0000-00-00', 'Principal', '', 1),
(2013, 'Tuition', 5, 3, 4, 160000, '0000-00-00', 'Principal', '', 1),
(2014, 'Health Care', 4, 1, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2015, 'ICT', 4, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2016, 'Library', 4, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2017, 'Examination', 4, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2018, 'Tuition', 4, 1, 4, 140000, '0000-00-00', 'Principal', '', 1),
(2019, 'Health Care', 4, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2020, 'ICT', 4, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2021, 'Library', 4, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2022, 'Examination', 4, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2023, 'Tuition', 4, 2, 4, 140000, '0000-00-00', 'Principal', '', 1),
(2024, 'Health Care', 4, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2025, 'ICT', 4, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2026, 'Library', 4, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2027, 'Examination', 4, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2028, 'Tuition', 4, 3, 4, 140000, '0000-00-00', 'Principal', '', 1),
(2029, 'Health Care', 3, 1, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2030, 'ICT', 3, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2031, 'Library', 3, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2032, 'Examination', 3, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2033, 'Tuition', 3, 1, 4, 130000, '0000-00-00', 'Principal', '', 1),
(2034, 'Health Care', 3, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2035, 'ICT', 3, 2, 4, 20500, '0000-00-00', 'Principal', '', 1),
(2036, 'Library', 3, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2037, 'Examination', 3, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2038, 'Tuition', 3, 2, 4, 130000, '0000-00-00', 'Principal', '', 1),
(2039, 'Health Care', 3, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2040, 'ICT', 3, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2041, 'Library', 3, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2042, 'Examination', 3, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2043, 'Tuition', 3, 3, 4, 130000, '0000-00-00', 'Principal', '', 1),
(2044, 'Health Care', 2, 1, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2045, 'ICT', 2, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2046, 'Library', 2, 1, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2047, 'Examination', 2, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2048, 'Tuition', 2, 1, 4, 120000, '0000-00-00', 'Principal', '', 1),
(2049, 'Health Care', 2, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2050, 'ICT', 2, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2051, 'Library', 2, 2, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2052, 'Examination', 2, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2053, 'Tuition', 2, 2, 4, 120000, '0000-00-00', 'Principal', '', 1),
(2054, 'Health Care', 2, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2055, 'ICT', 2, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2056, 'Library', 2, 3, 4, 25000, '0000-00-00', 'Principal', '', 1),
(2057, 'Examination', 2, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2058, 'Tuition', 2, 3, 4, 120000, '0000-00-00', 'Principal', '', 1),
(2059, 'ICT', 1, 1, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2060, 'Library', 1, 1, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2061, 'Health', 1, 1, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2062, 'Examination', 1, 1, 4, 50000, '0000-00-00', 'Principal', '', 1),
(2063, 'Tuition', 1, 1, 4, 100000, '0000-00-00', 'Principal', '', 1),
(2064, 'ICT', 1, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2065, 'Libary', 1, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2066, 'Health', 1, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2067, 'Examination', 1, 2, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2068, 'Tuition', 1, 2, 4, 100000, '0000-00-00', 'Principal', '', 1),
(2069, 'Health', 1, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2070, 'ICT', 1, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2071, 'Libary', 1, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2072, 'Examination', 1, 3, 4, 20000, '0000-00-00', 'Principal', '', 1),
(2073, 'Tuition', 1, 3, 4, 100000, '0000-00-00', 'Principal', '', 1),
(2074, 'total', 15, 1, 4, 500000, '0000-00-00', 'Principal', '', 1),
(2075, 'total', 15, 2, 4, 530000, '0000-00-00', 'Principal', '', 1),
(2076, 'total', 15, 3, 4, 520000, '0000-00-00', 'Principal', '', 1),
(2077, 'Hostels', 15, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2078, 'Library', 15, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2079, 'Security', 15, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2080, 'Examination', 15, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2081, 'Tuition', 15, 1, 4, 200000, '0000-00-00', 'Principal', '', 1),
(2082, 'Books', 15, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2083, 'Health Service', 15, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2084, 'Library', 15, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2085, 'Examination', 15, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2086, 'Tuition', 15, 2, 4, 220000, '0000-00-00', 'Principal', '', 1),
(2087, 'Development Fees', 15, 3, 4, 47000, '0000-00-00', 'Principal', '', 1),
(2088, 'Hostel Fees', 15, 3, 4, 10000, '0000-00-00', 'Principal', '', 1),
(2089, 'PTA', 15, 3, 4, 48000, '0000-00-00', 'Principal', '', 1),
(2090, 'Tution and Security', 15, 3, 4, 160000, '0000-00-00', 'Principal', '', 1),
(2091, 'Health', 15, 3, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2092, 'total', 16, 1, 4, 470000, '0000-00-00', 'Principal', '', 1),
(2093, 'total', 16, 2, 4, 490000, '0000-00-00', 'Principal', '', 1),
(2094, 'total', 16, 3, 4, 500000, '0000-00-00', 'Principal', '', 1),
(2095, 'Health Service', 16, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2096, 'External Exam', 16, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2097, 'Library', 16, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2098, 'Examination', 16, 1, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2099, 'Tuition', 16, 1, 4, 150000, '0000-00-00', 'Principal', '', 1),
(2100, 'Library', 16, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2101, 'JAMB', 16, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2102, 'Health Service', 16, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2103, 'Examination', 16, 2, 4, 60000, '0000-00-00', 'Principal', '', 1),
(2104, 'Tuition', 16, 2, 4, 150000, '0000-00-00', 'Principal', '', 1),
(2105, 'Development Fees', 16, 3, 4, 47000, '0000-00-00', 'Principal', '', 1),
(2106, 'Hostel Fees', 16, 3, 4, 10000, '0000-00-00', 'Principal', '', 1),
(2107, 'PTA', 16, 3, 4, 48000, '0000-00-00', 'Principal', '', 1),
(2108, 'Security', 16, 3, 4, 6800, '0000-00-00', 'Principal', '', 1),
(2109, 'Tuition', 16, 3, 4, 150000, '0000-00-00', 'Principal', '', 1),
(2333, 'total', 14, 1, 5, 470000, '0000-00-00', 'Principal', '', 1),
(2334, 'total', 14, 2, 5, 500000, '0000-00-00', 'Principal', '', 1),
(2335, 'total', 14, 3, 5, 550000, '0000-00-00', 'Principal', '', 1),
(2336, 'total', 13, 1, 5, 460000, '0000-00-00', 'Principal', '', 1),
(2337, 'total', 13, 2, 5, 550000, '0000-00-00', 'Principal', '', 1),
(2338, 'total', 13, 3, 5, 500000, '0000-00-00', 'Principal', '', 1),
(2339, 'total', 12, 1, 5, 550000, '0000-00-00', 'Principal', '', 1),
(2340, 'total', 12, 2, 5, 550000, '0000-00-00', 'Principal', '', 1),
(2341, 'total', 12, 3, 5, 480000, '0000-00-00', 'Principal', '', 1),
(2342, 'total', 11, 1, 5, 515000, '0000-00-00', 'Principal', '', 1),
(2343, 'total', 11, 2, 5, 515000, '0000-00-00', 'Principal', '', 1),
(2344, 'total', 11, 3, 5, 515000, '0000-00-00', 'Principal', '', 1),
(2345, 'total', 10, 1, 5, 460000, '0000-00-00', 'Principal', '', 1),
(2346, 'total', 10, 2, 5, 460000, '0000-00-00', 'Principal', '', 1),
(2347, 'total', 10, 3, 5, 460000, '0000-00-00', 'Principal', '', 1),
(2348, 'total', 9, 1, 5, 455000, '0000-00-00', 'Principal', '', 1),
(2349, 'total', 9, 2, 5, 455000, '0000-00-00', 'Principal', '', 1),
(2350, 'total', 9, 3, 5, 455000, '0000-00-00', 'Principal', '', 1),
(2351, 'total', 8, 1, 5, 450000, '0000-00-00', 'Principal', '', 1),
(2352, 'total', 8, 2, 5, 450000, '0000-00-00', 'Principal', '', 1),
(2353, 'total', 8, 3, 5, 450000, '0000-00-00', 'Principal', '', 1),
(2354, 'total', 7, 1, 5, 425000, '0000-00-00', 'Principal', '', 1),
(2355, 'total', 7, 2, 5, 425000, '0000-00-00', 'Principal', '', 1),
(2356, 'total', 7, 3, 5, 425000, '0000-00-00', 'Principal', '', 1),
(2357, 'total', 6, 1, 5, 420000, '0000-00-00', 'Principal', '', 1),
(2358, 'total', 6, 2, 5, 420000, '0000-00-00', 'Principal', '', 1),
(2359, 'total', 6, 3, 5, 420000, '0000-00-00', 'Principal', '', 1),
(2360, 'total', 5, 1, 5, 415000, '0000-00-00', 'Principal', '', 1),
(2361, 'total', 5, 2, 5, 415000, '0000-00-00', 'Principal', '', 1),
(2362, 'total', 5, 3, 5, 415000, '0000-00-00', 'Principal', '', 1),
(2363, 'total', 4, 1, 5, 370000, '0000-00-00', 'Principal', '', 1),
(2364, 'total', 4, 2, 5, 370000, '0000-00-00', 'Principal', '', 1),
(2365, 'total', 4, 3, 5, 370000, '0000-00-00', 'Principal', '', 1),
(2366, 'total', 3, 1, 5, 360000, '0000-00-00', 'Principal', '', 1),
(2367, 'total', 3, 2, 5, 360000, '0000-00-00', 'Principal', '', 1),
(2368, 'total', 3, 3, 5, 360000, '0000-00-00', 'Principal', '', 1),
(2369, 'total', 2, 1, 5, 350000, '0000-00-00', 'Principal', '', 1),
(2370, 'total', 2, 2, 5, 350000, '0000-00-00', 'Principal', '', 1),
(2371, 'total', 2, 3, 5, 350000, '0000-00-00', 'Principal', '', 1),
(2372, 'total', 1, 1, 5, 300000, '0000-00-00', 'Principal', '', 1),
(2373, 'total', 1, 2, 5, 309000, '0000-00-00', 'Principal', '', 1),
(2374, 'total', 1, 3, 5, 310000, '0000-00-00', 'Principal', '', 1),
(2375, 'Security', 14, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2376, 'Health Service', 14, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2377, 'Libary', 14, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2378, 'Examination', 14, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2379, 'Tuition', 14, 1, 5, 180000, '0000-00-00', 'Principal', '', 1),
(2380, 'Library', 14, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2381, 'Health Service', 14, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2382, 'Security', 14, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2383, 'Examination', 14, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2384, 'Tuition', 14, 2, 5, 200000, '0000-00-00', 'Principal', '', 1),
(2385, 'Development Fees', 14, 3, 5, 47000, '0000-00-00', 'Principal', '', 1),
(2386, 'Hostel Fees', 14, 3, 5, 10000, '0000-00-00', 'Principal', '', 1),
(2387, 'PTA', 14, 3, 5, 48000, '0000-00-00', 'Principal', '', 1),
(2388, 'Tution and Security', 14, 3, 5, 6800, '0000-00-00', 'Principal', '', 1),
(2389, 'Health', 14, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2390, 'Libary', 13, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2391, 'Health Service', 13, 1, 5, 45000, '0000-00-00', 'Principal', '', 1),
(2392, 'Security', 13, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2393, 'Examination', 13, 1, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2394, 'Tuition', 13, 1, 5, 160000, '0000-00-00', 'Principal', '', 1),
(2395, 'Security', 13, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2396, 'Libary', 13, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2397, 'ICT', 13, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2398, 'Health Service', 13, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2399, 'Tuition', 13, 2, 5, 260000, '0000-00-00', 'Principal', '', 1),
(2400, 'Examination', 13, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2401, 'Health Service', 13, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2402, 'Library', 13, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2403, 'Security', 13, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2404, 'Tuition', 13, 3, 5, 250000, '0000-00-00', 'Principal', '', 1),
(2405, 'Health Service', 12, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2406, 'Libary', 12, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2407, 'Security', 12, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2408, 'Examination', 12, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2409, 'Tuition', 12, 1, 5, 250000, '0000-00-00', 'Principal', '', 1),
(2410, 'Books', 12, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2411, 'Health Service', 12, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2412, 'Library', 12, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2413, 'Examination', 12, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2414, 'Tuition', 12, 2, 5, 250000, '0000-00-00', 'Principal', '', 1),
(2415, 'ICT', 12, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2416, 'Examination', 12, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2417, 'Health Service', 12, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2418, 'Security', 12, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2419, 'Tuition', 12, 3, 5, 190000, '0000-00-00', 'Principal', '', 1),
(2420, 'Health Care', 11, 1, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2421, 'ICT', 11, 1, 5, 50000, '0000-00-00', 'Principal', '', 1),
(2422, 'Library', 11, 1, 5, 50000, '0000-00-00', 'Principal', '', 1),
(2423, 'Examination', 11, 1, 5, 80000, '0000-00-00', 'Principal', '', 1),
(2424, 'Tuition', 11, 1, 5, 200000, '0000-00-00', 'Principal', '', 1),
(2425, 'Health Care', 11, 2, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2426, 'ICT', 11, 2, 5, 50000, '0000-00-00', 'Principal', '', 1),
(2427, 'Library', 11, 2, 5, 50000, '0000-00-00', 'Principal', '', 1),
(2428, 'Examination', 11, 2, 5, 80000, '0000-00-00', 'Principal', '', 1),
(2429, 'Tuition', 11, 2, 5, 200000, '0000-00-00', 'Principal', '', 1),
(2430, 'Health Care', 11, 3, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2431, 'ICT', 11, 3, 5, 50000, '0000-00-00', 'Principal', '', 1),
(2432, 'Library', 11, 3, 5, 50000, '0000-00-00', 'Principal', '', 1),
(2433, 'Examination', 11, 3, 5, 80000, '0000-00-00', 'Principal', '', 1),
(2434, 'Tuition', 11, 3, 5, 200000, '0000-00-00', 'Principal', '', 1),
(2435, 'Health Care', 10, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2436, 'ICT', 10, 1, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2437, 'Library', 10, 1, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2438, 'Examination', 10, 1, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2439, 'Tuition', 10, 1, 5, 185000, '0000-00-00', 'Principal', '', 1),
(2440, 'Health Care', 10, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2441, 'ICT', 10, 2, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2442, 'Library', 10, 2, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2443, 'Examination', 10, 2, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2444, 'Tuition', 10, 2, 5, 185000, '0000-00-00', 'Principal', '', 1),
(2445, 'Health Care', 10, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2446, 'ICT', 10, 3, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2447, 'Library', 10, 3, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2448, 'Examination', 10, 3, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2449, 'Tuition', 10, 3, 5, 185000, '0000-00-00', 'Principal', '', 1),
(2450, 'Health Care', 9, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2451, 'ICT', 9, 1, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2452, 'Library', 9, 1, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2453, 'Examination', 9, 1, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2454, 'Tuition', 9, 1, 5, 180000, '0000-00-00', 'Principal', '', 1),
(2455, 'Health Care', 9, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2456, 'ICT', 9, 2, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2457, 'Library', 9, 2, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2458, 'Examination', 9, 2, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2459, 'Tuition', 9, 2, 5, 180000, '0000-00-00', 'Principal', '', 1),
(2460, 'Health Care', 9, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2461, 'ICT', 9, 3, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2462, 'Library', 9, 3, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2463, 'Examination', 9, 3, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2464, 'Tuition', 9, 3, 5, 180000, '0000-00-00', 'Principal', '', 1),
(2465, 'Health Care', 8, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2466, 'ICT', 8, 1, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2467, 'Library', 8, 1, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2468, 'Examination', 8, 1, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2469, 'Tuition', 8, 1, 5, 175000, '0000-00-00', 'Principal', '', 1),
(2470, 'Health Care', 8, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2471, 'ICT', 8, 2, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2472, 'Library', 8, 2, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2473, 'Examination', 8, 2, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2474, 'Tuition', 8, 2, 5, 175000, '0000-00-00', 'Principal', '', 1),
(2475, 'Health Care', 8, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2476, 'ICT', 8, 3, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2477, 'Library', 8, 3, 5, 35000, '0000-00-00', 'Principal', '', 1),
(2478, 'Examination', 8, 3, 5, 75000, '0000-00-00', 'Principal', '', 1),
(2479, 'Tuition', 8, 3, 5, 175000, '0000-00-00', 'Principal', '', 1),
(2480, 'Health Care', 7, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2481, 'ICT', 7, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2482, 'Library', 7, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2483, 'Examination', 7, 1, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2484, 'Tuition', 7, 1, 5, 170000, '0000-00-00', 'Principal', '', 1),
(2485, 'Health Care', 7, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2486, 'ICT', 7, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2487, 'Library', 7, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2488, 'Examination', 7, 2, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2489, 'Tuition', 7, 2, 5, 170000, '0000-00-00', 'Principal', '', 1),
(2490, 'sub_total1_grade7', 7, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2491, 'sub_total2_grade7', 7, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2492, 'sub_total3_grade7', 7, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2493, 'sub_total4_grade7', 7, 3, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2494, 'sub_total5_grade7', 7, 3, 5, 170000, '0000-00-00', 'Principal', '', 1),
(2495, 'Health Care', 6, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2496, 'ICT', 6, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2497, 'Library', 6, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2498, 'Examination', 6, 1, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2499, 'Tuition', 6, 1, 5, 165000, '0000-00-00', 'Principal', '', 1),
(2500, 'Health Care', 6, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2501, 'ICT', 6, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2502, 'Library', 6, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2503, 'Examination', 6, 2, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2504, 'Tuition', 6, 2, 5, 165000, '0000-00-00', 'Principal', '', 1),
(2505, 'Health Care', 6, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2506, 'ICT', 6, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2507, 'Library', 6, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2508, 'Examination', 6, 3, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2509, 'Tuition', 6, 3, 5, 165000, '0000-00-00', 'Principal', '', 1),
(2510, 'Health Care', 5, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2511, 'ICT', 5, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2512, 'Library', 5, 1, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2513, 'Examination', 5, 1, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2514, 'Tuition', 5, 1, 5, 160000, '0000-00-00', 'Principal', '', 1),
(2515, 'Health Care', 5, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2516, 'ICT', 5, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2517, 'Library', 5, 2, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2518, 'Examination', 5, 2, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2519, 'Tuition', 5, 2, 5, 160000, '0000-00-00', 'Principal', '', 1),
(2520, 'Health Care', 5, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2521, 'ICT', 5, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2522, 'Library', 5, 3, 5, 30000, '0000-00-00', 'Principal', '', 1),
(2523, 'Examination', 5, 3, 5, 70000, '0000-00-00', 'Principal', '', 1),
(2524, 'Tuition', 5, 3, 5, 160000, '0000-00-00', 'Principal', '', 1),
(2525, 'Health Care', 4, 1, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2526, 'ICT', 4, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2527, 'Library', 4, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2528, 'Examination', 4, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2529, 'Tuition', 4, 1, 5, 140000, '0000-00-00', 'Principal', '', 1),
(2530, 'Health Care', 4, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2531, 'ICT', 4, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2532, 'Library', 4, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2533, 'Examination', 4, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2534, 'Tuition', 4, 2, 5, 140000, '0000-00-00', 'Principal', '', 1),
(2535, 'Health Care', 4, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2536, 'ICT', 4, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2537, 'Library', 4, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2538, 'Examination', 4, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2539, 'Tuition', 4, 3, 5, 140000, '0000-00-00', 'Principal', '', 1),
(2540, 'Health Care', 3, 1, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2541, 'ICT', 3, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2542, 'Library', 3, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2543, 'Examination', 3, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2544, 'Tuition', 3, 1, 5, 130000, '0000-00-00', 'Principal', '', 1),
(2545, 'Health Care', 3, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2546, 'ICT', 3, 2, 5, 20500, '0000-00-00', 'Principal', '', 1),
(2547, 'Library', 3, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2548, 'Examination', 3, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2549, 'Tuition', 3, 2, 5, 130000, '0000-00-00', 'Principal', '', 1),
(2550, 'Health Care', 3, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2551, 'ICT', 3, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2552, 'Library', 3, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2553, 'Examination', 3, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2554, 'Tuition', 3, 3, 5, 130000, '0000-00-00', 'Principal', '', 1),
(2555, 'Health Care', 2, 1, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2556, 'ICT', 2, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2557, 'Library', 2, 1, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2558, 'Examination', 2, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2559, 'Tuition', 2, 1, 5, 120000, '0000-00-00', 'Principal', '', 1),
(2560, 'Health Care', 2, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2561, 'ICT', 2, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2562, 'Library', 2, 2, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2563, 'Examination', 2, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2564, 'Tuition', 2, 2, 5, 120000, '0000-00-00', 'Principal', '', 1),
(2565, 'Health Care', 2, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2566, 'ICT', 2, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2567, 'Library', 2, 3, 5, 25000, '0000-00-00', 'Principal', '', 1),
(2568, 'Examination', 2, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2569, 'Tuition', 2, 3, 5, 120000, '0000-00-00', 'Principal', '', 1),
(2570, 'ICT', 1, 1, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2571, 'Library', 1, 1, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2572, 'Health', 1, 1, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2573, 'Examination', 1, 1, 5, 50000, '0000-00-00', 'Principal', '', 1),
(2574, 'Tuition', 1, 1, 5, 100000, '0000-00-00', 'Principal', '', 1),
(2575, 'ICT', 1, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2576, 'Libary', 1, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2577, 'Health', 1, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2578, 'Examination', 1, 2, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2579, 'Tuition', 1, 2, 5, 100000, '0000-00-00', 'Principal', '', 1),
(2580, 'Health', 1, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2581, 'ICT', 1, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2582, 'Libary', 1, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2583, 'Examination', 1, 3, 5, 20000, '0000-00-00', 'Principal', '', 1),
(2584, 'Tuition', 1, 3, 5, 100000, '0000-00-00', 'Principal', '', 1),
(2585, 'total', 15, 1, 5, 500000, '0000-00-00', 'Principal', '', 1),
(2586, 'total', 15, 2, 5, 530000, '0000-00-00', 'Principal', '', 1),
(2587, 'total', 15, 3, 5, 520000, '0000-00-00', 'Principal', '', 1),
(2588, 'Hostels', 15, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2589, 'Library', 15, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2590, 'Security', 15, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2591, 'Examination', 15, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2592, 'Tuition', 15, 1, 5, 200000, '0000-00-00', 'Principal', '', 1),
(2593, 'Books', 15, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2594, 'Health Service', 15, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2595, 'Library', 15, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2596, 'Examination', 15, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2597, 'Tuition', 15, 2, 5, 220000, '0000-00-00', 'Principal', '', 1),
(2598, 'Development Fees', 15, 3, 5, 47000, '0000-00-00', 'Principal', '', 1),
(2599, 'Hostel Fees', 15, 3, 5, 10000, '0000-00-00', 'Principal', '', 1),
(2600, 'PTA', 15, 3, 5, 48000, '0000-00-00', 'Principal', '', 1),
(2601, 'Tution and Security', 15, 3, 5, 160000, '0000-00-00', 'Principal', '', 1),
(2602, 'Health', 15, 3, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2603, 'total', 16, 1, 5, 470000, '0000-00-00', 'Principal', '', 1),
(2604, 'total', 16, 2, 5, 490000, '0000-00-00', 'Principal', '', 1),
(2605, 'total', 16, 3, 5, 500000, '0000-00-00', 'Principal', '', 1),
(2606, 'Health Service', 16, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2607, 'External Exam', 16, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2608, 'Library', 16, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2609, 'Examination', 16, 1, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2610, 'Tuition', 16, 1, 5, 150000, '0000-00-00', 'Principal', '', 1),
(2611, 'Library', 16, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2612, 'JAMB', 16, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2613, 'Health Service', 16, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2614, 'Examination', 16, 2, 5, 60000, '0000-00-00', 'Principal', '', 1),
(2615, 'Tuition', 16, 2, 5, 150000, '0000-00-00', 'Principal', '', 1),
(2616, 'Development Fees', 16, 3, 5, 47000, '0000-00-00', 'Principal', '', 1),
(2617, 'Hostel Fees', 16, 3, 5, 10000, '0000-00-00', 'Principal', '', 1),
(2618, 'PTA', 16, 3, 5, 48000, '0000-00-00', 'Principal', '', 1),
(2619, 'Security', 16, 3, 5, 6800, '0000-00-00', 'Principal', '', 1),
(2620, 'Tuition', 16, 3, 5, 150000, '0000-00-00', 'Principal', '', 1),
(2844, 'total', 14, 1, 6, 470000, '0000-00-00', 'Principal', '', 1),
(2845, 'total', 14, 2, 6, 500000, '0000-00-00', 'Principal', '', 1),
(2846, 'total', 14, 3, 6, 550000, '0000-00-00', 'Principal', '', 1),
(2847, 'total', 13, 1, 6, 460000, '0000-00-00', 'Principal', '', 1),
(2848, 'total', 13, 2, 6, 550000, '0000-00-00', 'Principal', '', 1),
(2849, 'total', 13, 3, 6, 500000, '0000-00-00', 'Principal', '', 1),
(2850, 'total', 12, 1, 6, 550000, '0000-00-00', 'Principal', '', 1),
(2851, 'total', 12, 2, 6, 550000, '0000-00-00', 'Principal', '', 1),
(2852, 'total', 12, 3, 6, 480000, '0000-00-00', 'Principal', '', 1),
(2853, 'total', 11, 1, 6, 515000, '0000-00-00', 'Principal', '', 1),
(2854, 'total', 11, 2, 6, 515000, '0000-00-00', 'Principal', '', 1),
(2855, 'total', 11, 3, 6, 515000, '0000-00-00', 'Principal', '', 1),
(2856, 'total', 10, 1, 6, 460000, '0000-00-00', 'Principal', '', 1),
(2857, 'total', 10, 2, 6, 460000, '0000-00-00', 'Principal', '', 1),
(2858, 'total', 10, 3, 6, 460000, '0000-00-00', 'Principal', '', 1),
(2859, 'total', 9, 1, 6, 455000, '0000-00-00', 'Principal', '', 1),
(2860, 'total', 9, 2, 6, 455000, '0000-00-00', 'Principal', '', 1),
(2861, 'total', 9, 3, 6, 455000, '0000-00-00', 'Principal', '', 1),
(2862, 'total', 8, 1, 6, 450000, '0000-00-00', 'Principal', '', 1),
(2863, 'total', 8, 2, 6, 450000, '0000-00-00', 'Principal', '', 1),
(2864, 'total', 8, 3, 6, 450000, '0000-00-00', 'Principal', '', 1);
INSERT INTO `school_fees` (`id`, `component`, `grades`, `grades_term`, `school_year`, `price`, `date`, `creator`, `comment`, `active`) VALUES
(2865, 'total', 7, 1, 6, 425000, '0000-00-00', 'Principal', '', 1),
(2866, 'total', 7, 2, 6, 425000, '0000-00-00', 'Principal', '', 1),
(2867, 'total', 7, 3, 6, 425000, '0000-00-00', 'Principal', '', 1),
(2868, 'total', 6, 1, 6, 420000, '0000-00-00', 'Principal', '', 1),
(2869, 'total', 6, 2, 6, 420000, '0000-00-00', 'Principal', '', 1),
(2870, 'total', 6, 3, 6, 420000, '0000-00-00', 'Principal', '', 1),
(2871, 'total', 5, 1, 6, 415000, '0000-00-00', 'Principal', '', 1),
(2872, 'total', 5, 2, 6, 415000, '0000-00-00', 'Principal', '', 1),
(2873, 'total', 5, 3, 6, 415000, '0000-00-00', 'Principal', '', 1),
(2874, 'total', 4, 1, 6, 370000, '0000-00-00', 'Principal', '', 1),
(2875, 'total', 4, 2, 6, 370000, '0000-00-00', 'Principal', '', 1),
(2876, 'total', 4, 3, 6, 370000, '0000-00-00', 'Principal', '', 1),
(2877, 'total', 3, 1, 6, 360000, '0000-00-00', 'Principal', '', 1),
(2878, 'total', 3, 2, 6, 360000, '0000-00-00', 'Principal', '', 1),
(2879, 'total', 3, 3, 6, 360000, '0000-00-00', 'Principal', '', 1),
(2880, 'total', 2, 1, 6, 350000, '0000-00-00', 'Principal', '', 1),
(2881, 'total', 2, 2, 6, 350000, '0000-00-00', 'Principal', '', 1),
(2882, 'total', 2, 3, 6, 350000, '0000-00-00', 'Principal', '', 1),
(2883, 'total', 1, 1, 6, 300000, '0000-00-00', 'Principal', '', 1),
(2884, 'total', 1, 2, 6, 309000, '0000-00-00', 'Principal', '', 1),
(2885, 'total', 1, 3, 6, 310000, '0000-00-00', 'Principal', '', 1),
(2886, 'Security', 14, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2887, 'Health Service', 14, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2888, 'Libary', 14, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2889, 'Examination', 14, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2890, 'Tuition', 14, 1, 6, 180000, '0000-00-00', 'Principal', '', 1),
(2891, 'Library', 14, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2892, 'Health Service', 14, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2893, 'Security', 14, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2894, 'Examination', 14, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2895, 'Tuition', 14, 2, 6, 200000, '0000-00-00', 'Principal', '', 1),
(2896, 'Development Fees', 14, 3, 6, 47000, '0000-00-00', 'Principal', '', 1),
(2897, 'Hostel Fees', 14, 3, 6, 10000, '0000-00-00', 'Principal', '', 1),
(2898, 'PTA', 14, 3, 6, 48000, '0000-00-00', 'Principal', '', 1),
(2899, 'Tution and Security', 14, 3, 6, 6800, '0000-00-00', 'Principal', '', 1),
(2900, 'Health', 14, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2901, 'Libary', 13, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2902, 'Health Service', 13, 1, 6, 45000, '0000-00-00', 'Principal', '', 1),
(2903, 'Security', 13, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2904, 'Examination', 13, 1, 6, 70000, '0000-00-00', 'Principal', '', 1),
(2905, 'Tuition', 13, 1, 6, 160000, '0000-00-00', 'Principal', '', 1),
(2906, 'Security', 13, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2907, 'Libary', 13, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2908, 'ICT', 13, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2909, 'Health Service', 13, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(2910, 'Tuition', 13, 2, 6, 260000, '0000-00-00', 'Principal', '', 1),
(2911, 'Examination', 13, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2912, 'Health Service', 13, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2913, 'Library', 13, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2914, 'Security', 13, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2915, 'Tuition', 13, 3, 6, 250000, '0000-00-00', 'Principal', '', 1),
(2916, 'Health Service', 12, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2917, 'Libary', 12, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2918, 'Security', 12, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2919, 'Examination', 12, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2920, 'Tuition', 12, 1, 6, 250000, '0000-00-00', 'Principal', '', 1),
(2921, 'Books', 12, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2922, 'Health Service', 12, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2923, 'Library', 12, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2924, 'Examination', 12, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2925, 'Tuition', 12, 2, 6, 250000, '0000-00-00', 'Principal', '', 1),
(2926, 'ICT', 12, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(2927, 'Examination', 12, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2928, 'Health Service', 12, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2929, 'Security', 12, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(2930, 'Tuition', 12, 3, 6, 190000, '0000-00-00', 'Principal', '', 1),
(2931, 'Health Care', 11, 1, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2932, 'ICT', 11, 1, 6, 50000, '0000-00-00', 'Principal', '', 1),
(2933, 'Library', 11, 1, 6, 50000, '0000-00-00', 'Principal', '', 1),
(2934, 'Examination', 11, 1, 6, 80000, '0000-00-00', 'Principal', '', 1),
(2935, 'Tuition', 11, 1, 6, 200000, '0000-00-00', 'Principal', '', 1),
(2936, 'Health Care', 11, 2, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2937, 'ICT', 11, 2, 6, 50000, '0000-00-00', 'Principal', '', 1),
(2938, 'Library', 11, 2, 6, 50000, '0000-00-00', 'Principal', '', 1),
(2939, 'Examination', 11, 2, 6, 80000, '0000-00-00', 'Principal', '', 1),
(2940, 'Tuition', 11, 2, 6, 200000, '0000-00-00', 'Principal', '', 1),
(2941, 'Health Care', 11, 3, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2942, 'ICT', 11, 3, 6, 50000, '0000-00-00', 'Principal', '', 1),
(2943, 'Library', 11, 3, 6, 50000, '0000-00-00', 'Principal', '', 1),
(2944, 'Examination', 11, 3, 6, 80000, '0000-00-00', 'Principal', '', 1),
(2945, 'Tuition', 11, 3, 6, 200000, '0000-00-00', 'Principal', '', 1),
(2946, 'Health Care', 10, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2947, 'ICT', 10, 1, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2948, 'Library', 10, 1, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2949, 'Examination', 10, 1, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2950, 'Tuition', 10, 1, 6, 185000, '0000-00-00', 'Principal', '', 1),
(2951, 'Health Care', 10, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2952, 'ICT', 10, 2, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2953, 'Library', 10, 2, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2954, 'Examination', 10, 2, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2955, 'Tuition', 10, 2, 6, 185000, '0000-00-00', 'Principal', '', 1),
(2956, 'Health Care', 10, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2957, 'ICT', 10, 3, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2958, 'Library', 10, 3, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2959, 'Examination', 10, 3, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2960, 'Tuition', 10, 3, 6, 185000, '0000-00-00', 'Principal', '', 1),
(2961, 'Health Care', 9, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2962, 'ICT', 9, 1, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2963, 'Library', 9, 1, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2964, 'Examination', 9, 1, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2965, 'Tuition', 9, 1, 6, 180000, '0000-00-00', 'Principal', '', 1),
(2966, 'Health Care', 9, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2967, 'ICT', 9, 2, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2968, 'Library', 9, 2, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2969, 'Examination', 9, 2, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2970, 'Tuition', 9, 2, 6, 180000, '0000-00-00', 'Principal', '', 1),
(2971, 'Health Care', 9, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2972, 'ICT', 9, 3, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2973, 'Library', 9, 3, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2974, 'Examination', 9, 3, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2975, 'Tuition', 9, 3, 6, 180000, '0000-00-00', 'Principal', '', 1),
(2976, 'Health Care', 8, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2977, 'ICT', 8, 1, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2978, 'Library', 8, 1, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2979, 'Examination', 8, 1, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2980, 'Tuition', 8, 1, 6, 175000, '0000-00-00', 'Principal', '', 1),
(2981, 'Health Care', 8, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2982, 'ICT', 8, 2, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2983, 'Library', 8, 2, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2984, 'Examination', 8, 2, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2985, 'Tuition', 8, 2, 6, 175000, '0000-00-00', 'Principal', '', 1),
(2986, 'Health Care', 8, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2987, 'ICT', 8, 3, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2988, 'Library', 8, 3, 6, 35000, '0000-00-00', 'Principal', '', 1),
(2989, 'Examination', 8, 3, 6, 75000, '0000-00-00', 'Principal', '', 1),
(2990, 'Tuition', 8, 3, 6, 175000, '0000-00-00', 'Principal', '', 1),
(2991, 'Health Care', 7, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(2992, 'ICT', 7, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2993, 'Library', 7, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2994, 'Examination', 7, 1, 6, 70000, '0000-00-00', 'Principal', '', 1),
(2995, 'Tuition', 7, 1, 6, 170000, '0000-00-00', 'Principal', '', 1),
(2996, 'Health Care', 7, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(2997, 'ICT', 7, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2998, 'Library', 7, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(2999, 'Examination', 7, 2, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3000, 'Tuition', 7, 2, 6, 170000, '0000-00-00', 'Principal', '', 1),
(3001, 'sub_total1_grade7', 7, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3002, 'sub_total2_grade7', 7, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3003, 'sub_total3_grade7', 7, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3004, 'sub_total4_grade7', 7, 3, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3005, 'sub_total5_grade7', 7, 3, 6, 170000, '0000-00-00', 'Principal', '', 1),
(3006, 'Health Care', 6, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3007, 'ICT', 6, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3008, 'Library', 6, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3009, 'Examination', 6, 1, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3010, 'Tuition', 6, 1, 6, 165000, '0000-00-00', 'Principal', '', 1),
(3011, 'Health Care', 6, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3012, 'ICT', 6, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3013, 'Library', 6, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3014, 'Examination', 6, 2, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3015, 'Tuition', 6, 2, 6, 165000, '0000-00-00', 'Principal', '', 1),
(3016, 'Health Care', 6, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3017, 'ICT', 6, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3018, 'Library', 6, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3019, 'Examination', 6, 3, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3020, 'Tuition', 6, 3, 6, 165000, '0000-00-00', 'Principal', '', 1),
(3021, 'Health Care', 5, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3022, 'ICT', 5, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3023, 'Library', 5, 1, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3024, 'Examination', 5, 1, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3025, 'Tuition', 5, 1, 6, 160000, '0000-00-00', 'Principal', '', 1),
(3026, 'Health Care', 5, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3027, 'ICT', 5, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3028, 'Library', 5, 2, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3029, 'Examination', 5, 2, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3030, 'Tuition', 5, 2, 6, 160000, '0000-00-00', 'Principal', '', 1),
(3031, 'Health Care', 5, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3032, 'ICT', 5, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3033, 'Library', 5, 3, 6, 30000, '0000-00-00', 'Principal', '', 1),
(3034, 'Examination', 5, 3, 6, 70000, '0000-00-00', 'Principal', '', 1),
(3035, 'Tuition', 5, 3, 6, 160000, '0000-00-00', 'Principal', '', 1),
(3036, 'Health Care', 4, 1, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3037, 'ICT', 4, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3038, 'Library', 4, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3039, 'Examination', 4, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3040, 'Tuition', 4, 1, 6, 140000, '0000-00-00', 'Principal', '', 1),
(3041, 'Health Care', 4, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3042, 'ICT', 4, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3043, 'Library', 4, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3044, 'Examination', 4, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3045, 'Tuition', 4, 2, 6, 140000, '0000-00-00', 'Principal', '', 1),
(3046, 'Health Care', 4, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3047, 'ICT', 4, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3048, 'Library', 4, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3049, 'Examination', 4, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3050, 'Tuition', 4, 3, 6, 140000, '0000-00-00', 'Principal', '', 1),
(3051, 'Health Care', 3, 1, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3052, 'ICT', 3, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3053, 'Library', 3, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3054, 'Examination', 3, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3055, 'Tuition', 3, 1, 6, 130000, '0000-00-00', 'Principal', '', 1),
(3056, 'Health Care', 3, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3057, 'ICT', 3, 2, 6, 20500, '0000-00-00', 'Principal', '', 1),
(3058, 'Library', 3, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3059, 'Examination', 3, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3060, 'Tuition', 3, 2, 6, 130000, '0000-00-00', 'Principal', '', 1),
(3061, 'Health Care', 3, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3062, 'ICT', 3, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3063, 'Library', 3, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3064, 'Examination', 3, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3065, 'Tuition', 3, 3, 6, 130000, '0000-00-00', 'Principal', '', 1),
(3066, 'Health Care', 2, 1, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3067, 'ICT', 2, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3068, 'Library', 2, 1, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3069, 'Examination', 2, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3070, 'Tuition', 2, 1, 6, 120000, '0000-00-00', 'Principal', '', 1),
(3071, 'Health Care', 2, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3072, 'ICT', 2, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3073, 'Library', 2, 2, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3074, 'Examination', 2, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3075, 'Tuition', 2, 2, 6, 120000, '0000-00-00', 'Principal', '', 1),
(3076, 'Health Care', 2, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3077, 'ICT', 2, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3078, 'Library', 2, 3, 6, 25000, '0000-00-00', 'Principal', '', 1),
(3079, 'Examination', 2, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3080, 'Tuition', 2, 3, 6, 120000, '0000-00-00', 'Principal', '', 1),
(3081, 'ICT', 1, 1, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3082, 'Library', 1, 1, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3083, 'Health', 1, 1, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3084, 'Examination', 1, 1, 6, 50000, '0000-00-00', 'Principal', '', 1),
(3085, 'Tuition', 1, 1, 6, 100000, '0000-00-00', 'Principal', '', 1),
(3086, 'ICT', 1, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3087, 'Libary', 1, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3088, 'Health', 1, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3089, 'Examination', 1, 2, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3090, 'Tuition', 1, 2, 6, 100000, '0000-00-00', 'Principal', '', 1),
(3091, 'Health', 1, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3092, 'ICT', 1, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3093, 'Libary', 1, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3094, 'Examination', 1, 3, 6, 20000, '0000-00-00', 'Principal', '', 1),
(3095, 'Tuition', 1, 3, 6, 100000, '0000-00-00', 'Principal', '', 1),
(3096, 'total', 15, 1, 6, 500000, '0000-00-00', 'Principal', '', 1),
(3097, 'total', 15, 2, 6, 530000, '0000-00-00', 'Principal', '', 1),
(3098, 'total', 15, 3, 6, 520000, '0000-00-00', 'Principal', '', 1),
(3099, 'Hostels', 15, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3100, 'Library', 15, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3101, 'Security', 15, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3102, 'Examination', 15, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3103, 'Tuition', 15, 1, 6, 200000, '0000-00-00', 'Principal', '', 1),
(3104, 'Books', 15, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3105, 'Health Service', 15, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3106, 'Library', 15, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3107, 'Examination', 15, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3108, 'Tuition', 15, 2, 6, 220000, '0000-00-00', 'Principal', '', 1),
(3109, 'Development Fees', 15, 3, 6, 47000, '0000-00-00', 'Principal', '', 1),
(3110, 'Hostel Fees', 15, 3, 6, 10000, '0000-00-00', 'Principal', '', 1),
(3111, 'PTA', 15, 3, 6, 48000, '0000-00-00', 'Principal', '', 1),
(3112, 'Tution and Security', 15, 3, 6, 160000, '0000-00-00', 'Principal', '', 1),
(3113, 'Health', 15, 3, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3114, 'total', 16, 1, 6, 470000, '0000-00-00', 'Principal', '', 1),
(3115, 'total', 16, 2, 6, 490000, '0000-00-00', 'Principal', '', 1),
(3116, 'total', 16, 3, 6, 500000, '0000-00-00', 'Principal', '', 1),
(3117, 'Health Service', 16, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3118, 'External Exam', 16, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3119, 'Library', 16, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3120, 'Examination', 16, 1, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3121, 'Tuition', 16, 1, 6, 150000, '0000-00-00', 'Principal', '', 1),
(3122, 'Library', 16, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3123, 'JAMB', 16, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3124, 'Health Service', 16, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3125, 'Examination', 16, 2, 6, 60000, '0000-00-00', 'Principal', '', 1),
(3126, 'Tuition', 16, 2, 6, 150000, '0000-00-00', 'Principal', '', 1),
(3127, 'Development Fees', 16, 3, 6, 47000, '0000-00-00', 'Principal', '', 1),
(3128, 'Hostel Fees', 16, 3, 6, 10000, '0000-00-00', 'Principal', '', 1),
(3129, 'PTA', 16, 3, 6, 48000, '0000-00-00', 'Principal', '', 1),
(3130, 'Security', 16, 3, 6, 6800, '0000-00-00', 'Principal', '', 1),
(3131, 'Tuition', 16, 3, 6, 150000, '0000-00-00', 'Principal', '', 1),
(3355, 'total', 14, 1, 7, 470000, '0000-00-00', 'Principal', '', 1),
(3356, 'total', 14, 2, 7, 500000, '0000-00-00', 'Principal', '', 1),
(3357, 'total', 14, 3, 7, 550000, '0000-00-00', 'Principal', '', 1),
(3358, 'total', 13, 1, 7, 460000, '0000-00-00', 'Principal', '', 1),
(3359, 'total', 13, 2, 7, 550000, '0000-00-00', 'Principal', '', 1),
(3360, 'total', 13, 3, 7, 500000, '0000-00-00', 'Principal', '', 1),
(3361, 'total', 12, 1, 7, 550000, '0000-00-00', 'Principal', '', 1),
(3362, 'total', 12, 2, 7, 550000, '0000-00-00', 'Principal', '', 1),
(3363, 'total', 12, 3, 7, 480000, '0000-00-00', 'Principal', '', 1),
(3364, 'total', 11, 1, 7, 515000, '0000-00-00', 'Principal', '', 1),
(3365, 'total', 11, 2, 7, 515000, '0000-00-00', 'Principal', '', 1),
(3366, 'total', 11, 3, 7, 515000, '0000-00-00', 'Principal', '', 1),
(3367, 'total', 10, 1, 7, 460000, '0000-00-00', 'Principal', '', 1),
(3368, 'total', 10, 2, 7, 460000, '0000-00-00', 'Principal', '', 1),
(3369, 'total', 10, 3, 7, 460000, '0000-00-00', 'Principal', '', 1),
(3370, 'total', 9, 1, 7, 455000, '0000-00-00', 'Principal', '', 1),
(3371, 'total', 9, 2, 7, 455000, '0000-00-00', 'Principal', '', 1),
(3372, 'total', 9, 3, 7, 455000, '0000-00-00', 'Principal', '', 1),
(3373, 'total', 8, 1, 7, 450000, '0000-00-00', 'Principal', '', 1),
(3374, 'total', 8, 2, 7, 450000, '0000-00-00', 'Principal', '', 1),
(3375, 'total', 8, 3, 7, 450000, '0000-00-00', 'Principal', '', 1),
(3376, 'total', 7, 1, 7, 425000, '0000-00-00', 'Principal', '', 1),
(3377, 'total', 7, 2, 7, 425000, '0000-00-00', 'Principal', '', 1),
(3378, 'total', 7, 3, 7, 425000, '0000-00-00', 'Principal', '', 1),
(3379, 'total', 6, 1, 7, 420000, '0000-00-00', 'Principal', '', 1),
(3380, 'total', 6, 2, 7, 420000, '0000-00-00', 'Principal', '', 1),
(3381, 'total', 6, 3, 7, 420000, '0000-00-00', 'Principal', '', 1),
(3382, 'total', 5, 1, 7, 415000, '0000-00-00', 'Principal', '', 1),
(3383, 'total', 5, 2, 7, 415000, '0000-00-00', 'Principal', '', 1),
(3384, 'total', 5, 3, 7, 415000, '0000-00-00', 'Principal', '', 1),
(3385, 'total', 4, 1, 7, 370000, '0000-00-00', 'Principal', '', 1),
(3386, 'total', 4, 2, 7, 370000, '0000-00-00', 'Principal', '', 1),
(3387, 'total', 4, 3, 7, 370000, '0000-00-00', 'Principal', '', 1),
(3388, 'total', 3, 1, 7, 360000, '0000-00-00', 'Principal', '', 1),
(3389, 'total', 3, 2, 7, 360000, '0000-00-00', 'Principal', '', 1),
(3390, 'total', 3, 3, 7, 360000, '0000-00-00', 'Principal', '', 1),
(3391, 'total', 2, 1, 7, 350000, '0000-00-00', 'Principal', '', 1),
(3392, 'total', 2, 2, 7, 350000, '0000-00-00', 'Principal', '', 1),
(3393, 'total', 2, 3, 7, 350000, '0000-00-00', 'Principal', '', 1),
(3394, 'total', 1, 1, 7, 300000, '0000-00-00', 'Principal', '', 1),
(3395, 'total', 1, 2, 7, 309000, '0000-00-00', 'Principal', '', 1),
(3396, 'total', 1, 3, 7, 310000, '0000-00-00', 'Principal', '', 1),
(3397, 'Security', 14, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3398, 'Health Service', 14, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3399, 'Libary', 14, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3400, 'Examination', 14, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3401, 'Tuition', 14, 1, 7, 180000, '0000-00-00', 'Principal', '', 1),
(3402, 'Library', 14, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3403, 'Health Service', 14, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3404, 'Security', 14, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3405, 'Examination', 14, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3406, 'Tuition', 14, 2, 7, 200000, '0000-00-00', 'Principal', '', 1),
(3407, 'Development Fees', 14, 3, 7, 47000, '0000-00-00', 'Principal', '', 1),
(3408, 'Hostel Fees', 14, 3, 7, 10000, '0000-00-00', 'Principal', '', 1),
(3409, 'PTA', 14, 3, 7, 48000, '0000-00-00', 'Principal', '', 1),
(3410, 'Tution and Security', 14, 3, 7, 6800, '0000-00-00', 'Principal', '', 1),
(3411, 'Health', 14, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3412, 'Libary', 13, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3413, 'Health Service', 13, 1, 7, 45000, '0000-00-00', 'Principal', '', 1),
(3414, 'Security', 13, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3415, 'Examination', 13, 1, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3416, 'Tuition', 13, 1, 7, 160000, '0000-00-00', 'Principal', '', 1),
(3417, 'Security', 13, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3418, 'Libary', 13, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3419, 'ICT', 13, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3420, 'Health Service', 13, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3421, 'Tuition', 13, 2, 7, 260000, '0000-00-00', 'Principal', '', 1),
(3422, 'Examination', 13, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3423, 'Health Service', 13, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3424, 'Library', 13, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3425, 'Security', 13, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3426, 'Tuition', 13, 3, 7, 250000, '0000-00-00', 'Principal', '', 1),
(3427, 'Health Service', 12, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3428, 'Libary', 12, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3429, 'Security', 12, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3430, 'Examination', 12, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3431, 'Tuition', 12, 1, 7, 250000, '0000-00-00', 'Principal', '', 1),
(3432, 'Books', 12, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3433, 'Health Service', 12, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3434, 'Library', 12, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3435, 'Examination', 12, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3436, 'Tuition', 12, 2, 7, 250000, '0000-00-00', 'Principal', '', 1),
(3437, 'ICT', 12, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3438, 'Examination', 12, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3439, 'Health Service', 12, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3440, 'Security', 12, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3441, 'Tuition', 12, 3, 7, 190000, '0000-00-00', 'Principal', '', 1),
(3442, 'Health Care', 11, 1, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3443, 'ICT', 11, 1, 7, 50000, '0000-00-00', 'Principal', '', 1),
(3444, 'Library', 11, 1, 7, 50000, '0000-00-00', 'Principal', '', 1),
(3445, 'Examination', 11, 1, 7, 80000, '0000-00-00', 'Principal', '', 1),
(3446, 'Tuition', 11, 1, 7, 200000, '0000-00-00', 'Principal', '', 1),
(3447, 'Health Care', 11, 2, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3448, 'ICT', 11, 2, 7, 50000, '0000-00-00', 'Principal', '', 1),
(3449, 'Library', 11, 2, 7, 50000, '0000-00-00', 'Principal', '', 1),
(3450, 'Examination', 11, 2, 7, 80000, '0000-00-00', 'Principal', '', 1),
(3451, 'Tuition', 11, 2, 7, 200000, '0000-00-00', 'Principal', '', 1),
(3452, 'Health Care', 11, 3, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3453, 'ICT', 11, 3, 7, 50000, '0000-00-00', 'Principal', '', 1),
(3454, 'Library', 11, 3, 7, 50000, '0000-00-00', 'Principal', '', 1),
(3455, 'Examination', 11, 3, 7, 80000, '0000-00-00', 'Principal', '', 1),
(3456, 'Tuition', 11, 3, 7, 200000, '0000-00-00', 'Principal', '', 1),
(3457, 'Health Care', 10, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3458, 'ICT', 10, 1, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3459, 'Library', 10, 1, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3460, 'Examination', 10, 1, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3461, 'Tuition', 10, 1, 7, 185000, '0000-00-00', 'Principal', '', 1),
(3462, 'Health Care', 10, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3463, 'ICT', 10, 2, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3464, 'Library', 10, 2, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3465, 'Examination', 10, 2, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3466, 'Tuition', 10, 2, 7, 185000, '0000-00-00', 'Principal', '', 1),
(3467, 'Health Care', 10, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3468, 'ICT', 10, 3, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3469, 'Library', 10, 3, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3470, 'Examination', 10, 3, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3471, 'Tuition', 10, 3, 7, 185000, '0000-00-00', 'Principal', '', 1),
(3472, 'Health Care', 9, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3473, 'ICT', 9, 1, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3474, 'Library', 9, 1, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3475, 'Examination', 9, 1, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3476, 'Tuition', 9, 1, 7, 180000, '0000-00-00', 'Principal', '', 1),
(3477, 'Health Care', 9, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3478, 'ICT', 9, 2, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3479, 'Library', 9, 2, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3480, 'Examination', 9, 2, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3481, 'Tuition', 9, 2, 7, 180000, '0000-00-00', 'Principal', '', 1),
(3482, 'Health Care', 9, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3483, 'ICT', 9, 3, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3484, 'Library', 9, 3, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3485, 'Examination', 9, 3, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3486, 'Tuition', 9, 3, 7, 180000, '0000-00-00', 'Principal', '', 1),
(3487, 'Health Care', 8, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3488, 'ICT', 8, 1, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3489, 'Library', 8, 1, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3490, 'Examination', 8, 1, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3491, 'Tuition', 8, 1, 7, 175000, '0000-00-00', 'Principal', '', 1),
(3492, 'Health Care', 8, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3493, 'ICT', 8, 2, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3494, 'Library', 8, 2, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3495, 'Examination', 8, 2, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3496, 'Tuition', 8, 2, 7, 175000, '0000-00-00', 'Principal', '', 1),
(3497, 'Health Care', 8, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3498, 'ICT', 8, 3, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3499, 'Library', 8, 3, 7, 35000, '0000-00-00', 'Principal', '', 1),
(3500, 'Examination', 8, 3, 7, 75000, '0000-00-00', 'Principal', '', 1),
(3501, 'Tuition', 8, 3, 7, 175000, '0000-00-00', 'Principal', '', 1),
(3502, 'Health Care', 7, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3503, 'ICT', 7, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3504, 'Library', 7, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3505, 'Examination', 7, 1, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3506, 'Tuition', 7, 1, 7, 170000, '0000-00-00', 'Principal', '', 1),
(3507, 'Health Care', 7, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3508, 'ICT', 7, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3509, 'Library', 7, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3510, 'Examination', 7, 2, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3511, 'Tuition', 7, 2, 7, 170000, '0000-00-00', 'Principal', '', 1),
(3512, 'sub_total1_grade7', 7, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3513, 'sub_total2_grade7', 7, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3514, 'sub_total3_grade7', 7, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3515, 'sub_total4_grade7', 7, 3, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3516, 'sub_total5_grade7', 7, 3, 7, 170000, '0000-00-00', 'Principal', '', 1),
(3517, 'Health Care', 6, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3518, 'ICT', 6, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3519, 'Library', 6, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3520, 'Examination', 6, 1, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3521, 'Tuition', 6, 1, 7, 165000, '0000-00-00', 'Principal', '', 1),
(3522, 'Health Care', 6, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3523, 'ICT', 6, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3524, 'Library', 6, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3525, 'Examination', 6, 2, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3526, 'Tuition', 6, 2, 7, 165000, '0000-00-00', 'Principal', '', 1),
(3527, 'Health Care', 6, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3528, 'ICT', 6, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3529, 'Library', 6, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3530, 'Examination', 6, 3, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3531, 'Tuition', 6, 3, 7, 165000, '0000-00-00', 'Principal', '', 1),
(3532, 'Health Care', 5, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3533, 'ICT', 5, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3534, 'Library', 5, 1, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3535, 'Examination', 5, 1, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3536, 'Tuition', 5, 1, 7, 160000, '0000-00-00', 'Principal', '', 1),
(3537, 'Health Care', 5, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3538, 'ICT', 5, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3539, 'Library', 5, 2, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3540, 'Examination', 5, 2, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3541, 'Tuition', 5, 2, 7, 160000, '0000-00-00', 'Principal', '', 1),
(3542, 'Health Care', 5, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3543, 'ICT', 5, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3544, 'Library', 5, 3, 7, 30000, '0000-00-00', 'Principal', '', 1),
(3545, 'Examination', 5, 3, 7, 70000, '0000-00-00', 'Principal', '', 1),
(3546, 'Tuition', 5, 3, 7, 160000, '0000-00-00', 'Principal', '', 1),
(3547, 'Health Care', 4, 1, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3548, 'ICT', 4, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3549, 'Library', 4, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3550, 'Examination', 4, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3551, 'Tuition', 4, 1, 7, 140000, '0000-00-00', 'Principal', '', 1),
(3552, 'Health Care', 4, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3553, 'ICT', 4, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3554, 'Library', 4, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3555, 'Examination', 4, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3556, 'Tuition', 4, 2, 7, 140000, '0000-00-00', 'Principal', '', 1),
(3557, 'Health Care', 4, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3558, 'ICT', 4, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3559, 'Library', 4, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3560, 'Examination', 4, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3561, 'Tuition', 4, 3, 7, 140000, '0000-00-00', 'Principal', '', 1),
(3562, 'Health Care', 3, 1, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3563, 'ICT', 3, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3564, 'Library', 3, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3565, 'Examination', 3, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3566, 'Tuition', 3, 1, 7, 130000, '0000-00-00', 'Principal', '', 1),
(3567, 'Health Care', 3, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3568, 'ICT', 3, 2, 7, 20500, '0000-00-00', 'Principal', '', 1),
(3569, 'Library', 3, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3570, 'Examination', 3, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3571, 'Tuition', 3, 2, 7, 130000, '0000-00-00', 'Principal', '', 1),
(3572, 'Health Care', 3, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3573, 'ICT', 3, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3574, 'Library', 3, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3575, 'Examination', 3, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3576, 'Tuition', 3, 3, 7, 130000, '0000-00-00', 'Principal', '', 1),
(3577, 'Health Care', 2, 1, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3578, 'ICT', 2, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3579, 'Library', 2, 1, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3580, 'Examination', 2, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3581, 'Tuition', 2, 1, 7, 120000, '0000-00-00', 'Principal', '', 1),
(3582, 'Health Care', 2, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3583, 'ICT', 2, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3584, 'Library', 2, 2, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3585, 'Examination', 2, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3586, 'Tuition', 2, 2, 7, 120000, '0000-00-00', 'Principal', '', 1),
(3587, 'Health Care', 2, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3588, 'ICT', 2, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3589, 'Library', 2, 3, 7, 25000, '0000-00-00', 'Principal', '', 1),
(3590, 'Examination', 2, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3591, 'Tuition', 2, 3, 7, 120000, '0000-00-00', 'Principal', '', 1),
(3592, 'ICT', 1, 1, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3593, 'Library', 1, 1, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3594, 'Health', 1, 1, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3595, 'Examination', 1, 1, 7, 50000, '0000-00-00', 'Principal', '', 1),
(3596, 'Tuition', 1, 1, 7, 100000, '0000-00-00', 'Principal', '', 1),
(3597, 'ICT', 1, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3598, 'Libary', 1, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3599, 'Health', 1, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3600, 'Examination', 1, 2, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3601, 'Tuition', 1, 2, 7, 100000, '0000-00-00', 'Principal', '', 1),
(3602, 'Health', 1, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3603, 'ICT', 1, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3604, 'Libary', 1, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3605, 'Examination', 1, 3, 7, 20000, '0000-00-00', 'Principal', '', 1),
(3606, 'Tuition', 1, 3, 7, 100000, '0000-00-00', 'Principal', '', 1),
(3607, 'total', 15, 1, 7, 500000, '0000-00-00', 'Principal', '', 1),
(3608, 'total', 15, 2, 7, 530000, '0000-00-00', 'Principal', '', 1),
(3609, 'total', 15, 3, 7, 520000, '0000-00-00', 'Principal', '', 1),
(3610, 'Hostels', 15, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3611, 'Library', 15, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3612, 'Security', 15, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3613, 'Examination', 15, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3614, 'Tuition', 15, 1, 7, 200000, '0000-00-00', 'Principal', '', 1),
(3615, 'Books', 15, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3616, 'Health Service', 15, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3617, 'Library', 15, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3618, 'Examination', 15, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3619, 'Tuition', 15, 2, 7, 220000, '0000-00-00', 'Principal', '', 1),
(3620, 'Development Fees', 15, 3, 7, 47000, '0000-00-00', 'Principal', '', 1),
(3621, 'Hostel Fees', 15, 3, 7, 10000, '0000-00-00', 'Principal', '', 1),
(3622, 'PTA', 15, 3, 7, 48000, '0000-00-00', 'Principal', '', 1),
(3623, 'Tution and Security', 15, 3, 7, 160000, '0000-00-00', 'Principal', '', 1),
(3624, 'Health', 15, 3, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3625, 'total', 16, 1, 7, 470000, '0000-00-00', 'Principal', '', 1),
(3626, 'total', 16, 2, 7, 490000, '0000-00-00', 'Principal', '', 1),
(3627, 'total', 16, 3, 7, 500000, '0000-00-00', 'Principal', '', 1),
(3628, 'Health Service', 16, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3629, 'External Exam', 16, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3630, 'Library', 16, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3631, 'Examination', 16, 1, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3632, 'Tuition', 16, 1, 7, 150000, '0000-00-00', 'Principal', '', 1),
(3633, 'Library', 16, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3634, 'JAMB', 16, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3635, 'Health Service', 16, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3636, 'Examination', 16, 2, 7, 60000, '0000-00-00', 'Principal', '', 1),
(3637, 'Tuition', 16, 2, 7, 150000, '0000-00-00', 'Principal', '', 1),
(3638, 'Development Fees', 16, 3, 7, 47000, '0000-00-00', 'Principal', '', 1),
(3639, 'Hostel Fees', 16, 3, 7, 10000, '0000-00-00', 'Principal', '', 1),
(3640, 'PTA', 16, 3, 7, 48000, '0000-00-00', 'Principal', '', 1),
(3641, 'Security', 16, 3, 7, 6800, '0000-00-00', 'Principal', '', 1),
(3642, 'Tuition', 16, 3, 7, 150000, '0000-00-00', 'Principal', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_fees_default`
--

CREATE TABLE `school_fees_default` (
  `id` bigint(50) NOT NULL,
  `component` varchar(200) NOT NULL,
  `grades` int(10) NOT NULL,
  `grades_term` int(1) NOT NULL,
  `school_year` int(2) NOT NULL,
  `price` int(9) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `creator` varchar(40) NOT NULL,
  `comment` text NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_fees_default`
--

INSERT INTO `school_fees_default` (`id`, `component`, `grades`, `grades_term`, `school_year`, `price`, `date`, `creator`, `comment`, `active`) VALUES
(1, 'total', 14, 1, 1, 470000, '0000-00-00', 'Principal', 'Approved', 1),
(2, 'total', 14, 2, 1, 500000, '0000-00-00', 'Principal', 'Approved', 1),
(3, 'total', 14, 3, 1, 550000, '0000-00-00', 'Principal', 'Approved', 1),
(4, 'total', 13, 1, 1, 460000, '0000-00-00', 'Principal', 'Approved', 1),
(5, 'total', 13, 2, 1, 550000, '0000-00-00', 'Principal', 'Approved', 1),
(6, 'total', 13, 3, 1, 500000, '0000-00-00', 'Principal', 'Approved', 1),
(7, 'total', 12, 1, 1, 550000, '0000-00-00', 'Principal', 'Approved', 1),
(8, 'total', 12, 2, 1, 550000, '0000-00-00', 'Principal', 'Approved', 1),
(9, 'total', 12, 3, 1, 480000, '0000-00-00', 'Principal', 'Approved', 1),
(10, 'total', 11, 1, 1, 515000, '0000-00-00', 'Principal', 'Approved', 1),
(11, 'total', 11, 2, 1, 515000, '0000-00-00', 'Principal', 'Approved', 1),
(12, 'total', 11, 3, 1, 515000, '0000-00-00', 'Principal', 'Approved', 1),
(13, 'total', 10, 1, 1, 460000, '0000-00-00', 'Principal', 'Approved', 1),
(14, 'total', 10, 2, 1, 460000, '0000-00-00', 'Principal', 'Approved', 1),
(15, 'total', 10, 3, 1, 460000, '0000-00-00', 'Principal', 'Approved', 1),
(16, 'total', 9, 1, 1, 455000, '0000-00-00', 'Principal', 'Approved', 1),
(17, 'total', 9, 2, 1, 455000, '0000-00-00', 'Principal', 'Approved', 1),
(18, 'total', 9, 3, 1, 455000, '0000-00-00', 'Principal', 'Approved', 1),
(19, 'total', 8, 1, 1, 450000, '0000-00-00', 'Principal', 'Approved', 1),
(20, 'total', 8, 2, 1, 450000, '0000-00-00', 'Principal', 'Approved', 1),
(21, 'total', 8, 3, 1, 450000, '0000-00-00', 'Principal', 'Approved', 1),
(22, 'total', 7, 1, 1, 425000, '0000-00-00', 'Principal', 'Approved', 1),
(23, 'total', 7, 2, 1, 425000, '0000-00-00', 'Principal', 'Approved', 1),
(24, 'total', 7, 3, 1, 425000, '0000-00-00', 'Principal', 'Approved', 1),
(34, 'total', 6, 1, 1, 420000, '0000-00-00', 'Principal', 'Approved', 1),
(35, 'total', 6, 2, 1, 420000, '0000-00-00', 'Principal', 'Approved', 1),
(36, 'total', 6, 3, 1, 420000, '0000-00-00', 'Principal', 'Approved', 1),
(37, 'total', 5, 1, 1, 415000, '0000-00-00', 'Principal', 'Approved', 1),
(38, 'total', 5, 2, 1, 415000, '0000-00-00', 'Principal', 'Approved', 1),
(39, 'total', 5, 3, 1, 415000, '0000-00-00', 'Principal', 'Approved', 1),
(40, 'total', 4, 1, 1, 370000, '0000-00-00', 'Principal', 'Approved', 1),
(41, 'total', 4, 2, 1, 370000, '0000-00-00', 'Principal', 'Approved', 1),
(42, 'total', 4, 3, 1, 370000, '0000-00-00', 'Principal', 'Approved', 1),
(43, 'total', 3, 1, 1, 360000, '0000-00-00', 'Principal', 'Approved', 1),
(44, 'total', 3, 2, 1, 360000, '0000-00-00', 'Principal', 'Approved', 1),
(45, 'total', 3, 3, 1, 360000, '0000-00-00', 'Principal', 'Approved', 1),
(46, 'total', 2, 1, 1, 350000, '0000-00-00', 'Principal', 'Approved', 1),
(47, 'total', 2, 2, 1, 350000, '0000-00-00', 'Principal', 'Approved', 1),
(48, 'total', 2, 3, 1, 350000, '2014-08-04', 'Principal', 'Approved', 1),
(49, 'total', 1, 1, 1, 300000, '0000-00-00', 'Principal', 'Approved', 1),
(50, 'total', 1, 2, 1, 309000, '0000-00-00', 'Principal', 'Approved', 1),
(51, 'total', 1, 3, 1, 310000, '0000-00-00', 'Principal', 'Approved', 1),
(52, 'Security', 14, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(53, 'Health Service', 14, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(54, 'Libary', 14, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(55, 'Examination', 14, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(56, 'Tuition', 14, 1, 1, 180000, '0000-00-00', 'Principal', 'Approved', 1),
(57, 'Library', 14, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(58, 'Health Service', 14, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(59, 'Security', 14, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(60, 'Examination', 14, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(61, 'Tuition', 14, 2, 1, 200000, '0000-00-00', 'Principal', 'Approved', 1),
(62, 'Development Fees', 14, 3, 1, 47000, '0000-00-00', 'Principal', 'Approved', 1),
(63, 'Hostel Fees', 14, 3, 1, 10000, '0000-00-00', 'Principal', 'Approved', 1),
(64, 'PTA', 14, 3, 1, 48000, '0000-00-00', 'Principal', 'Approved', 1),
(65, 'Tution and Security', 14, 3, 1, 6800, '0000-00-00', 'Principal', 'Approved', 1),
(66, 'Health', 14, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(67, 'Libary', 13, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(68, 'Health Service', 13, 1, 1, 45000, '0000-00-00', 'Principal', 'Approved', 1),
(69, 'Security', 13, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(70, 'Examination', 13, 1, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(71, 'Tuition', 13, 1, 1, 160000, '0000-00-00', 'Principal', 'Approved', 1),
(72, 'Security', 13, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(73, 'Libary', 13, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(74, 'ICT', 13, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(75, 'Health Service', 13, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(76, 'Tuition', 13, 2, 1, 260000, '0000-00-00', 'Principal', 'Approved', 1),
(77, 'Examination', 13, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(78, 'Health Service', 13, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(79, 'Library', 13, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(80, 'Security', 13, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(81, 'Tuition', 13, 3, 1, 250000, '0000-00-00', 'Principal', 'Approved', 1),
(82, 'Health Service', 12, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(83, 'Libary', 12, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(84, 'Security', 12, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(85, 'Examination', 12, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(86, 'Tuition', 12, 1, 1, 250000, '0000-00-00', 'Principal', 'Approved', 1),
(87, 'Books', 12, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(88, 'Health Service', 12, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(89, 'Library', 12, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(90, 'Examination', 12, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(91, 'Tuition', 12, 2, 1, 250000, '0000-00-00', 'Principal', 'Approved', 1),
(92, 'ICT', 12, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(93, 'Examination', 12, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(94, 'Health Service', 12, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(95, 'Security', 12, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(96, 'Tuition', 12, 3, 1, 190000, '0000-00-00', 'Principal', 'Approved', 1),
(97, 'Health Care', 11, 1, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(98, 'ICT', 11, 1, 1, 50000, '0000-00-00', 'Principal', 'Approved', 1),
(99, 'Library', 11, 1, 1, 50000, '0000-00-00', 'Principal', 'Approved', 1),
(100, 'Examination', 11, 1, 1, 80000, '0000-00-00', 'Principal', 'Approved', 1),
(101, 'Tuition', 11, 1, 1, 200000, '0000-00-00', 'Principal', 'Approved', 1),
(102, 'Health Care', 11, 2, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(103, 'ICT', 11, 2, 1, 50000, '0000-00-00', 'Principal', 'Approved', 1),
(104, 'Library', 11, 2, 1, 50000, '0000-00-00', 'Principal', 'Approved', 1),
(105, 'Examination', 11, 2, 1, 80000, '0000-00-00', 'Principal', 'Approved', 1),
(106, 'Tuition', 11, 2, 1, 200000, '0000-00-00', 'Principal', 'Approved', 1),
(107, 'Health Care', 11, 3, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(108, 'ICT', 11, 3, 1, 50000, '0000-00-00', 'Principal', 'Approved', 1),
(109, 'Library', 11, 3, 1, 50000, '0000-00-00', 'Principal', 'Approved', 1),
(110, 'Examination', 11, 3, 1, 80000, '0000-00-00', 'Principal', 'Approved', 1),
(111, 'Tuition', 11, 3, 1, 200000, '0000-00-00', 'Principal', 'Approved', 1),
(112, 'Health Care', 10, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(113, 'ICT', 10, 1, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(114, 'Library', 10, 1, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(115, 'Examination', 10, 1, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(116, 'Tuition', 10, 1, 1, 185000, '0000-00-00', 'Principal', 'Approved', 1),
(117, 'Health Care', 10, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(118, 'ICT', 10, 2, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(119, 'Library', 10, 2, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(120, 'Examination', 10, 2, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(121, 'Tuition', 10, 2, 1, 185000, '0000-00-00', 'Principal', 'Approved', 1),
(122, 'Health Care', 10, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(123, 'ICT', 10, 3, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(124, 'Library', 10, 3, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(125, 'Examination', 10, 3, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(126, 'Tuition', 10, 3, 1, 185000, '0000-00-00', 'Principal', 'Approved', 1),
(127, 'Health Care', 9, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(128, 'ICT', 9, 1, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(129, 'Library', 9, 1, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(130, 'Examination', 9, 1, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(131, 'Tuition', 9, 1, 1, 180000, '0000-00-00', 'Principal', 'Approved', 1),
(132, 'Health Care', 9, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(133, 'ICT', 9, 2, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(134, 'Library', 9, 2, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(135, 'Examination', 9, 2, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(136, 'Tuition', 9, 2, 1, 180000, '0000-00-00', 'Principal', 'Approved', 1),
(137, 'Health Care', 9, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(138, 'ICT', 9, 3, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(139, 'Library', 9, 3, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(140, 'Examination', 9, 3, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(141, 'Tuition', 9, 3, 1, 180000, '0000-00-00', 'Principal', 'Approved', 1),
(142, 'Health Care', 8, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(143, 'ICT', 8, 1, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(144, 'Library', 8, 1, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(145, 'Examination', 8, 1, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(146, 'Tuition', 8, 1, 1, 175000, '0000-00-00', 'Principal', 'Approved', 1),
(147, 'Health Care', 8, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(148, 'ICT', 8, 2, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(149, 'Library', 8, 2, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(150, 'Examination', 8, 2, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(151, 'Tuition', 8, 2, 1, 175000, '0000-00-00', 'Principal', 'Approved', 1),
(152, 'Health Care', 8, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(153, 'ICT', 8, 3, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(154, 'Library', 8, 3, 1, 35000, '0000-00-00', 'Principal', 'Approved', 1),
(155, 'Examination', 8, 3, 1, 75000, '0000-00-00', 'Principal', 'Approved', 1),
(156, 'Tuition', 8, 3, 1, 175000, '0000-00-00', 'Principal', 'Approved', 1),
(157, 'Health Care', 7, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(158, 'ICT', 7, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(159, 'Library', 7, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(160, 'Examination', 7, 1, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(161, 'Tuition', 7, 1, 1, 170000, '0000-00-00', 'Principal', 'Approved', 1),
(162, 'Health Care', 7, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(163, 'ICT', 7, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(164, 'Library', 7, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(165, 'Examination', 7, 2, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(166, 'Tuition', 7, 2, 1, 170000, '0000-00-00', 'Principal', 'Approved', 1),
(167, 'sub_total1_grade7', 7, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(168, 'sub_total2_grade7', 7, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(169, 'sub_total3_grade7', 7, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(170, 'sub_total4_grade7', 7, 3, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(171, 'sub_total5_grade7', 7, 3, 1, 170000, '0000-00-00', 'Principal', 'Approved', 1),
(172, 'Health Care', 6, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(173, 'ICT', 6, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(174, 'Library', 6, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(175, 'Examination', 6, 1, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(176, 'Tuition', 6, 1, 1, 165000, '0000-00-00', 'Principal', 'Approved', 1),
(177, 'Health Care', 6, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(178, 'ICT', 6, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(179, 'Library', 6, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(180, 'Examination', 6, 2, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(181, 'Tuition', 6, 2, 1, 165000, '0000-00-00', 'Principal', 'Approved', 1),
(182, 'Health Care', 6, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(183, 'ICT', 6, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(184, 'Library', 6, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(185, 'Examination', 6, 3, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(186, 'Tuition', 6, 3, 1, 165000, '0000-00-00', 'Principal', 'Approved', 1),
(187, 'Health Care', 5, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(188, 'ICT', 5, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(189, 'Library', 5, 1, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(190, 'Examination', 5, 1, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(191, 'Tuition', 5, 1, 1, 160000, '0000-00-00', 'Principal', 'Approved', 1),
(192, 'Health Care', 5, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(193, 'ICT', 5, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(194, 'Library', 5, 2, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(195, 'Examination', 5, 2, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(196, 'Tuition', 5, 2, 1, 160000, '0000-00-00', 'Principal', 'Approved', 1),
(197, 'Health Care', 5, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(198, 'ICT', 5, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(199, 'Library', 5, 3, 1, 30000, '0000-00-00', 'Principal', 'Approved', 1),
(200, 'Examination', 5, 3, 1, 70000, '0000-00-00', 'Principal', 'Approved', 1),
(201, 'Tuition', 5, 3, 1, 160000, '0000-00-00', 'Principal', 'Approved', 1),
(202, 'Health Care', 4, 1, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(203, 'ICT', 4, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(204, 'Library', 4, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(205, 'Examination', 4, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(206, 'Tuition', 4, 1, 1, 140000, '0000-00-00', 'Principal', 'Approved', 1),
(207, 'Health Care', 4, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(208, 'ICT', 4, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(209, 'Library', 4, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(210, 'Examination', 4, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(211, 'Tuition', 4, 2, 1, 140000, '0000-00-00', 'Principal', 'Approved', 1),
(212, 'Health Care', 4, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(213, 'ICT', 4, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(214, 'Library', 4, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(215, 'Examination', 4, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(216, 'Tuition', 4, 3, 1, 140000, '0000-00-00', 'Principal', 'Approved', 1),
(217, 'Health Care', 3, 1, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(218, 'ICT', 3, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(219, 'Library', 3, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(220, 'Examination', 3, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(221, 'Tuition', 3, 1, 1, 130000, '0000-00-00', 'Principal', 'Approved', 1),
(222, 'Health Care', 3, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(223, 'ICT', 3, 2, 1, 20500, '0000-00-00', 'Principal', 'Approved', 1),
(224, 'Library', 3, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(225, 'Examination', 3, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(226, 'Tuition', 3, 2, 1, 130000, '0000-00-00', 'Principal', 'Approved', 1),
(227, 'Health Care', 3, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(228, 'ICT', 3, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(229, 'Library', 3, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(230, 'Examination', 3, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(231, 'Tuition', 3, 3, 1, 130000, '0000-00-00', 'Principal', 'Approved', 1),
(232, 'Health Care', 2, 1, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(233, 'ICT', 2, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(234, 'Library', 2, 1, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(235, 'Examination', 2, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(236, 'Tuition', 2, 1, 1, 120000, '0000-00-00', 'Principal', 'Approved', 1),
(237, 'Health Care', 2, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(238, 'ICT', 2, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(239, 'Library', 2, 2, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(240, 'Examination', 2, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(241, 'Tuition', 2, 2, 1, 120000, '0000-00-00', 'Principal', 'Approved', 1),
(242, 'Health Care', 2, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(243, 'ICT', 2, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(244, 'Library', 2, 3, 1, 25000, '0000-00-00', 'Principal', 'Approved', 1),
(245, 'Examination', 2, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(246, 'Tuition', 2, 3, 1, 120000, '0000-00-00', 'Principal', 'Approved', 1),
(247, 'ICT', 1, 1, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(248, 'Library', 1, 1, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(249, 'Health', 1, 1, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(250, 'Examination', 1, 1, 1, 50000, '0000-00-00', 'Principal', 'Approved', 1),
(251, 'Tuition', 1, 1, 1, 100000, '0000-00-00', 'Principal', 'Approved', 1),
(252, 'ICT', 1, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(253, 'Libary', 1, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(254, 'Health', 1, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(255, 'Examination', 1, 2, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(256, 'Tuition', 1, 2, 1, 100000, '0000-00-00', 'Principal', 'Approved', 1),
(257, 'Health', 1, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(258, 'ICT', 1, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(259, 'Libary', 1, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(260, 'Examination', 1, 3, 1, 20000, '0000-00-00', 'Principal', 'Approved', 1),
(261, 'Tuition', 1, 3, 1, 100000, '0000-00-00', 'Principal', 'Approved', 1),
(262, 'total', 15, 1, 1, 500000, '0000-00-00', 'Principal', 'Approved', 1),
(263, 'total', 15, 2, 1, 530000, '0000-00-00', 'Principal', 'Approved', 1),
(264, 'total', 15, 3, 1, 520000, '0000-00-00', 'Principal', 'Approved', 1),
(265, 'Hostels', 15, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(266, 'Library', 15, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(267, 'Security', 15, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(268, 'Examination', 15, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(269, 'Tuition', 15, 1, 1, 200000, '0000-00-00', 'Principal', 'Approved', 1),
(270, 'Books', 15, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(271, 'Health Service', 15, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(272, 'Library', 15, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(273, 'Examination', 15, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(274, 'Tuition', 15, 2, 1, 220000, '0000-00-00', 'Principal', 'Approved', 1),
(275, 'Development Fees', 15, 3, 1, 47000, '0000-00-00', 'Principal', 'Approved', 1),
(276, 'Hostel Fees', 15, 3, 1, 10000, '0000-00-00', 'Principal', 'Approved', 1),
(277, 'PTA', 15, 3, 1, 48000, '0000-00-00', 'Principal', 'Approved', 1),
(278, 'Tution and Security', 15, 3, 1, 160000, '0000-00-00', 'Principal', 'Approved', 1),
(279, 'Health', 15, 3, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(280, 'total', 16, 1, 1, 470000, '2014-08-06', 'Principal', 'Approved', 1),
(281, 'total', 16, 2, 1, 490000, '0000-00-00', 'Principal', 'Approved', 1),
(282, 'total', 16, 3, 1, 500000, '0000-00-00', 'Principal', 'Approved', 1),
(283, 'Health Service', 16, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(284, 'External Exam', 16, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(285, 'Library', 16, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(286, 'Examination', 16, 1, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(287, 'Tuition', 16, 1, 1, 150000, '0000-00-00', 'Principal', 'Approved', 1),
(288, 'Library', 16, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(289, 'JAMB', 16, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(290, 'Health Service', 16, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(291, 'Examination', 16, 2, 1, 60000, '0000-00-00', 'Principal', 'Approved', 1),
(292, 'Tuition', 16, 2, 1, 150000, '0000-00-00', 'Principal', 'Approved', 1),
(293, 'Development Fees', 16, 3, 1, 47000, '0000-00-00', 'Principal', 'Approved', 1),
(294, 'Hostel Fees', 16, 3, 1, 10000, '0000-00-00', 'Principal', 'Approved', 1),
(295, 'PTA', 16, 3, 1, 48000, '0000-00-00', 'Principal', 'Approved', 1),
(296, 'Security', 16, 3, 1, 6800, '0000-00-00', 'Principal', 'Approved', 1),
(297, 'Tuition', 16, 3, 1, 150000, '0000-00-00', 'Principal', 'Approved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_item_price`
--

CREATE TABLE `school_item_price` (
  `id` int(8) NOT NULL,
  `tution_code_rel_id` int(3) NOT NULL,
  `tuition_codes_domain` int(2) NOT NULL DEFAULT 0 COMMENT 'related tuition_codes_domain',
  `school_item_name` varchar(50) NOT NULL,
  `school_item_desc` varchar(60) NOT NULL,
  `school_item_price` int(8) NOT NULL,
  `school_item_quantity_left` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_item_price`
--

INSERT INTO `school_item_price` (`id`, `tution_code_rel_id`, `tuition_codes_domain`, `school_item_name`, `school_item_desc`, `school_item_price`, `school_item_quantity_left`, `status`) VALUES
(2, 5, 4, 'Jss 2 School Uniform', 'Affordable Uniform for the Students ', 4000, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_rooms`
--

CREATE TABLE `school_rooms` (
  `school_rooms_id` int(4) UNSIGNED NOT NULL,
  `school_rooms_desc` varchar(35) DEFAULT NULL,
  `room_grade` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='every grade only had a hidden rooms, only add multiple rooms';

--
-- Dumping data for table `school_rooms`
--

INSERT INTO `school_rooms` (`school_rooms_id`, `school_rooms_desc`, `room_grade`) VALUES
(1, 'Generic', 0),
(4, 'GRADE 11A', 15);

-- --------------------------------------------------------

--
-- Table structure for table `school_years`
--

CREATE TABLE `school_years` (
  `school_years_id` int(4) UNSIGNED NOT NULL,
  `school_years_desc` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_years`
--

INSERT INTO `school_years` (`school_years_id`, `school_years_desc`) VALUES
(1, '2015/2016 '),
(2, '2016/2017 '),
(3, '2017/2018 '),
(4, '2018/2019 '),
(5, '2019/2020 '),
(6, '2020/2021 '),
(7, '2021/2022 ');

-- --------------------------------------------------------

--
-- Table structure for table `speak`
--

CREATE TABLE `speak` (
  `speak_id` int(11) UNSIGNED NOT NULL,
  `speak_teacherid` int(8) NOT NULL DEFAULT 0,
  `speak_day` int(1) NOT NULL DEFAULT 0,
  `speak_period` int(3) DEFAULT 0,
  `speak_date` varchar(30) NOT NULL,
  `speak_note` text NOT NULL,
  `speak_term` tinyint(1) NOT NULL,
  `speak_session` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speak`
--

INSERT INTO `speak` (`speak_id`, `speak_teacherid`, `speak_day`, `speak_period`, `speak_date`, `speak_note`, `speak_term`, `speak_session`) VALUES
(1, 11, 1, 1, '19-09-2022', 'Duty Note eg. You are hereby assigned to teach the students on Obedience at the School Hall', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(8) UNSIGNED NOT NULL,
  `staff_fname` varchar(30) DEFAULT NULL,
  `staff_lname` varchar(30) DEFAULT NULL,
  `staff_mi` varchar(5) DEFAULT NULL,
  `staff_school` int(10) UNSIGNED DEFAULT 0 COMMENT 'select from tbl_school_domain, or set=0(select from tbl_config)',
  `staff_email` varchar(60) DEFAULT NULL,
  `staff_title` int(10) UNSIGNED DEFAULT NULL,
  `staff_status` int(2) NOT NULL DEFAULT 0 COMMENT '0= not aproved, 1 = approved, 2 = Retired',
  `staff_country` varchar(5) NOT NULL,
  `staff_state` varchar(10) NOT NULL COMMENT 'select state name from tbl_state',
  `staff_dob` varchar(30) NOT NULL,
  `staff_mobile` varchar(20) NOT NULL,
  `staff_entry_year` int(9) NOT NULL,
  `staff_adress` varchar(100) NOT NULL,
  `staff_res_town` varchar(50) NOT NULL,
  `staff_res_state` varchar(10) NOT NULL COMMENT 'select from tbl_state',
  `staff_image` text NOT NULL COMMENT '/pictures',
  `staff_bank` varchar(50) NOT NULL COMMENT 'use bank id from bank table',
  `staff_account` varchar(15) NOT NULL,
  `staff_acc_name` varchar(50) NOT NULL,
  `staff_act_type` varchar(15) NOT NULL,
  `staff_bank_sort` varchar(20) NOT NULL COMMENT 'branch sort code',
  `staff_id_no` varchar(20) NOT NULL,
  `staff_sex` varchar(6) NOT NULL,
  `staff_salary_type` int(11) NOT NULL COMMENT 'select from salary ',
  `teaching_type` varchar(20) NOT NULL COMMENT 'to show if corpper or practise',
  `staff_ethnicity` int(10) NOT NULL COMMENT 'select from ethnicity',
  `staff_birth_city` varchar(50) NOT NULL,
  `staff_kin_name` varchar(50) NOT NULL,
  `staff_kin_phone` varchar(20) NOT NULL,
  `staff_kin_email` varchar(100) NOT NULL,
  `staff_kin_adress` varchar(100) NOT NULL,
  `staff_kin_relationship` int(11) NOT NULL COMMENT 'from relationship table',
  `staff_biography` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_fname`, `staff_lname`, `staff_mi`, `staff_school`, `staff_email`, `staff_title`, `staff_status`, `staff_country`, `staff_state`, `staff_dob`, `staff_mobile`, `staff_entry_year`, `staff_adress`, `staff_res_town`, `staff_res_state`, `staff_image`, `staff_bank`, `staff_account`, `staff_acc_name`, `staff_act_type`, `staff_bank_sort`, `staff_id_no`, `staff_sex`, `staff_salary_type`, `teaching_type`, `staff_ethnicity`, `staff_birth_city`, `staff_kin_name`, `staff_kin_phone`, `staff_kin_email`, `staff_kin_adress`, `staff_kin_relationship`, `staff_biography`) VALUES
(1, 'vitalis', 'ogbonna', 'c', 0, 'agavitalisogbonna@gmail.com', 10, 0, '', 'Enugu', '24/06/1998', '08163922749', 0, 'unn', '', '', '', '', '', '', '', '', '', 'Male', 0, '', 12, 'nsukkka', '', '', '', '', 0, ''),
(2, 'Chinweoke', 'Okwor', 'Cypri', 0, 'okworchinweoke@gmail.com', 1, 1, 'NG', 'Enugu', '04/08/1994', '07068408775', 1, '35 umunkaka, UNN', 'Enugu', 'Enugu', 'staff_cyprian_IMG_20150819_143358.JPG', '9', '8844364680', 'Okwor Cyprian', 'Savings', '033153513', '', 'Male', 0, '', 12, 'Enugu', 'Okwor Ebuka', '08166862199', 'okworebuka@gmail.com', 'No 1 Atani Close', 3, ''),
(3, 'Nnaemeka', 'Didigwu', 'C', 0, 'chrisdidigwu@gmail.com', 10, 1, 'NG', 'Enugu', '19/08/1988', '+2348139240', 1, 'No 1 Odim gate Off Unn', 'Nsukka', 'Enugu', 'staff_Nna-Did_Didigwu Nnaemeka.jpg', '1', '0908987651', 'Didigwu Nnemeka c', 'Savings', '123', 'Not Assigned', 'Male', 0, '', 12, 'Nsukka', 'Samson', '08134965757', 'samdid@gmail.com', 'samdid@gmail.com', 3, 'I am sometimes a stupid person and wish to be referred to as -----'),
(4, 'Chukwuemeka', 'Nwagu', 'Godwi', 0, 'c_nwagu@yahoo.com', 1, 1, 'NG', 'Enugu', '20/03/1997', '08060227196', 1, 'Department of Electronic Engineering, University of Nigeria, Nsukka.', 'Nsukka', 'Enugu', 'staff_Nwagu_nwagu_photo.jpg', '', '', '', '', '', '10002', 'Male', 0, '', 12, 'Nsukka', 'Dr. Eric K. Nwagu', '08062505378', 'eric.nwagu@unn.edu.ng', 'Department of Social Science Education, University of Nigeria, Nsukka.', 1, ''),
(5, 'VICTOR', 'ILOH', 'IHECH', 0, 'ilohvictor012@gmail.com', 1, 0, 'NG', 'Kano', '', '08168566502', 1, '58 REHAB ROAD EMENE ENUGU', 'enugu city', 'Enugu', '', '6', '1099963214', 'jagada for real', 'Current', '4225674', '', 'Male', 0, '', 12, 'fagge', 'DOM ILOH', '08028714229', 'ilohvictor012@gmail.com', '41 ddyhydaca', 12, 'am just me'),
(6, 'NZUBECHUKWU', 'ODENIGBO', NULL, 0, 'joseodenigbo@yahoo.com', NULL, 1, '', '', '', '08105535545', 1, 'unn', '', '', 'staff_josemaria_656869_20170120_152836.jpg', '1', '3030362843', 'nzubechukwu odenigbo', 'Savings', '5556', 'Not Assigned', 'Male', 0, '', 0, '', 'ADOLPHUS', '08139181196', 'joseodenigbo@yahoo.com', 'enugu city', 1, ''),
(7, 'James Ifeanyichuwku', 'Agu', NULL, 0, 'agujamesi@gmail.com', NULL, 0, '', '', '', '08165834605', 1, '1 Umueze Lane Enugu Ngwo, Enugu State', '', '', '', '', '', '', '', '', '', 'Male', 0, '', 0, '', '', '', '', '', 0, ''),
(8, 'Isreal', 'Ugbana', 'C', 0, 'kelvin@hypertera.ng', 1, 1, 'NG', 'Delta', '10/02/1991', '081665556240', 1, 'No 14 DBS Road, Opposite DBS Office', '', 'Delta', 'staff_staff_oge.jpg', '1', '', '3042007600', 'Savings', '', '10002', 'Male', 0, '', 64, 'Olomo', '', '', '', '', 0, ''),
(9, 'Funsho', 'Yemi', NULL, 0, 'h@yahoo.com', NULL, 0, '', '', '', '55555555555', 1, 'g', '', '', '', '', '', '', '', '', '', 'Male', 0, '', 0, '', '', '', '', '', 0, ''),
(10, 'vgjug', 'ubkg', NULL, 0, 'kelvin.ugbana005@gmail.com', NULL, 0, '', '', '', '96789766756', 1, 'yjvgjugfju', '', '', '', '', '', '', '', '', '', 'Male', 0, '', 0, '', '', '', '', '', 0, ''),
(11, 'Eyo', 'Eyo', 'eyo', 0, 'favourakak@gmail.com', 0, 1, 'NG', 'Anambra', '', '1234567890', 1, '6 ', 'dsdsds', 'Ebonyi', 'staff_staffeyo_kids1.jpg', '16', '1234567890', 'eyo ', 'Savings', '057010056', 'Not Assigned', 'Male', 0, '', 47, 'Calabar', 'eyomother', '23456789234', 'eyomother@gmail.com', 'hdsjdhsjdhs', 2, 'anything you reason');

-- --------------------------------------------------------

--
-- Table structure for table `staff_calendar`
--

CREATE TABLE `staff_calendar` (
  `id` int(10) NOT NULL,
  `creator_id` int(8) NOT NULL,
  `event_name` varchar(25) NOT NULL,
  `start_date` varchar(35) NOT NULL,
  `end_date` varchar(35) NOT NULL,
  `event_color` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_notepad`
--

CREATE TABLE `staff_notepad` (
  `id` int(8) NOT NULL,
  `author` int(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `dateCreated` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_notepad`
--

INSERT INTO `staff_notepad` (`id`, `author`, `title`, `note`, `dateCreated`) VALUES
(1, 8, 'My First Notepad', '<p>Marketing communication falls into various categories relating to marketing to the public from advertising, promotion, sales, branding and online performance. It is so spread-out and iconic that it has become a favored term amongst practitioners. It is a symbolic tool that helps organizations interact with their many stakeholders in the market by promoting their goods and services to them. Whenever members of the public interact with an organization, marketing communication has been used, this is a significant process where businesses use to gain success and knowledge on their brand. By far, the most exciting and creative areas within marketing offering career opportunities in this multi-millionaire industry.</p>\r\n\r\n<p>In order to gain success in marketing, both the organization and members of the public must be involved. Business operate successfully if they target market to satisfy their customers &ldquo;consumers&rdquo;. By targeting audience who appreciate the organization marketing program will gain a successful branding. A target audience is a group of people that is aimed at by the marketers, delivering them a message of their brand. The target audience must likely be people who will react to their marketing communication in a positive way. Marketing communication falls into the same meaning as &ldquo;Advertising&rdquo;. Advertising is the most common marketing terms that organization and even members of the public understand and evaluate, it has come across people at least a number of times in their everyday life. Advertising is only a small section of marketing communication and it&rsquo;s not an alternative term to it.</p>\r\n\r\n<p>Marketing communication consist of five (5) key factors:</p>\r\n\r\n<ul>\r\n	<li>Persuasion and information</li>\r\n	<li>Objectives</li>\r\n	<li>Contact point</li>\r\n	<li>Stakeholders</li>\r\n	<li>Marketing communication aspects</li>\r\n</ul>\r\n\r\n<p>Firstly, all marketing communication goal is to persuade their target audience to change their attitudes and behavior towards the organization. There are many ways to persuade the target audience; for instance, marketers can provides a valid reasoning and significant fact that can change consumer behavior significantly. Listening and responding to any question to the organization can go a long way in the driving success of the organization.</p>\r\n', '13/12/2015');

-- --------------------------------------------------------

--
-- Table structure for table `staff_post`
--

CREATE TABLE `staff_post` (
  `id` int(10) NOT NULL,
  `poster_id` int(8) NOT NULL,
  `post_text` text NOT NULL,
  `post_image` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `post_date` varchar(30) NOT NULL,
  `views` int(4) NOT NULL DEFAULT 0,
  `liker_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_post`
--

INSERT INTO `staff_post` (`id`, `poster_id`, `post_text`, `post_image`, `status`, `post_date`, `views`, `liker_id`) VALUES
(1, 8, '', 'Discussion_54499_staff_baba.jpg', 0, '03/10/2015', 0, ''),
(2, 8, 'Business process automation (BPA) comes in many forms, from literal assembly lines to self-services. Our focus in business process automation is on document-based process automation. Basically, anything that is done on paper can be done digitally. It is called the &acirc;??Get rid of Paper Works&acirc;??. But this isn&acirc;??t just about replacing your stacks of files with PDF files&acirc;??automation aims to make the entire process more cost-efficient, secured, streamlined, error-proof and accessible. Automation is the administrator that knows what every department needs, produces every document as it&acirc;??s needed and never takes a vacation. ', '', 0, '03/10/2015', 1, ''),
(3, 8, 'Business process automation (BPA) comes in many forms, from literal assembly lines to self-services. Our focus in business process automation is on document-based process automation. Basically, anything that is done on paper can be done digitally.', '', 1, '03/10/2015', 11, '8;'),
(4, 8, '', 'Discussion_90544_staff_IMG_9215.jpeg', 1, '13/12/2015', 0, '8;'),
(5, 8, '			&lt;div class=&quot;col-xs-3 col-sm-3&quot;&gt;<br />\n				&lt;p class=&quot;lead&quot;&gt;Cognitive Domain&lt;/p&gt;<br />\n				&lt;div class=&quot;table-responsive&quot;&gt;<br />\n					&lt;table class=&quot;table&quot;&gt;<br />\n						&lt;tr&gt;&lt;th&gt;&lt;?php print $general-&gt;getValue(\'value\', \'cognitive_domain\', \'id\', \'1\') ?&gt;&lt;/th&gt;<br />\n							&lt;td&gt;&lt;?php print $getCommentary-&gt;cog_1 * 20  ?&gt;%&lt;/td&gt;<br />\n						&lt;/tr&gt;<br />\n						&lt;tr&gt;&lt;th&gt;&lt;?php print $general-&gt;getValue(\'value\', \'cognitive_domain\', \'id\', \'2\') ?&gt;&lt;/th&gt;<br />\n							&lt;td&gt;&lt;?php print $getCommentary-&gt;cog_2 * 20  ?&gt;%&lt;/td&gt;<br />\n						&lt;/tr&gt;<br />\n						&lt;tr&gt;&lt;th&gt;&lt;?php print $general-&gt;getValue(\'value\', \'cognitive_domain\', \'id\', \'3\') ?&gt;&lt;/th&gt;<br />\n							&lt;td&gt;&lt;?php print $getCommentary-&gt;cog_3 * 20  ?&gt;%&lt;/td&gt;<br />\n						&lt;/tr&gt;<br />\n						&lt;tr&gt;&lt;th&gt;&lt;?php print $general-&gt;getValue(\'value\', \'cognitive_domain\', \'id\', \'4\') ?&gt;&lt;/th&gt;<br />\n							&lt;td&gt;&lt;?php print $getCommentary-&gt;cog_4 * 20  ?&gt;%&lt;/td&gt;<br />\n						&lt;/tr&gt;<br />\n						&lt;tr&gt;&lt;th&gt;Attendance:&lt;/th&gt;<br />\n							&lt;td&gt;&lt;?php print $dtto-&gt;getAttendanceDigit($__doncareStudentID, $grade_terms, $deduce_year, $no_of_dys). \'%\' ?&gt;&lt;/td&gt;<br />\n						&lt;/tr&gt;<br />\n					&lt;/table&gt;<br />\n				&lt;/div&gt;<br />\n			&lt;/div&gt;', '', 1, '13/12/2015', 5, '8;'),
(6, 8, 'Hello my fellow demo staff, what are you teaching the demo students today! lol', '', 0, '18/02/2016', 0, '8;');

-- --------------------------------------------------------

--
-- Table structure for table `staff_post_reply`
--

CREATE TABLE `staff_post_reply` (
  `id` int(10) NOT NULL,
  `post_rel_id` int(8) NOT NULL,
  `post_commenter_id` int(8) NOT NULL,
  `post_comment` text NOT NULL,
  `post_comment_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_post_reply`
--

INSERT INTO `staff_post_reply` (`id`, `post_rel_id`, `post_commenter_id`, `post_comment`, `post_comment_date`) VALUES
(1, 3, 8, 'Branded with amazing digital library and Professional school website coupled with facebook apps and pages. This is designed search engine friendly and social marketing structure to make your school known around the world. Make use of this Opportunity.', '06/08/2017');

-- --------------------------------------------------------

--
-- Table structure for table `staff_role`
--

CREATE TABLE `staff_role` (
  `id` int(8) NOT NULL,
  `staff_id` int(8) NOT NULL,
  `liberian` tinyint(1) NOT NULL DEFAULT 0,
  `discipline` tinyint(1) NOT NULL DEFAULT 0,
  `attendance` tinyint(1) NOT NULL DEFAULT 0,
  `health` tinyint(1) NOT NULL DEFAULT 0,
  `receipt` tinyint(1) NOT NULL DEFAULT 0,
  `timetable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_role`
--

INSERT INTO `staff_role` (`id`, `staff_id`, `liberian`, `discipline`, `attendance`, `health`, `receipt`, `timetable`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0, 0, 0),
(7, 7, 0, 0, 0, 0, 0, 0),
(8, 8, 0, 1, 0, 0, 0, 1),
(9, 9, 0, 0, 0, 0, 0, 0),
(10, 10, 0, 0, 0, 0, 0, 0),
(11, 11, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `std_report_cards`
--

CREATE TABLE `std_report_cards` (
  `id` int(10) NOT NULL,
  `student` int(8) NOT NULL,
  `session` int(3) NOT NULL,
  `term` int(2) NOT NULL,
  `grade` int(4) NOT NULL,
  `c_form_teacher` varchar(150) NOT NULL DEFAULT '-',
  `c_principal` varchar(150) NOT NULL DEFAULT '-',
  `check_result` tinyint(1) NOT NULL DEFAULT 0,
  `check_counter` tinyint(1) NOT NULL,
  `cog_1` int(3) NOT NULL DEFAULT 0,
  `cog_2` int(3) NOT NULL DEFAULT 0,
  `cog_3` int(3) NOT NULL DEFAULT 0,
  `cog_4` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_report_cards`
--

INSERT INTO `std_report_cards` (`id`, `student`, `session`, `term`, `grade`, `c_form_teacher`, `c_principal`, `check_result`, `check_counter`, `cog_1`, `cog_2`, `cog_3`, `cog_4`) VALUES
(1, 7, 1, 1, 7, '', '', 0, 0, 0, 0, 0, 0),
(2, 9, 1, 1, 15, 'An Excellent Result. Keep it up.', '', 0, 0, 3, 3, 4, 5),
(3, 10, 1, 1, 15, 'An Excellent Result. Keep it up.', '', 0, 0, 4, 5, 4, 3),
(4, 5, 1, 1, 5, '', '', 0, 0, 0, 0, 0, 0),
(5, 4, 1, 1, 7, '', '', 0, 0, 0, 0, 0, 0),
(6, 6, 1, 1, 9, '', '', 0, 0, 0, 0, 0, 0),
(7, 8, 1, 1, 15, 'An Excellent Result. Keep it up.', '', 0, 0, 3, 5, 3, 3),
(8, 11, 1, 1, 15, 'An Excellent Result. Keep it up.', '', 0, 0, 2, 4, 4, 2),
(16, 7, 1, 2, 7, '', '', 0, 0, 4, 4, 1, 1),
(17, 9, 1, 2, 15, 'She has done well. Keep it up.', '', 0, 0, 3, 3, 3, 3),
(18, 10, 1, 2, 15, '', '', 0, 0, 0, 0, 0, 0),
(19, 5, 1, 2, 5, '', '', 0, 0, 0, 0, 0, 0),
(20, 4, 1, 2, 7, '', '', 0, 0, 4, 2, 3, 4),
(21, 6, 1, 2, 9, '', '', 0, 0, 0, 0, 0, 0),
(22, 8, 1, 2, 15, '', '', 0, 0, 0, 0, 0, 0),
(23, 11, 1, 2, 15, 'He has to learn how to read at home and practice', '', 1, 4, 3, 4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `studentbio`
--

CREATE TABLE `studentbio` (
  `studentbio_id` int(8) UNSIGNED NOT NULL,
  `studentbio_internalid` varchar(20) NOT NULL DEFAULT '',
  `studentbio_title` int(3) NOT NULL,
  `studentbio_lname` varchar(30) NOT NULL DEFAULT '',
  `studentbio_fname` varchar(30) NOT NULL DEFAULT '',
  `studentbio_mname` varchar(20) DEFAULT NULL,
  `studentbio_generation` smallint(5) UNSIGNED DEFAULT NULL,
  `studentbio_entry_year` int(3) NOT NULL COMMENT 'which session selected from school_year that is current did he register',
  `studentbio_entry_grade` int(4) NOT NULL COMMENT 'grade at which student choose for admission',
  `studentbio_sped` smallint(5) UNSIGNED DEFAULT NULL,
  `studentbio_gender` varchar(6) NOT NULL DEFAULT '',
  `studentbio_pictures` text NOT NULL COMMENT '/pictures',
  `studentbio_ethnicity` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `studentbio_dob` varchar(30) DEFAULT NULL,
  `studentbio_birthcity` varchar(50) DEFAULT NULL,
  `studentbio_birthstate` varchar(30) DEFAULT NULL,
  `studentbio_birthcountry` varchar(5) DEFAULT NULL,
  `studentbio_prevschoolname` varchar(40) DEFAULT NULL,
  `studentbio_prevschooladdress` varchar(40) DEFAULT NULL,
  `studentbio_prevschoolcity` varchar(40) DEFAULT NULL,
  `studentbio_prevschoolstate` varchar(25) DEFAULT NULL,
  `studentbio_prevschoolzip` varchar(10) DEFAULT NULL,
  `studentbio_prevschoolcountry` varchar(5) DEFAULT NULL,
  `studentbio_school` smallint(5) UNSIGNED DEFAULT 0,
  `studentbio_homed` smallint(5) UNSIGNED DEFAULT NULL,
  `studentbio_primarycontact` smallint(5) UNSIGNED DEFAULT NULL,
  `studentbio_form_master` int(9) UNSIGNED DEFAULT NULL,
  `studentbio_bus` varchar(20) DEFAULT NULL,
  `admit` varchar(10) NOT NULL DEFAULT '0' COMMENT '0=not admited, 1=admited, 2= Graduate, 3= suspended, 4= expelled, 5= transferd, 6 withdrawn, 7 deceased',
  `std_bio_class_control` varchar(100) NOT NULL DEFAULT 'Change Grade' COMMENT 'DO NOTHING: this colum is only controlling student database grid, do not execute anything',
  `std_bio_address` varchar(100) NOT NULL,
  `std_bio_resident_town` varchar(100) NOT NULL,
  `std_bio_resident_state` varchar(30) NOT NULL,
  `std_bio_mobile` varchar(11) NOT NULL,
  `std_bio_phone` varchar(15) NOT NULL,
  `std_bio_living_with_parent` tinyint(1) NOT NULL DEFAULT 1,
  `admission_badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentbio`
--

INSERT INTO `studentbio` (`studentbio_id`, `studentbio_internalid`, `studentbio_title`, `studentbio_lname`, `studentbio_fname`, `studentbio_mname`, `studentbio_generation`, `studentbio_entry_year`, `studentbio_entry_grade`, `studentbio_sped`, `studentbio_gender`, `studentbio_pictures`, `studentbio_ethnicity`, `studentbio_dob`, `studentbio_birthcity`, `studentbio_birthstate`, `studentbio_birthcountry`, `studentbio_prevschoolname`, `studentbio_prevschooladdress`, `studentbio_prevschoolcity`, `studentbio_prevschoolstate`, `studentbio_prevschoolzip`, `studentbio_prevschoolcountry`, `studentbio_school`, `studentbio_homed`, `studentbio_primarycontact`, `studentbio_form_master`, `studentbio_bus`, `admit`, `std_bio_class_control`, `std_bio_address`, `std_bio_resident_town`, `std_bio_resident_state`, `std_bio_mobile`, `std_bio_phone`, `std_bio_living_with_parent`, `admission_badge`) VALUES
(1, '1000000', 0, 'kingsley', 'NDUAGUBA', NULL, 4, 0, 10, NULL, 'Male', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0', 'Change Grade', '', '', '', '', '', 1, 1),
(3, '1000001', 0, 'IFY', 'IF', NULL, 4, 0, 10, NULL, 'Female', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0', 'Change Grade', '', '', '', '', '', 1, 1),
(4, '1000002', 0, 'Ben', 'Benjamin', NULL, 4, 0, 7, NULL, 'Male', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '1', 'Change Grade', '', '', '', '', '', 1, 1),
(5, '1000003', 0, 'OMEJE', 'CHRISTIAN', NULL, 4, 0, 5, NULL, 'Male', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', 'Change Grade', '', '', '', '', '', 1, 1),
(6, '1000004', 0, 'Chizoba', 'Mary', NULL, 4, 1, 9, NULL, 'Female', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 11, NULL, '1', 'Change Grade', '', '', '', '', '', 1, 1),
(7, '1000005', 31, 'IKECHUKWU', 'APEH', 'ANDREW', 4, 1, 7, NULL, 'Male', 'student_ikechukwuapeh_8d0d2001a3304fba8bd221ce952e1fca.jpg', 12, '14/03/1996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '1', 'Change Grade', 'AMUGWU OBIGE OBUKPA', 'ENUGU EZIKE', 'Enugu', '08108273445', '', 1, 1),
(8, '1000006', 37, 'Ugbana', 'Chinwe', 'S', 4, 1, 14, NULL, 'Male', 'student_chinwe_IMG-20130718-WA0004.jpg', 24, '10/02/1990', '', 'Delta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 8, NULL, '2', 'Change Grade', 'Plot 14 Opposite DBS, DBS road', 'Asaba', 'Imo', '08166555624', '', 1, 1),
(9, '1000007', 6, 'OKAFOR', 'CHINENYE', 'LILIAN', 4, 1, 5, NULL, 'Female', 'student_chinex_chi.img1.jpg', 12, '09/11/1995', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, '2', 'Change Grade', 'No 7 George maja, Odume layout Obosi', 'Abatete', 'Anambra', '08039210952', '', 1, 1),
(10, '1000008', 6, 'Udoka', 'Oluebube', 'Jane', 4, 1, 5, NULL, 'Female', '', 12, '14/07/1997', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2', 'Change Grade', 'No 1 Alor Close Nkpor Anambra state', 'Alor', 'Anambra', '08033326181', '', 1, 1),
(11, '1000009', 1, 'Ugbana', 'Kester', 'E', 3, 1, 15, NULL, 'Male', 'student_student_IMG_20141227_164919.jpg', 24, '01/05/1997', 'Warri', 'Delta', 'NG', 'Challenge Academy', 'No 3 Hilton Street', 'Orhuwhorun', 'Delta', '', 'NG', 0, NULL, NULL, 0, NULL, '2', 'Change Grade', 'No 2 Kagbare Close Orhuwhorun', 'Orhuwhorun', 'Ebonyi', '08166555624', '', 1, 0),
(17, '89817282/ET', 1, 'Ugbana', 'Kelvin', 'Chuks', 2, 1, 16, NULL, 'Female', 'student_kelvin_20170220_124947.jpg', 24, '10/02/1992', 'Olomo', 'Delta', 'NG', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2', 'Change Grade', '', '', 'Delta', '08166555624', '', 1, 0),
(20, '89817283', 6, 'Okobor', 'Josephine', 'KIki', 4, 1, 14, NULL, 'Female', 'student_josephine_13227247_247314955658661_1157409767387680391_o.jpg', 48, '30/07/1998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0', 'Change Grade', 'NO 4 Hilla Street, Benue', '', 'Benue', '08037829757', '', 1, 2),
(25, '1000010', 0, 'Eyo', 'Eyo', NULL, 4, 1, 1, NULL, 'Male', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', 'Change Grade', '', '', '', '', '', 1, 1),
(26, '1000011', 5, 'new eyo', 'Eyo', 'eyo', 4, 7, 16, NULL, 'Male', 'student_neweyo_Unnamed.jpg', 1, '08/05/2001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 11, NULL, '1', 'Change Grade', '6 Lagos street', 'Abuja', 'Borno', '23456789234', '', 1, 1),
(27, '1000012', 5, 'Eyo', 'Eyo', 'eyo', 4, 7, 1, NULL, 'Male', 'student_eyo_studentcomputertest.jpg', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 11, NULL, '1', 'Change Grade', '6 Cali street', 'Calabar', 'Ekiti', '23456789555', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_calendar`
--

CREATE TABLE `student_calendar` (
  `id` int(10) NOT NULL,
  `creator_id` int(8) NOT NULL,
  `event_name` varchar(25) NOT NULL,
  `start_date` varchar(35) NOT NULL,
  `end_date` varchar(35) NOT NULL,
  `event_color` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_calendar`
--

INSERT INTO `student_calendar` (`id`, `creator_id`, `event_name`, `start_date`, `end_date`, `event_color`) VALUES
(1, 11, 'My Birthday', '10/02/2018', '10/02/2018', '#f56954'),
(2, 11, 'Ebele Visit', '19/02/2018', '20/02/2018', '#0073b7'),
(3, 11, 'Ivie Visit', '19/02/2018', '19/02/2018', '#00c0ef'),
(4, 11, 'Adaeze Visit', '22/02/2018', '25/02/2018', '#f39c12'),
(5, 11, 'Dr Oke Visit', '26/02/2018', '28/02/2018', '#0073b7'),
(6, 11, 'Traveling to Illa', '02/03/2018', '04/03/2018', '#f56954'),
(12, 11, 'Fasting and Prayer', '05/03/2018', '16/03/2018', '#00c0ef'),
(19, 11, 'Nancy Visit', '03/04/2018', '15/04/2018', '#f39c12'),
(22, 11, 'Oshione\'s Visit', '20/03/2018', '22/03/2018', '#f39c12'),
(29, 11, 'Fasting and Prayer', '26/03/2018', '30/03/2018', '#00c0ef'),
(32, 11, 'Golds\' Visit', '18/03/2018', '18/03/2018', '#f39c12'),
(34, 11, 'NNPC Gloria', '25/03/2018', '25/03/2018', '#FF00FF');

-- --------------------------------------------------------

--
-- Table structure for table `student_contact`
--

CREATE TABLE `student_contact` (
  `studentcontact_id` int(8) UNSIGNED NOT NULL,
  `studentcontact_studentid` int(8) UNSIGNED DEFAULT NULL,
  `studentcontact_title` int(2) NOT NULL DEFAULT 0,
  `studentcontact_fname` varchar(30) DEFAULT NULL,
  `studentcontact_lname` varchar(30) DEFAULT NULL,
  `studentcontact_address1` varchar(40) DEFAULT NULL,
  `studentcontact_address2` varchar(40) DEFAULT NULL,
  `studentcontact_city` varchar(30) DEFAULT NULL,
  `studentcontact_state` varchar(30) DEFAULT NULL,
  `studentcontact_zip` varchar(10) DEFAULT NULL,
  `studentcontact_phone1` varchar(20) DEFAULT NULL,
  `studentcontact_phone2` varchar(20) DEFAULT NULL,
  `studentcontact_phone3` varchar(20) DEFAULT NULL,
  `studentcontact_email` varchar(50) DEFAULT NULL,
  `studentcontact_other` tinytext DEFAULT NULL,
  `studentcontact_relationship` smallint(5) UNSIGNED DEFAULT NULL,
  `studentcontact_year` int(3) NOT NULL DEFAULT 0,
  `studentcontact_primary` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_contact`
--

INSERT INTO `student_contact` (`studentcontact_id`, `studentcontact_studentid`, `studentcontact_title`, `studentcontact_fname`, `studentcontact_lname`, `studentcontact_address1`, `studentcontact_address2`, `studentcontact_city`, `studentcontact_state`, `studentcontact_zip`, `studentcontact_phone1`, `studentcontact_phone2`, `studentcontact_phone3`, `studentcontact_email`, `studentcontact_other`, `studentcontact_relationship`, `studentcontact_year`, `studentcontact_primary`) VALUES
(1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6, 7, 1, 'ALEX', 'APEH', NULL, NULL, NULL, NULL, NULL, '08038758850', NULL, NULL, '', NULL, 1, 0, 0),
(7, 8, 3, 'Ugbana', 'Alfred', NULL, NULL, NULL, NULL, NULL, '08037831092', NULL, NULL, '', NULL, 1, 0, 0),
(8, 9, 8, 'Ekuma', 'Okokoh', NULL, NULL, NULL, NULL, NULL, '08066424512', NULL, NULL, 'ifihear@gmail.com', NULL, 1, 0, 0),
(9, 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10, 11, 17, 'Onyeguke', 'Henry', 'NO 2 Lekki Phase 1', '', 'Lagos', 'Lagos', '', '08056382921', '', '', 'henry.onyeguke@hypertera.ng', NULL, 1, 0, 0),
(12, 17, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(14, 20, 22, 'Okobor', 'Kelvin', NULL, NULL, NULL, NULL, NULL, '08063792386', NULL, NULL, 'fat_okobor@gmail.com', NULL, 1, 0, 0),
(15, 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(16, 26, 1, 'Eyo', 'Eyo', NULL, NULL, NULL, NULL, NULL, '12345566766', NULL, NULL, 'favourakak@gmail.com', NULL, 1, 0, 0),
(17, 27, 1, 'Eyo', 'Eyo', NULL, NULL, NULL, NULL, NULL, '12345678345', NULL, NULL, 'favourakak@gmail.com', NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_grade_year`
--

CREATE TABLE `student_grade_year` (
  `student_grade_year_id` int(8) UNSIGNED NOT NULL,
  `student_grade_year_student` int(8) DEFAULT NULL,
  `student_grade_year_year` int(3) UNSIGNED DEFAULT NULL,
  `student_grade_year_grade` int(3) UNSIGNED DEFAULT NULL,
  `student_grade_year_class_room` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_grade_year`
--

INSERT INTO `student_grade_year` (`student_grade_year_id`, `student_grade_year_student`, `student_grade_year_year`, `student_grade_year_grade`, `student_grade_year_class_room`) VALUES
(1, 7, 1, 7, 0),
(2, 9, 1, 15, 4),
(3, 10, 1, 15, 4),
(4, 5, 1, 5, 0),
(5, 4, 1, 7, 0),
(6, 6, 1, 9, 0),
(7, 8, 1, 15, 4),
(8, 11, 1, 15, 4),
(10, 17, 1, 16, 0),
(13, 7, 2, 8, 0),
(14, 9, 2, 16, 0),
(15, 10, 2, 16, 0),
(16, 5, 2, 6, 0),
(17, 4, 2, 8, 0),
(18, 6, 2, 10, 0),
(19, 8, 2, 16, 0),
(20, 11, 2, 16, 0),
(28, 7, 3, 9, 0),
(29, 5, 3, 7, 0),
(30, 4, 3, 9, 0),
(31, 6, 3, 11, 0),
(35, 7, 4, 10, 0),
(36, 5, 4, 8, 0),
(37, 4, 4, 10, 0),
(38, 6, 4, 12, 0),
(42, 7, 5, 11, 0),
(43, 5, 5, 9, 0),
(44, 4, 5, 11, 0),
(45, 6, 5, 13, 0),
(49, 7, 6, 12, 0),
(50, 5, 6, 10, 0),
(51, 4, 6, 12, 0),
(52, 6, 6, 14, 0),
(56, 7, 7, 13, 0),
(57, 5, 7, 11, 0),
(58, 4, 7, 13, 0),
(59, 6, 7, 15, 0),
(97, 27, 7, 1, 0),
(98, 26, 7, 16, 0),
(99, 25, 7, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_notepad`
--

CREATE TABLE `student_notepad` (
  `id` int(8) NOT NULL,
  `author` int(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `dateCreated` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_notepad`
--

INSERT INTO `student_notepad` (`id`, `author`, `title`, `note`, `dateCreated`) VALUES
(1, 11, 'My First Note', '<p><em>This study is on marketing communication and its impact in the hospitality industry in delta state.A case study of some selected hotels from delta state(3 hotels from Asaba and 1 motel from Agbor)Elomaz Hotel,Grand Hotel,Harlescott Hotel,and Fairview Motel.The objective of the study include the following; to examine the role of marketing communication in the hospitality industry,structured questionnaires was used to obtain information for the research, the findings revealed that marketing communication is a dynamic and promotional tool in the hospitality industry, but lack of trained personnel and technologies are the major challenges militating against marketing communication in the hospitality industry. Hence hospitality industry should ensure to provide and enhance the knowledge of skilled personnel with efficient and accessible technology.</em></p>\r\n', '07/08/2017'),
(2, 11, 'My Password', '<p>My anme is sbilshdkb&nbsp; and i was in th unincjkscsv</p>\r\n', '09/03/2018');

-- --------------------------------------------------------

--
-- Table structure for table `student_office`
--

CREATE TABLE `student_office` (
  `id` int(8) NOT NULL,
  `student` int(8) NOT NULL,
  `office` int(11) NOT NULL COMMENT 'using tbl_std_office table',
  `session` int(3) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_parents`
--

CREATE TABLE `student_parents` (
  `student_parents_id` int(8) NOT NULL,
  `student_parents_firstname` varchar(30) NOT NULL,
  `student_parents_lastname` varchar(30) NOT NULL,
  `student_parents_mi` varchar(20) NOT NULL,
  `student_parents_email` varchar(30) NOT NULL,
  `student_parents_sex` varchar(6) NOT NULL,
  `student_parents_title` int(3) NOT NULL,
  `student_parents_image` text NOT NULL COMMENT '/pictures',
  `student_parents_occupation` varchar(30) NOT NULL,
  `student_parents_contactaddress1` text NOT NULL,
  `student_parents_contactaddress2` text NOT NULL,
  `student_parents_mobile1` varchar(20) NOT NULL,
  `student_parents_mobile2` varchar(20) NOT NULL,
  `student_parents_city` varchar(20) NOT NULL,
  `student_parents_state` varchar(20) NOT NULL,
  `student_parents_country` varchar(5) NOT NULL,
  `student_parents_school` tinyint(1) NOT NULL,
  `student_parents_status` int(3) NOT NULL DEFAULT 0 COMMENT '1= verified by admin, 0 =pending, 2= no kid in school'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_parents`
--

INSERT INTO `student_parents` (`student_parents_id`, `student_parents_firstname`, `student_parents_lastname`, `student_parents_mi`, `student_parents_email`, `student_parents_sex`, `student_parents_title`, `student_parents_image`, `student_parents_occupation`, `student_parents_contactaddress1`, `student_parents_contactaddress2`, `student_parents_mobile1`, `student_parents_mobile2`, `student_parents_city`, `student_parents_state`, `student_parents_country`, `student_parents_school`, `student_parents_status`) VALUES
(1, 'ogbonna', 'vitalis', '', 'agavitalisogbonna@hotmail.com', 'Male', 0, '', '', 'ovoko', '', '08163922749', '', '', '', '', 0, 1),
(2, 'OMEJE', 'CHRISTIAN', '', 'ikechukwuchristian440@unn.edu.', 'Male', 0, '', '', 'NSUKKA', '', '07067645724', '', '', '', '', 0, 1),
(3, 'Hypertera', 'Okokoh', 'Ekuma', 'ekuma@hypertera.ng', 'Male', 14, 'parent_parent_IMG-20150904-WA0007.jpg', 'Barister', 'hypertera Nigeria Lomited', '', '08066424512', '', 'Enugu', 'en', 'NG', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_post`
--

CREATE TABLE `student_post` (
  `id` int(10) NOT NULL,
  `poster_id` int(8) NOT NULL,
  `post_text` text NOT NULL,
  `post_image` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `post_date` varchar(30) NOT NULL,
  `views` int(4) NOT NULL DEFAULT 0,
  `liker_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_post`
--

INSERT INTO `student_post` (`id`, `poster_id`, `post_text`, `post_image`, `status`, `post_date`, `views`, `liker_id`) VALUES
(1, 11, 'hmm', '', 0, '23/09/2015', 0, ''),
(2, 11, '', 'Discussion_85285_student_IMG-20141220-WA0002.jpg', 1, '02/10/2015', 0, '11;'),
(3, 11, 'Good to see', '', 1, '11/10/2015', 0, '11;'),
(4, 11, '', 'Discussion_81320_student_Jennifer-Oseh-Ahuma.jpg', 1, '18/11/2015', 1, '11;'),
(5, 11, 'Welcome the new Technology', '', 1, '14/12/2015', 0, '26;'),
(6, 11, 'Hello World', '', 0, '14/12/2015', 0, ''),
(7, 11, '', 'Discussion_55511_student_Grace 20160102_195458.jpg', 1, '07/01/2016', 0, '11;'),
(8, 11, '', 'Discussion_14401_student_IMG_20160228_094500.jpg', 1, '25/04/2016', 0, '11;'),
(9, 11, 'hi classmates<br />\n', '', 0, '25/07/2016', 0, ''),
(10, 11, 'to order this portal now call +2348066424512 ', '', 0, '25/07/2016', 0, ''),
(11, 11, 'The Impact of Marketing Communication in the Hospitality Industry <br />\n(A case study of some selected Hotels from Delta State)<br />\n<br />\nU guys are fun!<br />\n', '', 0, '09/03/2018', 0, ''),
(12, 11, '', 'Discussion_23911_student_Amara.jpg', 1, '09/03/2018', 0, '11;');

-- --------------------------------------------------------

--
-- Table structure for table `student_post_reply`
--

CREATE TABLE `student_post_reply` (
  `id` int(10) NOT NULL,
  `post_rel_id` int(8) NOT NULL,
  `post_commenter_id` int(8) NOT NULL,
  `post_comment` text NOT NULL,
  `post_comment_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_wallet`
--

CREATE TABLE `student_wallet` (
  `id` int(8) NOT NULL,
  `student_id` int(8) NOT NULL,
  `balance` int(8) NOT NULL,
  `date_last_used` varchar(30) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT 'for freezing the wallet, 0 means freezed'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_wallet`
--

INSERT INTO `student_wallet` (`id`, `student_id`, `balance`, `date_last_used`, `status`) VALUES
(1, 11, 289700, '09/03/2018', 1),
(2, 8, 100, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_wallet_pins`
--

CREATE TABLE `student_wallet_pins` (
  `id` int(10) NOT NULL,
  `codec` varchar(50) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `amount` int(8) NOT NULL,
  `creation` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `used_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admission`
--

CREATE TABLE `tbl_admission` (
  `id` int(11) NOT NULL,
  `badge_name` varchar(50) NOT NULL COMMENT 'eg. September 2014 A',
  `application_starts` varchar(20) NOT NULL,
  `application_ends` varchar(20) NOT NULL,
  `interview_date` varchar(20) NOT NULL,
  `interview_time` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `instruction` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admission`
--

INSERT INTO `tbl_admission` (`id`, `badge_name`, `application_starts`, `application_ends`, `interview_date`, `interview_time`, `active`, `instruction`) VALUES
(1, '2015/2016 Entrance', '25/08/2015', '30/09/2015', '10/10/2015', '11:00', 0, 'Bring your Photo Card when coming'),
(2, 'september', '12/07/2016', '19/08/2016', '19/08/2016', '09:00', 0, 'Instruction to students coming for the admission eg. Bring your Photo Card when coming'),
(3, 'september', '21/09/2022', '27/09/2022', '13/09/2022', '22:22', 0, 'Instruction to students coming for the admission eg. Bring your Photo Card when coming');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admit_code`
--

CREATE TABLE `tbl_admit_code` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admit_code`
--

INSERT INTO `tbl_admit_code` (`id`, `title`) VALUES
(1, 'Admitted'),
(2, 'Graduate'),
(3, 'Suspended'),
(4, 'Expelled'),
(5, 'Transfered'),
(6, 'Withdrawn'),
(7, 'Deceased'),
(8, 'Unknown'),
(9, 'Not Admitted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app_config`
--

CREATE TABLE `tbl_app_config` (
  `id` int(11) NOT NULL,
  `module` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `detail` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `api_user` varchar(50) NOT NULL COMMENT 'same as api id',
  `api_pass` varchar(50) NOT NULL COMMENT 'same as api secret',
  `api_def` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_app_config`
--

INSERT INTO `tbl_app_config` (`id`, `module`, `type`, `description`, `detail`, `status`, `api_user`, `api_pass`, `api_def`) VALUES
(1, 'student_registration', 'registration', 'Old Student Registration', 'Enabling this Will allow old students to Register ion the portal', 0, '', '', ''),
(2, 'student_discussion', 'main', 'Student Discussions', 'When enables, students can post and chat with themselves', 1, '', '', ''),
(3, 'student_login', 'login', 'Student Login', 'When Enabled, students will be allowed to log in', 1, '', '', ''),
(4, 'staff_registration', 'registration', 'Staff Registration', 'When enabled, new Staff can register him or herself', 1, '', '', ''),
(5, 'staff_discussion', 'main', 'Staff Discussion', 'When enabled, staff will be allowed to post and chat with themselves', 1, '', '', ''),
(6, 'staff_login', 'login', 'Staff Login', 'When enabled, staff will be able to log in', 1, '', '', ''),
(8, 'paypal_api', 'main', 'Paypal API', '', 0, '', '', ''),
(9, 'sms_api', 'api', 'Bulk SMS API', '<a href=\"http://sms.ifihear.com\">GET API </a>', 1, 'jostinexcel2015', 'jostinexcel2015', 'sms.hypertera.ng'),
(10, 'google_map', 'api', 'Google Map API', 'API to show your location in your website, copy your map url and paste it inside definitions', 1, '', '', 'http://'),
(11, 'smtp', 'api', 'SMTP Details', 'Simple Mail Transfer Protocol: enable you to send email: Instruction the API definition = SMTP serve', 1, '', '', ''),
(13, 'facebook_app', 'api', 'Facebook APP', 'API definition is serving as the app url', 1, '', '', ''),
(14, 'maintenance_mode', 'main', 'Maintenance Mode', 'When this is turned on, the portal puts itself to maintenence mode', 0, '', '', ''),
(15, 'parent_login', 'login', 'Parent Login ', 'When this is enabled, parents can log in', 1, '', '', ''),
(16, 'parent_registration', 'registration', 'Parent Registration', 'When this is Enabled, new Parents can register', 1, '', '', ''),
(17, 'student_result_checking', 'main', 'Student Result Checking Portal Enable/Disable', 'if this is open, the students can check their result else they cant', 1, '', '', ''),
(18, 'student_result_uploading', 'main', 'Staff Result Uploading', 'When enabled, Staff have the privilege to upload result', 1, '', '', ''),
(19, 'result_note', 'main', 'Show result note', 'When enabled, note will show on result', 1, '', '', ''),
(20, 'result_comment', 'main', 'Result Comment', 'when open, result comment will be shown', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_automatics`
--

CREATE TABLE `tbl_automatics` (
  `id` int(11) NOT NULL,
  `autoid` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `string` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='defines automation in the portal';

--
-- Dumping data for table `tbl_automatics`
--

INSERT INTO `tbl_automatics` (`id`, `autoid`, `value`, `string`, `status`) VALUES
(1, 'principal_comment_f', 'Bad result', '', '1'),
(2, 'principal_comment_e', 'Bad results', '', '1'),
(3, 'principal_comment_d', 'Student needs extra help with homework.', '', ''),
(4, 'principal_comment_c', 'Student needs extra help with homework.', '', ''),
(5, 'principal_comment_b', 'Always does quality work.', '', ''),
(6, 'principal_comment_a', 'A truly excellent student.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barned_words`
--

CREATE TABLE `tbl_barned_words` (
  `id` int(11) NOT NULL,
  `word_names` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barned_words`
--

INSERT INTO `tbl_barned_words` (`id`, `word_names`) VALUES
(1, 'Sex'),
(3, 'Fuck');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE `tbl_config` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `current_year` int(10) UNSIGNED DEFAULT NULL,
  `messageto_staff` tinytext DEFAULT NULL,
  `messageto_parents` tinytext DEFAULT NULL,
  `messageto_students` tinytext NOT NULL,
  `messageto_all` tinytext DEFAULT NULL,
  `default_city` varchar(30) DEFAULT NULL,
  `default_state` varchar(30) DEFAULT NULL,
  `default_zip` varchar(10) DEFAULT NULL,
  `default_entry_date` varchar(10) DEFAULT NULL,
  `portal_launch_date` varchar(10) NOT NULL,
  `school_logo_path` varchar(100) NOT NULL COMMENT 'files/image',
  `school_badge_path` varchar(100) NOT NULL COMMENT '/files/images',
  `school_bar_code_app` varchar(100) NOT NULL COMMENT 'files/images',
  `app_membership` int(1) NOT NULL DEFAULT 0 COMMENT 'set to one for school that have put MySchoolApp Logo in their school',
  `school_app_version` varchar(20) NOT NULL,
  `school_app_framework` varchar(20) NOT NULL,
  `portal_url` varchar(50) NOT NULL,
  `app_licence` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`id`, `school_name`, `current_year`, `messageto_staff`, `messageto_parents`, `messageto_students`, `messageto_all`, `default_city`, `default_state`, `default_zip`, `default_entry_date`, `portal_launch_date`, `school_logo_path`, `school_badge_path`, `school_bar_code_app`, `app_membership`, `school_app_version`, `school_app_framework`, `portal_url`, `app_licence`) VALUES
(1, 'FZX', 7, 'Welcome great Staff', 'Welcome Super parent     ', 'Welcome Great Students, leaders of tomorrow ', 'Welcome to FZX Group of Schools, Anambra, Nigeria', 'Anambra ', 'Anambra', '05896 ', '12/27/2014', '09/12/2015', '1662999622_lb_logo.jpeg', '1662999615_lb_logo.jpeg', 'qrcode.png', 0, '1.8.0', 'FZX', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_days`
--

CREATE TABLE `tbl_days` (
  `days_id` tinyint(1) UNSIGNED NOT NULL,
  `days_desc` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_days`
--

INSERT INTO `tbl_days` (`days_id`, `days_desc`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade_domains`
--

CREATE TABLE `tbl_grade_domains` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `school_names` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `school_logo_path` varchar(50) NOT NULL COMMENT '/files/images',
  `school_badge_path` varchar(50) NOT NULL COMMENT '/files/images',
  `address` text NOT NULL,
  `term_result_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_grade_domains`
--

INSERT INTO `tbl_grade_domains` (`id`, `school_names`, `status`, `school_logo_path`, `school_badge_path`, `address`, `term_result_fee`) VALUES
(1, 'FZX Pre-nursery School', 0, 'terans.png', 'nsbadge.png', 'First Building', 500),
(2, 'FZX Nursery School', 0, 'terans.png', 'nsbadge.png', 'First Building', 500),
(3, 'FZX Primary School', 0, 'teraps.png', 'psbadge.png', 'First Floor', 600),
(4, 'FZX Junior Secondary School', 0, 'terajss.png', 'jssbadge.png', 'Junior Block', 800),
(5, 'FZX Senior Secondary School', 0, 'terasss.png', 'ssbadge.png', 'Main Building', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portal_emails`
--

CREATE TABLE `tbl_portal_emails` (
  `id` int(10) NOT NULL,
  `from_email` varchar(50) NOT NULL,
  `sender_type` varchar(3) NOT NULL COMMENT 'A=student, B= staff, C = parent, D=public',
  `from_name` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` int(2) NOT NULL COMMENT '1=read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_portal_emails`
--

INSERT INTO `tbl_portal_emails` (`id`, `from_email`, `sender_type`, `from_name`, `subject`, `message`, `date`, `status`) VALUES
(2, 'info@hisp.FZXnet.com', 'D', 'Okokoh Benjamin', 'Who is running this demo', 'I just wanted to add new message from public as demo, thanks you', '18/02/2016', 1),
(3, 'chisom.mum@gmail.com', 'D', 'chisom contact', 'teat chisom contact ', 'Hmm,', '31/08/2016', 1),
(4, 'kelvin@hypertera.ng', 'A', 'Mr. Ugbana Kester E', 'hello admin', 'I want to change my profile picture now.', '09/03/2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salaries`
--

CREATE TABLE `tbl_salaries` (
  `id` int(200) NOT NULL,
  `staff_type` varchar(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_domains`
--

CREATE TABLE `tbl_school_domains` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `school_names` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `school_logo_path` varchar(50) NOT NULL COMMENT '/files/images',
  `school_badge_path` varchar(50) NOT NULL COMMENT '/files/images',
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_profile`
--

CREATE TABLE `tbl_school_profile` (
  `id` tinyint(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `state` varchar(25) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school_profile`
--

INSERT INTO `tbl_school_profile` (`id`, `phone`, `fax`, `email`, `mobile`, `adress`, `state`, `latitude`, `longitude`, `country`) VALUES
(1, '', '', 'info@hisp.FZXnet.com', '08166555624', 'Plot 7 Ave Mariah Street, Opposite Airport  ', 'Calabar', '', '', 'Nigeria ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE `tbl_states` (
  `state_code` char(10) NOT NULL DEFAULT '',
  `state_css` varchar(20) NOT NULL,
  `state_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`state_code`, `state_css`, `state_name`) VALUES
('ab', 'Abia', 'Abia'),
('abj', 'FCT', 'Abuja'),
('ada', 'Adamawa', 'Adamawa'),
('ak', 'Akwa-ibom', 'Akwa-ibom'),
('ana', 'Anambra', 'Anambra'),
('ba', 'Bauchi', 'Bauchi'),
('bay', 'Bayelsa', 'Bayelsa'),
('be', 'Benue', 'Benue'),
('bo', 'Borno', 'Borno'),
('cr', 'Cross-River', 'Cross-River'),
('de', 'Delta', 'Delta'),
('eb', 'Ebonyi', 'Ebonyi'),
('ed', 'Edo', 'Edo'),
('ek', 'Ekiti', 'Ekiti'),
('en', 'Enugu', 'Enugu'),
('foreign', 'foreign', 'International'),
('go', 'Gombe', 'Gombe'),
('im', 'Imo', 'Imo'),
('jig', 'Jigawa', 'Jigawa'),
('ka', 'Kano', 'Kano'),
('kad', 'Kaduna', 'Kaduna'),
('kas', 'Kastina', 'Kastina'),
('keb', 'Kebbi', 'Kebbi'),
('ko', 'Kogi', 'Kogi'),
('kw', 'Kwara', 'Kwara'),
('la', 'Lagos', 'Lagos'),
('na', 'Nasarawa', 'Nasarawa'),
('ni', 'Niger', 'Niger'),
('og', 'Ogun', 'Ogun'),
('on', 'Ondo', 'Ondo'),
('os', 'Osun', 'Osun'),
('oy', 'Oyo', 'Oyo'),
('pl', 'Plateau', 'Plateau'),
('rv', 'Rivers', 'Rivers'),
('sk', 'Sokoto', 'Sokoto'),
('tb', 'Taraba', 'Taraba'),
('yb', 'Yobe', 'Yobe'),
('za', 'Zamfara', 'Zamfara'),
('zz', 'Zzz - Not Listed', 'Zzz - Not Listed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std_denomination`
--

CREATE TABLE `tbl_std_denomination` (
  `id` int(2) NOT NULL,
  `deno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std_denomination`
--

INSERT INTO `tbl_std_denomination` (`id`, `deno`) VALUES
(1, 'Sciences'),
(2, 'Art'),
(3, 'Commercial'),
(4, 'Nursery'),
(5, 'Primary');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std_offices`
--

CREATE TABLE `tbl_std_offices` (
  `office_id` int(200) NOT NULL,
  `office_desc` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_std_offices`
--

INSERT INTO `tbl_std_offices` (`office_id`, `office_desc`, `status`) VALUES
(1, 'Senior Prefect', 1),
(2, 'Labor prefect', 1),
(3, 'Head Boy', 1),
(4, 'Head Girl', 1),
(5, 'Sports Man', 1),
(6, 'Sports Woman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_titles`
--

CREATE TABLE `tbl_titles` (
  `title_id` int(2) UNSIGNED NOT NULL,
  `title_desc` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_titles`
--

INSERT INTO `tbl_titles` (`title_id`, `title_desc`) VALUES
(1, 'Mr.'),
(2, 'Provost'),
(3, 'Professor'),
(4, 'Mrs'),
(5, 'Master'),
(6, 'Miss'),
(7, 'Doctor'),
(8, 'Barrister'),
(9, 'Coloniel'),
(10, 'Engineer'),
(11, 'Madam'),
(12, 'Senator'),
(13, 'Governor'),
(14, 'Ambassador'),
(15, 'President'),
(16, 'Governor'),
(17, 'Councillor'),
(18, 'Envagelist'),
(19, 'Prelate'),
(20, 'Reverend'),
(21, 'Pastor'),
(22, 'Bishop'),
(23, 'Prince'),
(24, 'Princess'),
(25, 'King'),
(26, 'Queen'),
(27, 'Lord'),
(28, 'Dame'),
(29, 'Advocate'),
(30, 'Justice'),
(31, 'Pope'),
(32, 'General'),
(33, 'Brigadier'),
(34, 'Captain'),
(35, 'Officer'),
(36, 'Oba'),
(37, 'Eze'),
(38, 'Obi'),
(39, 'Elder'),
(40, 'Chancellor');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_grade_year`
--

CREATE TABLE `teacher_grade_year` (
  `id` int(8) NOT NULL,
  `teacher` int(8) NOT NULL,
  `session` int(3) NOT NULL,
  `grade_class` int(3) NOT NULL DEFAULT 0,
  `grade_class_room` int(3) NOT NULL DEFAULT 0,
  `main_teacher` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_grade_year`
--

INSERT INTO `teacher_grade_year` (`id`, `teacher`, `session`, `grade_class`, `grade_class_room`, `main_teacher`) VALUES
(1, 1, 0, 0, 0, 0),
(2, 2, 1, 0, 0, 0),
(3, 3, 1, 15, 0, 0),
(4, 4, 1, 5, 1, 1),
(5, 5, 1, 0, 0, 0),
(6, 6, 1, 6, 0, 1),
(7, 7, 1, 0, 0, 0),
(8, 8, 1, 15, 4, 1),
(9, 10, 1, 0, 0, 0),
(10, 2, 2, 0, 0, 0),
(11, 3, 2, 15, 0, 0),
(12, 4, 2, 5, 1, 1),
(13, 5, 2, 0, 0, 0),
(14, 6, 2, 6, 0, 1),
(15, 7, 2, 0, 0, 0),
(16, 8, 2, 15, 4, 1),
(17, 10, 2, 0, 0, 0),
(25, 2, 3, 0, 0, 0),
(26, 3, 3, 15, 0, 0),
(27, 4, 3, 5, 1, 1),
(28, 5, 3, 0, 0, 0),
(29, 6, 3, 6, 0, 1),
(30, 7, 3, 0, 0, 0),
(31, 8, 3, 15, 4, 1),
(32, 10, 3, 0, 0, 0),
(40, 2, 4, 0, 0, 0),
(41, 3, 4, 15, 0, 0),
(42, 4, 4, 5, 1, 1),
(43, 5, 4, 0, 0, 0),
(44, 6, 4, 6, 0, 1),
(45, 7, 4, 0, 0, 0),
(46, 8, 4, 15, 4, 1),
(47, 10, 4, 0, 0, 0),
(55, 2, 5, 0, 0, 0),
(56, 3, 5, 15, 0, 0),
(57, 4, 5, 5, 1, 1),
(58, 5, 5, 0, 0, 0),
(59, 6, 5, 6, 0, 1),
(60, 7, 5, 0, 0, 0),
(61, 8, 5, 15, 4, 1),
(62, 10, 5, 0, 0, 0),
(70, 2, 6, 0, 0, 0),
(71, 3, 6, 15, 0, 0),
(72, 4, 6, 5, 1, 1),
(73, 5, 6, 0, 0, 0),
(74, 6, 6, 6, 0, 1),
(75, 7, 6, 0, 0, 0),
(76, 8, 6, 15, 4, 1),
(77, 10, 6, 0, 0, 0),
(85, 2, 7, 0, 0, 0),
(86, 3, 7, 15, 0, 0),
(87, 4, 7, 5, 1, 1),
(88, 5, 7, 0, 0, 0),
(89, 6, 7, 6, 0, 1),
(90, 7, 7, 0, 0, 0),
(91, 8, 7, 15, 4, 1),
(92, 10, 7, 0, 0, 0),
(93, 11, 7, 16, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_schedule`
--

CREATE TABLE `teacher_schedule` (
  `teacher_schedule_id` int(10) NOT NULL,
  `teacher_schedule_year` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_schoolid` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_teacherid` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_subjectid` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_termid` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_classperiod` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_days` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_grade` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_room` int(3) NOT NULL DEFAULT 0,
  `teacher_schedule_type` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_schedule`
--

INSERT INTO `teacher_schedule` (`teacher_schedule_id`, `teacher_schedule_year`, `teacher_schedule_schoolid`, `teacher_schedule_teacherid`, `teacher_schedule_subjectid`, `teacher_schedule_termid`, `teacher_schedule_classperiod`, `teacher_schedule_days`, `teacher_schedule_grade`, `teacher_schedule_room`, `teacher_schedule_type`) VALUES
(1, 1, 0, 8, 19, 2, 1, 1, 15, 4, 0),
(2, 1, 0, 2, 11, 2, 2, 1, 15, 4, 0),
(3, 1, 0, 4, 4, 2, 3, 1, 15, 4, 0),
(4, 1, 0, 0, 0, 2, 4, 1, 15, 4, 0),
(5, 1, 0, 0, 0, 2, 5, 1, 15, 4, 0),
(6, 1, 0, 0, 0, 2, 6, 1, 15, 4, 0),
(7, 1, 0, 0, 0, 2, 7, 1, 15, 4, 0),
(8, 1, 0, 0, 0, 2, 8, 1, 15, 4, 0),
(9, 1, 0, 0, 0, 2, 1, 2, 15, 4, 0),
(10, 1, 0, 0, 0, 2, 2, 2, 15, 4, 0),
(11, 1, 0, 0, 0, 2, 3, 2, 15, 4, 0),
(12, 1, 0, 0, 0, 2, 4, 2, 15, 4, 0),
(13, 1, 0, 0, 0, 2, 5, 2, 15, 4, 0),
(14, 1, 0, 0, 0, 2, 6, 2, 15, 4, 0),
(15, 1, 0, 0, 0, 2, 7, 2, 15, 4, 0),
(16, 1, 0, 0, 0, 2, 8, 2, 15, 4, 0),
(17, 1, 0, 0, 0, 2, 1, 3, 15, 4, 0),
(18, 1, 0, 0, 0, 2, 2, 3, 15, 4, 0),
(19, 1, 0, 0, 0, 2, 3, 3, 15, 4, 0),
(20, 1, 0, 0, 0, 2, 4, 3, 15, 4, 0),
(21, 1, 0, 0, 0, 2, 5, 3, 15, 4, 0),
(22, 1, 0, 0, 0, 2, 6, 3, 15, 4, 0),
(23, 1, 0, 0, 0, 2, 7, 3, 15, 4, 0),
(24, 1, 0, 0, 0, 2, 8, 3, 15, 4, 0),
(25, 1, 0, 0, 0, 2, 1, 4, 15, 4, 0),
(26, 1, 0, 0, 0, 2, 2, 4, 15, 4, 0),
(27, 1, 0, 0, 0, 2, 3, 4, 15, 4, 0),
(28, 1, 0, 0, 0, 2, 4, 4, 15, 4, 0),
(29, 1, 0, 0, 0, 2, 5, 4, 15, 4, 0),
(30, 1, 0, 0, 0, 2, 6, 4, 15, 4, 0),
(31, 1, 0, 0, 0, 2, 7, 4, 15, 4, 0),
(32, 1, 0, 0, 0, 2, 8, 4, 15, 4, 0),
(33, 1, 0, 0, 0, 2, 1, 5, 15, 4, 0),
(34, 1, 0, 0, 0, 2, 2, 5, 15, 4, 0),
(35, 1, 0, 0, 0, 2, 3, 5, 15, 4, 0),
(36, 1, 0, 0, 0, 2, 4, 5, 15, 4, 0),
(37, 1, 0, 0, 0, 2, 5, 5, 15, 4, 0),
(38, 1, 0, 0, 0, 2, 6, 5, 15, 4, 0),
(39, 1, 0, 0, 0, 2, 7, 5, 15, 4, 0),
(40, 1, 0, 0, 0, 2, 8, 5, 15, 4, 0),
(41, 2, 0, 8, 19, 2, 1, 1, 15, 4, 0),
(42, 2, 0, 2, 11, 2, 2, 1, 15, 4, 0),
(43, 2, 0, 4, 4, 2, 3, 1, 15, 4, 0),
(44, 2, 0, 0, 0, 2, 4, 1, 15, 4, 0),
(45, 2, 0, 0, 0, 2, 5, 1, 15, 4, 0),
(46, 2, 0, 0, 0, 2, 6, 1, 15, 4, 0),
(47, 2, 0, 0, 0, 2, 7, 1, 15, 4, 0),
(48, 2, 0, 0, 0, 2, 8, 1, 15, 4, 0),
(49, 2, 0, 0, 0, 2, 1, 2, 15, 4, 0),
(50, 2, 0, 0, 0, 2, 2, 2, 15, 4, 0),
(51, 2, 0, 0, 0, 2, 3, 2, 15, 4, 0),
(52, 2, 0, 0, 0, 2, 4, 2, 15, 4, 0),
(53, 2, 0, 0, 0, 2, 5, 2, 15, 4, 0),
(54, 2, 0, 0, 0, 2, 6, 2, 15, 4, 0),
(55, 2, 0, 0, 0, 2, 7, 2, 15, 4, 0),
(56, 2, 0, 0, 0, 2, 8, 2, 15, 4, 0),
(57, 2, 0, 0, 0, 2, 1, 3, 15, 4, 0),
(58, 2, 0, 0, 0, 2, 2, 3, 15, 4, 0),
(59, 2, 0, 0, 0, 2, 3, 3, 15, 4, 0),
(60, 2, 0, 0, 0, 2, 4, 3, 15, 4, 0),
(61, 2, 0, 0, 0, 2, 5, 3, 15, 4, 0),
(62, 2, 0, 0, 0, 2, 6, 3, 15, 4, 0),
(63, 2, 0, 0, 0, 2, 7, 3, 15, 4, 0),
(64, 2, 0, 0, 0, 2, 8, 3, 15, 4, 0),
(65, 2, 0, 0, 0, 2, 1, 4, 15, 4, 0),
(66, 2, 0, 0, 0, 2, 2, 4, 15, 4, 0),
(67, 2, 0, 0, 0, 2, 3, 4, 15, 4, 0),
(68, 2, 0, 0, 0, 2, 4, 4, 15, 4, 0),
(69, 2, 0, 0, 0, 2, 5, 4, 15, 4, 0),
(70, 2, 0, 0, 0, 2, 6, 4, 15, 4, 0),
(71, 2, 0, 0, 0, 2, 7, 4, 15, 4, 0),
(72, 2, 0, 0, 0, 2, 8, 4, 15, 4, 0),
(73, 2, 0, 0, 0, 2, 1, 5, 15, 4, 0),
(74, 2, 0, 0, 0, 2, 2, 5, 15, 4, 0),
(75, 2, 0, 0, 0, 2, 3, 5, 15, 4, 0),
(76, 2, 0, 0, 0, 2, 4, 5, 15, 4, 0),
(77, 2, 0, 0, 0, 2, 5, 5, 15, 4, 0),
(78, 2, 0, 0, 0, 2, 6, 5, 15, 4, 0),
(79, 2, 0, 0, 0, 2, 7, 5, 15, 4, 0),
(80, 2, 0, 0, 0, 2, 8, 5, 15, 4, 0),
(104, 3, 0, 8, 19, 2, 1, 1, 15, 4, 0),
(105, 3, 0, 2, 11, 2, 2, 1, 15, 4, 0),
(106, 3, 0, 4, 4, 2, 3, 1, 15, 4, 0),
(107, 3, 0, 0, 0, 2, 4, 1, 15, 4, 0),
(108, 3, 0, 0, 0, 2, 5, 1, 15, 4, 0),
(109, 3, 0, 0, 0, 2, 6, 1, 15, 4, 0),
(110, 3, 0, 0, 0, 2, 7, 1, 15, 4, 0),
(111, 3, 0, 0, 0, 2, 8, 1, 15, 4, 0),
(112, 3, 0, 0, 0, 2, 1, 2, 15, 4, 0),
(113, 3, 0, 0, 0, 2, 2, 2, 15, 4, 0),
(114, 3, 0, 0, 0, 2, 3, 2, 15, 4, 0),
(115, 3, 0, 0, 0, 2, 4, 2, 15, 4, 0),
(116, 3, 0, 0, 0, 2, 5, 2, 15, 4, 0),
(117, 3, 0, 0, 0, 2, 6, 2, 15, 4, 0),
(118, 3, 0, 0, 0, 2, 7, 2, 15, 4, 0),
(119, 3, 0, 0, 0, 2, 8, 2, 15, 4, 0),
(120, 3, 0, 0, 0, 2, 1, 3, 15, 4, 0),
(121, 3, 0, 0, 0, 2, 2, 3, 15, 4, 0),
(122, 3, 0, 0, 0, 2, 3, 3, 15, 4, 0),
(123, 3, 0, 0, 0, 2, 4, 3, 15, 4, 0),
(124, 3, 0, 0, 0, 2, 5, 3, 15, 4, 0),
(125, 3, 0, 0, 0, 2, 6, 3, 15, 4, 0),
(126, 3, 0, 0, 0, 2, 7, 3, 15, 4, 0),
(127, 3, 0, 0, 0, 2, 8, 3, 15, 4, 0),
(128, 3, 0, 0, 0, 2, 1, 4, 15, 4, 0),
(129, 3, 0, 0, 0, 2, 2, 4, 15, 4, 0),
(130, 3, 0, 0, 0, 2, 3, 4, 15, 4, 0),
(131, 3, 0, 0, 0, 2, 4, 4, 15, 4, 0),
(132, 3, 0, 0, 0, 2, 5, 4, 15, 4, 0),
(133, 3, 0, 0, 0, 2, 6, 4, 15, 4, 0),
(134, 3, 0, 0, 0, 2, 7, 4, 15, 4, 0),
(135, 3, 0, 0, 0, 2, 8, 4, 15, 4, 0),
(136, 3, 0, 0, 0, 2, 1, 5, 15, 4, 0),
(137, 3, 0, 0, 0, 2, 2, 5, 15, 4, 0),
(138, 3, 0, 0, 0, 2, 3, 5, 15, 4, 0),
(139, 3, 0, 0, 0, 2, 4, 5, 15, 4, 0),
(140, 3, 0, 0, 0, 2, 5, 5, 15, 4, 0),
(141, 3, 0, 0, 0, 2, 6, 5, 15, 4, 0),
(142, 3, 0, 0, 0, 2, 7, 5, 15, 4, 0),
(143, 3, 0, 0, 0, 2, 8, 5, 15, 4, 0),
(167, 4, 0, 8, 19, 2, 1, 1, 15, 4, 0),
(168, 4, 0, 2, 11, 2, 2, 1, 15, 4, 0),
(169, 4, 0, 4, 4, 2, 3, 1, 15, 4, 0),
(170, 4, 0, 0, 0, 2, 4, 1, 15, 4, 0),
(171, 4, 0, 0, 0, 2, 5, 1, 15, 4, 0),
(172, 4, 0, 0, 0, 2, 6, 1, 15, 4, 0),
(173, 4, 0, 0, 0, 2, 7, 1, 15, 4, 0),
(174, 4, 0, 0, 0, 2, 8, 1, 15, 4, 0),
(175, 4, 0, 0, 0, 2, 1, 2, 15, 4, 0),
(176, 4, 0, 0, 0, 2, 2, 2, 15, 4, 0),
(177, 4, 0, 0, 0, 2, 3, 2, 15, 4, 0),
(178, 4, 0, 0, 0, 2, 4, 2, 15, 4, 0),
(179, 4, 0, 0, 0, 2, 5, 2, 15, 4, 0),
(180, 4, 0, 0, 0, 2, 6, 2, 15, 4, 0),
(181, 4, 0, 0, 0, 2, 7, 2, 15, 4, 0),
(182, 4, 0, 0, 0, 2, 8, 2, 15, 4, 0),
(183, 4, 0, 0, 0, 2, 1, 3, 15, 4, 0),
(184, 4, 0, 0, 0, 2, 2, 3, 15, 4, 0),
(185, 4, 0, 0, 0, 2, 3, 3, 15, 4, 0),
(186, 4, 0, 0, 0, 2, 4, 3, 15, 4, 0),
(187, 4, 0, 0, 0, 2, 5, 3, 15, 4, 0),
(188, 4, 0, 0, 0, 2, 6, 3, 15, 4, 0),
(189, 4, 0, 0, 0, 2, 7, 3, 15, 4, 0),
(190, 4, 0, 0, 0, 2, 8, 3, 15, 4, 0),
(191, 4, 0, 0, 0, 2, 1, 4, 15, 4, 0),
(192, 4, 0, 0, 0, 2, 2, 4, 15, 4, 0),
(193, 4, 0, 0, 0, 2, 3, 4, 15, 4, 0),
(194, 4, 0, 0, 0, 2, 4, 4, 15, 4, 0),
(195, 4, 0, 0, 0, 2, 5, 4, 15, 4, 0),
(196, 4, 0, 0, 0, 2, 6, 4, 15, 4, 0),
(197, 4, 0, 0, 0, 2, 7, 4, 15, 4, 0),
(198, 4, 0, 0, 0, 2, 8, 4, 15, 4, 0),
(199, 4, 0, 0, 0, 2, 1, 5, 15, 4, 0),
(200, 4, 0, 0, 0, 2, 2, 5, 15, 4, 0),
(201, 4, 0, 0, 0, 2, 3, 5, 15, 4, 0),
(202, 4, 0, 0, 0, 2, 4, 5, 15, 4, 0),
(203, 4, 0, 0, 0, 2, 5, 5, 15, 4, 0),
(204, 4, 0, 0, 0, 2, 6, 5, 15, 4, 0),
(205, 4, 0, 0, 0, 2, 7, 5, 15, 4, 0),
(206, 4, 0, 0, 0, 2, 8, 5, 15, 4, 0),
(230, 5, 0, 8, 19, 2, 1, 1, 15, 4, 0),
(231, 5, 0, 2, 11, 2, 2, 1, 15, 4, 0),
(232, 5, 0, 4, 4, 2, 3, 1, 15, 4, 0),
(233, 5, 0, 0, 0, 2, 4, 1, 15, 4, 0),
(234, 5, 0, 0, 0, 2, 5, 1, 15, 4, 0),
(235, 5, 0, 0, 0, 2, 6, 1, 15, 4, 0),
(236, 5, 0, 0, 0, 2, 7, 1, 15, 4, 0),
(237, 5, 0, 0, 0, 2, 8, 1, 15, 4, 0),
(238, 5, 0, 0, 0, 2, 1, 2, 15, 4, 0),
(239, 5, 0, 0, 0, 2, 2, 2, 15, 4, 0),
(240, 5, 0, 0, 0, 2, 3, 2, 15, 4, 0),
(241, 5, 0, 0, 0, 2, 4, 2, 15, 4, 0),
(242, 5, 0, 0, 0, 2, 5, 2, 15, 4, 0),
(243, 5, 0, 0, 0, 2, 6, 2, 15, 4, 0),
(244, 5, 0, 0, 0, 2, 7, 2, 15, 4, 0),
(245, 5, 0, 0, 0, 2, 8, 2, 15, 4, 0),
(246, 5, 0, 0, 0, 2, 1, 3, 15, 4, 0),
(247, 5, 0, 0, 0, 2, 2, 3, 15, 4, 0),
(248, 5, 0, 0, 0, 2, 3, 3, 15, 4, 0),
(249, 5, 0, 0, 0, 2, 4, 3, 15, 4, 0),
(250, 5, 0, 0, 0, 2, 5, 3, 15, 4, 0),
(251, 5, 0, 0, 0, 2, 6, 3, 15, 4, 0),
(252, 5, 0, 0, 0, 2, 7, 3, 15, 4, 0),
(253, 5, 0, 0, 0, 2, 8, 3, 15, 4, 0),
(254, 5, 0, 0, 0, 2, 1, 4, 15, 4, 0),
(255, 5, 0, 0, 0, 2, 2, 4, 15, 4, 0),
(256, 5, 0, 0, 0, 2, 3, 4, 15, 4, 0),
(257, 5, 0, 0, 0, 2, 4, 4, 15, 4, 0),
(258, 5, 0, 0, 0, 2, 5, 4, 15, 4, 0),
(259, 5, 0, 0, 0, 2, 6, 4, 15, 4, 0),
(260, 5, 0, 0, 0, 2, 7, 4, 15, 4, 0),
(261, 5, 0, 0, 0, 2, 8, 4, 15, 4, 0),
(262, 5, 0, 0, 0, 2, 1, 5, 15, 4, 0),
(263, 5, 0, 0, 0, 2, 2, 5, 15, 4, 0),
(264, 5, 0, 0, 0, 2, 3, 5, 15, 4, 0),
(265, 5, 0, 0, 0, 2, 4, 5, 15, 4, 0),
(266, 5, 0, 0, 0, 2, 5, 5, 15, 4, 0),
(267, 5, 0, 0, 0, 2, 6, 5, 15, 4, 0),
(268, 5, 0, 0, 0, 2, 7, 5, 15, 4, 0),
(269, 5, 0, 0, 0, 2, 8, 5, 15, 4, 0),
(293, 6, 0, 8, 19, 2, 1, 1, 15, 4, 0),
(294, 6, 0, 2, 11, 2, 2, 1, 15, 4, 0),
(295, 6, 0, 4, 4, 2, 3, 1, 15, 4, 0),
(296, 6, 0, 0, 0, 2, 4, 1, 15, 4, 0),
(297, 6, 0, 0, 0, 2, 5, 1, 15, 4, 0),
(298, 6, 0, 0, 0, 2, 6, 1, 15, 4, 0),
(299, 6, 0, 0, 0, 2, 7, 1, 15, 4, 0),
(300, 6, 0, 0, 0, 2, 8, 1, 15, 4, 0),
(301, 6, 0, 0, 0, 2, 1, 2, 15, 4, 0),
(302, 6, 0, 0, 0, 2, 2, 2, 15, 4, 0),
(303, 6, 0, 0, 0, 2, 3, 2, 15, 4, 0),
(304, 6, 0, 0, 0, 2, 4, 2, 15, 4, 0),
(305, 6, 0, 0, 0, 2, 5, 2, 15, 4, 0),
(306, 6, 0, 0, 0, 2, 6, 2, 15, 4, 0),
(307, 6, 0, 0, 0, 2, 7, 2, 15, 4, 0),
(308, 6, 0, 0, 0, 2, 8, 2, 15, 4, 0),
(309, 6, 0, 0, 0, 2, 1, 3, 15, 4, 0),
(310, 6, 0, 0, 0, 2, 2, 3, 15, 4, 0),
(311, 6, 0, 0, 0, 2, 3, 3, 15, 4, 0),
(312, 6, 0, 0, 0, 2, 4, 3, 15, 4, 0),
(313, 6, 0, 0, 0, 2, 5, 3, 15, 4, 0),
(314, 6, 0, 0, 0, 2, 6, 3, 15, 4, 0),
(315, 6, 0, 0, 0, 2, 7, 3, 15, 4, 0),
(316, 6, 0, 0, 0, 2, 8, 3, 15, 4, 0),
(317, 6, 0, 0, 0, 2, 1, 4, 15, 4, 0),
(318, 6, 0, 0, 0, 2, 2, 4, 15, 4, 0),
(319, 6, 0, 0, 0, 2, 3, 4, 15, 4, 0),
(320, 6, 0, 0, 0, 2, 4, 4, 15, 4, 0),
(321, 6, 0, 0, 0, 2, 5, 4, 15, 4, 0),
(322, 6, 0, 0, 0, 2, 6, 4, 15, 4, 0),
(323, 6, 0, 0, 0, 2, 7, 4, 15, 4, 0),
(324, 6, 0, 0, 0, 2, 8, 4, 15, 4, 0),
(325, 6, 0, 0, 0, 2, 1, 5, 15, 4, 0),
(326, 6, 0, 0, 0, 2, 2, 5, 15, 4, 0),
(327, 6, 0, 0, 0, 2, 3, 5, 15, 4, 0),
(328, 6, 0, 0, 0, 2, 4, 5, 15, 4, 0),
(329, 6, 0, 0, 0, 2, 5, 5, 15, 4, 0),
(330, 6, 0, 0, 0, 2, 6, 5, 15, 4, 0),
(331, 6, 0, 0, 0, 2, 7, 5, 15, 4, 0),
(332, 6, 0, 0, 0, 2, 8, 5, 15, 4, 0),
(356, 7, 0, 8, 19, 2, 1, 1, 15, 4, 0),
(357, 7, 0, 2, 11, 2, 2, 1, 15, 4, 0),
(358, 7, 0, 4, 4, 2, 3, 1, 15, 4, 0),
(359, 7, 0, 0, 0, 2, 4, 1, 15, 4, 0),
(360, 7, 0, 0, 0, 2, 5, 1, 15, 4, 0),
(361, 7, 0, 0, 0, 2, 6, 1, 15, 4, 0),
(362, 7, 0, 0, 0, 2, 7, 1, 15, 4, 0),
(363, 7, 0, 0, 0, 2, 8, 1, 15, 4, 0),
(364, 7, 0, 0, 0, 2, 1, 2, 15, 4, 0),
(365, 7, 0, 0, 0, 2, 2, 2, 15, 4, 0),
(366, 7, 0, 0, 0, 2, 3, 2, 15, 4, 0),
(367, 7, 0, 0, 0, 2, 4, 2, 15, 4, 0),
(368, 7, 0, 0, 0, 2, 5, 2, 15, 4, 0),
(369, 7, 0, 0, 0, 2, 6, 2, 15, 4, 0),
(370, 7, 0, 0, 0, 2, 7, 2, 15, 4, 0),
(371, 7, 0, 0, 0, 2, 8, 2, 15, 4, 0),
(372, 7, 0, 0, 0, 2, 1, 3, 15, 4, 0),
(373, 7, 0, 0, 0, 2, 2, 3, 15, 4, 0),
(374, 7, 0, 0, 0, 2, 3, 3, 15, 4, 0),
(375, 7, 0, 0, 0, 2, 4, 3, 15, 4, 0),
(376, 7, 0, 0, 0, 2, 5, 3, 15, 4, 0),
(377, 7, 0, 0, 0, 2, 6, 3, 15, 4, 0),
(378, 7, 0, 0, 0, 2, 7, 3, 15, 4, 0),
(379, 7, 0, 0, 0, 2, 8, 3, 15, 4, 0),
(380, 7, 0, 0, 0, 2, 1, 4, 15, 4, 0),
(381, 7, 0, 0, 0, 2, 2, 4, 15, 4, 0),
(382, 7, 0, 0, 0, 2, 3, 4, 15, 4, 0),
(383, 7, 0, 0, 0, 2, 4, 4, 15, 4, 0),
(384, 7, 0, 0, 0, 2, 5, 4, 15, 4, 0),
(385, 7, 0, 0, 0, 2, 6, 4, 15, 4, 0),
(386, 7, 0, 0, 0, 2, 7, 4, 15, 4, 0),
(387, 7, 0, 0, 0, 2, 8, 4, 15, 4, 0),
(388, 7, 0, 0, 0, 2, 1, 5, 15, 4, 0),
(389, 7, 0, 0, 0, 2, 2, 5, 15, 4, 0),
(390, 7, 0, 0, 0, 2, 3, 5, 15, 4, 0),
(391, 7, 0, 0, 0, 2, 4, 5, 15, 4, 0),
(392, 7, 0, 0, 0, 2, 5, 5, 15, 4, 0),
(393, 7, 0, 0, 0, 2, 6, 5, 15, 4, 0),
(394, 7, 0, 0, 0, 2, 7, 5, 15, 4, 0),
(395, 7, 0, 0, 0, 2, 8, 5, 15, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tuition_codes`
--

CREATE TABLE `tuition_codes` (
  `tuition_codes_id` tinyint(2) NOT NULL,
  `tuition_codes_desc` varchar(25) NOT NULL COMMENT 'icons in /files/images/tuitioncode'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='under no circumstances will this table change, only rows add';

--
-- Dumping data for table `tuition_codes`
--

INSERT INTO `tuition_codes` (`tuition_codes_id`, `tuition_codes_desc`) VALUES
(1, 'School Fees'),
(2, 'Hostel'),
(3, 'Books'),
(4, 'Meals '),
(5, 'Clothes'),
(6, 'Shoes'),
(7, 'Medication'),
(8, 'Reparation'),
(9, 'Stationary'),
(10, 'Result Check');

-- --------------------------------------------------------

--
-- Table structure for table `tuition_codes_domain`
--

CREATE TABLE `tuition_codes_domain` (
  `tuition_codes_domain_id` int(8) NOT NULL,
  `tuition_codes_domain_name` varchar(30) NOT NULL,
  `tuition_codes_domain_location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuition_codes_domain`
--

INSERT INTO `tuition_codes_domain` (`tuition_codes_domain_id`, `tuition_codes_domain_name`, `tuition_codes_domain_location`) VALUES
(1, 'Tuck Shop', 'Front of IHS gate after the security Post'),
(3, 'Book Shop', 'Last Door, 2nd Floor of IHS'),
(4, 'Ware House', 'First Block, Principal Ward 3');

-- --------------------------------------------------------

--
-- Table structure for table `web_parents`
--

CREATE TABLE `web_parents` (
  `web_parents_id` int(8) UNSIGNED NOT NULL,
  `web_parents_type` char(2) DEFAULT NULL COMMENT 'A=master admin, B=admin, T= teacher, C= parent, S= non teaching staff, Ty= nysc, Tp=practising teacher, Tl= lesson teacher',
  `web_parents_relid` int(8) UNSIGNED DEFAULT NULL COMMENT 'inserted rows from student_parent.id',
  `web_parents_username` varchar(15) DEFAULT NULL,
  `web_parents_password` varchar(50) DEFAULT NULL,
  `web_parents_flname` varchar(60) DEFAULT NULL,
  `web_parents_active` varchar(12) NOT NULL COMMENT 'email verification',
  `online` tinyint(1) NOT NULL,
  `last_log` varchar(50) NOT NULL COMMENT 'sample dd/mm/yyy 04:44:33'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_parents`
--

INSERT INTO `web_parents` (`web_parents_id`, `web_parents_type`, `web_parents_relid`, `web_parents_username`, `web_parents_password`, `web_parents_flname`, `web_parents_active`, `online`, `last_log`) VALUES
(1, 'C', 1, 'vita', '7cef8a734855777c2a9d0caf42666e69', 'ogbonna', '2a60a0e52b', 0, ''),
(2, 'C', 2, 'OMEJECI', '7cef8a734855777c2a9d0caf42666e69', 'OMEJE', '7b634394e0', 0, ''),
(3, 'C', 3, 'parent', '7cef8a734855777c2a9d0caf42666e69', 'Hypertera', '1', 0, '04/02/2016 20:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `web_students`
--

CREATE TABLE `web_students` (
  `id` int(8) NOT NULL,
  `stdbio_id` int(8) NOT NULL COMMENT 'inserted row from studentbio.id',
  `identify` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_n` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `reg_date` varchar(30) NOT NULL COMMENT 'current date stamp',
  `admission_badge` int(11) NOT NULL DEFAULT 1,
  `form_no` varchar(20) NOT NULL,
  `denomination` tinyint(2) NOT NULL DEFAULT 0,
  `last_log` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_students`
--

INSERT INTO `web_students` (`id`, `stdbio_id`, `identify`, `email`, `user_n`, `pass`, `status`, `reg_date`, `admission_badge`, `form_no`, `denomination`, `last_log`) VALUES
(1, 1, '1000000', 'nduagubakingsley@gmail.com', 'DNOBLEKING ', '7cef8a734855777c2a9d0caf42666e69', '1', '25/08/2015', 1, '', 0, ''),
(3, 3, '1000001', 'whatsupforu@gmail.com', 'HELLO', '7cef8a734855777c2a9d0caf42666e69', 'e30a3443ef', '25/08/2015', 1, '', 0, ''),
(4, 4, '1000002', 'ifihear@gmail.com', 'Ben', '7cef8a734855777c2a9d0caf42666e69', '32dc95c0ba', '25/08/2015', 1, '24', 0, ''),
(5, 5, '1000003', 'ikechukwuchristian440@unn.edu.ng', 'CIOMEJE', '7cef8a734855777c2a9d0caf42666e69', 'b87b0dd703', '25/08/2015', 1, '23', 0, ''),
(6, 6, '1000004', 'odibest1893@gmail.com', 'Mary', '7cef8a734855777c2a9d0caf42666e69', '4dc7e76cb2', '25/08/2015', 1, '23', 0, ''),
(7, 7, '1000005', 'ikechukwuapeh@gmail.com', 'ikechukwuapeh', '7cef8a734855777c2a9d0caf42666e69', '39d09bee04', '26/08/2015', 1, '001', 0, ''),
(9, 9, '1000007', 'chinexkafors@yahoo.com', 'chinex', '7cef8a734855777c2a9d0caf42666e69', '1', '27/08/2015', 1, '21', 0, '29/08/2015 @ 11:01:02'),
(10, 10, '1000008', 'janeebube@gmail.com', 'Janiej', '7cef8a734855777c2a9d0caf42666e69', '356097ece5', '28/08/2015', 1, '22', 0, '28/08/2015 05:29:55'),
(11, 11, '1000009', 'kelvin@hypertera.ng', 'student', 'cejine', '1', '04/09/2015', 1, '', 1, '11/04/2018 @ 09:59:47'),
(13, 25, '1000010', 'dfavourakak@gmail.com', 'eeeyo', '202cb962ac59075b964b07152d234b70', 'a4363550a52628df54df', '12/09/2022', 1, '90', 0, ''),
(14, 26, '1000011', 'deyoakak@outlook.com', 'neweyo', '202cb962ac59075b964b07152d234b70', '1', '12/09/2022', 1, '211', 2, '18/09/2022 @ 18:09:14'),
(15, 27, '1000012', 'favourakak@gmail.com', 'eyo', '202cb962ac59075b964b07152d234b70', '12c390b51f46ab46dc01', '13/09/2022', 1, '21212', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `web_users`
--

CREATE TABLE `web_users` (
  `web_users_id` int(8) UNSIGNED NOT NULL,
  `web_users_type` char(2) DEFAULT NULL COMMENT 'A=master admin, B=admin, T= teacher, C= parent, S= non teaching staff, Ty= nysc, Tp=practising teacher, Tl= lesson teacher, X=principal, Xp=vice principal, Y= director, Z=Developer, Yp=propritor',
  `web_users_relid` int(8) UNSIGNED DEFAULT NULL COMMENT 'inserted rows() from staff.id',
  `web_users_username` varchar(15) DEFAULT NULL,
  `web_users_password` varchar(50) DEFAULT NULL,
  `web_users_flname` varchar(60) DEFAULT NULL,
  `web_users_active` varchar(12) NOT NULL COMMENT 'email verification',
  `online` tinyint(1) NOT NULL,
  `last_log` varchar(50) NOT NULL COMMENT 'sample dd/mm/yyy 04:44:33'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_users`
--

INSERT INTO `web_users` (`web_users_id`, `web_users_type`, `web_users_relid`, `web_users_username`, `web_users_password`, `web_users_flname`, `web_users_active`, `online`, `last_log`) VALUES
(1, 'A', 0, 'admin', '123', 'Benjamin', '1', 0, '02/10/2015 18:04:36'),
(2, 'T', 1, 'sage94', '7cef8a734855777c2a9d0caf42666e69', 'vitalis', '832b0943f1', 0, ''),
(3, 'T', 2, 'cyprian', '7cef8a734855777c2a9d0caf42666e69', 'Chinweoke', '588dbd211f', 0, ''),
(4, 'T', 3, 'Nna-Did', '7cef8a734855777c2a9d0caf42666e69', 'Nnaemeka', '1', 0, '26/08/2015 05:44:58'),
(5, 'T', 4, 'Nwagu', '7cef8a734855777c2a9d0caf42666e69', 'Chukwuemeka', '1', 0, ''),
(6, 'T', 5, 'vicwil', '7cef8a734855777c2a9d0caf42666e69', 'VICTOR', '8578a7277f', 0, ''),
(7, 'T', 6, 'josemaria', '7cef8a734855777c2a9d0caf42666e69', 'NZUBECHUKWU', '1b02728e15', 0, ''),
(8, 'T', 7, 'jamesdegreat', '7cef8a734855777c2a9d0caf42666e69', 'James Ifeanyichuwku', '1', 0, ''),
(9, 'T', 8, 'staff', '1253208465b1efa876f982d8a9e73eef', 'Kelvin', '1', 0, '10/09/2017 00:57:40'),
(10, 'S', 9, 'kelvin', '7cef8a734855777c2a9d0caf42666e69', 'f', 'd903d40cd0', 0, ''),
(11, 'T', 10, 'htn', '123', 'vgjug', '1', 0, '20/10/2015 17:52:25'),
(12, 'T', 11, 'staffeyo', '202cb962ac59075b964b07152d234b70', 'Eyo', '1', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_codes`
--
ALTER TABLE `attendance_codes`
  ADD PRIMARY KEY (`attendance_codes_id`);

--
-- Indexes for table `attendance_history`
--
ALTER TABLE `attendance_history`
  ADD PRIMARY KEY (`attendance_history_id`),
  ADD KEY `attendance_history_student_ndx` (`attendance_history_student`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulk_sms_store`
--
ALTER TABLE `bulk_sms_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classnote`
--
ALTER TABLE `classnote`
  ADD PRIMARY KEY (`classnote_id`);

--
-- Indexes for table `cognitive_domain`
--
ALTER TABLE `cognitive_domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discipline_history`
--
ALTER TABLE `discipline_history`
  ADD PRIMARY KEY (`discipline_history_id`),
  ADD KEY `discipline_history_student_ndx` (`discipline_history_student`);

--
-- Indexes for table `ethnicity`
--
ALTER TABLE `ethnicity`
  ADD PRIMARY KEY (`ethnicity_id`);

--
-- Indexes for table `exams_types`
--
ALTER TABLE `exams_types`
  ADD PRIMARY KEY (`exams_types_id`),
  ADD UNIQUE KEY `exams_types_desc` (`exams_types_desc`);

--
-- Indexes for table `forum_answer`
--
ALTER TABLE `forum_answer`
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `forum_question`
--
ALTER TABLE `forum_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_mailing`
--
ALTER TABLE `general_mailing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generations`
--
ALTER TABLE `generations`
  ADD PRIMARY KEY (`generations_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grades_id`);

--
-- Indexes for table `grades_domain`
--
ALTER TABLE `grades_domain`
  ADD PRIMARY KEY (`grades_domain_desc`),
  ADD UNIQUE KEY `grades_domain_id` (`grades_domain_id`);

--
-- Indexes for table `grade_history_primary`
--
ALTER TABLE `grade_history_primary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_subjects`
--
ALTER TABLE `grade_subjects`
  ADD PRIMARY KEY (`grade_subject_id`),
  ADD UNIQUE KEY `grade_subject_desc` (`grade_subject_desc`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `grade_terms`
--
ALTER TABLE `grade_terms`
  ADD PRIMARY KEY (`grade_terms_id`);

--
-- Indexes for table `grade_terms_days`
--
ALTER TABLE `grade_terms_days`
  ADD PRIMARY KEY (`grade_terms_days_id`);

--
-- Indexes for table `health_allergy`
--
ALTER TABLE `health_allergy`
  ADD PRIMARY KEY (`health_allergy_id`),
  ADD UNIQUE KEY `health_allergy_desc` (`health_allergy_desc`);

--
-- Indexes for table `health_allergy_history`
--
ALTER TABLE `health_allergy_history`
  ADD PRIMARY KEY (`health_allergy_history_id`);

--
-- Indexes for table `health_codes`
--
ALTER TABLE `health_codes`
  ADD PRIMARY KEY (`health_codes_id`),
  ADD UNIQUE KEY `health_codes_desc` (`health_codes_desc`);

--
-- Indexes for table `health_history`
--
ALTER TABLE `health_history`
  ADD PRIMARY KEY (`health_history_id`),
  ADD KEY `discipline_history_student_ndx` (`health_history_student`);

--
-- Indexes for table `health_immunz`
--
ALTER TABLE `health_immunz`
  ADD PRIMARY KEY (`health_immunz_id`);

--
-- Indexes for table `health_immunz_history`
--
ALTER TABLE `health_immunz_history`
  ADD PRIMARY KEY (`health_immunz_history_id`);

--
-- Indexes for table `health_medicine`
--
ALTER TABLE `health_medicine`
  ADD PRIMARY KEY (`health_medicine_id`),
  ADD UNIQUE KEY `health_medicine_desc` (`health_medicine_desc`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`homework_id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels_allocation`
--
ALTER TABLE `hostels_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels_bed_space`
--
ALTER TABLE `hostels_bed_space`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels_fees`
--
ALTER TABLE `hostels_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels_tbl_ability`
--
ALTER TABLE `hostels_tbl_ability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels_tbl_series`
--
ALTER TABLE `hostels_tbl_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels_tbl_types`
--
ALTER TABLE `hostels_tbl_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infraction_codes`
--
ALTER TABLE `infraction_codes`
  ADD PRIMARY KEY (`infraction_codes_id`);

--
-- Indexes for table `media_codes`
--
ALTER TABLE `media_codes`
  ADD PRIMARY KEY (`media_codes_id`);

--
-- Indexes for table `media_history`
--
ALTER TABLE `media_history`
  ADD PRIMARY KEY (`media_history_id`),
  ADD KEY `discipline_history_student_ndx` (`media_history_borrower`);

--
-- Indexes for table `parent_to_kids`
--
ALTER TABLE `parent_to_kids`
  ADD PRIMARY KEY (`parent_to_kids_id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `payment_receipts`
--
ALTER TABLE `payment_receipts`
  ADD PRIMARY KEY (`tuition_history_id`),
  ADD KEY `tution_paid_type` (`tution_paid_type`);

--
-- Indexes for table `payment_recharge_receipts`
--
ALTER TABLE `payment_recharge_receipts`
  ADD PRIMARY KEY (`tuition_history_id`);

--
-- Indexes for table `reg_pins`
--
ALTER TABLE `reg_pins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pin` (`codec`),
  ADD UNIQUE KEY `serial` (`sn`);

--
-- Indexes for table `reg_pins_old`
--
ALTER TABLE `reg_pins_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pin` (`codec`),
  ADD UNIQUE KEY `serial` (`sn`);

--
-- Indexes for table `relations_codes`
--
ALTER TABLE `relations_codes`
  ADD PRIMARY KEY (`relation_codes_id`);

--
-- Indexes for table `school_calendar`
--
ALTER TABLE `school_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_class_periods`
--
ALTER TABLE `school_class_periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `periods` (`periods`);

--
-- Indexes for table `school_fees`
--
ALTER TABLE `school_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_fees_default`
--
ALTER TABLE `school_fees_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_item_price`
--
ALTER TABLE `school_item_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_rooms`
--
ALTER TABLE `school_rooms`
  ADD PRIMARY KEY (`school_rooms_id`);

--
-- Indexes for table `school_years`
--
ALTER TABLE `school_years`
  ADD PRIMARY KEY (`school_years_id`);

--
-- Indexes for table `speak`
--
ALTER TABLE `speak`
  ADD PRIMARY KEY (`speak_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_email` (`staff_email`);

--
-- Indexes for table `staff_calendar`
--
ALTER TABLE `staff_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_notepad`
--
ALTER TABLE `staff_notepad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_post`
--
ALTER TABLE `staff_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_post_reply`
--
ALTER TABLE `staff_post_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_role`
--
ALTER TABLE `staff_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_report_cards`
--
ALTER TABLE `std_report_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentbio`
--
ALTER TABLE `studentbio`
  ADD PRIMARY KEY (`studentbio_id`),
  ADD UNIQUE KEY `studentbio_internalid_3` (`studentbio_internalid`),
  ADD KEY `studentbio_internalidndx` (`studentbio_internalid`),
  ADD KEY `studentbio_internalid` (`studentbio_internalid`),
  ADD KEY `studentbio_internalid_2` (`studentbio_internalid`);

--
-- Indexes for table `student_calendar`
--
ALTER TABLE `student_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_contact`
--
ALTER TABLE `student_contact`
  ADD PRIMARY KEY (`studentcontact_id`),
  ADD KEY `studentcontact_studentidndx` (`studentcontact_studentid`);

--
-- Indexes for table `student_grade_year`
--
ALTER TABLE `student_grade_year`
  ADD PRIMARY KEY (`student_grade_year_id`);

--
-- Indexes for table `student_notepad`
--
ALTER TABLE `student_notepad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_office`
--
ALTER TABLE `student_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_parents`
--
ALTER TABLE `student_parents`
  ADD PRIMARY KEY (`student_parents_id`);

--
-- Indexes for table `student_post`
--
ALTER TABLE `student_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_post_reply`
--
ALTER TABLE `student_post_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_wallet`
--
ALTER TABLE `student_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_wallet_pins`
--
ALTER TABLE `student_wallet_pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admission`
--
ALTER TABLE `tbl_admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admit_code`
--
ALTER TABLE `tbl_admit_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_app_config`
--
ALTER TABLE `tbl_app_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `tbl_automatics`
--
ALTER TABLE `tbl_automatics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_barned_words`
--
ALTER TABLE `tbl_barned_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_days`
--
ALTER TABLE `tbl_days`
  ADD PRIMARY KEY (`days_id`);

--
-- Indexes for table `tbl_grade_domains`
--
ALTER TABLE `tbl_grade_domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_portal_emails`
--
ALTER TABLE `tbl_portal_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salaries`
--
ALTER TABLE `tbl_salaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_type` (`staff_type`);

--
-- Indexes for table `tbl_school_domains`
--
ALTER TABLE `tbl_school_domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_school_profile`
--
ALTER TABLE `tbl_school_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`state_code`),
  ADD UNIQUE KEY `state_code` (`state_code`);

--
-- Indexes for table `tbl_std_denomination`
--
ALTER TABLE `tbl_std_denomination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_std_offices`
--
ALTER TABLE `tbl_std_offices`
  ADD UNIQUE KEY `office_id` (`office_id`);

--
-- Indexes for table `tbl_titles`
--
ALTER TABLE `tbl_titles`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `teacher_grade_year`
--
ALTER TABLE `teacher_grade_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_schedule`
--
ALTER TABLE `teacher_schedule`
  ADD PRIMARY KEY (`teacher_schedule_id`);

--
-- Indexes for table `tuition_codes`
--
ALTER TABLE `tuition_codes`
  ADD PRIMARY KEY (`tuition_codes_id`),
  ADD KEY `tuition_codes_id` (`tuition_codes_id`);

--
-- Indexes for table `tuition_codes_domain`
--
ALTER TABLE `tuition_codes_domain`
  ADD PRIMARY KEY (`tuition_codes_domain_id`),
  ADD UNIQUE KEY `tuition_codes_domain_name` (`tuition_codes_domain_name`);

--
-- Indexes for table `web_parents`
--
ALTER TABLE `web_parents`
  ADD PRIMARY KEY (`web_parents_id`),
  ADD UNIQUE KEY `web_parents_username` (`web_parents_username`);

--
-- Indexes for table `web_students`
--
ALTER TABLE `web_students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identify` (`identify`),
  ADD UNIQUE KEY `user_n` (`user_n`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `web_users`
--
ALTER TABLE `web_users`
  ADD PRIMARY KEY (`web_users_id`),
  ADD UNIQUE KEY `web_users_username` (`web_users_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_codes`
--
ALTER TABLE `attendance_codes`
  MODIFY `attendance_codes_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `attendance_history`
--
ALTER TABLE `attendance_history`
  MODIFY `attendance_history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bulk_sms_store`
--
ALTER TABLE `bulk_sms_store`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classnote`
--
ALTER TABLE `classnote`
  MODIFY `classnote_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cognitive_domain`
--
ALTER TABLE `cognitive_domain`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discipline_history`
--
ALTER TABLE `discipline_history`
  MODIFY `discipline_history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ethnicity`
--
ALTER TABLE `ethnicity`
  MODIFY `ethnicity_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `exams_types`
--
ALTER TABLE `exams_types`
  MODIFY `exams_types_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forum_question`
--
ALTER TABLE `forum_question`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_mailing`
--
ALTER TABLE `general_mailing`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `generations`
--
ALTER TABLE `generations`
  MODIFY `generations_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `grades_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `grades_domain`
--
ALTER TABLE `grades_domain`
  MODIFY `grades_domain_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade_history_primary`
--
ALTER TABLE `grade_history_primary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `grade_subjects`
--
ALTER TABLE `grade_subjects`
  MODIFY `grade_subject_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `grade_terms`
--
ALTER TABLE `grade_terms`
  MODIFY `grade_terms_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grade_terms_days`
--
ALTER TABLE `grade_terms_days`
  MODIFY `grade_terms_days_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `health_allergy`
--
ALTER TABLE `health_allergy`
  MODIFY `health_allergy_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `health_allergy_history`
--
ALTER TABLE `health_allergy_history`
  MODIFY `health_allergy_history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health_codes`
--
ALTER TABLE `health_codes`
  MODIFY `health_codes_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `health_history`
--
ALTER TABLE `health_history`
  MODIFY `health_history_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `health_immunz`
--
ALTER TABLE `health_immunz`
  MODIFY `health_immunz_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `health_immunz_history`
--
ALTER TABLE `health_immunz_history`
  MODIFY `health_immunz_history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health_medicine`
--
ALTER TABLE `health_medicine`
  MODIFY `health_medicine_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `homework_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels_allocation`
--
ALTER TABLE `hostels_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels_bed_space`
--
ALTER TABLE `hostels_bed_space`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels_fees`
--
ALTER TABLE `hostels_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels_tbl_ability`
--
ALTER TABLE `hostels_tbl_ability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels_tbl_series`
--
ALTER TABLE `hostels_tbl_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels_tbl_types`
--
ALTER TABLE `hostels_tbl_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `infraction_codes`
--
ALTER TABLE `infraction_codes`
  MODIFY `infraction_codes_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `media_codes`
--
ALTER TABLE `media_codes`
  MODIFY `media_codes_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `media_history`
--
ALTER TABLE `media_history`
  MODIFY `media_history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parent_to_kids`
--
ALTER TABLE `parent_to_kids`
  MODIFY `parent_to_kids_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_receipts`
--
ALTER TABLE `payment_receipts`
  MODIFY `tuition_history_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment_recharge_receipts`
--
ALTER TABLE `payment_recharge_receipts`
  MODIFY `tuition_history_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reg_pins`
--
ALTER TABLE `reg_pins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reg_pins_old`
--
ALTER TABLE `reg_pins_old`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations_codes`
--
ALTER TABLE `relations_codes`
  MODIFY `relation_codes_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `school_calendar`
--
ALTER TABLE `school_calendar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school_class_periods`
--
ALTER TABLE `school_class_periods`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `school_fees`
--
ALTER TABLE `school_fees`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3643;

--
-- AUTO_INCREMENT for table `school_fees_default`
--
ALTER TABLE `school_fees_default`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `school_item_price`
--
ALTER TABLE `school_item_price`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school_rooms`
--
ALTER TABLE `school_rooms`
  MODIFY `school_rooms_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `school_years`
--
ALTER TABLE `school_years`
  MODIFY `school_years_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `speak`
--
ALTER TABLE `speak`
  MODIFY `speak_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff_calendar`
--
ALTER TABLE `staff_calendar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_notepad`
--
ALTER TABLE `staff_notepad`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_post`
--
ALTER TABLE `staff_post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff_post_reply`
--
ALTER TABLE `staff_post_reply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_role`
--
ALTER TABLE `staff_role`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `std_report_cards`
--
ALTER TABLE `std_report_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `studentbio`
--
ALTER TABLE `studentbio`
  MODIFY `studentbio_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student_calendar`
--
ALTER TABLE `student_calendar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `student_contact`
--
ALTER TABLE `student_contact`
  MODIFY `studentcontact_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student_grade_year`
--
ALTER TABLE `student_grade_year`
  MODIFY `student_grade_year_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `student_notepad`
--
ALTER TABLE `student_notepad`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_office`
--
ALTER TABLE `student_office`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_parents`
--
ALTER TABLE `student_parents`
  MODIFY `student_parents_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_post`
--
ALTER TABLE `student_post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_post_reply`
--
ALTER TABLE `student_post_reply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_wallet`
--
ALTER TABLE `student_wallet`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_wallet_pins`
--
ALTER TABLE `student_wallet_pins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admission`
--
ALTER TABLE `tbl_admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admit_code`
--
ALTER TABLE `tbl_admit_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_app_config`
--
ALTER TABLE `tbl_app_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_automatics`
--
ALTER TABLE `tbl_automatics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_barned_words`
--
ALTER TABLE `tbl_barned_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_config`
--
ALTER TABLE `tbl_config`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_days`
--
ALTER TABLE `tbl_days`
  MODIFY `days_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_grade_domains`
--
ALTER TABLE `tbl_grade_domains`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_portal_emails`
--
ALTER TABLE `tbl_portal_emails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_salaries`
--
ALTER TABLE `tbl_salaries`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_school_domains`
--
ALTER TABLE `tbl_school_domains`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_school_profile`
--
ALTER TABLE `tbl_school_profile`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_std_denomination`
--
ALTER TABLE `tbl_std_denomination`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_std_offices`
--
ALTER TABLE `tbl_std_offices`
  MODIFY `office_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_titles`
--
ALTER TABLE `tbl_titles`
  MODIFY `title_id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `teacher_grade_year`
--
ALTER TABLE `teacher_grade_year`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `teacher_schedule`
--
ALTER TABLE `teacher_schedule`
  MODIFY `teacher_schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `tuition_codes`
--
ALTER TABLE `tuition_codes`
  MODIFY `tuition_codes_id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tuition_codes_domain`
--
ALTER TABLE `tuition_codes_domain`
  MODIFY `tuition_codes_domain_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_parents`
--
ALTER TABLE `web_parents`
  MODIFY `web_parents_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `web_students`
--
ALTER TABLE `web_students`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `web_users`
--
ALTER TABLE `web_users`
  MODIFY `web_users_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
