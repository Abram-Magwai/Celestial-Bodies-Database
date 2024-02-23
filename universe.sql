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
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    size numeric(15,2) NOT NULL
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
-- Name: inventions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.inventions (
    name character varying(100) NOT NULL,
    inventor character varying(50) NOT NULL,
    year_invented integer NOT NULL,
    inventions_id integer NOT NULL
);


ALTER TABLE public.inventions OWNER TO freecodecamp;

--
-- Name: inventions_invention_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.inventions_invention_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventions_invention_id_seq OWNER TO freecodecamp;

--
-- Name: inventions_invention_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.inventions_invention_id_seq OWNED BY public.inventions.inventions_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    size numeric(15,2) NOT NULL,
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
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    size numeric(15,2) NOT NULL,
    star_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    size numeric(15,2) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: inventions inventions_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inventions ALTER COLUMN inventions_id SET DEFAULT nextval('public.inventions_invention_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13000, 'The galaxy containing our Solar System', true, 2000.50);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2500000, 2200, 'The nearest spiral galaxy to the Milky Way', false, 3000.75);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, 1300, 'Third-largest galaxy in the Local Group', false, 1500.25);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 2900000, 10000, 'Spiral galaxy with a prominent bulge and wide brim', false, 4000.80);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 3100000, 16000, 'Classic spiral galaxy with a bright nucleus and spiral arms', false, 3500.60);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 3200000, 21000, 'Grand design spiral galaxy known for its pinwheel-like appearance', false, 4500.90);


--
-- Data for Name: inventions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.inventions VALUES ('Electric Light Bulb', 'Thomas Edison', 1879, 1);
INSERT INTO public.inventions VALUES ('World Wide Web', 'Tim Berners-Lee', 1989, 2);
INSERT INTO public.inventions VALUES ('Penicillin', 'Alexander Fleming', 1928, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 0, 5, 'The Earth only natural satellite', false, 0.27, 17);
INSERT INTO public.moon VALUES (22, 'Phobos', 9, 5, 'Larger moon of Mars', false, 0.01, 18);
INSERT INTO public.moon VALUES (23, 'Deimos', 23, 5, 'Smaller moon of Mars', false, 0.00, 18);
INSERT INTO public.moon VALUES (24, 'Ganymede', 628, 5, 'Largest moon of Jupiter', false, 87.00, 20);
INSERT INTO public.moon VALUES (25, 'Europa', 671, 5, 'Moon of Jupiter with an icy surface', false, 30.60, 20);
INSERT INTO public.moon VALUES (26, 'Titan', 1257, 5, 'Largest moon of Saturn with a thick atmosphere', false, 51.20, 21);
INSERT INTO public.moon VALUES (27, 'Enceladus', 238, 5, 'Moon of Saturn with geysers of water vapor', false, 5.00, 21);
INSERT INTO public.moon VALUES (28, 'Miranda', 129, 5, 'Moon of Uranus with a complex and varied terrain', false, 0.02, 22);
INSERT INTO public.moon VALUES (29, 'Triton', 355, 5, 'Largest moon of Neptune with geysers of nitrogen', false, 16.80, 23);
INSERT INTO public.moon VALUES (30, 'Charon', 18, 5, 'Largest moon of Pluto', false, 0.18, 24);
INSERT INTO public.moon VALUES (31, 'Mimas', 185, 5, 'Moon of Saturn with a large impact crater', false, 0.03, 21);
INSERT INTO public.moon VALUES (32, 'Callisto', 740, 5, 'Moon of Jupiter with a heavily cratered surface', false, 60.40, 20);
INSERT INTO public.moon VALUES (33, 'Io', 422, 5, 'Moon of Jupiter known for its volcanic activity', false, 28.30, 20);
INSERT INTO public.moon VALUES (34, 'Phoebe', 12954, 5, 'Irregular moon of Saturn with a retrograde orbit', false, 0.02, 21);
INSERT INTO public.moon VALUES (35, 'Hyperion', 1481, 5, 'Moon of Saturn with a chaotic rotation', false, 0.02, 21);
INSERT INTO public.moon VALUES (36, 'Ariel', 191, 5, 'Moon of Uranus with a bright and smooth surface', false, 0.03, 22);
INSERT INTO public.moon VALUES (37, 'Proteus', 118, 5, 'Largest irregularly shaped moon of Neptune', false, 0.04, 23);
INSERT INTO public.moon VALUES (38, 'Tethys', 295, 5, 'Moon of Saturn with a large impact crater named Odysseus', false, 0.05, 21);
INSERT INTO public.moon VALUES (39, 'Oberon', 584, 5, 'Moon of Uranus with a dark surface', false, 0.03, 22);
INSERT INTO public.moon VALUES (40, 'Dione', 377, 5, 'Moon of Saturn with bright icy cliffs', false, 0.03, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (17, 'Earth', 0, 4, 'The third planet from the Sun', true, 1.00, 1);
INSERT INTO public.planet VALUES (18, 'Mars', 225, 5, 'Known as the Red Planet', false, 0.53, 1);
INSERT INTO public.planet VALUES (19, 'Venus', 1, 5, 'Second planet from the Sun, known for its thick atmosphere', false, 0.95, 1);
INSERT INTO public.planet VALUES (20, 'Jupiter', 484, 5, 'The largest planet in our Solar System', false, 69.91, 2);
INSERT INTO public.planet VALUES (21, 'Saturn', 886, 5, 'Known for its stunning ring system', false, 58.23, 2);
INSERT INTO public.planet VALUES (22, 'Uranus', 1784, 5, 'Seventh planet from the Sun', false, 25.36, 3);
INSERT INTO public.planet VALUES (23, 'Neptune', 2794, 5, 'Eighth and farthest planet from the Sun', false, 24.62, 3);
INSERT INTO public.planet VALUES (24, 'Mercury', 0, 5, 'Closest planet to the Sun', false, 0.38, 4);
INSERT INTO public.planet VALUES (25, 'Pluto', 3666, 5, 'Dwarf planet in the Kuiper Belt', false, 0.18, 5);
INSERT INTO public.planet VALUES (26, 'Mars II', 230, 1, 'A fictional planet in a distant galaxy', false, 2.30, 6);
INSERT INTO public.planet VALUES (27, 'Alpha Centauri Bb', 4, 0, 'Exoplanet orbiting Alpha Centauri B', false, 1.05, 1);
INSERT INTO public.planet VALUES (28, 'Pandora', 50, 0, 'Fictional moon in orbit around the gas giant Polyphemus', false, 0.60, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4, 'The center of our Solar System', true, 1.39, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4, 6, 'Closest known star to the Sun', false, 0.15, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 4, 6, 'Part of the Alpha Centauri star system', false, 1.10, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 640, 8, 'Red supergiant in the constellation Orion', false, 1000.00, 3);
INSERT INTO public.star VALUES (5, 'Sirius', 9, 0, 'Brightest star in the night sky', false, 2.02, 1);
INSERT INTO public.star VALUES (6, 'Vega', 25, 0, 'A bright star in the constellation Lyra', false, 2.73, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: inventions_invention_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.inventions_invention_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


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
-- Name: inventions inventions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inventions
    ADD CONSTRAINT inventions_pkey PRIMARY KEY (inventions_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id UNIQUE (star_id);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: inventions unique_invention_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inventions
    ADD CONSTRAINT unique_invention_name UNIQUE (name);


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

