-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2017 at 08:21 AM
-- Server version: 5.6.32-78.1
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simplybh_simplybhand`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE IF NOT EXISTS `applicant` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `phoneno` bigint(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `doing` longtext NOT NULL,
  `passion` longtext NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `name`, `user_name`, `email`, `password`, `dob`, `phoneno`, `city`, `state`, `country`, `doing`, `passion`, `gender`) VALUES
(1, 'Sourabh Akash', '1406146', 'sourabh.akash0123@gmail.com', '$2y$10$y2.YZFn3y/.Qmu0HVMIxx.MOn5ll4t5/nS/s4C.fce3CIR1H/E/.i', '0000-00-00', 9583785500, 'Bhubaneswar', 'Odisha', 'India', 'sdfghjkkll', 'rfghjkl;l', 'Male'),
(2, 'Sourabh Akash', 's1406146', 'sourabh.akash@yahoo.com', '$2y$10$8YK1eD/GAAjpjw9d0E1h1O.ag.TGjI99Er6IMxmtQAZc/RUgpsblO', '0000-00-00', 8093992761, 'Bhubaneswar', 'jharkhand', 'India', 'tfghjkl,.', 'tfghjkl;', 'Male'),
(3, 'sagar agrawal', 'sagar', 'sagaragrawal223@gmail.com', '$2y$10$k1xJ6rqyDh4H2Q1azjBhHeZkXN1KKAx4w28rOcP9T/Lg4h9P5VhfG', '0000-00-00', 7077100815, 'allahabad', 'up', 'india', 'filling the form', 'sutta and daaru', 'Male'),
(4, 'Mridul ', 'Mickey', 'mridul.refined@gmail.com', '$2y$10$52xpdg3CwCZUV6MG4QXm2.ZXqvQDrOHJsaDbIS0NdyQ/kZBGuT.Bi', '0000-00-00', 7077100807, 'Chennai ', 'Tamil nadu', 'India', 'Student', 'Sketching ', 'Male'),
(5, 'Pankaj Kumar Singh', 'pksingh1996', 'abc.defpksingh@gmail.com', '$2y$10$5IvwdJfys6Yq8NWwNYYhyO8LR8XN9QGl5XzgOcYzm08InFEnIz1Fq', '0000-00-00', 8235365517, 'jamshedpur', 'jharkhand', 'india', 'jsixji', 'kljjoamlao', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `polls_question`
--

CREATE TABLE IF NOT EXISTS `polls_question` (
  `id` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text,
  `Option4` text,
  `Option5` text,
  `Option6` text,
  `Category` text NOT NULL,
  `madeby` text
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polls_question`
--

INSERT INTO `polls_question` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Option5`, `Option6`, `Category`, `madeby`) VALUES
(1, 'What is the definition of a true lover?\r\n', 'One who loves unconditionally', 'One who loves someone so much that only her happiness matters', 'One who can go to extremes for her', 'Love is overrated', '', '', '6', 'Madhurima'),
(2, 'Definition of fun?\r\n\r\n', 'Tripling with siblings', 'Your personal time where you can do anything you want', 'A good old family get together', 'Timeout with friends', '', '', '9', 'Madhurima'),
(4, 'What super hero trait do you suspect you possess?\r\n\r\n\r\n\r\n\r\n', 'The invisible man', 'The word ninja', 'The many hand one', 'Manipulative thinker', '', '', '7', 'Madhurima'),
(5, 'What would be your favourite getaway vacation spot?\r\n\r\n\r\n\r\n\r\n', 'Pristine beaches', 'Hash-ed hills', 'Vagrant valleys', 'Hot deserts', '', '', '9', 'Madhurima'),
(6, 'Which idea refreshes you the most?\r\n\r\n\r\n\r\n\r\n\r\n', 'Saturday is coming!', 'Sleep', 'A road trip', 'A hearty meal', '', '', '9', 'Madhurima'),
(7, 'What makes you nostalgic immediately?\r\n\r\n\r\n\r\n', '2011 India vs Sri Lanka WC finals', 'The beyblade series', 'Children playing gully cricket/football', '', '', '', '9', 'Madhurima'),
(8, 'If you can be invisible for a day, what would you do?\r\n\r\n\r\n\r\n\r\n\r\n', 'Get rich', 'Become a kleptomaniac', 'Take a tour of area 51', 'Scare someone to death', '', '', '7', 'Madhurima'),
(9, 'What is your favourite cartoon?\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Tom n jerry', 'Recess', 'Simpsons', 'Spongebob, square pants', 'Noddy', '', '9', 'Pragya'),
(10, 'Who is your favourite director?\r\n\r\n\r\n\r\n\r\n', 'Alfred Hitchcock', 'Christopher Nolan', 'Guy Ritchie', 'Martin Scorsese', 'Stephen Spielberg', '', '9', 'Madhurima'),
(11, 'Who is the Best Harry Potter teacher ever?', 'Severus Snape', 'Albus Dumbledore', 'Remus Lupin', 'Minerva McGonagall', '', '', '4', 'Pragya');

-- --------------------------------------------------------

--
-- Table structure for table `questions_survey`
--

CREATE TABLE IF NOT EXISTS `questions_survey` (
  `id` int(11) NOT NULL,
  `Question` text,
  `Option1` text,
  `Option2` text,
  `Option3` text,
  `Option4` text,
  `Option5` text,
  `Option6` text,
  `Category` text,
  `SName` text,
  `Description` text,
  `Timer` text,
  `madeby` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submit_work`
--

CREATE TABLE IF NOT EXISTS `submit_work` (
  `id` int(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `content` longtext NOT NULL,
  `category` text NOT NULL,
  `agreed` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submit_work`
--

INSERT INTO `submit_work` (`id`, `title`, `name`, `phone`, `email`, `content`, `category`, `agreed`) VALUES
(1, 'My Life', 'Sourabh', '9583785500', 'sourabh.akash0123@gmail.com', '<p> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Life without You is full of cry</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">This makes my tear all dry..</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">I still sits alone a lot of days</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Waiting for you who always plays...</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">I still feel you are so sad,</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Come again and see how I make you glad...</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">I still feel I can&#39;t deal with this stress,</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">O my dear take me out of this depress..</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">I know for you this words may not be true,</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">But I only wants to be graduated for you...</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Without You Life is full of anger and fear,</span><br style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;" /> 	<span style="color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue Light&quot;, HelveticaNeue-Light, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Please come back and lets again start with this new year....</span></p> ', 'Poetry,Sarcasm,', 'upload/Sourabh.html'),
(2, 'hhhhhhhhhhhhhhhhhhhhhhhhhhggggggggggggghhhhhhhhhhhhhhhhhhhhhhhhhhggggggggggggghhhhhhhhhhhhhhhhhhhhhh', 'ffffffffffffff', '555fffffffffffffffff', 'kjjj@gmail.com', '<p> 	bbbbbbbbbbbbbbbbbvccccccccccccccccccccxssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss</p> ', 'Reviews,', 'upload/ffffffffffffff.html'),
(3, 'This Age', 'Debmallya Laha ', '8280716978', 'youngvam@gmail.com', '<p> 	Arrival of humans on this planet is thought of to be in the recent times when we consider the time since earth was created.</p> <p> 	Many ages have passed by as the earth undwent several geological and climatic modifications, before the humans arrived. So yes, humans are younger than many other species in this planet. What seperates the humans over other living beings, on this planet.? Why are humans and their requirements so dominant all over the earth.? Yes, of course it is our brain, according to me which is the most powerful existing technology in the earth, a beautiful creation. But is brain the only answer? Succes of the humans are also due to his sharpened conciousness and will power.</p> <p> 	The brain, the will power, the sharpened conciousness &nbsp;have brought great power to the humans. But it is the achievement of this very great power that today, poses a threat to the whole world like it never did before. It is believed that with great power should come great responsibility, but humans have shown utter callousness in the use of the great power that they possess, leading to two world wars. Civilizations of species have faced extinction, in the past, but none did face the threat to extinction as the humans do. Clearly the reason being the humans themselves. Recent incidents of unrest are very popular all over the world. With achievement of power came the greed for more power, which resulted in human assault over their own fellow beings and not only that, men with power very often do cause diversion of brains and efforts of their fellow humans from a &nbsp;path of harmony and peaceful living to a path of disorder and harmful rather a toxic life.</p> <p> 	&nbsp;</p> <p> 	We, the new hope for earth, should take an oath from today onwards to be responsible not only to ourselves but also to other men and women, keep a strict check on the misuse of power, energy and efforts, to give back those people a life of harmony and peace who have been misled all over their lives, to strengthen human brotherhood, bondings and harmonious realations over land and seas, all across the world, and make our beautiful planet a beautiful, peaceful place to live in.</p>', 'QuoteMe!,', 'upload/Debmallya Laha .html'),
(4, 'This Age', 'Debmallya Laha ', '8280716978', 'youngvam@gmail.com', '<p> 	Arrival of humans on this planet is thought of to be in the recent times when we consider the time since earth was created.</p> <p> 	Many ages have passed by as the earth undwent several geological and climatic modifications, before the humans arrived. So yes, humans are younger than many other species in this planet. What seperates the humans over other living beings, on this planet.? Why are humans and their requirements so dominant all over the earth.? Yes, of course it is our brain, according to me which is the most powerful existing technology in the earth, a beautiful creation. But is brain the only answer? Succes of the humans are also due to his sharpened conciousness and will power.</p> <p> 	The brain, the will power, the sharpened conciousness &nbsp;have brought great power to the humans. But it is the achievement of this very great power that today, poses a threat to the whole world like it never did before. It is believed that with great power should come great responsibility, but humans have shown utter callousness in the use of the great power that they possess, leading to two world wars. Civilizations of species have faced extinction, in the past, but none did face the threat to extinction as the humans do. Clearly the reason being the humans themselves. Recent incidents of unrest are very popular all over the world. With achievement of power came the greed for more power, which resulted in human assault over their own fellow beings and not only that, men with power very often do cause diversion of brains and efforts of their fellow humans from a &nbsp;path of harmony and peaceful living to a path of disorder and harmful rather a toxic life.</p> <p> 	&nbsp;</p> <p> 	We, the new hope for earth, should take an oath from today onwards to be responsible not only to ourselves but also to other men and women, keep a strict check on the misuse of power, energy and efforts, to give back those people a life of harmony and peace who have been misled all over their lives, to strengthen human brotherhood, bondings and harmonious realations over land and seas, all across the world, and make our beautiful planet a beautiful, peaceful place to live in.</p> ', 'QuoteMe!,', 'upload/Debmallya Laha .html'),
(5, '', 'Adrija Biswas ', '7064006341', 'adrijabiswas02@gmail.com', '<p> 	<span style="font-size: 12px;">Psychology for the record is the study of behavior and mind, embracing all aspects of conscious and unconscious experience as well as thought.</span></p> <div> 	This much we can gather from Wikipedia. But exactly how does our brain function? How do we tell right from wrong? Is everything really black and white as we think it to be? Or are there shades of grey in this tread but unread field?</div> <div> 	&nbsp;</div> <div> 	Let&rsquo;s start from something very fundamental like cartoon characters. We have a villain and a hero. The math is simple, really. Good vs evil, the good side wins, the day is saved and so on. But has anyone really thought of the villains? Sought their side of the story? I&rsquo;m talking about the human villains here not the Gods or extra-terrestrial ones who are just inherently evil. Don&rsquo;t they deserve empathy or atleast psychological understanding? What if they are just like you and me but a victim of unfortunate circumstances? Who then decides the rules of morality? Who draws the fine line between good and evil?</div> <div> 	&nbsp;</div> <div> 	Take <strong><em>Wilson Grant Fisk</em></strong> aka Kingpin(MCU) from the famous Netflix Daredevil series. He was born to a caring mother and an ambitious but cruel father. Wilson was constantly humiliated by his father. For example when he was twelve his father asked him to take a sip of whiskey but ridiculed Wilson when he choked on it. On an unfortunate turn of events his father lost the campaign for the city council of Hell&rsquo;s Kitchen which made him angry and relentless. Wilson began being ridiculed and bullied by his neighbor and when his father heard about this, events took a violent turn. His father assaulted that neighbor beating him repeatedly with a baseball bat and then instructed Wilson to do the same till that poor boy was nearly dead. This in my opinion somewhere laid the foundation of the violence that became second nature to this man. His father&rsquo;s drinking and habits got out of hand and his financial problems led him to beating his wife and blaming her for everything that was wrong in his life. During these beatings Wilson was ordered by his father to stare at a wall while his mother would scream in pain and fear. It was during one of these beatings that Wilson did the unthinkable yet inevitable-he took a hammer and bashed his father&rsquo;s skull, all in an attempt to put an end to his beloved mother&rsquo;s misery. His mother however vowed to protect him by cutting the body and dumping it in the river. As a reminder of his father&rsquo;s true nature, Wilson wore his father&rsquo;s cufflinks everyday.</div> <div> 	Many years later he became a powerful criminal businessman with a plan to tear apart Hell&rsquo;s Kitchen and rebuild it. He is however awoken early every single day due to traumatic dreams pertaining to the above mentioned incident.&nbsp;</div> <div> 	So here I would like to pose a few questions: Who do you think should we blame? Is Wilson Fisk really just pure evil? Or could Wilson Fisk just be any of us?</div> <div> 	A childhood like this is enough to permanently scar anyone. The phrase &ldquo;Survival of the Fittest&rdquo; is only too literal here. Wilson Fisk grows up to struggle with the implications and motivations of his actions.</div> <div> 	He vows to &lsquo;clean up the city&rsquo; but by all illegal and treacherous means, all in the name of greater good.</div> <div> 	He had his life shaped by traumatic experience and harbors a very different perspective from most of us. His guiding motivation comes from &lsquo;not being like his father&rsquo; &nbsp;and he built this enormous empire as a response to the poverty he grew up with. There is a reason why he is who he is.</div> <div> 	I am not saying Wilson Fisk is good or justifying his actions in any manner. All I am saying is that there is more to people than what meets the eye and the complexity and the tangibility of this character is unnerving.</div> <div> 	&nbsp;</div> <div> 	Let&rsquo;s take another MCU(Marvel Cinematic Universe) character <em><strong>Harry Theopolis Osborn</strong></em> alias supervillian Green Goblin.</div> <div> 	Harry was the childhood friend of Peter Parker who was sent off to boarding school at a young age by his father Norman Osborn. Fast forward to the present Harry comes home to a terminally ill father who reveals that this illness is hereditary and gives Harry a device containing his life&rsquo;s work. The next morning Norman Osborn is dead and Harry becomes the new CEO of Oscorp. The first symptoms of the illness began to show in Harry and he used the device to figure out that Spider-Man&rsquo;s blood could be a possible cure. He tried reaching out to Spider-Man via Peter Parker but it was of no avail. Later Spider-Man himself refused Harry&rsquo;s offer as he was unsure of the consequences. Events took an unfortunate turn and Harry was removed from his position as CEO. All this combined with his illness mad him sour, vengeful and desperate.&nbsp;</div> <div> 	In a desperate attempt to cure his illness which was getting worse with each passing day, he broke into Ravencroft Institute, injected himself with the venom of genetically-modified spiders which turned him into an ugly green monster, grabbed a suit of armor and this transformed him into Green Goblin. It made him the monster we know today.</div> <div> 	Now, before you start judging Harry, hear me out. Harry used to be pretty decent boy and a very loyal friend to Peter. But the resentment towards his father for not being there in the crucial period of his life and lack of parental love made him an overall vengeful, ambitious and self-serving man. There was an underlying bitterness and a cold calculating side to him and all of these traits amplified to near madness when he became Green Goblin. To this add the sense of rejection and betrayal he felt when he was denied the only possible cure of his illness by Spider-Man who turned out to be his best friend Peter Parker.</div> <div> 	Under these circumstances, how do you expect a person to think rationally? To make the right choices? When the question is of life and death, what would you choose, especially if you had a childhood as troubled as Harry Osburn? How would it feel if the only cure to your terminal illness, the only chance of your survival is denied to you for fear of side-effects that may or may not happen by your own best-friend? Once again i would say that no, I am not justifying his actions in any way. Here I am just trying to figure out and simultaneously bring forth the complexity of circumstances, the do-or-die situation harry was in and his interpretation of events and this is what makes him a very believable antagonist.</div> <div> 	&nbsp;</div> <div> 	Speaking of antagonists, I would like to discuss about an antagonist from my all time favorite Harry Potter series <strong><em>Draco Malfoy</em></strong>.</div> <div> 	Draco Malfoy is your quintessential school bully. He grew up as the only child at Malfoy Manor. Now for the unacquainted, the Malfoys were a pure blood family who were allegedly one of Voldemort&rsquo;s allies. They were firm believers in &lsquo;purity of blood&rsquo; and hence were strongly against Muggleborn witches and wizards receiving magical education. Pretty much like the cast system in our(muggle) world. Also the Malfoys considered themselves to be royalty given their immense wealth and high social status.</div> <div> 	Draco was raised in an atmosphere of regret, resilience and a quiescence. Just like the entire wizarding community he had heard numerous stories about the Boy Who Lived and theories circulating that Harry might be a greater Dark wizard than Voldemort, so on Hogwarts Express Draco extended a friendly hand towards Harry Potter after learning of his identity in hopes to please his father Lucious Malfoy and partly because he wanted to take home an interesting story. Harry however turned down his offer and this made Draco Malfoy his enemy at once. Draco always wanted to please his father as he was the most impressive person Draco knew. His behavior at school faithfully copied his father&rsquo;s cold and contemptuous manner of treating people outside his inner circle. Draco for the most part was envious of Harry&rsquo;s fame, of how Harry was the most talked about person at school and the wizarding community because Draco had been brought up to believe that he was special and occupied a royal position in the wizarding community. Hence Draco resorted to various dirty tactics to bring him down, humiliate him in front of the entire school including but not limited to telling lies about him to the press, exposing the secret club he had founded(Dumbledore&rsquo;s Army) before Umbridge and so on and so forth.</div> <div> 	The discussions at the Malfoy Tower of how Harry once again evaded Voldemort&rsquo;s attempts to kill him at the graveyard gave rise to conflicting feelings in Draco Malfoy. On one hand he was happy that the Dark Lord had returned, he was also envious of how the Death Eaters(followers of Voldemort) considered him a serious adversary whilst Draco was still considered a schoolboy. This gave rise to heightened jealousy and inferiority complex within him. In his Fifth Year Harry not only slipped through Draco&rsquo;s fingers in his attempt to get Harry expelled from school but also thwarted his father Lucious&rsquo;s plan to kill him and in turn Lucious got thrown into Askaban(wizard prison).</div> <div> 	Draco&rsquo;s world now fell apart. His father whom he considered his role model was locked up in prison and he and his mother became mere pariahs among the Death Eaters. Draco was a very protected child with very little to bother him but now with his Father gone and his mother helpless, he had to assume a man&rsquo;s responsibilities.</div> <div> 	In the heat of the situation and furious with the world that suddenly turned it&rsquo;s back on his father he accepted his Death Eater&rsquo;s responsibility and Voldemort&rsquo;s task of killing Dumbledore. Obviously he failed. Miserably. He felt shameful, humiliated and disoriented with what he had done and all that was happening.</div> <div> 	This discussion somewhere makes me believe that there is a tiny albeit persistent Draco Malfoy in all of us. Who doesn&rsquo;t experience family pressure? The pressure to stand up to their expectations, to excel in every possible way just to make them a trifle satisfied. So can we blame Draco for the bully he was? Or can blame him for the inferiority complex he suffered for all his school life? Were his decisions impulsive? Or was he left with absolutely no choice in the given circumstances?</div> <div> 	&nbsp;</div> <div> 	Concluding my article I would like to say whether we like it or not every single antagonist/villain was once like us. Circumstances and fate coupled with wrong choices made them who they are.</div> <div> 	I&rsquo;m not saying that these antagonists conceal a heart of gold nor am I backing up their evil acts. I&rsquo;m sitting here behind this computer wondering if things would have been different if a few events had been different.</div> <div> 	Think about it.</div> ', 'Philosophy,', 'upload/Adrija Biswas .html'),
(6, 'Meri Pyari Maa', 'Abhinav Kumar', '9681186197', 'akumargrd@gmail.com', '<p> 	&nbsp;<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2343;&#2352;&#2340;&#2368; &#2346;&#2375; &#2349;&#2327;&#2357;&#2366;&#2344; &nbsp;&#2325;&#2379; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span></p> <p> 	<a href="https://4.bp.blogspot.com/-4NlmdFJCpLE/VuLF2sC1bzI/AAAAAAAAAGk/VK7r7spTNCgWKkBuABmZ7abu7kpPjCYDg/s1600/Mother-Poems-Story-Kahani-Maa-Mom-Images-Wallpapers-Pictures.jpg" imageanchor="1" style="margin: 0px 0px 1em 1em; padding: 0px; list-style: none; text-decoration: none; border: none; outline: none; color: rgb(76, 76, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px; clear: right; float: right;"><img border="0" height="320" src="https://4.bp.blogspot.com/-4NlmdFJCpLE/VuLF2sC1bzI/AAAAAAAAAGk/VK7r7spTNCgWKkBuABmZ7abu7kpPjCYDg/s320/Mother-Poems-Story-Kahani-Maa-Mom-Images-Wallpapers-Pictures.jpg" style="margin: 13px 0px 0px; padding: 0px; list-style: none; border: none; outline: none; max-width: 100%; height: auto; vertical-align: middle; transition: all 0.3s; width: 267px;" width="266" /></a></p> <p> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2313;&#2344;&#2325;&#2375; &#2330;&#2375;&#2361;&#2352;&#2375; &#2346;&#2375; &#2346;&#2381;&#2351;&#2366;&#2352;&#2366; &#2360;&#2366; &#2350;&#2369;&#2360;&#2381;&#2325;&#2366;&#2344; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2326;&#2369;&#2342; &#2325;&#2375; &#2354;&#2367;&#2319; &#2344;&#2361;&#2368;,&#2342;&#2369;&#2360;&#2352;&#2379; &#2325;&#2375; &#2354;&#2367;&#2319; &#2313;&#2344;&#2381;&#2361;&#2375;&#2306; &#2325;&#2369;&#2331; &#2325;&#2352;&#2340;&#2375; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375;,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2361;&#2366;&#2305; &#2325;&#2369;&#2331; &#2348;&#2361;&#2369;&#2340; &#2361;&#2368; &#2346;&#2381;&#2351;&#2366;&#2352;&#2366; &#2360;&#2366; &#2310;&#2325;&#2366;&#2352; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2357;&#2392;&#2381;&#2340; ,&#2348;&#2375;&#2357;&#2392;&#2381;&#2340; &#2340;&#2369;&#2333;&#2375; &#2309;&#2346;&#2344;&#2375; &#2346;&#2366;&#2360; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2340;&#2375;&#2352;&#2368; &#2310;&#2305;&#2330;&#2354; &#2340;&#2354;&#2375; &#2360;&#2366;&#2352;&#2366; &#2360;&#2306;&#2360;&#2366;&#2352; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2326;&#2369;&#2342; &#2325;&#2375; &#2310;&#2306;&#2360;&#2369;&#2323;&#2306; &#2325;&#2379; ,&#2340;&#2369;&#2333;&#2375; &#2350;&#2361;&#2360;&#2370;&#2360; &#2325;&#2352;&#2340;&#2375; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2360;&#2350;&#2333;&#2366;&#2340;&#2375; ,&#2348;&#2369;&#2333;&#2366;&#2340;&#2375; &nbsp;&#2332;&#2367;&#2306;&#2342;&#2327;&#2368; &#2325;&#2366; &#2346;&#2361;&#2354;&#2366; &#2346;&#2366;&#2336; &#2346;&#2397;&#2366;&#2340;&#2375; &#2340;&#2369;&#2333;&#2375; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375;,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2342;&#2369;&#2344;&#2367;&#2351;&#2366; &#2325;&#2375; &#2311;&#2360; &#2309;&#2342;&#2349;&#2370;&#2340; &#2360;&#2380;&#2344;&#2381;&#2342;&#2352;&#2381;&#2351; &#2325;&#2379; &#2309;&#2346;&#2344;&#2375; &#2346;&#2366;&#2360; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2348;&#2367;&#2344;&#2366; &#2309;&#2306;&#2332;&#2366;&#2350; &#2325;&#2368; &#2398;&#2367;&#2325;&#2381;&#2352; &#2325;&#2367;&#2351;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2361;&#2360;&#2381;&#2340;&#2375; &#2361;&#2369;&#2319; &#2348;&#2369;&#2352;&#2375; &#2357;&#2392;&#2381;&#2340; &#2350;&#2375;&#2306; &#2340;&#2369;&#2333;&#2375; &#2309;&#2346;&#2344;&#2375; &#2360;&#2366;&#2341; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,</span><br style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;" /> 	<span style="color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; letter-spacing: 0.16px;">&#2361;&#2366;&#2305; &#2350;&#2366;&#2305; &#2340;&#2369;&#2333;&#2375; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; ,&#2340;&#2369;&#2333;&#2375; &#2342;&#2375;&#2326;&#2366; &#2361;&#2376; &#2350;&#2376;&#2306;&#2344;&#2375; |||||||||||&nbsp;</span></p> <p> 	BY-:Abhinav Kumar</p> ', 'Poetry,', 'upload/Abhinav Kumar.html'),
(7, '', '', '', '', '', '', 'upload/.html');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `s_id` int(11) NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`s_id`, `email`, `name`) VALUES
(6, 'sourabh.akash0123@gmail.com', 'Sourabh Akash'),
(4, 'sourabh@simplybhand.com', 'Sourabh Akash'),
(5, 'sagar_zodiacleo@rocketmail.com', 'SimplyBhand'),
(7, 'hjvhj', 'bjkbuk'),
(8, 'nisharani023@gmail.com', 'nisha'),
(9, 'amittttmishra@gmail.com', 'Amit'),
(10, 'enfield1129@gmail.com', 'The WOLF'),
(11, 'shrimantee@gmail.com', 'SHRIMANTEE ROY'),
(12, 'shreyasingh2696@gmail.com', 'shreya singh '),
(13, 'erwe@fhsjhd.com', 'asdjhdasj'),
(14, 'ghyt', 'nynuy'),
(15, 'dijachudhary@gmail.com', 'khadija Amjad'),
(16, 'petersapphire@yahoo.com', 'Harshit Varshney'),
(17, 'pablitothess@gmail.com', 'Pavlos Thomaidis');

-- --------------------------------------------------------

--
-- Table structure for table `workwithus`
--

CREATE TABLE IF NOT EXISTS `workwithus` (
  `w_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `workwithus`
--

INSERT INTO `workwithus` (`w_id`, `name`, `email`, `phone`, `profile`) VALUES
(8, 'Sourabh Akash', 'sourabh.akash0123@gmail.com', '8399834238', 'Blog Manager'),
(6, 'Sourabh Akash', 'sagar_zodiacleo@rocketmail.com', '8399834238', 'Web Development'),
(7, 'Sourabh Akash', 'sourabh@simplybhand.com', '8399834238', 'content writer'),
(9, 'Sourabh Akash', 'sourabh@celtindia.org', '9583785500', 'Blog Manager'),
(10, 'NIKHIL RAVI', 'nikhil.ravi.nikhil@gmail.com', '7504436680', 'content writer'),
(11, 'Deepti Saluja', 'deeptisaluja95@gmail.com', '7077100724', 'Digital Marketing'),
(12, 'Parth Bhatia', 'thefirstparth@gmail.com', '8601444001', 'content writer'),
(13, 'Shashwat Bhatia', 'shashwatbhatia@gmail.com', '09671329321', 'content writer'),
(14, 'jaswinder singh', 'jaswinder9051998@gmail.com', '9937810580', 'content writer'),
(15, 'Rishabh kumar', 'swapnilpritam@gmail.com', '9821632859', 'content writer'),
(16, 'Jayeesha Das', 'dasjayeesha@gmail.com', '8336816078', 'content writer'),
(17, 'Priyanshi Dhawan', 'priyanshidhawan1998@gmail.com', '9087009979', 'content writer'),
(18, 'Ahmad Khan', 'ak4605030@gmail.com', '7065746308', 'content writer'),
(19, 'Abheet Srivastav', 'abheetsrivastav220598@gmail.co', '8052902385', 'content writer'),
(20, 'Navneet Kumar Singh', 'nstarz25@gmail.com', '8726415293', 'content writer'),
(21, 'Mrinal Kalita', 'mrinalkalita666@gmail.com', '9774282561', 'content writer'),
(22, 'Kourtric', 'TheKKohli@gmail.com', '7688882643', 'content writer'),
(23, 'Sanskriti Shankar', 'lifeisossom@gmail.com', '7045854318', 'content writer'),
(24, 'Amit Mishra', 'amittttmishra@gmail.com', '7064266836', 'Web Development'),
(25, 'Kartik Jha', 'kartikjha13@gmail.com', '8805036178', 'content writer'),
(26, 'Saranya Das', 'dassaranya123@gmail.com', '9776543945', 'content writer'),
(27, 'Bhumika Khatri', 'bk.bhumika14@gmail.com', '8105280866', 'content writer'),
(28, 'Rahul Dogra', 'dogra.chan@gmail.com', '8813884548', 'content writer'),
(29, 'srishti prajna', 'narayanishu57@gmail.com', '7504436306', 'content writer'),
(30, 'Prajna Chaudhary', 'foreveralive2430@gmail.com', '9998179425', 'content writer'),
(31, 'Chirag Kalouni', '1998chirag@gmail.com', '8447609710', 'content writer'),
(32, 'kajal kumari', 'kkajal1536@gmail.com', '9692051383', 'content writer'),
(33, 'sayan basak', 'sayan.basak.14@gmail.com', '8584927776', 'content writer'),
(34, 'Soumi Bose', 'soumibose1@gmail.com', '9437475116', 'content writer'),
(35, 'Primula Mukherjee', 'primuk@gmail.com', '7760643112', 'content writer'),
(36, 'khadija Amjad', 'dijachudhary@gmail.com', '03310490092', 'Blog Manager'),
(37, 'Harshit Varshney', 'petersapphire@yahoo.com', '8895849845', 'Opertation'),
(38, 'Pavlos Thomaidis', 'pablitothess@gmail.com', '00306939366066', 'SEO Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls_question`
--
ALTER TABLE `polls_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_survey`
--
ALTER TABLE `questions_survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit_work`
--
ALTER TABLE `submit_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `workwithus`
--
ALTER TABLE `workwithus`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `polls_question`
--
ALTER TABLE `polls_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `questions_survey`
--
ALTER TABLE `questions_survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `submit_work`
--
ALTER TABLE `submit_work`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `workwithus`
--
ALTER TABLE `workwithus`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
