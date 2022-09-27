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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    num_sys_solar integer,
    num_black_hole integer,
    active boolean NOT NULL,
    value integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    color character varying(30),
    weight integer,
    luminosity integer,
    value integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    last_name character varying(255) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.person OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    diameter_km numeric(5,0),
    descripcion text NOT NULL,
    have_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    active boolean NOT NULL,
    galaxy_id integer,
    luminosity integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', 100, 10, true, 5);
INSERT INTO public.galaxy VALUES (2, 'via pepe', 111, 11, true, 5);
INSERT INTO public.galaxy VALUES (3, 'via paco', 121, 12, true, 5);
INSERT INTO public.galaxy VALUES (4, 'via perico', 131, 13, true, 5);
INSERT INTO public.galaxy VALUES (5, 'via pepito', 1431, 173, true, 5);
INSERT INTO public.galaxy VALUES (6, 'via pejaroto', 15431, 173, true, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, NULL, NULL, 5, 5);
INSERT INTO public.moon VALUES (21, 'moo21', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (31, 'moo321', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (51, 'moo521', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (61, 'mo5o521', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (81, 'mo55521', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (71, 'mo5o5521', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (91, 'mo5555521', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'mo5555521', 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'mo5555521', 2, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (17, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'mo5555521', 3, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (41, 'moo4321', 1, NULL, NULL, NULL, 5);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.person VALUES (15, 'jesus', 'jesusAM');
INSERT INTO public.person VALUES (25, 'suso', 'susowrc');
INSERT INTO public.person VALUES (35, 'suswrco', 'susowrc');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', 12742, 'wonderful', true, 1);
INSERT INTO public.planet VALUES (2, 'mercurio', 16488, 'wonderful', false, 1);
INSERT INTO public.planet VALUES (3, 'venus', 20688, 'full', false, 1);
INSERT INTO public.planet VALUES (4, 'marte', 2588, 'full', false, 1);
INSERT INTO public.planet VALUES (5, 'ceres', 25588, 'full', false, 1);
INSERT INTO public.planet VALUES (6, 'jupiter', 25588, 'full', false, 1);
INSERT INTO public.planet VALUES (7, 'saturno', 25588, 'full', false, 1);
INSERT INTO public.planet VALUES (8, 'urano', 25588, 'full', false, 1);
INSERT INTO public.planet VALUES (9, 'neptuno', 25588, 'full', false, 1);
INSERT INTO public.planet VALUES (10, 'pluton', 25588, 'full', false, 1);
INSERT INTO public.planet VALUES (11, 'caronte', 25588, 'full', false, 1);
INSERT INTO public.planet VALUES (12, 'ub313', 25588, 'full', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', true, 1, NULL);
INSERT INTO public.star VALUES (2, 'star_forte', true, 2, NULL);
INSERT INTO public.star VALUES (3, 'star_forte3', false, 3, NULL);
INSERT INTO public.star VALUES (4, 'star_forte43', false, 4, NULL);
INSERT INTO public.star VALUES (5, 'star_forte43', true, 4, NULL);
INSERT INTO public.star VALUES (6, 'star_fort543', true, 4, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constraint UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_constraint UNIQUE (moon_id);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: person name_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT name_constraint UNIQUE (person_id);


--
-- Name: person pk_person; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT pk_person PRIMARY KEY (person_id);


--
-- Name: planet planet_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constraint UNIQUE (planet_id);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constraint UNIQUE (star_id);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

