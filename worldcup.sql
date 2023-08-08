--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (45, 2018, 'Final', 103, 104, 4, 2);
INSERT INTO public.games VALUES (46, 2018, 'Third Place', 105, 106, 2, 0);
INSERT INTO public.games VALUES (47, 2018, 'Semi-Final', 104, 106, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Semi-Final', 103, 105, 1, 0);
INSERT INTO public.games VALUES (49, 2018, 'Quarter-Final', 104, 107, 3, 2);
INSERT INTO public.games VALUES (50, 2018, 'Quarter-Final', 106, 108, 2, 0);
INSERT INTO public.games VALUES (51, 2018, 'Quarter-Final', 105, 109, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Quarter-Final', 103, 110, 2, 0);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 106, 111, 2, 1);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 108, 112, 1, 0);
INSERT INTO public.games VALUES (55, 2018, 'Eighth-Final', 105, 113, 3, 2);
INSERT INTO public.games VALUES (56, 2018, 'Eighth-Final', 109, 114, 2, 0);
INSERT INTO public.games VALUES (57, 2018, 'Eighth-Final', 104, 115, 2, 1);
INSERT INTO public.games VALUES (58, 2018, 'Eighth-Final', 107, 116, 2, 1);
INSERT INTO public.games VALUES (59, 2018, 'Eighth-Final', 110, 117, 2, 1);
INSERT INTO public.games VALUES (60, 2018, 'Eighth-Final', 103, 118, 4, 3);
INSERT INTO public.games VALUES (61, 2014, 'Final', 119, 118, 1, 0);
INSERT INTO public.games VALUES (62, 2014, 'Third Place', 120, 109, 3, 0);
INSERT INTO public.games VALUES (63, 2014, 'Semi-Final', 118, 120, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Semi-Final', 119, 109, 7, 1);
INSERT INTO public.games VALUES (65, 2014, 'Quarter-Final', 120, 121, 1, 0);
INSERT INTO public.games VALUES (66, 2014, 'Quarter-Final', 118, 105, 1, 0);
INSERT INTO public.games VALUES (67, 2014, 'Quarter-Final', 109, 111, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Quarter-Final', 119, 103, 1, 0);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 109, 122, 2, 1);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 111, 110, 2, 0);
INSERT INTO public.games VALUES (71, 2014, 'Eighth-Final', 103, 123, 2, 0);
INSERT INTO public.games VALUES (72, 2014, 'Eighth-Final', 119, 124, 2, 1);
INSERT INTO public.games VALUES (73, 2014, 'Eighth-Final', 120, 114, 2, 1);
INSERT INTO public.games VALUES (74, 2014, 'Eighth-Final', 121, 125, 2, 1);
INSERT INTO public.games VALUES (75, 2014, 'Eighth-Final', 118, 112, 1, 0);
INSERT INTO public.games VALUES (76, 2014, 'Eighth-Final', 105, 126, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (103, 'France');
INSERT INTO public.teams VALUES (104, 'Croatia');
INSERT INTO public.teams VALUES (105, 'Belgium');
INSERT INTO public.teams VALUES (106, 'England');
INSERT INTO public.teams VALUES (107, 'Russia');
INSERT INTO public.teams VALUES (108, 'Sweden');
INSERT INTO public.teams VALUES (109, 'Brazil');
INSERT INTO public.teams VALUES (110, 'Uruguay');
INSERT INTO public.teams VALUES (111, 'Colombia');
INSERT INTO public.teams VALUES (112, 'Switzerland');
INSERT INTO public.teams VALUES (113, 'Japan');
INSERT INTO public.teams VALUES (114, 'Mexico');
INSERT INTO public.teams VALUES (115, 'Denmark');
INSERT INTO public.teams VALUES (116, 'Spain');
INSERT INTO public.teams VALUES (117, 'Portugal');
INSERT INTO public.teams VALUES (118, 'Argentina');
INSERT INTO public.teams VALUES (119, 'Germany');
INSERT INTO public.teams VALUES (120, 'Netherlands');
INSERT INTO public.teams VALUES (121, 'Costa Rica');
INSERT INTO public.teams VALUES (122, 'Chile');
INSERT INTO public.teams VALUES (123, 'Nigeria');
INSERT INTO public.teams VALUES (124, 'Algeria');
INSERT INTO public.teams VALUES (125, 'Greece');
INSERT INTO public.teams VALUES (126, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 76, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 126, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

