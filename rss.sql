-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2018 a las 21:37:58
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feeds`
--

CREATE TABLE `feeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `date` varchar(200) DEFAULT NULL,
  `permalink` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `feeds`
--

INSERT INTO `feeds` (`id`, `title`, `description`, `date`, `permalink`) VALUES
(1, 'Se destrozo la calle', 'La calle quedo muy fea luego de que por tu culpa la chocaron muy feo', '1 de diciembre a las 5:16 p.pm', 'asdfasdf'),
(2, 'se volvio a destrozar la calle', 'volviste a destrozar la calle mam', '1 de diciembre a las 5:17 p.pm', 'asdfasdf'),
(5, 'Neil deGrasse Tyson Denies Misconduct Accusations', 'In a lengthy Facebook post responding to three women’s accounts, the well-known astrophysicist described two as benign and suggested the third did not occur.', '2 December 2018 | 2:57 am', 'https://www.nytimes.com/2018/12/01/arts/neil-degrasse-tyson-sexual-misconduct.html?partner=rss&amp;emc=rss'),
(6, 'The Anchorage Earthquake Was Terrifying. But the Damage Could’ve Been Much Worse.', 'Life slowly returned to normal in the Alaskan city, where preparation and rigorous building codes may have saved it from more devastating losses.', '2 December 2018 | 1:57 am', 'https://www.nytimes.com/2018/12/01/us/anchorage-alaska-earthquake.html?partner=rss&amp;emc=rss'),
(7, 'Bush’s Letter to Clinton Cemented a Presidential Tradition, Historians Say', 'George Bush left an encouraging letter to his former opponent on Inauguration Day in 1993, a display of unity after a bitter campaign against Bill Clinton.', '2 December 2018 | 1:54 am', 'https://www.nytimes.com/2018/12/01/us/politics/president-bush-clinton-letters.html?partner=rss&amp;emc=rss'),
(8, 'George Bush Will Lie in State at the Capitol and Be Buried in Texas', 'On Monday, Mr. Bush’s coffin will arrive at the Capitol. On Thursday, he will be buried next to his wife in College Point, Tex.', '2 December 2018 | 1:45 am', 'https://www.nytimes.com/2018/12/01/us/george-bush-funeral-plans.html?partner=rss&amp;emc=rss'),
(9, 'Michael Cohen, Ex-Trump Lawyer, Asks U.S. Judge for Leniency', 'A memo submitted by Mr. Cohen’s lawyers asked that he avoid prison time.', '2 December 2018 | 1:21 am', 'https://www.nytimes.com/2018/12/01/nyregion/michael-cohen-leniency.html?partner=rss&amp;emc=rss'),
(10, 'Under Trump, the Swamp Is Draining', 'A grifter president has inspired an elite housecleaning.', '2 December 2018 | 1:02 am', 'https://www.nytimes.com/2018/12/01/opinion/sunday/under-trump-the-swamp-is-draining.html?partner=rss&amp;emc=rss'),
(11, 'Robert Mueller Is No Match for Fox News', 'The evidence from the special counsel’s investigation is already damning, but it must contend with a haze of lies, confusion and “alternative facts.”', '2 December 2018 | 1:01 am', 'https://www.nytimes.com/2018/12/01/opinion/sunday/robert-mueller-trump-manafort-corsi-report.html?partner=rss&amp;emc=rss'),
(12, 'Houston Recalls Legacy of George Bush, Its Lone Star Yankee and Senior Booster', 'The former president was a natural fit with Houston, a city he revered and supported as much as it did him.', '2 December 2018 | 12:52 am', 'https://www.nytimes.com/2018/12/01/us/george-bush-houston.html?partner=rss&amp;emc=rss'),
(13, 'Can Trade Threats Be Turned to Truce? Trump Meets Xi and Merkel', 'The president neared the end of a visit to the Group of 20 summit meeting by sitting down with the leaders of two countries he has threatened with trade wars.', '2 December 2018 | 12:49 am', 'https://www.nytimes.com/2018/12/01/world/trump-xi-g20-merkel.html?partner=rss&amp;emc=rss'),
(14, 'Navy Admiral Scott Stearney Is Found Dead in Bahrain Home', 'The officer, Vice Adm. Scott A. Stearney, oversaw American naval operations in the Middle East and Southwest Asia. No foul play is suspected.', '2 December 2018 | 12:44 am', 'https://www.nytimes.com/2018/12/01/us/politics/navy-admiral-scott-stearney.html?partner=rss&amp;emc=rss'),
(15, 'News Analysis: Mueller Exposes the Culture of Lying That Surrounds Trump', 'As a businessman, candidate and president, Mr. Trump has demanded loyalty of advisers, including an embrace of his habitual boasts, misstatements and outright falsehoods.', '2 December 2018 | 12:43 am', 'https://www.nytimes.com/2018/12/01/us/politics/trump-mueller-lying.html?partner=rss&amp;emc=rss'),
(16, '‘I Love You, Too’: George Bush’s Final Days', 'The end for Mr. Bush was remarkably peaceful after a life that took him from the skies of the Pacific during World War II to the Oval Office at the end of the Cold War.', '2 December 2018 | 12:24 am', 'https://www.nytimes.com/2018/12/01/us/politics/george-hw-bush-last-days.html?partner=rss&amp;emc=rss'),
(17, 'News Analysis: It’s Now Donald Trump’s America. But George Bush’s Stamp Endures.', 'President George Bush helped build the domestic and global framework that President Trump is seeking to dismantle.', '2 December 2018 | 12:12 am', 'https://www.nytimes.com/2018/12/01/us/politics/trump-bush-praise-history.html?partner=rss&amp;emc=rss'),
(18, '‘Yellow Vest’ Protests Escalate in Violence, and France Scrambles to Respond', 'France’s yellow vest movement has broad support but is without a leader, making it hard to negotiate with the government.', '1 December 2018 | 11:43 pm', 'https://www.nytimes.com/2018/12/01/world/europe/france-yellow-vests-protests-macron.html?partner=rss&amp;emc=rss'),
(19, 'A Generation of Widows, Raising Children Who Will Be Forged by Loss', 'The war in Afghanistan is disproportionately killing young men, leaving behind women with limited options.', '1 December 2018 | 10:38 pm', 'https://www.nytimes.com/2018/12/01/world/asia/afghanistan-widows-war.html?partner=rss&amp;emc=rss'),
(20, 'George Bush, 41st President, Dies at 94', 'Mr. Bush, a Republican, was a transitional figure in the White House, where he served from 1989 to 1993. He was the last of the World War II generation to occupy the Oval Office.', '1 December 2018 | 8:52 pm', 'https://www.nytimes.com/2018/11/30/us/politics/george-hw-bush-dies.html?partner=rss&amp;emc=rss'),
(21, 'Forget Trinkets. These Gifts Change Lives.', 'Here’s my annual holiday guide for presents with meaning.', '1 December 2018 | 8:32 pm', 'https://www.nytimes.com/2018/12/01/opinion/sunday/kristof-holiday-gift-guide-2018.html?partner=rss&amp;emc=rss'),
(22, 'The $25 Nap Is Worth It', 'Hypercapitalism squeezes every last drop out of us.', '1 December 2018 | 8:30 pm', 'https://www.nytimes.com/2018/12/01/opinion/sunday/the-25-nap-is-worth-it.html?partner=rss&amp;emc=rss'),
(23, 'An Introvert’s Guide to Friendship', 'What my student taught me about one of life’s most important relationships.', '1 December 2018 | 8:30 pm', 'https://www.nytimes.com/2018/12/01/opinion/sunday/an-introverts-guide-to-friendship.html?partner=rss&amp;emc=rss'),
(24, 'Who Will Now Police the Police?', 'The Justice Department’s retreat from taking on abuses by local law enforcement will impede reform.', '1 December 2018 | 8:30 pm', 'https://www.nytimes.com/2018/12/01/sunday-review/trump-sessions-police-reform.html?partner=rss&amp;emc=rss'),
(25, 'Op-Ed Columnist: Curtains for the Clintons', 'Bill and Hill are not drawing like Mick and Keith on their North American arena tour. Go figure.', '1 December 2018 | 8:30 pm', 'https://www.nytimes.com/2018/12/01/opinion/sunday/hillary-bill-clinton-tour.html?partner=rss&amp;emc=rss'),
(26, 'George H.W. Bush’s Uncommon Grace', '“I have found happiness. I no longer pursue it, for it is mine.”', '1 December 2018 | 7:56 pm', 'https://www.nytimes.com/2018/12/01/opinion/george-hw-bush-kindler-gentler.html?partner=rss&amp;emc=rss'),
(27, 'Judge Allows ‘Harry Potter’ and ‘Evan Hansen’ in San Francisco', 'Regional productions of the Broadway hits are the subject of a legal dispute between competing theater operators.', '1 December 2018 | 7:17 pm', 'https://www.nytimes.com/2018/12/01/theater/judge-allows-harry-potter-and-evan-hansen-in-san-francisco.html?partner=rss&amp;emc=rss'),
(28, 'Cyril Pahinui, Who Carried a Hawaiian Guitar Legacy, Dies at 68', 'The son of a pioneer of slack-key guitar, he preserved and extended the tradition, carrying secrets of a family style to the world.', '1 December 2018 | 7:05 pm', 'https://www.nytimes.com/2018/12/01/obituaries/cyril-pahinui-dead.html?partner=rss&amp;emc=rss'),
(29, 'Global Growth Cools, Leaving Scars of ’08 Unhealed', 'Less than a year ago, every major economy was expanding at once. Now, the slowdown holds the potential to intensify the sense of grievance roiling many societies.', '1 December 2018 | 6:55 pm', 'https://www.nytimes.com/2018/12/01/business/global-economy-growth.html?partner=rss&amp;emc=rss'),
(30, 'Jon Meacham: George H.W. Bush and the Price of Politics', 'For every compromise he made to political expedience on the campaign trail, in office he ultimately did the right thing.', '1 December 2018 | 5:05 pm', 'https://www.nytimes.com/2018/12/01/opinion/george-hw-bush-death-jon-meacham.html?partner=rss&amp;emc=rss'),
(31, 'Athlete to Activist: How a Public Coming Out Shaped a Young Football Player’s Life', 'In a very public speech last year, Jake Bain, now a college athlete, became an accidental activist determined to change the national conversation about gay teenagers.', '1 December 2018 | 4:03 pm', 'https://www.nytimes.com/2018/12/01/us/jake-bain-gay-athlete-isu.html?partner=rss&amp;emc=rss'),
(32, 'The Look: What It Means to Dress in Lagos', 'In Nigeria’s largest city, boundary-breaking style pushes up against tradition and social conservatism.', '1 December 2018 | 12:00 pm', 'https://www.nytimes.com/2018/12/01/style/nigeria-lagos-fashion-experimental.html?partner=rss&amp;emc=rss'),
(33, '11 of Our Best Weekend Reads', 'The unsettling reality behind a Louisiana school famed for sending black kids to elite colleges. How Les Moonves tried to silence an accuser. The 10 best books of 2018. And more.', '1 December 2018 | 11:00 am', 'https://www.nytimes.com/2018/12/01/arts/11-of-our-best-weekend-reads.html?partner=rss&amp;emc=rss'),
(34, 'George H.W. Bush, Public Servant', 'He made his share of mistakes, but he worked for a safer, more democratic world.', '1 December 2018 | 7:15 am', 'https://www.nytimes.com/2018/12/01/opinion/george-hw-bush-dies.html?partner=rss&amp;emc=rss'),
(35, 'News Analysis: John Chau Wanted to Change Life on North Sentinel Island. Was He Wrong?', 'The death of a young American missionary on a tropical island at the hands of an indigenous group has left us to wonder: Are they better off with us or without us?', '1 December 2018 | 3:55 am', 'https://www.nytimes.com/2018/11/30/sunday-review/sentinelese-people-isolated-tribes.html?partner=rss&amp;emc=rss'),
(36, 'A China Hawk Gains Prominence as Trump Confronts Xi on Trade', 'Michael Pillsbury, the president’s top outside adviser on China, has the president’s ear ahead of negotiations with Xi Jinping.', '1 December 2018 | 2:58 am', 'https://www.nytimes.com/2018/11/30/us/politics/trump-china-trade-xi-michael-pillsbury.html?partner=rss&amp;emc=rss'),
(37, 'Pontius Pilate’s Name Is Found on 2,000-Year-Old Ring', 'The piece bearing the name of the Roman official thought to have ordered the killing of Jesus was found decades ago near Bethlehem, but the inscription was revealed only recently.', '30 November 2018 | 10:12 pm', 'https://www.nytimes.com/2018/11/30/world/middleeast/pontius-pilate-ring.html?partner=rss&amp;emc=rss'),
(38, 'Playlist: The Playlist: Mark Ronson and Miley Cyrus’s Melodrama, and 9 More New Songs', 'Hear tracks by Grimes, Jeff Tweedy, Meek Mill, Mary Halvorson and others.', '30 November 2018 | 7:19 pm', 'https://www.nytimes.com/2018/11/30/arts/music/playlist-miley-cyrus-mark-ronson-grimes-meek-mill-drake-cardi-b.html?partner=rss&amp;emc=rss'),
(39, 'An Awkward Moment for the Russian Art Market', 'Sales have slowed in the face of new political realities, including Western sanctions on Moscow. But wealthy buyers continue to create surprises.', '30 November 2018 | 6:00 pm', 'https://www.nytimes.com/2018/11/30/arts/russian-art-auctions.html?partner=rss&amp;emc=rss'),
(40, 'Finally, New York Has a Cocktail Library', 'Greg Boehm, who owns some 3,000 vintage books on mixology and drinking culture, has made his collection of rare recipes public. Here he discusses the evolution of cocktail culture in the city, which he describes as “a tricky place right now.”', '30 November 2018 | 5:13 pm', 'https://www.nytimes.com/2018/11/30/nyregion/nyregionspecial/finally-new-york-has-a-cocktail-library.html?partner=rss&amp;emc=rss'),
(41, 'Meet the Man Tasked With Expanding Uber’s Business in New York, With a Smile', 'Sarfraz Maredia is the public face of a kinder Uber. But New York’s cap on new vehicles could make it difficult for the app to keep growing.', '30 November 2018 | 11:00 am', 'https://www.nytimes.com/2018/11/30/nyregion/uber-new-york-sarfraz-maredia.html?partner=rss&amp;emc=rss'),
(42, 'In Jewelry, Tales of Love', 'Five people talk about pieces with special meaning, like a pendant carried at Auschwitz, a ring celebrating a new baby and a grandmother’s jadeite disc.', '30 November 2018 | 6:00 am', 'https://www.nytimes.com/2018/11/30/fashion/jewelry-personal-stories.html?partner=rss&amp;emc=rss'),
(43, 'Rough Drafts of Richard Feynman’s Ideas Head to Auction', 'The scribblings of a brilliant 20th-century physicist show that he did not get everything right on the first try, either.', '30 November 2018 | 2:27 am', 'https://www.nytimes.com/2018/11/29/science/richard-feynman-auction.html?partner=rss&amp;emc=rss'),
(44, 'Less Barf, More Bleach: How to Prevent Nasty Stomach Bugs This Winter', 'It can survive on surfaces for days, is tricky to kill, and is the source of most stomach bugs in America. It’s norovirus, and we’re headed into prime season. Here’s how to beat it.', '30 November 2018 | 1:44 am', 'https://www.nytimes.com/2018/11/29/smarter-living/norovirus-prevention-stomach-flu-winter.html?partner=rss&amp;emc=rss'),
(45, 'As Measles Surges, ‘Decades of Progress’ Are in Jeopardy', 'Health officials expressed alarm about a rebound in measles, once nearly eradicated in many regions. Reported cases surged by nearly a third worldwide.', '30 November 2018 | 1:31 am', 'https://www.nytimes.com/2018/11/29/world/europe/measles-increase.html?partner=rss&amp;emc=rss'),
(46, 'El Espace: 8 Books Reshaping Latinx Literature', 'This week in El Espace: tension at the Mexican border, why Latino Jews are moving to Spain and more.', '29 November 2018 | 9:49 pm', 'https://www.nytimes.com/2018/11/29/style/new-latinx-literature.html?partner=rss&amp;emc=rss'),
(47, 'The ‘Green Dimension’: Inside the Lives of California’s Marijuana Trimmers', 'Each autumn, young people flock to Northern California to find temporary work pruning cannabis bound for the state’s legal dispensaries, or black markets as far away as the East Coast.', '29 November 2018 | 11:00 am', 'https://www.nytimes.com/2018/11/29/us/marijuana-trimmers-emerald-triangle.html?partner=rss&amp;emc=rss'),
(48, 'Diagnosis: A Rash on Her Palms and the Bottoms of Her Feet Was the Clue That Turned the Case', 'Her doctors thought the young woman had a virus commonly seen in children. But when she only got worse, one doctor looked elsewhere.', '29 November 2018 | 11:00 am', 'https://www.nytimes.com/2018/11/29/magazine/a-rash-on-her-palms-and-the-bottoms-of-her-feet-was-the-clue-that-turned-the-case.html?partner=rss&amp;emc'),
(49, 'Virgos Are Queen of Teen Internet', 'Insights from Tumblr and others suggest that people really are obsessed with astrology (again) — and not just the memes.', '28 November 2018 | 9:12 pm', 'https://www.nytimes.com/2018/11/28/style/the-best-astrological-sign-of-all.html?partner=rss&amp;emc=rss'),
(50, 'Tech Fix: Make Your Friends and Family Less Irksome This Holiday Season', 'Getting a big group together this time of year can be a hassle. So spare everyone the endless phone notifications and email threads and try these methods instead.', '28 November 2018 | 6:20 pm', 'https://www.nytimes.com/2018/11/28/technology/personaltech/holiday-group-gathering-tech.html?partner=rss&amp;emc=rss'),
(51, 'The Secret to That Bright-Red Drink? Little Bugs', 'Campari stopped using a traditional dye made from insects, but makers of American aperitivos are taking it back up.', '26 November 2018 | 8:10 pm', 'https://www.nytimes.com/2018/11/26/dining/drinks/campari-color-aperitif-aperitivo.html?partner=rss&amp;emc=rss'),
(52, 'The Comforting Appeal of Herbs', 'In bouquets and on the plate, the workhorses of the kitchen reclaim their mystical powers.', '21 November 2018 | 1:04 pm', 'https://www.nytimes.com/2018/11/21/t-magazine/herbs-cooking-food-flowers.html?partner=rss&amp;emc=rss'),
(101, 'Trump Says He Plans to Withdraw From Nafta', 'The move is intended to force Democrats to accept a revised version despite concerns that it does not protect American workers.', '2 December 2018 | 4:39 pm', 'https://www.nytimes.com/2018/12/02/us/politics/trump-withdraw-nafta.html?partner=rss&amp;emc=rss'),
(102, 'George Bush, G-20, Russia Investigation: Your Weekend Briefing', 'Here’s what you need to know about the week’s top stories.', '2 December 2018 | 4:35 pm', 'https://www.nytimes.com/2018/12/02/briefing/george-bush-g-20-russia-investigation-your-weekend-briefing.html?partner=rss&amp;emc=rss'),
(103, 'In a Divided Bosnia, Segregated Schools Persist', 'Ethnic tensions are worsening in Bosnia two decades after a bloody, bitter war. The divide is most obvious inside the country’s segregated schools.', '2 December 2018 | 4:29 pm', 'https://www.nytimes.com/2018/12/01/world/europe/bosnia-schools-segregated-ethnic.html?partner=rss&amp;emc=rss'),
(104, 'Israeli Police Urge Bribery and Fraud Charges Against Netanyahu. Again.', 'For the third time this year, the prime minister is accused of corruption. But this time, his governing coalition is already teetering.', '2 December 2018 | 4:20 pm', 'https://www.nytimes.com/2018/12/02/world/middleeast/israel-netanyahu-bribery-charges.html?partner=rss&amp;emc=rss'),
(105, 'Can We Stop Suicides?', 'It’s been way too long since there was a new class of drugs to treat depression. Ketamine might be the solution.', '2 December 2018 | 3:51 pm', 'https://www.nytimes.com/2018/11/30/opinion/sunday/suicide-ketamine-depression.html?partner=rss&amp;emc=rss'),
(106, 'Do You Know What You’re Breathing?', 'As distrust in the government grows, personal pollution monitors are the hot gift this holiday season.', '2 December 2018 | 3:38 pm', 'https://www.nytimes.com/2018/11/30/style/air-quality-pollution-monitors.html?partner=rss&amp;emc=rss'),
(108, 'Macron Inspects Damage After ‘Yellow Vest’ Protests as France Weighs State of Emergency', 'A government spokesman said one option was imposing a state of emergency to prevent a recurrence of the worst civil unrest in more than a decade.', '2 December 2018 | 1:53 pm', 'https://www.nytimes.com/2018/12/01/world/europe/france-yellow-vests-protests-macron.html?partner=rss&amp;emc=rss'),
(109, 'Bush Found ‘Kindred Spirits’ at Texas A&amp;M, His Final Resting Place', 'In some ways, Texas A&amp;M seemed like an unlikely match for George Bush’s presidential library and final resting place. But he forged a deep connection with the university.', '2 December 2018 | 12:00 pm', 'https://www.nytimes.com/2018/12/02/us/bush-texas-am-university.html?partner=rss&amp;emc=rss'),
(110, 'China Dispatch: Epic Battles, Palaces and Concubines: A Chinese Studio’s Vast World of Fantasy', 'Hengdian World Studios, in a small town in central China, churns out scores of movies and television series from each period in the country’s history.', '2 December 2018 | 11:00 am', 'https://www.nytimes.com/2018/12/02/world/asia/china-films-movies-hengdian.html?partner=rss&amp;emc=rss'),
(111, 'Betting on a new way to make concrete that doesn’t pollute', 'A New Jersey firm is experimenting in a small town in England with a new formula that reduces the carbon dioxide emitted in the making of the building material.', '2 December 2018 | 11:00 am', 'https://www.nytimes.com/2018/12/02/climate/betting-on-a-new-way-to-make-concrete-that-doesnt-pollute.html?partner=rss&amp;emc=rss'),
(112, 'The 52 Places Traveler: The Best Advice During a Year on the Road (So Far)', 'Jada Yuan, our 52 Places Traveler, has spent the past eight months on the road, crisscrossing the planet, from Los Cabos, Mexico, to Tasmania and dozens of places in between. Here’s some advice she got along the way.', '2 December 2018 | 11:00 am', 'https://www.nytimes.com/2018/12/02/travel/52-places-advice-jada-yuan.html?partner=rss&amp;emc=rss'),
(113, 'On ‘S.N.L.’, Alec Baldwin and Ben Stiller Return to Play President Trump and Michael Cohen', 'The show also paid tribute to George Bush, who had been a fan of Dana Carvey’s well-honed impression of him.', '2 December 2018 | 9:20 am', 'https://www.nytimes.com/2018/12/02/arts/television/snl-alec-baldwin-george-bush-tribute.html?partner=rss&amp;emc=rss'),
(114, 'He’s Built an Empire, With Detained Migrant Children as the Bricks', 'The founder of Southwest Key made millions from housing migrant children. His nonprofit has stockpiled taxpayer dollars and possibly engaged in self-dealing with top executives.', '2 December 2018 | 9:00 am', 'https://www.nytimes.com/2018/12/02/us/southwest-key-migrant-children.html?partner=rss&amp;emc=rss'),
(115, 'Hate Mail and Conversion Advice: Interfaith Couple Caught in Israel’s Fault Lines', 'Lucy Aharish, a TV anchor, and her husband, Tsahi Halevi, an actor, deflect condemnation from politicians and angry strangers with humor and song.', '2 December 2018 | 7:54 am', 'https://www.nytimes.com/2018/11/30/world/middleeast/israel-lucy-aharish-tsahi-halevi.html?partner=rss&amp;emc=rss'),
(116, 'Alabama 35, Georgia 28: Alabama Wins SEC Title in an Eerily Familiar Rematch With Georgia', 'Reminiscent of last season’s national championship game, Alabama substituted for its quarterback and roared back to beat Georgia in Atlanta.', '2 December 2018 | 6:23 am', 'https://www.nytimes.com/2018/12/01/sports/alabama-georgia-sec-title-.html?partner=rss&amp;emc=rss'),
(118, 'U.S. and China Call Truce in Trade War', 'In a meeting with President Xi Jinping of China, President Trump agreed to hold off on a plan to raise tariffs on $200 billion worth of Chinese goods on Jan. 1.', '2 December 2018 | 4:46 am', 'https://www.nytimes.com/2018/12/01/world/trump-xi-g20-merkel.html?partner=rss&amp;emc=rss'),
(120, 'How George Bush Befriended Dana Carvey, the ‘S.N.L.’ Comedian Who Impersonated Him', 'In 1992, George Bush invited Dana Carvey to the White House for a surprise parody act. “I will miss my friend,” the comedian said on Saturday.', '2 December 2018 | 2:53 am', 'https://www.nytimes.com/2018/12/01/arts/george-bush-dana-carvey.html?partner=rss&amp;emc=rss'),
(127, '‘We’ve Lost Both of Them’: Maine Town Grapples With Loss of George and Barbara Bush', 'The Bushes were “woven into the fabric of the town,” one resident said. “To not have them here is a void.”', '1 December 2018 | 11:03 pm', 'https://www.nytimes.com/2018/12/01/us/george-bush-kennebunkport-maine.html?partner=rss&amp;emc=rss'),
(128, 'surfacing: Rwandan Women Paddle Into the Male World of Fishing', '“Now a woman can say: ‘I can build a house by myself. I can look after my family properly. And even if my husband dies, we can live a better life.’”', '1 December 2018 | 8:57 pm', 'https://www.nytimes.com/2018/11/30/world/rwandan-women-paddle-into-the-male-world-of-fishing.html?partner=rss&amp;emc=rss'),
(132, 'news analysis: Genetically Modified People Are Walking Among Us', 'And, so far, they’re just fine. America needs a sober debate about the pros and cons of Crispr instead of a paranoid ban on the technology.', '1 December 2018 | 8:30 pm', 'https://www.nytimes.com/2018/12/01/sunday-review/crispr-china-babies-gene-editing.html?partner=rss&amp;emc=rss'),
(133, 'It’s On Men to End Sexism in the Black Church', 'We are responsible for it. So we must end it.', '1 December 2018 | 8:30 pm', 'https://www.nytimes.com/2018/12/01/opinion/sunday/its-on-men-to-end-sexism-in-the-black-church.html?partner=rss&amp;emc=rss'),
(137, 'Trump Fund-Raiser Received Laundered Foreign Money, Prosecutors Say', 'Elliott Broidy was paid through shell companies to try to end an investigation into a Malaysian financier accused of money laundering, according to court filings made public on Friday.', '1 December 2018 | 6:30 pm', 'https://www.nytimes.com/2018/11/30/us/politics/broidy-trump-foreign-money.html?partner=rss&amp;emc=rss'),
(138, 'Trump Administration Peppers Inboxes With Plugs for Private Medicare Plans', 'The administration tells older Americans to “check out Medicare Advantage,” but denies favoring the private plans over the original government-run Medicare program.', '1 December 2018 | 5:29 pm', 'https://www.nytimes.com/2018/12/01/us/politics/trump-medicare-advantage-plans.html?partner=rss&amp;emc=rss'),
(139, 'Vows: Wedding in Paradise Is Lost, but ‘Angels’ Help After Camp Fire Devastation', '“For us, this is one day to forget the situation we’re in and celebrate. We have to remember there’s still joy in this world.”', '1 December 2018 | 1:42 pm', 'https://www.nytimes.com/2018/11/30/fashion/weddings/wedding-in-paradise-is-lost-but-angels-help-after-camp-fire-devastation.html?partner=rss&amp;emc=r'),
(140, 'And the Beat Goes On', '“Skating goes deep for us,” said a regular at the Sunday night party in Newark. Despite rink closures, the mostly black skate scene thrives underground.', '1 December 2018 | 12:00 pm', 'https://www.nytimes.com/2018/12/01/style/black-roller-skating-united-skates.html?partner=rss&amp;emc=rss'),
(144, 'Five Weeknight Dishes: What Are You Craving?', 'A spiced chickpea stew, shrimp scampi and deviled chicken thighs are exactly what we want to eat right now.', '30 November 2018 | 6:30 pm', 'https://www.nytimes.com/2018/11/30/dining/what-are-you-craving.html?partner=rss&amp;emc=rss'),
(145, 'Sleeping Bags and Solar Lamps: Pop-Up Shop Lets You Buy Holiday Gifts for Refugees', 'Choose Love, a New York store, sells necessities that will be sent to displaced people around the world.', '30 November 2018 | 5:16 pm', 'https://www.nytimes.com/2018/11/30/business/gifts-refugees-new-york.html?partner=rss&amp;emc=rss'),
(146, 'Sunday Routine: How Gregg Bishop, Small Business Expert, Spends His Sundays', 'The commissioner of the N.Y.C. Department of Small Business Services eats local, goes to his regular barber and attends church in an old auto repair shop.', '30 November 2018 | 11:00 am', 'https://www.nytimes.com/2018/11/30/nyregion/how-gregg-bishop-small-business-expert-spends-his-sundays.html?partner=rss&amp;emc=rss'),
(148, 'Trilobites: Meet the Spiders That Feed Milk to Their Young', 'The jumping arachnids’ secretions have four times as much protein as cow milk.', '29 November 2018 | 10:05 pm', 'https://www.nytimes.com/2018/11/29/science/spiders-milk.html?partner=rss&amp;emc=rss'),
(149, 'The Hunt: Finding That ‘Historic Feel’ in Jackson Heights', 'Tired of pouring money into rent, they traded the charmless modernity of a Brooklyn high-rise for the allure of a prewar co-op in Queens.', '29 November 2018 | 11:00 am', 'https://www.nytimes.com/2018/11/29/realestate/finding-that-historic-feel-in-jackson-heights.html?partner=rss&amp;emc=rss'),
(150, 'Hard Knock Life: What Are the Turtles Telling Me?', 'Nothing much makes sense these days, including the visits from my reptilian friends.', '29 November 2018 | 11:00 am', 'https://www.nytimes.com/2018/11/29/well/family/hard-knock-life-what-are-the-turtles-telling-me.html?partner=rss&amp;emc=rss'),
(151, 'Macron Returns to Turmoil, as France Weighs State of Emergency', 'After a summit meeting in Argentina, President Emmanuel Macron surveyed the destruction left after the “Yellow Vest” protests.', '2 December 2018 | 8:24 pm', 'https://www.nytimes.com/2018/12/02/world/europe/france-macron-yellow-vest-protests.html?partner=rss&amp;emc=rss'),
(152, 'The Patrician President and the Reporterette: a Screwball Story', 'My faithful correspondent, Poppy Bush, scribbling and typing notes through decades of history.', '2 December 2018 | 8:24 pm', 'https://www.nytimes.com/2018/12/02/opinion/george-hw-bush-maureen-dowd.html?partner=rss&amp;emc=rss'),
(154, 'College Football Playoff: Alabama vs. Oklahoma; Clemson vs. Notre Dame', 'For the second season in a row, the Big Ten was left out of the playoff despite being represented by a strong Ohio State team. Georgia was also left out.', '2 December 2018 | 7:53 pm', 'https://www.nytimes.com/2018/12/02/sports/college-football-playoff.html?partner=rss&amp;emc=rss'),
(155, 'Marketing Through Smart Speakers? Brands Don’t Need to Be Asked Twice', 'Google Home and Amazon Echo don’t carry paid advertising, so companies are trying more creative ways of using them to reach consumers.', '2 December 2018 | 7:36 pm', 'https://www.nytimes.com/2018/12/02/business/media/marketing-voice-speakers.html?partner=rss&amp;emc=rss'),
(157, 'Found: Lovebirds Who Lost an Engagement Ring Down a Times Square Grate', 'It was a fairy-tale ending for a couple from Britain who got engaged this weekend in New York, then dropped the too-big band down a grate.', '2 December 2018 | 7:30 pm', 'https://www.nytimes.com/2018/12/02/nyregion/engagement-ring-found-grate-nyc.html?partner=rss&amp;emc=rss'),
(159, '&lt;div&gt;Killings of Journalists Show the Bloody Fingerprints of Organized Crime&lt;/div&gt;', 'More than two dozen journalists worldwide have been killed by members of organized crime since the start of 2017, according to a report by Reporters Without Borders.', '2 December 2018 | 4:47 pm', 'https://www.nytimes.com/2018/12/02/world/journalists-killed-reporters-without-borders.html?partner=rss&amp;emc=rss'),
(161, 'Why Are Taxi Drivers in New York Killing Themselves?', 'Three taxi owners and five other professional drivers have died by suicide over the last year. It has prompted a flurry of legislation to improve working conditions for drivers.', '2 December 2018 | 4:00 pm', 'https://www.nytimes.com/2018/12/02/nyregion/taxi-drivers-suicide-nyc.html?partner=rss&amp;emc=rss'),
(167, '‘S.N.L.’ Has Alec Baldwin and Ben Stiller Play Trump and Michael Cohen', 'The show also paid tribute to George Bush, who had been a fan of Dana Carvey’s well-honed impression of him.', '2 December 2018 | 9:20 am', 'https://www.nytimes.com/2018/12/02/arts/television/snl-alec-baldwin-george-bush-tribute.html?partner=rss&amp;emc=rss'),
(171, 'Wellness ‘For the Culture’', '“I still eat rice and beans. I just use brown rice now,” said Annya Santana of Menos Mas, a wellness company that speaks to African-American and Latinx communities.', '2 December 2018 | 2:19 am', 'https://www.nytimes.com/2018/12/01/style/self-care/black-latina-wellness.html?partner=rss&amp;emc=rss'),
(187, 'Trump’s Book Club: A President Who Doesn’t Read Promotes the Books That Promote Him', 'President Trump, who is not a reader, has used Twitter to plug a slew of Trump-friendly books with titles like “Why We Fight” and “The Russia Hoax.”', '1 December 2018 | 5:58 am', 'https://www.nytimes.com/2018/11/30/us/politics/trump-books.html?partner=rss&amp;emc=rss'),
(189, 'A Close Race, a Mysterious Ballot and Control of Alaska’s House at Stake', 'A race for the Alaska House has resulted in a tie, prompting a recount. “I hope we don’t have a coin toss,” one of the candidates said.', '1 December 2018 | 12:31 am', 'https://www.nytimes.com/2018/11/30/us/alaska-house-race-recount-ballot.html?partner=rss&amp;emc=rss'),
(190, 'Harry Leslie Smith, ‘World’s Oldest Rebel,’ Is Dead at 95', 'He survived the Great Depression. He fought the Nazis in World War II. And at 87 he turned to writing and agitating, and acquired a loyal following.', '30 November 2018 | 11:20 pm', 'https://www.nytimes.com/2018/11/30/obituaries/harry-leslie-smith-dead.html?partner=rss&amp;emc=rss'),
(191, 'How Did He Catch That? A New N.F.L. Stat Can Confirm Your Amazement', 'Through tracking devices attached all over the field, and to the players, the league measures the difficulty of a passing play with a statistic called completion probability.', '30 November 2018 | 9:19 pm', 'https://www.nytimes.com/2018/11/30/sports/nfl-improbable-completion.html?partner=rss&amp;emc=rss'),
(199, 'Is Half of Oklahoma an Indian Reservation? The Supreme Court Sifts the Merits', 'The justices heard arguments over whether Creek Indians still exercise control over much of the eastern part of the state, and the practical consequences if they do.', '27 November 2018 | 10:40 pm', 'https://www.nytimes.com/2018/11/27/us/politics/oklahoma-indian-territory-supreme-court.html?partner=rss&amp;emc=rss');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_2` (`title`);
ALTER TABLE `feeds` ADD FULLTEXT KEY `title` (`title`,`description`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;