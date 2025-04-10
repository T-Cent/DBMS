--
-- PostgreSQL database dump
--

-- Dumped from database version 17.3
-- Dumped by pg_dump version 17.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asteroids (
    id integer NOT NULL,
    name text NOT NULL,
    diameter double precision,
    "Bulk Density" double precision,
    "Nominal Distance" double precision,
    "Discovery Date" date,
    "Rotation Period" double precision,
    "Rotational Acceleration" double precision,
    "Hit Chance" double precision
);


ALTER TABLE public.asteroids OWNER TO postgres;

--
-- Name: asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.asteroids_id_seq OWNER TO postgres;

--
-- Name: asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asteroids_id_seq OWNED BY public.asteroids.id;


--
-- Name: astronomers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.astronomers (
    name text NOT NULL,
    organization text,
    speciality text
);


ALTER TABLE public.astronomers OWNER TO postgres;

--
-- Name: exoplanets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exoplanets (
    name text NOT NULL,
    host_star text,
    orbital_period double precision,
    discovery_year integer,
    discovery_method text
);


ALTER TABLE public.exoplanets OWNER TO postgres;

--
-- Name: launch_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.launch_sites (
    id integer NOT NULL,
    name text,
    longitude double precision,
    latitude double precision,
    city text,
    country text
);


ALTER TABLE public.launch_sites OWNER TO postgres;

--
-- Name: launch_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.launch_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.launch_sites_id_seq OWNER TO postgres;

--
-- Name: launch_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.launch_sites_id_seq OWNED BY public.launch_sites.id;


--
-- Name: observations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.observations (
    id integer NOT NULL,
    date date,
    textual_info text,
    numerical_info double precision,
    telescope_id integer
);


ALTER TABLE public.observations OWNER TO postgres;

--
-- Name: observations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.observations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.observations_id_seq OWNER TO postgres;

--
-- Name: observations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.observations_id_seq OWNED BY public.observations.id;


--
-- Name: satellite_operator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.satellite_operator (
    operator text NOT NULL,
    name text
);


ALTER TABLE public.satellite_operator OWNER TO postgres;

--
-- Name: satellites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.satellites (
    name text NOT NULL,
    purpose text,
    launch_date date,
    operator text
);


ALTER TABLE public.satellites OWNER TO postgres;

--
-- Name: space_agency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.space_agency (
    name text NOT NULL,
    city text,
    country text
);


ALTER TABLE public.space_agency OWNER TO postgres;

--
-- Name: spacecraft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spacecraft (
    id integer NOT NULL,
    name text,
    type text,
    capacity integer,
    agency text
);


ALTER TABLE public.spacecraft OWNER TO postgres;

--
-- Name: spacecraft_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spacecraft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.spacecraft_id_seq OWNER TO postgres;

--
-- Name: spacecraft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spacecraft_id_seq OWNED BY public.spacecraft.id;


--
-- Name: stars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stars (
    name text NOT NULL,
    spectral_class text,
    size double precision,
    type text,
    age double precision,
    temperature double precision
);


ALTER TABLE public.stars OWNER TO postgres;

--
-- Name: telescopes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telescopes (
    id integer NOT NULL,
    name text,
    type text,
    operator text,
    spectrum text,
    longitude double precision,
    latitude double precision,
    star_name text
);


ALTER TABLE public.telescopes OWNER TO postgres;

--
-- Name: telescopes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.telescopes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telescopes_id_seq OWNER TO postgres;

--
-- Name: telescopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.telescopes_id_seq OWNED BY public.telescopes.id;


--
-- Name: tracking_station_operator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tracking_station_operator (
    operator text NOT NULL,
    name text
);


ALTER TABLE public.tracking_station_operator OWNER TO postgres;

--
-- Name: tracking_stations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tracking_stations (
    name text NOT NULL,
    latitude double precision,
    longitude double precision,
    operator text
);


ALTER TABLE public.tracking_stations OWNER TO postgres;

--
-- Name: asteroids id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN id SET DEFAULT nextval('public.asteroids_id_seq'::regclass);


--
-- Name: launch_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.launch_sites ALTER COLUMN id SET DEFAULT nextval('public.launch_sites_id_seq'::regclass);


--
-- Name: observations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.observations ALTER COLUMN id SET DEFAULT nextval('public.observations_id_seq'::regclass);


--
-- Name: spacecraft id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spacecraft ALTER COLUMN id SET DEFAULT nextval('public.spacecraft_id_seq'::regclass);


--
-- Name: telescopes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telescopes ALTER COLUMN id SET DEFAULT nextval('public.telescopes_id_seq'::regclass);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (id);


--
-- Name: astronomers astronomers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.astronomers
    ADD CONSTRAINT astronomers_pkey PRIMARY KEY (name);


--
-- Name: exoplanets exoplanets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exoplanets
    ADD CONSTRAINT exoplanets_pkey PRIMARY KEY (name);


--
-- Name: launch_sites launch_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.launch_sites
    ADD CONSTRAINT launch_sites_pkey PRIMARY KEY (id);


--
-- Name: observations observations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.observations
    ADD CONSTRAINT observations_pkey PRIMARY KEY (id);


--
-- Name: satellite_operator satellite_operator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satellite_operator
    ADD CONSTRAINT satellite_operator_pkey PRIMARY KEY (operator);


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (name);


--
-- Name: space_agency space_agency_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.space_agency
    ADD CONSTRAINT space_agency_pkey PRIMARY KEY (name);


--
-- Name: spacecraft spacecraft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_pkey PRIMARY KEY (id);


--
-- Name: stars stars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (name);


--
-- Name: telescopes telescopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telescopes
    ADD CONSTRAINT telescopes_pkey PRIMARY KEY (id);


--
-- Name: tracking_station_operator tracking_station_operator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracking_station_operator
    ADD CONSTRAINT tracking_station_operator_pkey PRIMARY KEY (operator);


--
-- Name: tracking_stations tracking_stations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracking_stations
    ADD CONSTRAINT tracking_stations_pkey PRIMARY KEY (name);


--
-- Name: exoplanets exoplanets_host_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exoplanets
    ADD CONSTRAINT exoplanets_host_star_fkey FOREIGN KEY (host_star) REFERENCES public.stars(name);


--
-- Name: observations observations_telescope_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.observations
    ADD CONSTRAINT observations_telescope_id_fkey FOREIGN KEY (telescope_id) REFERENCES public.telescopes(id);


--
-- Name: satellite_operator satellite_operator_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.satellite_operator
    ADD CONSTRAINT satellite_operator_name_fkey FOREIGN KEY (name) REFERENCES public.satellites(name);


--
-- Name: spacecraft spacecraft_agency_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_agency_fkey FOREIGN KEY (agency) REFERENCES public.space_agency(name);


--
-- Name: telescopes telescopes_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telescopes
    ADD CONSTRAINT telescopes_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.stars(name);


--
-- Name: tracking_station_operator tracking_station_operator_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracking_station_operator
    ADD CONSTRAINT tracking_station_operator_name_fkey FOREIGN KEY (name) REFERENCES public.tracking_stations(name);


--
-- PostgreSQL database dump complete
--

