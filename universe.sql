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
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    galaxy_types text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth integer,
    planet_id integer,
    descrition text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    color text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_detail; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_detail (
    planet_detail_id integer NOT NULL,
    has_life boolean NOT NULL,
    planet_types text,
    population integer,
    planet_id integer,
    name character varying
);


ALTER TABLE public.planet_detail OWNER TO freecodecamp;

--
-- Name: planet_detail_planet_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_detail_planet_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_detail_planet_detail_id_seq OWNER TO freecodecamp;

--
-- Name: planet_detail_planet_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_detail_planet_detail_id_seq OWNED BY public.planet_detail.planet_detail_id;


--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    description text,
    star_type numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_detail planet_detail_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_detail ALTER COLUMN planet_detail_id SET DEFAULT nextval('public.planet_detail_planet_detail_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Andromeda galaxy', true, 'large');
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'galaxy', false, 'corvus');
INSERT INTO public.galaxy VALUES (3, 'backward', 'galaxy', true, 'centaurus');
INSERT INTO public.galaxy VALUES (4, 'black eye galaxy', 'galaxy', true, 'coma berenices');
INSERT INTO public.galaxy VALUES (5, 'blode', 'galaxy', true, 'ursa major');
INSERT INTO public.galaxy VALUES (6, 'butter fly', 'galaxy', true, 'virgo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 100, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 100, 2, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 100, 3, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 100, 4, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 100, 5, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 100, 6, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 100, 7, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 100, 8, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 100, 9, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 100, 10, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 100, 11, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 100, 12, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 100, 1, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 200, 2, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 200, 3, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 200, 4, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 200, 5, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 200, 6, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 200, 7, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 200, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 4, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Ceres', 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', 4, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', 5, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Makemake', 6, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Makemake', 6, NULL, NULL);


--
-- Data for Name: planet_detail; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_detail VALUES (1, false, 'cirlce', 1, 1, NULL);
INSERT INTO public.planet_detail VALUES (2, false, 'cirlce', 1, 2, NULL);
INSERT INTO public.planet_detail VALUES (3, false, 'cirlce3', 1, 3, NULL);
INSERT INTO public.planet_detail VALUES (4, false, 'cirlce4', 1, 4, NULL);
INSERT INTO public.planet_detail VALUES (5, false, 'cirlce5', 1, 5, NULL);
INSERT INTO public.planet_detail VALUES (6, false, 'cirlce6', 1, 6, NULL);
INSERT INTO public.planet_detail VALUES (7, false, 'cirlce7', 1, 7, NULL);
INSERT INTO public.planet_detail VALUES (8, false, 'cirlce8', 1, 8, NULL);
INSERT INTO public.planet_detail VALUES (9, false, 'cirlce9', 1, 9, NULL);
INSERT INTO public.planet_detail VALUES (10, false, 'cirlce10', 1, 10, NULL);
INSERT INTO public.planet_detail VALUES (11, false, 'cirlce11', 1, 11, NULL);
INSERT INTO public.planet_detail VALUES (12, false, 'cirlce12', 1, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lynx', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'eridanus', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'cassiopeia', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Scorpius', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Crux', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Cancer', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_detail_planet_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_detail_planet_detail_id_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet_detail planet_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_detail
    ADD CONSTRAINT planet_detail_pkey PRIMARY KEY (planet_detail_id);


--
-- Name: planet_detail planet_detail_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_detail
    ADD CONSTRAINT planet_detail_unique UNIQUE (planet_detail_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_detail planet_detail_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_detail
    ADD CONSTRAINT planet_detail_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

