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
    name character varying(50),
    galaxy_id integer NOT NULL,
    age_millions integer,
    color text NOT NULL,
    stars_number numeric
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
-- Name: imperio; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.imperio (
    king_name text,
    age integer NOT NULL,
    galaxy_id integer NOT NULL,
    is_good boolean DEFAULT true,
    name character varying(50),
    imperio_id integer NOT NULL
);


ALTER TABLE public.imperio OWNER TO freecodecamp;

--
-- Name: imperio_kingdom_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.imperio_kingdom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imperio_kingdom_id_seq OWNER TO freecodecamp;

--
-- Name: imperio_kingdom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.imperio_kingdom_id_seq OWNED BY public.imperio.imperio_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    radius numeric,
    has_bases boolean DEFAULT false,
    planet_id integer NOT NULL
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
    name character varying(30),
    planet_id integer NOT NULL,
    has_life boolean DEFAULT false,
    star_id integer NOT NULL,
    inteligent_life boolean DEFAULT false
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
    name character varying(50),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    age_millions integer,
    is_old boolean DEFAULT false,
    data_available boolean DEFAULT true
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
-- Name: imperio imperio_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperio ALTER COLUMN imperio_id SET DEFAULT nextval('public.imperio_kingdom_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, 'white', 9456);
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 2, NULL, 'brown', 544);
INSERT INTO public.galaxy VALUES ('Andromeda', 3, NULL, 'light-blue', 6468);
INSERT INTO public.galaxy VALUES ('Whirpool Galaxy(M51)', 5, 400, 'green', 45787);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy(M104)', 4, 1300, 'light-purple', 5468);
INSERT INTO public.galaxy VALUES ('Cigar Galaxy(M101)', 7, 12000, 'red', NULL);
INSERT INTO public.galaxy VALUES ('Centaurus A(NGC 5128)', 6, 10000, 'crimson', 56478);


--
-- Data for Name: imperio; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.imperio VALUES ('Nabu', 99, 1, true, NULL, 1);
INSERT INTO public.imperio VALUES ('Newton', 165, 3, true, NULL, 2);
INSERT INTO public.imperio VALUES ('Hit-ler', 57, 2, false, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Europe', 1, 1737, true, 1);
INSERT INTO public.moon VALUES ('Maxi', 2, 5700, true, 2);
INSERT INTO public.moon VALUES ('Sagan', 3, 8695, true, 3);
INSERT INTO public.moon VALUES ('Phobos (Mars)', 4, 11, true, 3);
INSERT INTO public.moon VALUES ('Deimos (Mars)', 5, 6, true, 3);
INSERT INTO public.moon VALUES ('Io (Jupiter)', 6, 1821, true, 5);
INSERT INTO public.moon VALUES ('Ganymede (Jupiter)', 7, 2634, false, 9);
INSERT INTO public.moon VALUES ('Callisto (Jupiter)', 8, 2410, true, 10);
INSERT INTO public.moon VALUES ('Mimas (Saturn)', 9, 198, false, 8);
INSERT INTO public.moon VALUES ('Enceladus (Saturn) ', 10, 252, false, 7);
INSERT INTO public.moon VALUES ('Dione (Saturn)', 11, 561, true, 5);
INSERT INTO public.moon VALUES ('Titan (Saturn)', 12, 2574, false, 7);
INSERT INTO public.moon VALUES ('Rhea (Saturn)', 13, 764, true, 8);
INSERT INTO public.moon VALUES ('Iapetus (Saturn)', 14, 730, true, 4);
INSERT INTO public.moon VALUES ('Miranda (Uranus)', 15, 235, true, 6);
INSERT INTO public.moon VALUES ('Titania (Uranus)', 16, 788, true, 11);
INSERT INTO public.moon VALUES ('Oberon (Uranus', 17, 761, true, 8);
INSERT INTO public.moon VALUES ('Triton (Neptune)', 18, 1353, true, 10);
INSERT INTO public.moon VALUES ('Nereid (Neptune)', 19, 170, true, 9);
INSERT INTO public.moon VALUES ('Phobos (Mars)', 20, 11, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Foundation', 1, true, 1, false);
INSERT INTO public.planet VALUES ('Yuggoth', 2, true, 2, false);
INSERT INTO public.planet VALUES ('Mesopotamia', 3, false, 3, false);
INSERT INTO public.planet VALUES ('Polaris Bb', 5, false, 8, false);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 6, false, 6, false);
INSERT INTO public.planet VALUES ('No confirmed planets', 8, false, 10, false);
INSERT INTO public.planet VALUES ('No confirmed planets', 9, false, 4, false);
INSERT INTO public.planet VALUES ('Earthed', 11, true, 3, false);
INSERT INTO public.planet VALUES ('Puppy-Paradise', 12, true, 5, false);
INSERT INTO public.planet VALUES ('Thule', 10, true, 1, true);
INSERT INTO public.planet VALUES ('Polaris Ab', 4, true, 8, true);
INSERT INTO public.planet VALUES ('Proxima Centauri c', 7, true, 6, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Rigel Kentaurus(Alpha Centauri)', 6, 3, 4000, false, true);
INSERT INTO public.star VALUES ('Proxima Centauri', 7, 3, 4800, false, true);
INSERT INTO public.star VALUES ('Polaris(North Star)', 8, 1, 70, false, true);
INSERT INTO public.star VALUES ('Betelgeuse', 9, 1, 10, false, true);
INSERT INTO public.star VALUES ('Deneb (Alpha Cygni)', 10, 5, 7, false, true);
INSERT INTO public.star VALUES ('Canopus(Alpha Carinae)', 12, 6, 23, false, true);
INSERT INTO public.star VALUES ('Black eyes', 1, 1, 65, false, true);
INSERT INTO public.star VALUES ('Shining dog', 5, 2, 135, false, true);
INSERT INTO public.star VALUES ('Arcturus (Alpha Bootis)', 11, 4, 7100, true, true);
INSERT INTO public.star VALUES ('Red death', 2, 3, 0, false, false);
INSERT INTO public.star VALUES ('Blue hope', 3, 1, 0, false, false);
INSERT INTO public.star VALUES ('Eternal lion', 4, 2, 0, false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: imperio_kingdom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.imperio_kingdom_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: imperio imperio_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperio
    ADD CONSTRAINT imperio_age_key UNIQUE (age);


--
-- Name: imperio imperio_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperio
    ADD CONSTRAINT imperio_pkey PRIMARY KEY (imperio_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: imperio fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imperio
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

