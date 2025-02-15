--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1720624345469', 2, 103);
INSERT INTO public.users VALUES (1, 'user_1720624345470', 5, 86);
INSERT INTO public.users VALUES (19, 'user_1720625476197', 2, 792);
INSERT INTO public.users VALUES (4, 'user_1720624395483', 2, 620);
INSERT INTO public.users VALUES (18, 'user_1720625476198', 5, 572);
INSERT INTO public.users VALUES (3, 'user_1720624395484', 5, 264);
INSERT INTO public.users VALUES (6, 'user_1720624483177', 2, 282);
INSERT INTO public.users VALUES (21, 'user_1720625600604', 2, 274);
INSERT INTO public.users VALUES (5, 'user_1720624483178', 5, 58);
INSERT INTO public.users VALUES (20, 'user_1720625600605', 5, 266);
INSERT INTO public.users VALUES (8, 'user_1720624511803', 2, 13);
INSERT INTO public.users VALUES (7, 'user_1720624511804', 5, 125);
INSERT INTO public.users VALUES (23, 'user_1720625662030', 2, 225);
INSERT INTO public.users VALUES (11, 'user_1720624631488', 2, 621);
INSERT INTO public.users VALUES (10, 'user_1720624631489', 5, 71);
INSERT INTO public.users VALUES (22, 'user_1720625662031', 5, 223);
INSERT INTO public.users VALUES (9, 'Marko', 3, 9);
INSERT INTO public.users VALUES (13, 'user_1720624969777', 2, 620);
INSERT INTO public.users VALUES (12, 'user_1720624969778', 5, 270);
INSERT INTO public.users VALUES (25, 'user_1720625712333', 2, 11);
INSERT INTO public.users VALUES (15, 'user_1720625184895', 2, 662);
INSERT INTO public.users VALUES (14, 'user_1720625184896', 5, 89);
INSERT INTO public.users VALUES (24, 'user_1720625712334', 5, 44);
INSERT INTO public.users VALUES (17, 'user_1720625332189', 2, 434);
INSERT INTO public.users VALUES (16, 'user_1720625332190', 5, 248);
INSERT INTO public.users VALUES (27, 'user_1720625911217', 2, 550);
INSERT INTO public.users VALUES (26, 'user_1720625911218', 5, 5);
INSERT INTO public.users VALUES (29, 'user_1720625999855', 2, 611);
INSERT INTO public.users VALUES (28, 'user_1720625999856', 5, 14);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

