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
-- Name: cratos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cratos (
    cratos_id integer NOT NULL,
    name character varying(30) NOT NULL,
    ages integer
);


ALTER TABLE public.cratos OWNER TO freecodecamp;

--
-- Name: cratos_cratos_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cratos_cratos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cratos_cratos_id_seq OWNER TO freecodecamp;

--
-- Name: cratos_cratos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cratos_cratos_id_seq OWNED BY public.cratos.cratos_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    planet_id integer
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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    size numeric,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: cratos cratos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cratos ALTER COLUMN cratos_id SET DEFAULT nextval('public.cratos_cratos_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cratos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cratos VALUES (1, '1', NULL);
INSERT INTO public.cratos VALUES (2, '2', NULL);
INSERT INTO public.cratos VALUES (3, '3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk Way', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Ocirus', NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Astromino', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Gentrosma', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Andromina', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Orochi', NULL, NULL, NULL, NULL, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mk Way', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Astrmin', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Gentoma', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Andomin', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (7, 'earth', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Jupter', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (11, 'Pluto', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (16, 'North', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (17, 'South', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (18, 'West', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (19, 'East', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Western Hemisphere', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Oius', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.moon VALUES (6, 'Ooch', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.moon VALUES (9, 'Uranus', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.moon VALUES (10, 'Neptune', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Mars', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Saturn', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Moon', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.moon VALUES (15, 'Sun', NULL, NULL, NULL, NULL, false, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Oius', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Ooch', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Uranus', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Neptune', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Mars', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Saturn', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (1, 'Mk Way', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Astrmin', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Gentoma', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Andomin', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (7, 'earth', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Jupter', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', NULL, NULL, NULL, NULL, true, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mik Way', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (3, 'Astromin', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (4, 'Gentroma', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (5, 'Andromin', NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.star VALUES (2, 'Oirus', NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.star VALUES (6, 'Oroch', NULL, NULL, NULL, NULL, false, NULL, 1);


--
-- Name: cratos_cratos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cratos_cratos_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cratos cratos_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cratos
    ADD CONSTRAINT cratos_name_key UNIQUE (name);


--
-- Name: cratos cratos_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cratos
    ADD CONSTRAINT cratos_pkey PRIMARY KEY (cratos_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

