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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (361, 2018, 'Final', 106, 107, 4, 2);
INSERT INTO public.games VALUES (362, 2018, 'Third Place', 108, 109, 2, 0);
INSERT INTO public.games VALUES (363, 2018, 'Semi-Final', 107, 109, 2, 1);
INSERT INTO public.games VALUES (364, 2018, 'Semi-Final', 106, 108, 1, 0);
INSERT INTO public.games VALUES (365, 2018, 'Quarter-Final', 107, 110, 3, 2);
INSERT INTO public.games VALUES (366, 2018, 'Quarter-Final', 109, 111, 2, 0);
INSERT INTO public.games VALUES (367, 2018, 'Quarter-Final', 108, 112, 2, 1);
INSERT INTO public.games VALUES (368, 2018, 'Quarter-Final', 106, 113, 2, 0);
INSERT INTO public.games VALUES (369, 2018, 'Eighth-Final', 109, 114, 2, 1);
INSERT INTO public.games VALUES (370, 2018, 'Eighth-Final', 111, 115, 1, 0);
INSERT INTO public.games VALUES (371, 2018, 'Eighth-Final', 108, 116, 3, 2);
INSERT INTO public.games VALUES (372, 2018, 'Eighth-Final', 112, 117, 2, 0);
INSERT INTO public.games VALUES (373, 2018, 'Eighth-Final', 107, 118, 2, 1);
INSERT INTO public.games VALUES (374, 2018, 'Eighth-Final', 110, 119, 2, 1);
INSERT INTO public.games VALUES (375, 2018, 'Eighth-Final', 113, 120, 2, 1);
INSERT INTO public.games VALUES (376, 2018, 'Eighth-Final', 106, 121, 4, 3);
INSERT INTO public.games VALUES (377, 2014, 'Final', 122, 121, 1, 0);
INSERT INTO public.games VALUES (378, 2014, 'Third Place', 123, 112, 3, 0);
INSERT INTO public.games VALUES (379, 2014, 'Semi-Final', 121, 123, 1, 0);
INSERT INTO public.games VALUES (380, 2014, 'Semi-Final', 122, 112, 7, 1);
INSERT INTO public.games VALUES (381, 2014, 'Quarter-Final', 123, 124, 1, 0);
INSERT INTO public.games VALUES (382, 2014, 'Quarter-Final', 121, 108, 1, 0);
INSERT INTO public.games VALUES (383, 2014, 'Quarter-Final', 112, 114, 2, 1);
INSERT INTO public.games VALUES (384, 2014, 'Quarter-Final', 122, 106, 1, 0);
INSERT INTO public.games VALUES (385, 2014, 'Eighth-Final', 112, 125, 2, 1);
INSERT INTO public.games VALUES (386, 2014, 'Eighth-Final', 114, 113, 2, 0);
INSERT INTO public.games VALUES (387, 2014, 'Eighth-Final', 106, 126, 2, 0);
INSERT INTO public.games VALUES (388, 2014, 'Eighth-Final', 122, 127, 2, 1);
INSERT INTO public.games VALUES (389, 2014, 'Eighth-Final', 123, 117, 2, 1);
INSERT INTO public.games VALUES (390, 2014, 'Eighth-Final', 124, 128, 2, 1);
INSERT INTO public.games VALUES (391, 2014, 'Eighth-Final', 121, 115, 1, 0);
INSERT INTO public.games VALUES (392, 2014, 'Eighth-Final', 108, 129, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (106, 'France');
INSERT INTO public.teams VALUES (107, 'Croatia');
INSERT INTO public.teams VALUES (108, 'Belgium');
INSERT INTO public.teams VALUES (109, 'England');
INSERT INTO public.teams VALUES (110, 'Russia');
INSERT INTO public.teams VALUES (111, 'Sweden');
INSERT INTO public.teams VALUES (112, 'Brazil');
INSERT INTO public.teams VALUES (113, 'Uruguay');
INSERT INTO public.teams VALUES (114, 'Colombia');
INSERT INTO public.teams VALUES (115, 'Switzerland');
INSERT INTO public.teams VALUES (116, 'Japan');
INSERT INTO public.teams VALUES (117, 'Mexico');
INSERT INTO public.teams VALUES (118, 'Denmark');
INSERT INTO public.teams VALUES (119, 'Spain');
INSERT INTO public.teams VALUES (120, 'Portugal');
INSERT INTO public.teams VALUES (121, 'Argentina');
INSERT INTO public.teams VALUES (122, 'Germany');
INSERT INTO public.teams VALUES (123, 'Netherlands');
INSERT INTO public.teams VALUES (124, 'Costa Rica');
INSERT INTO public.teams VALUES (125, 'Chile');
INSERT INTO public.teams VALUES (126, 'Nigeria');
INSERT INTO public.teams VALUES (127, 'Algeria');
INSERT INTO public.teams VALUES (128, 'Greece');
INSERT INTO public.teams VALUES (129, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 392, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 129, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

