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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying,
    name character varying
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, NULL, NULL, '1');
INSERT INTO public.appointments VALUES (2, NULL, 1, '');
INSERT INTO public.appointments VALUES (3, NULL, 1, '');
INSERT INTO public.appointments VALUES (4, NULL, 1, '');
INSERT INTO public.appointments VALUES (5, NULL, 1, '');
INSERT INTO public.appointments VALUES (6, NULL, 1, '');
INSERT INTO public.appointments VALUES (7, NULL, 1, '');
INSERT INTO public.appointments VALUES (8, NULL, 1, '');
INSERT INTO public.appointments VALUES (9, NULL, 1, '');
INSERT INTO public.appointments VALUES (10, NULL, 1, '');
INSERT INTO public.appointments VALUES (11, NULL, 1, '');
INSERT INTO public.appointments VALUES (12, NULL, 1, '');
INSERT INTO public.appointments VALUES (13, NULL, 1, '');
INSERT INTO public.appointments VALUES (14, NULL, 1, '');
INSERT INTO public.appointments VALUES (15, NULL, 1, '');
INSERT INTO public.appointments VALUES (16, NULL, 1, '');
INSERT INTO public.appointments VALUES (17, NULL, 1, '');
INSERT INTO public.appointments VALUES (18, NULL, 1, '');
INSERT INTO public.appointments VALUES (19, NULL, 1, '');
INSERT INTO public.appointments VALUES (20, NULL, 1, '');
INSERT INTO public.appointments VALUES (21, NULL, 1, '');
INSERT INTO public.appointments VALUES (22, NULL, 1, '');
INSERT INTO public.appointments VALUES (23, NULL, 1, '');
INSERT INTO public.appointments VALUES (24, NULL, 1, '');
INSERT INTO public.appointments VALUES (25, NULL, 1, '');
INSERT INTO public.appointments VALUES (26, NULL, 1, '');
INSERT INTO public.appointments VALUES (27, NULL, 1, '');
INSERT INTO public.appointments VALUES (28, NULL, 1, '');
INSERT INTO public.appointments VALUES (29, NULL, 1, '');
INSERT INTO public.appointments VALUES (30, NULL, 1, '');
INSERT INTO public.appointments VALUES (31, NULL, 1, '');
INSERT INTO public.appointments VALUES (32, NULL, 1, '');
INSERT INTO public.appointments VALUES (33, NULL, 1, '');
INSERT INTO public.appointments VALUES (34, NULL, 1, '');
INSERT INTO public.appointments VALUES (35, NULL, 1, '');
INSERT INTO public.appointments VALUES (36, NULL, 1, '');
INSERT INTO public.appointments VALUES (37, NULL, 1, '');
INSERT INTO public.appointments VALUES (38, NULL, 1, '');
INSERT INTO public.appointments VALUES (39, NULL, 1, '');
INSERT INTO public.appointments VALUES (40, NULL, 1, '');
INSERT INTO public.appointments VALUES (41, NULL, 1, '');
INSERT INTO public.appointments VALUES (42, NULL, 1, '');
INSERT INTO public.appointments VALUES (43, NULL, 1, '');
INSERT INTO public.appointments VALUES (44, NULL, 1, '');
INSERT INTO public.appointments VALUES (45, NULL, 1, '');
INSERT INTO public.appointments VALUES (46, NULL, 1, '');
INSERT INTO public.appointments VALUES (47, NULL, 1, '');
INSERT INTO public.appointments VALUES (48, NULL, 1, '');
INSERT INTO public.appointments VALUES (49, NULL, 1, '');
INSERT INTO public.appointments VALUES (50, NULL, 1, '');
INSERT INTO public.appointments VALUES (51, NULL, 1, '');
INSERT INTO public.appointments VALUES (52, NULL, 1, '');
INSERT INTO public.appointments VALUES (53, NULL, 1, '');
INSERT INTO public.appointments VALUES (54, NULL, 1, '');
INSERT INTO public.appointments VALUES (55, NULL, 1, '5');
INSERT INTO public.appointments VALUES (56, NULL, NULL, '3');
INSERT INTO public.appointments VALUES (134, NULL, 2, 'NOW');
INSERT INTO public.appointments VALUES (135, NULL, NULL, 'HERE');
INSERT INTO public.appointments VALUES (59, NULL, NULL, '');
INSERT INTO public.appointments VALUES (136, NULL, 3, '');
INSERT INTO public.appointments VALUES (137, NULL, 2, 'asap');
INSERT INTO public.appointments VALUES (138, 141, 3, 'HERERERE<<<');
INSERT INTO public.appointments VALUES (139, NULL, NULL, '');
INSERT INTO public.appointments VALUES (140, 142, 2, 'ABSOLUTELY');
INSERT INTO public.appointments VALUES (66, NULL, NULL, '');
INSERT INTO public.appointments VALUES (146, 148, 3, '3');
INSERT INTO public.appointments VALUES (147, 150, 1, 'NOW!!!');
INSERT INTO public.appointments VALUES (73, NULL, NULL, '');
INSERT INTO public.appointments VALUES (148, 151, 1, 'WHENEVER');
INSERT INTO public.appointments VALUES (149, 152, 2, 'NOW!');
INSERT INTO public.appointments VALUES (150, 154, 1, 'SOON');
INSERT INTO public.appointments VALUES (80, NULL, NULL, '');
INSERT INTO public.appointments VALUES (87, NULL, NULL, '');
INSERT INTO public.appointments VALUES (94, NULL, NULL, '');
INSERT INTO public.appointments VALUES (166, 175, 2, '6:00pm');
INSERT INTO public.appointments VALUES (167, 176, 2, 'd');
INSERT INTO public.appointments VALUES (101, NULL, NULL, '');
INSERT INTO public.appointments VALUES (108, NULL, NULL, '');
INSERT INTO public.appointments VALUES (115, NULL, NULL, '');
INSERT INTO public.appointments VALUES (122, NULL, NULL, '');
INSERT INTO public.appointments VALUES (129, NULL, NULL, '');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (2, '', '');
INSERT INTO public.customers VALUES (3, '2222222', 'SELECT*FROM customers;');
INSERT INTO public.customers VALUES (139, '[A', '');
INSERT INTO public.customers VALUES (5, '5555555', 'BILL');
INSERT INTO public.customers VALUES (6, '1111111', 'HANK');
INSERT INTO public.customers VALUES (7, '1', '');
INSERT INTO public.customers VALUES (8, '555321', 'SDF');
INSERT INTO public.customers VALUES (9, '65654SD', 'WE');
INSERT INTO public.customers VALUES (10, 'ASFT52432', 'HSIL');
INSERT INTO public.customers VALUES (140, '00000', 'zero');
INSERT INTO public.customers VALUES (141, 'SADFASF', 'RANDAL');
INSERT INTO public.customers VALUES (13, 'FakeTime', '');
INSERT INTO public.customers VALUES (142, 'YELP', 'BARFF');
INSERT INTO public.customers VALUES (81, '6879', 'DSF');
INSERT INTO public.customers VALUES (82, 'SDF', 'D');
INSERT INTO public.customers VALUES (148, '2', '3');
INSERT INTO public.customers VALUES (149, '3', '3');
INSERT INTO public.customers VALUES (150, 'TESTNUMBER', 'TESTING');
INSERT INTO public.customers VALUES (151, 'WRONGCHOICE', 'WRHNG CHOICEAGAIN');
INSERT INTO public.customers VALUES (152, 'WRONG', 'WRONGER');
INSERT INTO public.customers VALUES (27, 'BGHDG', 'HJ');
INSERT INTO public.customers VALUES (28, '789543', '');
INSERT INTO public.customers VALUES (29, 'e', 'safda');
INSERT INTO public.customers VALUES (153, '55', '');
INSERT INTO public.customers VALUES (154, 'CORRECT', 'CORRECTLY');
INSERT INTO public.customers VALUES (175, '71212', 'brian');
INSERT INTO public.customers VALUES (176, 'f', 'd');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'cut');
INSERT INTO public.services VALUES (2, 'perm');
INSERT INTO public.services VALUES (3, 'color');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 187, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 196, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 3, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

