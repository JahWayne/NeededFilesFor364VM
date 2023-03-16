--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.15
-- Dumped by pg_dump version 9.6.15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: assignment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assignment (
    assign_num integer NOT NULL,
    assign_date date,
    proj_num integer,
    emp_num integer,
    assign_job integer,
    assign_chg_hr real,
    assign_hours real,
    assign_charge real
);


ALTER TABLE public.assignment OWNER TO postgres;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    emp_num integer NOT NULL,
    emp_lname character varying(15),
    emp_fname character varying(15),
    emp_initial character varying(1),
    emp_hiredate date,
    job_code integer,
    emp_years integer
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job (
    job_code integer NOT NULL,
    job_description character varying(25),
    job_chg_hour real,
    job_last_update date
);


ALTER TABLE public.job OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    proj_num integer NOT NULL,
    proj_name character varying(25),
    proj_value real,
    proj_balance real,
    emp_num integer
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Data for Name: assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1001, '2016-03-22', 18, 103, 503, 84.5, 3.5, 295.75);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1002, '2016-03-22', 22, 117, 509, 34.5499992, 4.19999981, 145.110001);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1003, '2016-03-22', 18, 117, 509, 34.5499992, 2, 69.0999985);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1004, '2016-03-22', 18, 103, 503, 84.5, 5.9000001, 498.549988);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1005, '2016-03-22', 25, 108, 501, 96.75, 2.20000005, 212.850006);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1006, '2016-03-22', 22, 104, 501, 96.75, 4.19999981, 406.350006);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1007, '2016-03-22', 25, 113, 508, 50.75, 3.79999995, 192.850006);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1008, '2016-03-22', 18, 103, 503, 84.5, 0.899999976, 76.0500031);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1009, '2016-03-23', 15, 115, 501, 96.75, 5.5999999, 541.799988);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1010, '2016-03-23', 15, 117, 509, 34.5499992, 2.4000001, 82.9199982);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1011, '2016-03-23', 25, 105, 502, 105, 4.30000019, 451.5);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1012, '2016-03-23', 18, 108, 501, 96.75, 3.4000001, 328.950012);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1013, '2016-03-23', 25, 115, 501, 96.75, 2, 193.5);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1014, '2016-03-23', 22, 104, 501, 96.75, 2.79999995, 270.899994);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1015, '2016-03-23', 15, 103, 503, 84.5, 6.0999999, 515.450012);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1016, '2016-03-23', 22, 105, 502, 105, 4.69999981, 493.5);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1017, '2016-03-23', 18, 117, 509, 34.5499992, 3.79999995, 131.289993);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1018, '2016-03-23', 25, 117, 509, 34.5499992, 2.20000005, 76.0100021);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1019, '2016-03-24', 25, 104, 501, 110.5, 4.9000001, 541.450012);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1020, '2016-03-24', 15, 101, 502, 125, 3.0999999, 387.5);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1021, '2016-03-24', 22, 108, 501, 110.5, 2.70000005, 298.350006);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1022, '2016-03-24', 22, 115, 501, 110.5, 4.9000001, 541.450012);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1023, '2016-03-24', 22, 105, 502, 125, 3.5, 437.5);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1024, '2016-03-24', 15, 103, 503, 84.5, 3.29999995, 278.850006);
INSERT INTO public.assignment (assign_num, assign_date, proj_num, emp_num, assign_job, assign_chg_hr, assign_hours, assign_charge) VALUES (1025, '2016-03-24', 18, 117, 509, 34.5499992, 4.19999981, 145.110001);


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (101, 'News', 'John', 'G', '2000-11-08', 502, 4);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (102, 'Senior', 'David', 'H', '1989-07-12', 501, 15);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (103, 'Arbough', 'June', 'E', '1996-12-01', 503, 8);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (104, 'Ramoras', 'Anne', 'K', '1987-11-15', 501, 17);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (105, 'Johnson', 'Alice', 'K', '1993-02-01', 502, 12);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (106, 'Smithfield', 'William', NULL, '2004-06-22', 500, 0);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (107, 'Alonzo', 'Maria', 'D', '1993-10-10', 500, 11);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (108, 'Washington', 'Ralph', 'B', '1991-08-22', 501, 13);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (109, 'Smith', 'Larry', 'W', '1997-07-18', 501, 7);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (110, 'Olenko', 'Gerald', 'A', '1995-12-11', 505, 9);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (111, 'Wabash', 'Geoff', 'B', '1991-04-04', 506, 14);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (112, 'Smithson', 'Darlene', 'M', '1994-10-23', 507, 10);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (113, 'Joenbrood', 'Delbert', 'K', '1996-11-15', 508, 8);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (114, 'Jones', 'Annelise', NULL, '1993-08-20', 508, 11);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (115, 'Bawangi', 'Travis', 'B', '1992-01-25', 501, 13);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (116, 'Pratt', 'Gerald', 'L', '1997-03-05', 510, 8);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (117, 'Williamson', 'Angie', 'H', '1996-06-19', 509, 8);
INSERT INTO public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_hiredate, job_code, emp_years) VALUES (118, 'Frommer', 'James', 'J', '2005-01-04', 510, 0);


--
-- Data for Name: job; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (500, 'Programmer', 35.75, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (501, 'Systems Analyst', 96.75, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (502, 'Database Designer', 125, '2016-03-24');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (503, 'Electrical Engineer', 84.5, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (504, 'Mechanical Engineer', 67.9000015, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (505, 'Civil Engineer', 55.7799988, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (506, 'Clerical Support', 26.8700008, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (507, 'DSS Analyst', 45.9500008, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (508, 'Applications Designer', 48.0999985, '2016-03-24');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (509, 'Bio Technician', 34.5499992, '2015-11-20');
INSERT INTO public.job (job_code, job_description, job_chg_hour, job_last_update) VALUES (510, 'General Support', 18.3600006, '2015-11-20');


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.project (proj_num, proj_name, proj_value, proj_balance, emp_num) VALUES (15, 'Evergreen', 1453500, 1002350, 103);
INSERT INTO public.project (proj_num, proj_name, proj_value, proj_balance, emp_num) VALUES (18, 'Amber Wave', 3500500, 2110346, 108);
INSERT INTO public.project (proj_num, proj_name, proj_value, proj_balance, emp_num) VALUES (22, 'Rolling Tide', 805000, 500345.188, 102);
INSERT INTO public.project (proj_num, proj_name, proj_value, proj_balance, emp_num) VALUES (25, 'Starflight', 2650500, 2309880, 107);


--
-- Name: assignment assignment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignment
    ADD CONSTRAINT assignment_pkey PRIMARY KEY (assign_num);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_num);


--
-- Name: job job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (job_code);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (proj_num);


--
-- Name: assignment assignment_emp_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignment
    ADD CONSTRAINT assignment_emp_num_fkey FOREIGN KEY (emp_num) REFERENCES public.employee(emp_num);


--
-- Name: assignment assignment_proj_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignment
    ADD CONSTRAINT assignment_proj_num_fkey FOREIGN KEY (proj_num) REFERENCES public.project(proj_num);


--
-- Name: employee employee_job_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_job_code_fkey FOREIGN KEY (job_code) REFERENCES public.job(job_code);


--
-- Name: project project_emp_num_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_emp_num_fkey FOREIGN KEY (emp_num) REFERENCES public.employee(emp_num);


--
-- PostgreSQL database dump complete
--

