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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    radius integer,
    density integer,
    color text,
    temp_k numeric,
    has_life boolean,
    disk_shape boolean
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    color text,
    bong boolean,
    bing boolean
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    color text,
    bing boolean,
    bong boolean
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    color text,
    bong boolean,
    bing boolean
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    name character varying(30) NOT NULL,
    universe_id integer NOT NULL,
    num integer,
    bing boolean,
    bong boolean
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 60000, 30, 'Milky', 2.7, true, true);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 110000, 28, 'Blue', 12.7, false, true);
INSERT INTO public.galaxy VALUES ('Bodes', 3, 45000, 9, 'Blue', 3.1, false, true);
INSERT INTO public.galaxy VALUES ('Cigar', 4, 18500, 10, 'Orange', 2.2, false, true);
INSERT INTO public.galaxy VALUES ('Sculptor', 5, 26000, 6, 'Purple', 1.2, false, true);
INSERT INTO public.galaxy VALUES ('Triangulum', 6, 30000, 2, 'Blue', 5, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Titan', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Triton', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Deimos', 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Miranda', 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Mimas', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Hyperion', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Dione', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Charon', 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Ariel', 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Nereid', 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhea', 18, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Oberon', 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Phoebe', 20, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon', 21, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Earth', 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 5, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 6, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', 7, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', 8, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Pluto', 9, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Ganymede', 10, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Kepler-452b', 11, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Osiris', 12, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('TrES-2b', 13, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('WASP-12b', 14, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('Gliese 581c', 15, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('HD189733 b', 16, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('CoRoT-7b', 17, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('55 Cancri e', 18, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('HAT-P-7b', 19, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Polaris', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Betelgeuse', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Vega', 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Alpha Centuri', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Arcturus', 6, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', 7, NULL, NULL, NULL);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES ('First', 1, 0, NULL, NULL);
INSERT INTO public.universe VALUES ('Real World', 2, 2023, NULL, NULL);
INSERT INTO public.universe VALUES ('Matrix', 3, 1998, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 19, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: universe pk_universe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT pk_universe PRIMARY KEY (universe_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon uq_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_id UNIQUE (moon_id);


--
-- Name: planet uq_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_id UNIQUE (planet_id);


--
-- Name: star uq_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_id UNIQUE (star_id);


--
-- Name: universe uq_universe_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT uq_universe_id UNIQUE (universe_id);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

