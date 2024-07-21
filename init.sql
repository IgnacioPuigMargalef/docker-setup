--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET CLIENT_ENCODING TO 'utf8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

-- BORRADO
-- DROP DATABASE username; 




--
-- Drop roles
--

-- DROP ROLE username; 


--
-- Roles
--

CREATE ROLE username;
ALTER ROLE username WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:11XmgcHuQAM6Y7m5gGSsXg==$kS/IPZbQ5S68FoA809thea/JPNq2sj70AcZhPlh+aTQ=:YT4yfG/tXgeo8+g76zkv0OqP5mnNOzAqlkZnymxsY4w=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: username
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO username;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: username
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: username
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: username
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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

DROP DATABASE postgres; 
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: username
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO username;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: username
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Admin; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Admin" (
    id bigint NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    token character varying
);


ALTER TABLE public."Admin" OWNER TO username;

--
-- Name: Admin_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Admin_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Admin_id_seq" OWNER TO username;

--
-- Name: Admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Admin_id_seq" OWNED BY public."Admin".id;


--
-- Name: Event; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Event" (
    id bigint NOT NULL,
    match_id bigint NOT NULL,
    team_id bigint NOT NULL,
    type_id bigint NOT NULL,
    minute timestamp without time zone NOT NULL
);


ALTER TABLE public."Event" OWNER TO username;

--
-- Name: Event_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_id_seq" OWNER TO username;

--
-- Name: Event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_id_seq" OWNED BY public."Event".id;


--
-- Name: Event_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_match_id_seq" OWNER TO username;

--
-- Name: Event_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_match_id_seq" OWNED BY public."Event".match_id;


--
-- Name: Event_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_team_id_seq" OWNER TO username;

--
-- Name: Event_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_team_id_seq" OWNED BY public."Event".team_id;


--
-- Name: Event_type; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Event_type" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    icon bytea NOT NULL
);


ALTER TABLE public."Event_type" OWNER TO username;

--
-- Name: Event_type_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_type_id_seq" OWNER TO username;

--
-- Name: Event_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_type_id_seq" OWNED BY public."Event_type".id;


--
-- Name: Event_type_id_seq1; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Event_type_id_seq1"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Event_type_id_seq1" OWNER TO username;

--
-- Name: Event_type_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Event_type_id_seq1" OWNED BY public."Event".type_id;


--
-- Name: Lineup; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Lineup" (
    match_id bigint NOT NULL,
    team_id bigint NOT NULL,
    formation character varying NOT NULL
);


ALTER TABLE public."Lineup" OWNER TO username;

--
-- Name: Lineup_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_match_id_seq" OWNER TO username;

--
-- Name: Lineup_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_match_id_seq" OWNED BY public."Lineup".match_id;


--
-- Name: Lineup_player; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Lineup_player" (
    team_id bigint NOT NULL,
    player_id bigint NOT NULL,
    match_id bigint NOT NULL,
    "position" character varying(5) NOT NULL
);


ALTER TABLE public."Lineup_player" OWNER TO username;

--
-- Name: Lineup_player_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_player_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_player_match_id_seq" OWNER TO username;

--
-- Name: Lineup_player_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_player_match_id_seq" OWNED BY public."Lineup_player".match_id;


--
-- Name: Lineup_player_player_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_player_player_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_player_player_id_seq" OWNER TO username;

--
-- Name: Lineup_player_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_player_player_id_seq" OWNED BY public."Lineup_player".player_id;


--
-- Name: Lineup_player_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_player_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_player_team_id_seq" OWNER TO username;

--
-- Name: Lineup_player_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_player_team_id_seq" OWNED BY public."Lineup_player".team_id;


--
-- Name: Lineup_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Lineup_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Lineup_team_id_seq" OWNER TO username;

--
-- Name: Lineup_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Lineup_team_id_seq" OWNED BY public."Lineup".team_id;


--
-- Name: Match; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Match" (
    id bigint NOT NULL,
    date date NOT NULL,
    local_team_id bigint NOT NULL,
    visitor_team_id bigint NOT NULL,
    hour time without time zone NOT NULL,
    is_finished boolean
);


ALTER TABLE public."Match" OWNER TO username;

--
-- Name: Match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Match_id_seq" OWNER TO username;

--
-- Name: Match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Match_id_seq" OWNED BY public."Match".id;


--
-- Name: Match_local_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Match_local_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Match_local_team_id_seq" OWNER TO username;

--
-- Name: Match_local_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Match_local_team_id_seq" OWNED BY public."Match".local_team_id;


--
-- Name: Match_visitor_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Match_visitor_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Match_visitor_team_id_seq" OWNER TO username;

--
-- Name: Match_visitor_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Match_visitor_team_id_seq" OWNED BY public."Match".visitor_team_id;


--
-- Name: Player; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Player" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    birth_date date NOT NULL,
    birth_country date NOT NULL,
    photo bytea NOT NULL,
    team_id bigint NOT NULL
);


ALTER TABLE public."Player" OWNER TO username;

--
-- Name: Player_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Player_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Player_id_seq" OWNER TO username;

--
-- Name: Player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Player_id_seq" OWNED BY public."Player".id;


--
-- Name: Player_team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Player_team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Player_team_id_seq" OWNER TO username;

--
-- Name: Player_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Player_team_id_seq" OWNED BY public."Player".team_id;


--
-- Name: Scorer; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Scorer" (
    match_id bigint NOT NULL,
    local_goal smallint DEFAULT 0 NOT NULL,
    visitor_goal smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public."Scorer" OWNER TO username;

--
-- Name: Scorer_match_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Scorer_match_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Scorer_match_id_seq" OWNER TO username;

--
-- Name: Scorer_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Scorer_match_id_seq" OWNED BY public."Scorer".match_id;


--
-- Name: Team; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE public."Team" (
    id bigint NOT NULL,
    name character varying NOT NULL,
    emblem bytea NOT NULL,
    city character varying,
    stadium character varying
);


ALTER TABLE public."Team" OWNER TO username;

--
-- Name: Team_id_seq; Type: SEQUENCE; Schema: public; Owner: username
--

CREATE SEQUENCE public."Team_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Team_id_seq" OWNER TO username;

--
-- Name: Team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: username
--

ALTER SEQUENCE public."Team_id_seq" OWNED BY public."Team".id;


--
-- Name: Admin id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Admin" ALTER COLUMN id SET DEFAULT nextval('public."Admin_id_seq"'::regclass);


--
-- Name: Event id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event" ALTER COLUMN id SET DEFAULT nextval('public."Event_id_seq"'::regclass);


--
-- Name: Event match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event" ALTER COLUMN match_id SET DEFAULT nextval('public."Event_match_id_seq"'::regclass);


--
-- Name: Event team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event" ALTER COLUMN team_id SET DEFAULT nextval('public."Event_team_id_seq"'::regclass);


--
-- Name: Event type_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event" ALTER COLUMN type_id SET DEFAULT nextval('public."Event_type_id_seq1"'::regclass);


--
-- Name: Event_type id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event_type" ALTER COLUMN id SET DEFAULT nextval('public."Event_type_id_seq"'::regclass);


--
-- Name: Lineup match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup" ALTER COLUMN match_id SET DEFAULT nextval('public."Lineup_match_id_seq"'::regclass);


--
-- Name: Lineup team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup" ALTER COLUMN team_id SET DEFAULT nextval('public."Lineup_team_id_seq"'::regclass);


--
-- Name: Lineup_player team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup_player" ALTER COLUMN team_id SET DEFAULT nextval('public."Lineup_player_team_id_seq"'::regclass);


--
-- Name: Lineup_player player_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup_player" ALTER COLUMN player_id SET DEFAULT nextval('public."Lineup_player_player_id_seq"'::regclass);


--
-- Name: Lineup_player match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup_player" ALTER COLUMN match_id SET DEFAULT nextval('public."Lineup_player_match_id_seq"'::regclass);


--
-- Name: Match id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Match" ALTER COLUMN id SET DEFAULT nextval('public."Match_id_seq"'::regclass);


--
-- Name: Match local_team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Match" ALTER COLUMN local_team_id SET DEFAULT nextval('public."Match_local_team_id_seq"'::regclass);


--
-- Name: Match visitor_team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Match" ALTER COLUMN visitor_team_id SET DEFAULT nextval('public."Match_visitor_team_id_seq"'::regclass);


--
-- Name: Player id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Player" ALTER COLUMN id SET DEFAULT nextval('public."Player_id_seq"'::regclass);


--
-- Name: Player team_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Player" ALTER COLUMN team_id SET DEFAULT nextval('public."Player_team_id_seq"'::regclass);


--
-- Name: Scorer match_id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Scorer" ALTER COLUMN match_id SET DEFAULT nextval('public."Scorer_match_id_seq"'::regclass);


--
-- Name: Team id; Type: DEFAULT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Team" ALTER COLUMN id SET DEFAULT nextval('public."Team_id_seq"'::regclass);


--
-- Data for Name: Admin; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Admin" (id, username, email, password, token) FROM stdin;
\.


--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Event" (id, match_id, team_id, type_id, minute) FROM stdin;
\.


--
-- Data for Name: Event_type; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Event_type" (id, name, icon) FROM stdin;
\.


--
-- Data for Name: Lineup; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Lineup" (match_id, team_id, formation) FROM stdin;
\.


--
-- Data for Name: Lineup_player; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Lineup_player" (team_id, player_id, match_id, "position") FROM stdin;
\.


--
-- Data for Name: Match; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Match" (id, date, local_team_id, visitor_team_id, hour, is_finished) FROM stdin;
\.


--
-- Data for Name: Player; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Player" (id, name, surname, birth_date, birth_country, photo, team_id) FROM stdin;
\.


--
-- Data for Name: Scorer; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Scorer" (match_id, local_goal, visitor_goal) FROM stdin;
\.


--
-- Data for Name: Team; Type: TABLE DATA; Schema: public; Owner: username
--

COPY public."Team" (id, name, emblem, city, stadium) FROM stdin;
\.


--
-- Name: Admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Admin_id_seq"', 1, false);


--
-- Name: Event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_id_seq"', 1, false);


--
-- Name: Event_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_match_id_seq"', 1, false);


--
-- Name: Event_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_team_id_seq"', 1, false);


--
-- Name: Event_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_type_id_seq"', 1, false);


--
-- Name: Event_type_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Event_type_id_seq1"', 1, false);


--
-- Name: Lineup_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_match_id_seq"', 1, false);


--
-- Name: Lineup_player_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_player_match_id_seq"', 1, false);


--
-- Name: Lineup_player_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_player_player_id_seq"', 1, false);


--
-- Name: Lineup_player_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_player_team_id_seq"', 1, false);


--
-- Name: Lineup_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Lineup_team_id_seq"', 1, false);


--
-- Name: Match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Match_id_seq"', 1, false);


--
-- Name: Match_local_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Match_local_team_id_seq"', 1, false);


--
-- Name: Match_visitor_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Match_visitor_team_id_seq"', 1, false);


--
-- Name: Player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Player_id_seq"', 1, false);


--
-- Name: Player_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Player_team_id_seq"', 1, false);


--
-- Name: Scorer_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Scorer_match_id_seq"', 1, false);


--
-- Name: Team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: username
--

SELECT pg_catalog.setval('public."Team_id_seq"', 1, false);


--
-- Name: Admin Admin_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Admin"
    ADD CONSTRAINT "Admin_pkey" PRIMARY KEY (id);


--
-- Name: Event Event_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "Event_pkey" PRIMARY KEY (id);


--
-- Name: Event_type Event_type_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event_type"
    ADD CONSTRAINT "Event_type_pkey" PRIMARY KEY (id);


--
-- Name: Lineup_player Lineup_player_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup_player"
    ADD CONSTRAINT "Lineup_player_pkey" PRIMARY KEY (player_id, match_id, team_id);


--
-- Name: Match Match_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Match"
    ADD CONSTRAINT "Match_pkey" PRIMARY KEY (id);


--
-- Name: Player Player_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Player"
    ADD CONSTRAINT "Player_pkey" PRIMARY KEY (id);


--
-- Name: Scorer Scorer_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Scorer"
    ADD CONSTRAINT "Scorer_pkey" PRIMARY KEY (match_id);


--
-- Name: Team Team_pkey; Type: CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Team"
    ADD CONSTRAINT "Team_pkey" PRIMARY KEY (id);


--
-- Name: Event FK_event_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "FK_event_id" FOREIGN KEY (type_id) REFERENCES public."Event_type"(id);


--
-- Name: Event FK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "FK_match_id" FOREIGN KEY (match_id) REFERENCES public."Match"(id);


--
-- Name: Scorer FK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Scorer"
    ADD CONSTRAINT "FK_match_id" FOREIGN KEY (match_id) REFERENCES public."Match"(id);


--
-- Name: Lineup_player FK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup_player"
    ADD CONSTRAINT "FK_match_id" FOREIGN KEY (match_id) REFERENCES public."Match"(id);


--
-- Name: Lineup_player FK_player_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup_player"
    ADD CONSTRAINT "FK_player_id" FOREIGN KEY (player_id) REFERENCES public."Player"(id);


--
-- Name: Event FK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "FK_team_id" FOREIGN KEY (team_id) REFERENCES public."Team"(id);


--
-- Name: Lineup_player FK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup_player"
    ADD CONSTRAINT "FK_team_id" FOREIGN KEY (team_id) REFERENCES public."Team"(id);


--
-- Name: Match PK_local_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Match"
    ADD CONSTRAINT "PK_local_team_id" FOREIGN KEY (local_team_id) REFERENCES public."Team"(id);


--
-- Name: Lineup PK_match_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup"
    ADD CONSTRAINT "PK_match_id" FOREIGN KEY (match_id) REFERENCES public."Match"(id);


--
-- Name: Player PK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Player"
    ADD CONSTRAINT "PK_team_id" FOREIGN KEY (team_id) REFERENCES public."Team"(id) NOT VALID;


--
-- Name: Lineup PK_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Lineup"
    ADD CONSTRAINT "PK_team_id" FOREIGN KEY (team_id) REFERENCES public."Team"(id);


--
-- Name: Match PK_visitor_team_id; Type: FK CONSTRAINT; Schema: public; Owner: username
--

ALTER TABLE ONLY public."Match"
    ADD CONSTRAINT "PK_visitor_team_id" FOREIGN KEY (visitor_team_id) REFERENCES public."Team"(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "username" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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

--
-- Name: username; Type: DATABASE; Schema: -; Owner: username
--

CREATE DATABASE username WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE username OWNER TO username;

\connect username

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

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

