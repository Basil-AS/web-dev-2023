-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 20 2023 г., 04:54
-- Версия сервера: 8.0.35-0ubuntu0.20.04.1
-- Версия PHP: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `std_1850_exam`
--

-- --------------------------------------------------------

--
-- Структура таблицы `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('d4b6577eb621');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `year` int NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `volume` int NOT NULL,
  `rating_sum` int NOT NULL,
  `rating_num` int NOT NULL,
  `id_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `year`, `publisher`, `author`, `volume`, `rating_sum`, `rating_num`, `id_image`) VALUES
(93, 'Конституция Российской Федерации с изменениями от 06.10.2022 г.', '**Конституция Российской Федерации с изменениями от 06.10.2022 г.**', 2022, 'Питер', 'РФ', 64, 0, 0, 'ed7d2571-ddb5-4c9b-b507-f37f4044f34c'),
(94, 'Маленький принц', 'Подарочное издание знаменитой сказки для детей и взрослых.\nРисунки автора.\nПереводчик: Нора Галь.\nДля среднего школьного возраста.«Маленький принц»-- аллегорическая повесть, мудрая и трогательная, в которой говорится о самом важном: о дружбе и любви, о долге и верности.  Самое известное произведение Антуана де Сент-Экзюпери. Рисунки в книге выполнены самим автором и не менее знамениты, чем сама книга. Они уникальны и понятны каждому. Эта книга для всех и на все времена. «… Все взрослые сначала были детьми, только мало кто из них об этом помнит.» (Антуан де Сент-Экзюпери, из посвящения к книге)', 1943, 'Эксмодетство', 'Антуан Сент-Экзюпери', 104, 0, 0, '785420f8-9bcc-4454-93de-c2783d2f3ddd'),
(95, 'Щелкунчик и мышиный король', 'Сияющая ёлка, игрушки, сладости, детский восторг и ожидание чуда - в этой книге атмосфера праздника, волшебства и тайны захватывает читателя с первой же страницы.\nСказка Гофмана издана в классическом несокращенном переводе Ирины Татариновой, а непонятные маленькому читателю слова объясняются в комментариях и подписях к иллюстрациям.\nТрогательная и отважная Мари, озорник Фриц, отвратительный мышиный король, благородный и смелый Щелкунчик оживают в новых, затейливых, подробных и ярких, иллюстрациях Петра Любаева.\nДля детей 8-10 лет.', 1816, 'Лабиринт', 'Гофман Эрнст Теодор Амадей', 105, 0, 0, '10f64fa0-8367-4a21-9012-4f0bc25bb449'),
(96, 'Приключения Шерлока Холмса', 'Интерактивное комментированное издание рассказов о самом известном детективе всех времен и народов. Эта книга - настоящее сокровище для любителей детективного жанра, викторианской Англии и истории в деталях!\nПять рассказов Артура Конан-Дойла о Шерлоке Холмсе и докторе Уотсоне снабжены подробным историко-бытовым комментарием. Читателя ждет погружение в лондонскую жизнь конца XIX века: в комментариях - история и география Британии, достижения медицины и традиции образования, мода и транспорт рубежа веков, увлекательная история криминалистики: известные преступники и прославленные сыщики, отпечатки пальцев и следы обуви, грим и маскировка, яды и оружие.\nВ этой книге поздневикторианская Англия предстает в современных иллюстрациях Олега Пархаева и классических - Сидни Пейджета, а также подлинных рисунках и фотографиях, картах, карикатурах, рекламных плакатах и газетных вырезках.\nМножество дополнительных материалов, объемные конструкции, клапаны, интерактивные иллюстрации.', 1892, 'Лабиринт', 'Артур Дойл', 160, 0, 0, '64be6c27-fcc4-4b71-b6c4-7b0ac4b6a153'),
(97, 'Анна Каренина. В 2-х томах', 'По известности зачина роман Льва Толстого \"Анна Каренина\" (первое книжное издание - 1878 год) сравним разве что с \"Мой дядя самых честных правил…\" Впрочем, именно Пушкин и послужил Льву Николаевичу примером: \"Вот как нам писать. Пушкин приступает прямо к делу\". И Толстой приступает к \"Анне Карениной\" так же прямо: \"Все счастливые семьи похожи друг на друга, каждая несчастливая семья несчастлива по-своему. Все смешалось в доме Облонских…\" Пересказывать далее сюжет одного из самых популярных во всем мире романов - неблагодарная затея. Потому что трагический финал этого произведения еще более известен, чем его зачин. Толстой назвал \"Анну Каренину\" \"романом из современной жизни\", романом \"живым и горячим\". О том, насколько он по сей день горяч, говорят хотя бы тридцать экранизаций \"Анны Карениной\". И интересная закономерность: после каждой удачной экранизации следует череда новых переводов толстовского шедевра на многие языки. Людям всего цивилизованного мира хочется максимально точно узнать, как было дело. Нам повезло: мы можем прочесть великую книгу сразу по-русски.\n\nСопроводительная статья Константина Поливанова\n\nКонстантин Михайлович Поливанов (род. 1959) - филолог, Ph.D, преподает в Национальном исследовательском университете \"Высшая школа экономики\" (Москва). Автор книг \"\"Близнец в тучах\" Бориса Пастернака: опыт комментария\" (в соавторстве с Михаилом Гаспаровым), \"Борис Пастернак и современники\", \"\"Доктор Живаго\" как исторический роман\" и учебника \"Русская литература ХХ века\" (в соавторстве с Евгенией Абелюк).', 1878, 'Время', 'Лев Толстой', 1124, 0, 0, 'b2839187-1d88-49ab-a091-5f0a5061e4ac'),
(98, 'Пикник на обочине', 'Пожалуй, в истории современной мировой фантастики найдется не так много произведений, которые оставались бы популярными столь долгое время. Повесть послужила основой культового фильма Тарковского «Сталкер»; через три десятилетия появились не менее культовая компьютерная игра с тем же названием и целая серия повестей и романов, написанных с использованием мира «Пикника»', 1972, 'Neoclassic', 'Аркадий и Борис Стругацкие', 200, 0, 0, 'b402784a-6cf9-46a5-a151-b881b785f027');

-- --------------------------------------------------------

--
-- Структура таблицы `book_genre`
--

CREATE TABLE `book_genre` (
  `book_id` int NOT NULL,
  `genre_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `book_genre`
--

INSERT INTO `book_genre` (`book_id`, `genre_id`) VALUES
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 3),
(94, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(4, 'Драма'),
(5, 'Комедия'),
(1, 'Повесть'),
(2, 'Роман-эпопея'),
(3, 'Фантастика');

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `md5_hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `file_name`, `mime_type`, `md5_hash`) VALUES
('078ba809-3526-4806-9630-ad45c3cf085f', '1.jpg', 'image/jpeg', '08e66723793785952b50f5f0f349f918'),
('089a5c6f-e93c-430d-8ce4-e8a70785e7b0', 'ktulkhu-andree-wallin-cthulhu-behemoth-monster-tentacles-sig.jpg', 'image/jpeg', 'd90797a6e434cf27ad3f51cee5509c71'),
('10f64fa0-8367-4a21-9012-4f0bc25bb449', 'cover.webp', 'image/webp', 'be56bb4ea777b72fb899de861bf923ef'),
('116eda3a-24fc-41ab-ba1e-5f4adf29e9c8', '-_-RSA_.drawio_8.png', 'image/png', 'eeb97a88fd0cbe6cad11f36102cd2550'),
('179f2183-1884-4882-982c-b59acbe88c5a', 'jpg', 'image/jpeg', '1d22bca724195feeea9e426d7cbfed1e'),
('195cddbd-c5d3-4b71-9154-5ad093596240', '4d048348eb067e7ca9f0.jpg', 'image/jpeg', '4a0424eaaa385226857f36024305b0b2'),
('1ef55dd9-b4b8-4e0c-94f4-aa3012c3d1f8', '1.jpeg', 'image/jpeg', 'c120a3d6cfbf2bb6775ef9ae34469a6b'),
('2aee3147-0f9f-4a9b-91ac-b4a04650be29', 'hudozhnik_volny_krasochnyj_129158_1920x1080.jpg', 'image/jpeg', '881b90e40f871098610bd77f3e80cd8a'),
('2cea0d0d-fc63-4df7-b44e-2a5b787d73e2', 'png', 'image/png', '0a1befd76bb172b8d758b275d13d05c1'),
('3767ab61-6b6a-4371-b2cc-2d89827024ab', 'skripichnyj_kliuch_noty_raznotsvetnyj_121263_1920x1080.jpg', 'image/jpeg', '9641f1ff060ce227ed2ca069b9e9da53'),
('41d0dbe2-8c40-46fa-a954-14051f21ffd4', 'jpg', 'image/jpeg', '8bf2db43ad169349bbf62af49424f35f'),
('436af330-e48a-4bb0-bc64-930820f17ea0', '2.jpg', 'image/jpeg', 'a85f8f2b270254609fd1c88f5ed32e37'),
('4afe2329-8853-441d-8c35-1eb81fdf4a6c', 'Ying-Yang-Backgrounds-030.jpg', 'image/jpeg', '80fc6ec0d09027e29db0005b00c23c84'),
('4f63db69-d0d9-4833-9274-fd2e89d0bc1b', '953112-new-miami-heat-wallpaper-2018-hd-1920x1080.jpg', 'image/jpeg', '49754ea97c6aca79f5e9e23d30ff479f'),
('57c53261-6a41-48c2-a87d-a797af32784e', '461.jpg', 'image/jpeg', '7a634654127d8369ea31ad61c14f6c37'),
('6322f2fe-cd0d-4e0f-ba8f-c714a60bf225', 'wallpaperflare.com_wallpaper_13.jpg', 'image/jpeg', '8e240a959bd83e10717bc88c7245f7af'),
('64be6c27-fcc4-4b71-b6c4-7b0ac4b6a153', 'cover.webp', 'image/webp', 'db3b307847e3df717d9b2bf53e902d78'),
('6af2d3f8-3815-46d4-bc59-77bc3501ec5b', 'jpg', 'image/jpeg', '91c265e2f8faffc060b63d18d13a2833'),
('785420f8-9bcc-4454-93de-c2783d2f3ddd', 'cover.webp', 'image/webp', '8f55f60c133085ab3041b49b99bf76f2'),
('7c468c77-b262-4230-b617-a1749379da14', '200x200.png', 'image/png', '517c14698a945529547b168f312626ee'),
('9a8d459f-d446-465a-abe2-494fd3a21e26', 'png', 'image/png', 'b171f73681c72450cbee5e4942843cd7'),
('ab18405c-756e-43a2-93f1-ec53008ff65d', 'chernyy_formuly_doska_79691_1920x1080.jpg', 'image/jpeg', 'a16feec694fbe3e861c99736ea3056c8'),
('acf2b772-1973-42fc-ae12-1c495a09c226', '1.jpg', 'image/jpeg', '982a13bb31569cc287a33da903f4949c'),
('b2839187-1d88-49ab-a091-5f0a5061e4ac', 'cover.webp', 'image/webp', '930795d4a6890c78c7a1a864a6a0e2c7'),
('b402784a-6cf9-46a5-a151-b881b785f027', '2467382_1.jpg', 'image/jpeg', '08cec89ec22a265fdc70ff13905e71d3'),
('d65cbe0a-9da0-47ec-b43f-73425ccc2444', 'c9IqFEuN7gw.jpg', 'image/jpeg', '0a9175d33a2af4868bd32343dc52cdc1'),
('d9b33d04-f410-40f7-9417-4fa5a71fe16b', 'jpg', 'image/jpeg', '626e6f9891f5bf9426e51724011e23b4'),
('dc7a2696-ee9b-4bb2-9d83-8e4198f0e99b', 'wallpaperflare.com_wallpaper_13.jpg', 'image/jpeg', '6a8d2f6649b3916501db439bc3da4a4e'),
('ec4ed4f4-54a8-4055-9275-39a2c6f2f243', 'wallpaperflare.com_wallpaper2.jpg', 'image/jpeg', 'bb5d84dc2a021042261646cadd0f1498'),
('ed7d2571-ddb5-4c9b-b507-f37f4044f34c', 'cover.webp', 'image/webp', '81acb9bb908e6ffc8e58cccffbc4dc88'),
('f4514189-d855-4d55-9cf5-d30635506803', '8RUQMwo-Q2w.jpg', 'image/jpeg', 'f0e46229d15cea14f02f04e92413ba32'),
('f647e29a-9b4d-44a6-8c55-37b39f724923', '4.png', 'image/png', '9681c75344a03228f5a1aea84b09f57b');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `rating` int NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_description`) VALUES
(1, 'Администратор', 'Суперпользователь, имеет полный доступ к системе, в том числе к созданию и удалению книг.'),
(2, 'Модератор', 'Может редактировать данные книг.'),
(3, 'Пользователь', 'Может оставлять рецензии.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `login` varchar(100) NOT NULL,
  `password_hash` varchar(200) NOT NULL,
  `role_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `last_name`, `first_name`, `middle_name`, `login`, `password_hash`, `role_id`) VALUES
(1, 'Скрыпник', 'Василий', 'Александрович', 'admin', 'pbkdf2:sha256:260000$XVnBxOdnlwkzgHXk$843b28caa527012c18035abfc8c2ee76963f802e2d2e55b4ad617311724dcc14', 1),
(2, 'Иванов', 'Иван', 'Иванович', 'user1', 'pbkdf2:sha256:260000$UGLJDnrR6M9J6IaF$4bd75715d9783260e5436c099535c69fba56ca6549c32f48a3a0197f2b3a8519', 2),
(3, 'Александров', 'Александр', 'Александрович', 'user2', 'pbkdf2:sha256:260000$33v0hJ1oOAH87HVa$96fe6068134eac380be93b7a4dcfb1ff8e41cb8664eb5b2960ec58e765f4b198', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_image` (`id_image`);

--
-- Индексы таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD PRIMARY KEY (`book_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `md5_hash` (`md5_hash`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
