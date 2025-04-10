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

--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asteroids (id, name, diameter, "Bulk Density", "Nominal Distance", "Discovery Date", "Rotation Period", "Rotational Acceleration", "Hit Chance") FROM stdin;
1	Ceres (A801 AA)	939.4	2.162	1.58	1995-01-05	9.07417	26.05713962	0.009110429
2	Pallas (A802 FA)	513	2.89	1.23	1804-08-27	7.8132214	24.8156214	0.006807877
3	Juno (A804 RA)	246.596	\N	1.04	1804-10-17	7.21	24.99235577	0.004771894
4	Vesta (A807 FA)	525.4	3.456	1.14	1950-09-23	5.34212766	12.5168105	0.001533153
5	Astraea (A845 XA)	106.699	\N	1.11	1845-12-15	16.806	127.2259622	0.000193533
6	Hebe (A847 NA)	185.18	\N	0.976	1848-09-05	7.2745	27.10981058	0.007657165
7	Iris (A847 PA)	199.83	\N	0.85	1848-08-23	7.139	29.97960059	0.002553514
8	Flora (A847 UA)	147.491	\N	0.874	1847-10-27	12.865	94.68433924	0.001013055
9	Metis (A848 HA)	190	\N	1.11	1849-07-31	5.079	11.61992838	0.000638574
10	Hygiea (A849 GA)	407.12	\N	1.79	1849-05-26	13.828	53.41161564	0.003045548
11	Parthenope (A850 JA)	142.887	\N	1.2	1850-09-17	13.7204	78.43724007	0.005914264
12	Victoria (A850 RA)	115.087	\N	0.826	1850-09-18	8.6599	45.39580388	0.007870583
13	Egeria (A850 VA)	202.636	\N	1.44	1850-11-21	7.045	17.23334201	0.005103427
14	Irene (A851 KA)	152	\N	1.19	1851-05-20	15.028	94.89108571	0.001501154
15	Eunomia (A851 OA)	231.689	\N	1.19	1851-09-02	6.083	15.54743235	0.000301337
16	Psyche (A852 FA)	222	4	1.53	1984-06-22	4.196	5.753730719	0.004066681
17	Thetis (A852 HA)	84.899	\N	1.13	1852-04-17	12.27048	66.62153957	0.00026792
18	Melpomene (A852 MA)	139.594	\N	0.812	1852-06-29	11.57	82.42912562	0.006941573
19	Fortuna (A852 QA)	200	\N	1.06	1852-09-14	7.4432	26.13265389	0.008919161
20	Massalia (A852 SA)	135.68	\N	1.08	1856-10-29	8.098	30.36000185	0.008657
21	Lutetia (A852 VA)	95.76	\N	1.02	1866-04-06	8.1655	32.68401483	0.003296163
22	Kalliope (A852 WA)	167.536	2.37	1.64	1854-04-14	4.1483	5.246461247	0.001543029
23	Thalia (A852 XA)	107.53	\N	1.06	1856-10-19	12.312	71.50252075	0.002478249
24	Themis (A853 GA)	198	\N	1.79	1853-04-27	8.374	19.58767486	0.00578848
25	Phocaea (A853 GB)	61.054	\N	0.925	1860-03-11	9.9341	53.34396909	0.007272238
26	Proserpina (A853 JA)	94.8	\N	1.41	1861-01-31	13.11	60.94755319	0.005340956
27	Euterpe (A853 VA)	96	\N	0.961	1853-11-10	10.4082	56.36348972	0.006354128
28	Bellona (A854 EA)	120.9	\N	1.38	1856-09-29	15.706	89.37624493	0.004328807
29	Amphitrite (A854 EB)	189.559	\N	1.38	1855-07-25	5.3921	10.53432696	0.00964992
30	Urania (A854 OA)	92.787	\N	1.07	1860-02-22	13.686	87.52644673	0.00184147
31	Euphrosyne (A854 RA)	267.08	\N	1.59	1860-10-25	5.53	9.61663522	0.006174334
32	Pomona (A854 UA)	80.76	\N	1.37	1864-01-07	9.448	32.57835912	0.005888227
33	Polyhymnia (A854 UB)	52.929	\N	0.913	1856-01-25	18.608	189.626322	0.007674966
34	Circe (A855 GA)	132.992	\N	1.41	1864-04-28	12.15	52.34840426	0.004997105
35	Leukothea (A855 HA)	103.055	\N	1.35	1860-03-11	31.9	376.8925926	0.007538692
36	Atalante (A855 TA)	132.842	\N	0.954	1866-02-08	9.93	51.67971698	0.003052317
37	Fides (A855 TB)	108.35	\N	1.2	1855-10-08	7.3335	22.40842594	0.004450629
38	Leda (A856 AA)	92.255	\N	1.35	1856-01-29	12.838	61.04231259	0.005482756
39	Laetitia (A856 CA)	179.484	\N	1.46	1856-02-28	5.138	9.040768493	0.005859221
40	Harmonia (A856 FA)	111.251	\N	1.16	1860-07-10	8.91	34.21900862	0.004315986
41	Daphne (A856 KA)	205.495	\N	1.05	1866-07-13	5.988	17.07435429	0.003724969
42	Isis (A856 KB)	110.997	\N	0.903	1856-06-20	13.59	102.2636213	0.000617546
43	Ariadne (A857 GA)	71.34	\N	0.816	1864-08-03	5.76218	20.34480291	0.004104271
44	Nysa (A857 KA)	70.64	\N	1.08	1864-03-02	6.422	19.09355741	0.002116102
45	Eugenia (A857 MA)	202.327	\N	1.49	1866-05-19	5.699	10.8988594	0.007918982
46	Hestia (A857 QA)	131.471	\N	1.09	1864-04-05	21.04	203.0649541	0.004647682
47	Aglaja (A857 RA)	168.174	\N	1.49	1860-02-24	13.178	58.27506174	0.006717201
48	Doris (A857 SA)	216.473	\N	1.93	1860-02-27	11.89	36.62489637	0.008591693
49	Pales (A857 SB)	166.252	\N	1.42	1863-11-20	20.705	150.9496567	0.007662652
50	Virginia (A857 TA)	84.074	\N	0.897	1857-10-20	14.315	114.2247631	3.8e-05
51	Nemausa (A858 BA)	138.159	\N	1.21	1863-09-12	7.783	25.03102851	0.003591759
52	Europa (A858 CA)	303.918	\N	1.76	1860-07-09	5.6304	9.006080727	0.006802358
53	Kalypso (A858 GA)	97.262	\N	1.11	1866-01-01	9.036	36.77896216	0.006323786
54	Alexandra (A858 RA)	160.12	\N	1.17	1996-05-23	7.024	21.08400684	0.000423985
55	Pandora (A858 RB)	84.794	\N	1.36	1876-08-07	4.804	8.484711765	0.005303777
56	Melete (A857 RB)	121.333	\N	0.985	1865-06-13	18.147	167.1642685	0.005887157
57	Mnemosyne (A859 SA)	112.59	\N	1.83	1859-12-22	25.324	175.2199388	0.00362213
58	Concordia (A860 FA)	106.517	\N	1.58	1864-02-09	9.895	30.98450158	0.000290042
59	Elpis (A860 RA)	165.119	\N	1.4	1865-12-09	13.671	66.7486575	0.003057899
60	Echo (A860 RB)	43.218	\N	0.971	1861-01-01	25.208	327.2107436	0.00112494
61	Danae (A860 RC)	85.937	\N	1.49	1865-08-27	11.45	43.99412752	0.009003988
62	Erato (A860 RD)	106.921	\N	1.61	1906-01-24	9.2213	26.40756947	0.001528006
63	Ausonia (A861 CA)	116.044	\N	1.08	1861-03-01	9.298	40.0244463	0.001597903
64	Angelina (A861 EA)	58.292	\N	1.36	1861-03-08	8.752	28.16084706	0.005197198
65	Maja (A861 GA)	71.82	\N	1.2	1861-04-10	9.73509	39.48832388	0.005519953
66	Asia (A861 HA)	56.309	\N	0.971	1864-03-02	15.853	129.4117451	0.002679804
67	Leto (A861 HB)	122.509	\N	1.28	1863-11-30	14.848	86.1184	0.005917786
68	Hesperia (A861 HC)	138.13	\N	1.51	1861-04-29	5.655	10.58908113	0.005481905
69	Panopaea (A861 JA)	127.911	\N	1.16	1866-09-19	15.8052	107.6742875	0.005037214
70	Niobe (A861 PA)	83.42	\N	1.4	1864-01-14	35.864	459.3666057	0.006548639
71	Feronia (A861 KA)	74.966	\N	0.985	1865-06-23	8.097	33.27990305	0.008661067
72	Klytia (A862 GA)	44.59	\N	1.56	1864-10-02	8.297	22.06416955	0.006099071
73	Galatea (A862 QA)	118.71	\N	1.12	1864-01-30	17.268	133.1177786	0.000530931
74	Eurydike (A862 SA)	62.377	\N	0.852	1864-02-02	5.357	16.84122594	0.007686138
75	Frigga (A862 VA)	61.39	\N	1.32	1879-07-18	9.0032	30.70364024	0.004822774
76	Diana (A863 EA)	120.6	\N	1.11	1863-04-10	7.2991	23.99858595	0.009766873
77	Eurynome (A863 RA)	63.479	\N	0.987	1863-10-05	5.978	18.10358865	0.008324597
78	Sappho (A864 JA)	68.563	\N	0.844	1865-10-08	14.03	116.6119076	0.000299423
79	Terpsichore (A864 SA)	117.727	\N	1.27	1864-11-19	10.943	47.14537362	0.004182027
80	Alkmene (A864 WA)	57.621	\N	1.17	1864-12-05	12.999	72.21111154	0.003040656
81	Beatrix (A865 HA)	110.503	\N	1.23	1865-05-13	10.111	41.55785407	0.004044692
82	Klio (A865 QA)	79.16	\N	0.799	1865-08-25	23.562	347.4141702	0.000194079
83	Io (A865 SA)	154.79	\N	1.16	1865-09-21	6.875	20.37311422	0.001157509
84	Semele (A866 AA)	109.929	\N	1.44	1871-12-29	16.634	96.07290139	0.004177724
85	Thisbe (A866 LA)	232	\N	1.3	1866-06-21	6.042	14.04067846	0.004118783
86	Julia (A866 PA)	145.483	\N	1.1	1866-08-07	11.387	58.93807682	0.008478342
87	Antiope (A866 TA)	115.974	\N	1.59	1866-10-01	16.509	85.70662925	0.006368342
88	Aegina (A866 VA)	103.402	\N	1.33	1866-11-10	6.025	13.6468515	0.001117656
89	Undina (A867 NA)	126.42	\N	1.86	1871-03-09	15.941	68.31061317	0.009918431
90	Minerva (A867 QA)	154.155	\N	1.36	1870-02-25	5.982	13.15600147	0.009139953
91	Aurora (A867 RA)	204.89	\N	1.87	1872-07-26	7.22	13.93807487	0.005210048
92	Arethusa (A867 WA)	147.969	\N	1.61	1872-09-23	8.705	23.53323758	0.008599648
93	Aegle (A868 DA)	177.774	\N	1.63	1868-02-20	13.868	58.99430184	0.008257694
94	Klotho (A868 DB)	100.717	\N	1.03	1870-07-23	35.15	599.7682039	0.003802022
95	Ianthe (A868 HA)	132.788	\N	1.2	1870-10-17	16.479	113.1489338	0.000635737
96	Dike (A868 KA)	67.354	\N	1.13	1915-01-20	18.127	145.3929774	0.007869385
97	Hekate (A868 NA)	85.734	\N	1.56	1871-01-15	27.066	234.79755	0.005261464
98	Helena (A868 PA)	65.84	\N	1.21	1871-03-22	23.08	220.1183471	0.009280097
99	Miriam (A868 QA)	82.595	\N	0.993	1870-01-28	23.613	280.7521495	0.002343711
100	Hera (A868 RA)	83.908	\N	1.48	1871-04-04	23.74	190.4012162	0.004001978
\.


--
-- Data for Name: space_agency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.space_agency (name, country, acronym, founding_year) FROM stdin;
National Aeronautics and Space Administration	United States	NASA	1958
European Space Agency	Multi-national	ESA	1975
Roscosmos State Corporation for Space Activities	Russia	Roscosmos	1992
Japan Aerospace Exploration Agency	Japan	JAXA	2003
Indian Space Research Organisation	India	ISRO	1969
China National Space Administration	China	CNSA	1993
German Aerospace Center	Germany	DLR	1997
Korea Aerospace Research Institute	South Korea	KARI	1989
Canadian Space Agency	Canada	CSA	1989
\.


--
-- Data for Name: spacecraft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spacecraft (id, name, capacity, agency, year) FROM stdin;
1	Mercury	1	National Aeronautics and Space Administration	1961
2	Gemini	2	National Aeronautics and Space Administration	1965
3	Apollo	3	National Aeronautics and Space Administration	1968
4	Space Shuttle	7	National Aeronautics and Space Administration	1981
5	Crew Dragon	4	National Aeronautics and Space Administration	2020
6	Orion	4	National Aeronautics and Space Administration	2022
7	Vostok	1	Roscosmos State Corporation for Space Activities	1961
8	Voskhod	2	Roscosmos State Corporation for Space Activities	1964
9	Soyuz	3	Roscosmos State Corporation for Space Activities	1967
10	Shenzhou	3	China National Space Administration	2003
11	Starliner	7	National Aeronautics and Space Administration	2024
12	Gaganyaan	3	Indian Space Research Organisation	2024
\.


--
-- Data for Name: astronauts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.astronauts (name, number_of_missions, expertise, organisation, id, nationality) FROM stdin;
Neil Armstrong	2	Test Pilot	NASA	\N	American
Buzz Aldrin	2	Mechanical Engineer	NASA	\N	American
Valentina Tereshkova	1	Engineer	Roscosmos	\N	Russian
Yuri Gagarin	1	Pilot	Roscosmos	\N	Russian
Sally Ride	2	Physicist	NASA	\N	American
Chris Hadfield	3	Test Pilot	CSA	\N	Canadian
Tim Peake	1	Test Pilot	ESA	\N	British
Mae Jemison	1	Physician	NASA	\N	American
\.


--
-- Data for Name: astronomers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.astronomers (name, nationality, notable_achievements, born) FROM stdin;
Marc Aaronson	United States	One of the first to attempt imaging dark matter using infrared	1950
George Ogden Abell	United States	\N	1927
Hiroshi Abe	Japan	\N	1958
Micha‰l Gillon	Belgium	\N	1974
Antonio Abetti	Italy	\N	1847
Giorgio Abetti	Italy	\N	1882
Charles Greeley Abbot	United States	\N	1872
Charles Hitchcock Adams	United States	\N	1868
John Couch Adams	United Kingdom	Predicted existence and position of Neptune using mathematics	1819
\.


--
-- Data for Name: stars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stars (name, spectral_class, age, temperature, "Solar radius", "Solar mass") FROM stdin;
11 Com	G8 III	\N	4742	19	2.7
11 UMi	\N	\N	4213	29.79	2.78
14 And	K0 III	\N	4813	11	2.2
14 Her	\N	\N	5338	0.93	0.9
16 Cyg B	\N	\N	5750	1.13	1.08
17 Sco	K3 III	5.13	4157	25.92	1.22
18 Del	G6 III	\N	4980	8.8	2.1
1RXS J160929.1-210524	\N	\N	4060	\N	0.85
24 Boo	G3 IV	0.01	4893	10.64	0.99
24 Sex	\N	\N	5098	4.9	1.54
2MASS J04372171+2651014	M V	0.005	3100	0.84	0.17
2MASS J01033563-5515561 A	M5.5/M6	6.92	\N	\N	0.19
2MASS J01225093-2439505	\N	\N	3309	0.37	0.35
2MASS J02192210-3925225	M6	2.7	3064	0.28	0.11
2MASS J0249-0557 A	M6 V	2.7	\N	\N	0.05
2MASS J03590986+2009361	\N	0.003	\N	\N	\N
2MASS J04414489+2301513	M8.5	\N	\N	\N	0.02
2MASS J11011926-7732383	\N	0.035	\N	\N	\N
2MASS J11550485-7919108	\N	0.022	\N	\N	\N
2MASS J12073346-3932539	M8	\N	\N	\N	0.02
2MASS J19383260+4603591	\N	\N	29564	0.2	0.48
2MASS J21252752-8138278	\N	\N	\N	\N	\N
2MASS J22362452+4751425	K7 V	\N	4045	\N	0.6
30 Ari B	F6 V	\N	6300	1.13	1.16
4 UMa	K1 III	\N	4415	18.11	1.23
42 Dra	K1.5 III	\N	4200	22.03	0.98
47 UMa	\N	\N	5872	1.21	1.06
51 Eri	\N	\N	7295	1.49	1.65
51 Peg	\N	\N	5773	1.29	\N
55 Cnc	\N	\N	\N	\N	0.95
6 Lyn	\N	\N	4938	5.2	1.44
61 Vir	G5 V	\N	5577	0.96	0.94
7 CMa	K1 III	7.77	4792	2.3	1.52
70 Vir	\N	\N	5495	1.89	1.09
75 Cet	G3 III	\N	4809	10.38	1.92
8 UMi	\N	\N	4847	10.3	1.44
81 Cet	G5 III	\N	4785	11	2.4
91 Aqr	K0 III	1.7	4665	11	1.4
AB Aur	\N	0.02	9770	\N	2.4
AB Pic	K2 V	0.022	\N	\N	\N
AF Lep	F8 V	0.02	6100	1.25	1.2
AU Mic	\N	0.022	3665	0.82	0.6
BD+03 2562	\N	\N	4095	32.35	1.14
BD+14 4559	\N	0.022	4864	0.86	0.49
BD+15 2375	\N	0.02	4649	8.95	1.08
BD+15 2940	K0	\N	4796	14.7	1.1
BD+20 2457	\N	7.41	4259	71.02	10.83
BD+20 274	K5 III	7.1	4296	17.3	0.8
BD+20 594	\N	\N	5703	0.96	0.96
BD+45 564	K1	\N	5004	\N	0.81
BD+48 738	K0 III	\N	4414	11	0.74
BD+48 740	\N	\N	4534	10.33	1.09
BD+49 828	K0	\N	4943	7.6	1.52
BD+55 362	K3	\N	5012	\N	0.91
BD+60 1417	K0	2.34	4993	0.8	1
BD+63 1405	K0	\N	5000	\N	0.82
BD-06 1339	K7/M0 V	4.5	4324	\N	0.7
BD-08 2823	K3 V	4.5	4746	\N	0.74
BD-10 3166	\N	\N	5382.64	0.97	1
BD-11 4672	\N	4.4	4550	0.64	0.65
BD-13 2130	\N	0.74	4545	19.17	2.12
BD-14 3065 A	\N	2.24	6935	2.35	1.41
BD-17 63	K5 V	\N	4714	0.69	0.74
BD-210397	K7 V	4.3	4051	0.75	0.68
Barnard's star	M3.5-4 V	\N	3195	0.18	0.16
CD Cet	M5.0 V	\N	3130	0.17	0.16
CFBDSIR J145829+101343	\N	\N	580.5	\N	0.02
CFHTWIR-Oph 98 A	M9-L1	4	2320	0.24	0.01
CHXR 73	M3.5	6.2	\N	\N	0.35
CI Tau	\N	0.475	\N	\N	\N
COCONUTS-2 A	M3 V	1.6	3406	0.39	0.37
CT Cha	\N	0.1	\N	\N	\N
CoRoT-1	G0 V	2	5950	1.11	0.95
CoRoT-10	\N	6.3	5075	0.79	0.89
CoRoT-11	\N	\N	\N	1.33	1.23
CoRoT-12	\N	5.8	\N	1.05	1
CoRoT-13	\N	1.635	5945	1.27	1.09
CoRoT-14	F9 V	6.7	6035	1.21	1.13
CoRoT-16	G5 V	0.6	5650	1.19	1.1
CoRoT-17	\N	0.6	5740	1.59	1.04
CoRoT-18	\N	2.7	\N	0.88	0.88
CoRoT-19	\N	1.2	6090	1.65	1.21
CoRoT-2	\N	0.4	5696	\N	\N
CoRoT-20	\N	\N	\N	1.16	1.1
CoRoT-21	\N	\N	6200	1.95	1.29
CoRoT-22	G3 V	4.1	5939	1.14	1.1
CoRoT-23	G0 V	3.3	5900	1.61	1.14
CoRoT-24	K1 V	5.4	4950	0.86	0.91
CoRoT-25	F9	11	6040	1.19	1.09
CoRoT-26	G5	4.5	5590	1.79	1.09
CoRoT-27	\N	12	5900	1.08	1.05
CoRoT-28	\N	12	5150	1.78	1.01
CoRoT-29	\N	4	5260	0.9	0.97
CoRoT-3	\N	4.5	6740	1.56	1.37
CoRoT-30	G3 V	\N	5650	0.91	0.98
CoRoT-31	G2 IV	\N	5700	2.15	1.25
CoRoT-35	F6 V	1	6390	1.65	1.01
CoRoT-36	F3 V	\N	6730	1.52	1.32
CoRoT-4	\N	1.32	6190	1.17	1.16
CoRoT-5	\N	\N	6100	1.27	\N
CoRoT-6	\N	1.8	6090	1.04	1.05
CoRoT-7	G9 V	1.7	5275	0.87	0.93
CoRoT-8	\N	3	5080	0.77	0.88
CoRoT-9	G3 V	\N	5625	0.94	0.99
CoRoTID 223977153	G0 VI	6	5970	0.79	1.08
DE CVn	\N	\N	\N	\N	0.51
DENIS-P J082303.1-491201	L1.5	\N	\N	\N	0.07
DH Tau	\N	1	4371	1.37	0.68
DMPP-1	F8 V	\N	6196	1.26	1.21
DMPP-2	F5 V	2.01	6500	1.78	1.44
DMPP-3 A	\N	2.01	\N	\N	\N
DMPP-4	F5-F8 V	2	6400	1.38	1.25
DP Leo	\N	10.9	\N	\N	0.69
DS Tuc A	\N	2.15	5414	0.95	\N
EPIC 201170410	\N	\N	3648	0.28	0.29
EPIC 201238110	\N	0.045	\N	0.37	\N
EPIC 201427007	\N	\N	5633	0.94	\N
EPIC 201497682	\N	\N	\N	\N	0.78
EPIC 201595106	\N	\N	5679	0.98	0.96
K2-166	\N	\N	\N	\N	1.07
K2-16	\N	\N	\N	\N	0.67
EPIC 201757695	\N	\N	4520	0.66	0.73
K2-50	\N	\N	\N	\N	0.61
EPIC 201841433	\N	\N	5053	0.63	0.8
K2-168	\N	\N	\N	0.9	\N
EPIC 206024342	\N	\N	\N	0.82	\N
EPIC 206032309	\N	\N	\N	\N	0.22
EPIC 206042996	\N	\N	\N	\N	0.56
EPIC 206215704	\N	\N	3297	0.25	\N
EPIC 206317286	\N	\N	\N	\N	0.71
EPIC 211822797	\N	\N	3811	0.6	0.59
EPIC 211945201	\N	\N	\N	1.4	\N
EPIC 212297394	\N	\N	\N	0.75	\N
EPIC 212424622	\N	\N	\N	1.22	\N
EPIC 212499991	\N	\N	\N	\N	0.91
EPIC 212587672	\N	\N	\N	\N	0.95
EPIC 212624936	\N	\N	5765	0.93	\N
EPIC 212737443	\N	\N	4581	0.67	0.72
EPIC 220492298	\N	5	5620	0.89	\N
K2-282	\N	\N	5499	1	\N
EPIC 220674823	G5 V	\N	5470	0.87	0.94
EPIC 228836835	\N	\N	3506	0.42	0.42
EPIC 229004835	\N	\N	5886	1	1.07
EPIC 246851721	F5 V	4.9	6202	1.59	1.32
EPIC 248847494	\N	3.02	4898	2.7	0.9
EPIC 249893012	G8 IV/V	\N	5430	1.71	1.05
FU Tau	M7.25	0.001	2838	\N	0.05
G 196-3	\N	\N	\N	\N	\N
G 264-012	M4.0 V	\N	3326	0.3	0.3
G 9-40	\N	7	3395	0.3	0.3
GJ 1002	M5.5 V	5	3024	0.14	0.12
GJ 1061	M5.5 V	\N	2953	0.16	0.12
GJ 1132	\N	\N	3270	0.21	0.18
GJ 1148	\N	3	3287	0.36	0.34
GJ 1151	M 4.5V	\N	3280	0.18	0.16
GJ 1214	\N	\N	3026	\N	\N
GJ 1252	M3	\N	3458	0.39	0.38
GJ 1265	M4.5 V	\N	3236	0.19	0.18
GJ 143	\N	3.8	\N	0.73	0.76
GJ 15 A	M1	\N	3607	0.38	0.38
GJ 160.2	M0 V	\N	4347	\N	0.69
GJ 163	\N	\N	\N	\N	\N
GJ 179	M3.5 V	\N	3370	0.38	0.36
GJ 180	M2 V	\N	3371	\N	0.43
GJ 2030	\N	\N	\N	\N	0.96
GJ 2056	\N	\N	\N	\N	0.62
GJ 229	\N	\N	\N	\N	0.58
GJ 238	\N	\N	3445	0.43	\N
GJ 251	M3.0 V	\N	3451	0.36	0.36
GJ 27.1	M0.5 V	\N	3542	\N	0.53
GJ 273	M3.5	\N	3382	0.29	0.29
GJ 3021	G6 V	\N	5540	0.9	0.9
GJ 3082	\N	\N	\N	\N	0.47
GJ 3090	\N	\N	3703	0.52	\N
GJ 3138	M0	\N	3717	0.5	0.68
GJ 317	\N	\N	3492.73	0.43	0.45
GJ 3222	\N	\N	\N	\N	0.89
GJ 328	M1	\N	3900	\N	0.69
GJ 3293	M2.5	\N	3466	0.4	0.42
GJ 3323	M4	\N	3159	0.12	0.16
GJ 3341	M2.5	\N	3526	0.44	0.47
GJ 338 B	M0.0 V	\N	4005	0.58	0.64
GJ 3470	\N	\N	3552	0.5	0.5
GJ 3473	\N	5.5	3332	0.35	\N
GJ 3512	M5.5 V	\N	3081	0.14	0.12
GJ 357	\N	\N	3505	0.36	\N
GJ 3634	M2.5	\N	\N	0.43	0.45
GJ 367	\N	\N	3518	0.46	\N
GJ 3779	M4.0 V	\N	3324	0.28	0.27
GJ 3929	M3.5 V	\N	3369	0.32	0.31
GJ 393	M2.0 V	\N	3579	0.43	0.43
GJ 3942	M0	7.1	3867	0.61	0.63
GJ 3988	M4.5 V	\N	3273	0.2	0.18
GJ 3998	M1	8.047	3722	0.49	0.5
GJ 411	\N	\N	3719	0.37	0.39
GJ 414 A	K7 V	\N	4120	0.68	0.65
GJ 422	\N	\N	\N	\N	0.35
GJ 4276	M4.0	6	3387	0.41	0.41
GJ 433	M1.5 V	\N	3472	\N	0.48
GJ 436	\N	\N	3500	0.45	0.46
GJ 463	M3 V	\N	3540	0.49	0.49
GJ 480	M3.5 Ve	\N	\N	\N	0.45
GJ 486	\N	\N	3317	0.32	0.31
GJ 504	G0 V	4.3	6234	\N	1.22
GJ 514	M0.5-1.0 V	\N	3728	0.5	0.51
GJ 536	\N	\N	3674	0.51	0.51
GJ 581	M3 V	\N	\N	0.29	0.31
GJ 625	M2	\N	3499	0.31	0.3
GJ 649	\N	\N	3807.22	0.5	0.53
\.


--
-- Data for Name: exoplanets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exoplanets (name, host_star, orbital_period, discovery_year, discovery_method, "Earth masses") FROM stdin;
11 Com b	11 Com	326.03	2007	Radial Velocity (Coude Echelle Spectrograph)	\N
11 UMi b	11 UMi	516.21997	2009	Radial Velocity (Coude Echelle Spectrograph)	\N
14 And b	14 And	185.84	2008	Radial Velocity (HIDES Echelle Spectrograph)	\N
14 Her b	14 Her	1773.40002	2002	Radial Velocity (HIRES Spectrometer)	\N
16 Cyg B b	16 Cyg B	798.5	1996	Radial Velocity (Multiple Instruments)	\N
17 Sco b	17 Sco	578.38	2020	Radial Velocity (Hamilton Echelle Spectrograph)	\N
18 Del b	18 Del	982.85	2008	Radial Velocity (HIDES Echelle Spectrograph)	\N
1RXS J160929.1-210524 b	1RXS J160929.1-210524	\N	2008	Imaging (NIRI Camera)	4000
24 Boo b	24 Boo	30.3506	2018	Radial Velocity (HIDES Echelle Spectrograph)	\N
24 Sex b	24 Sex	452.8	2010	Radial Velocity (Hamilton Echelle Spectrograph)	\N
24 Sex c	24 Sex	883	2010	Radial Velocity (Hamilton Echelle Spectrograph)	\N
2M0437 b	2MASS J04372171+2651014	\N	2021	Imaging (Infrared Camera and Spectrograph (IRCS))	1271.31363
2MASS J01033563-5515561 AB b	2MASS J01033563-5515561 A	\N	2013	Imaging (NACO Camera)	4131.79
2MASS J01225093-2439505 b	2MASS J01225093-2439505	\N	2013	Imaging (NIRC2 Camera)	\N
2MASS J02192210-3925225 b	2MASS J02192210-3925225	\N	2015	Imaging (SIMON Near-Infrared Spectroimager)	4417.837
2MASS J0249-0557 c	2MASS J0249-0557 A	\N	2018	Imaging (WIRCam)	3686.80952
2MASS J03590986+2009361 b	2MASS J03590986+2009361	\N	2024	Imaging (Gaia CCD array)	5720.91133
2MASS J04414489+2301513 b	2MASS J04414489+2301513	\N	2010	Imaging (WFPC2 Camera)	2383.6
2MASS J11011926-7732383 b	2MASS J11011926-7732383	\N	2024	Imaging (Gaia CCD array)	8899.1954
2MASS J11550485-7919108 b	2MASS J11550485-7919108	\N	2024	Imaging (Gaia CCD array)	6356.56814
2MASS J12073346-3932539 b	2MASS J12073346-3932539	\N	2004	Imaging (NACO Camera)	1589.15
2MASS J19383260+4603591 b	2MASS J19383260+4603591	406	2015	Eclipse Timing Variations (Kepler CCD Array)	\N
2MASS J21252752-8138278 b	2MASS J21252752-8138278	\N	2024	Imaging (Gaia CCD array)	3813.94088
2MASS J22362452+4751425 b	2MASS J22362452+4751425	\N	2016	Imaging (NIRC2 Camera)	3972.875
30 Ari B b	30 Ari B	335.1	2009	Radial Velocity (Coude Echelle Spectrograph)	\N
4 UMa b	4 UMa	269.3	2006	Radial Velocity (Coude Echelle Spectrograph)	\N
42 Dra b	42 Dra	479.1	2008	Radial Velocity (Coude Echelle Spectrograph)	\N
47 UMa b	47 UMa	1078	1996	Radial Velocity (Hamilton Echelle Spectrograph)	\N
47 UMa c	47 UMa	2391	2001	Radial Velocity (Hamilton Echelle Spectrograph)	\N
47 UMa d	47 UMa	19000	2009	Radial Velocity (Hamilton Echelle Spectrograph)	\N
51 Eri b	51 Eri	14965	2015	Imaging (Gemini Planet Imager)	\N
51 Peg b	51 Peg	4.2293	1995	Radial Velocity (ELODIE Spectrograph)	\N
55 Cnc b	55 Cnc	14.67	1996	Radial Velocity (Hamilton Echelle Spectrograph)	\N
55 Cnc c	55 Cnc	43.93	2004	Radial Velocity (High Resolution Spectrograph)	\N
55 Cnc d	55 Cnc	4820	2002	Radial Velocity (Hamilton Echelle Spectrograph)	\N
55 Cnc e	55 Cnc	0.73654625	2004	Radial Velocity (High Resolution Spectrograph)	\N
55 Cnc f	55 Cnc	260.91	2007	Radial Velocity (Multiple Instruments)	47.0051
6 Lyn b	6 Lyn	934.3	2008	Radial Velocity (HIDES Echelle Spectrograph)	\N
61 Vir b	61 Vir	4.215	2009	Radial Velocity (Multiple Instruments)	\N
61 Vir c	61 Vir	38.0957	2009	Radial Velocity (Multiple Instruments)	\N
61 Vir d	61 Vir	123.01	2009	Radial Velocity (Multiple Instruments)	\N
7 CMa b	7 CMa	763	2011	Radial Velocity (UCLES Spectrograph)	\N
7 CMa c	7 CMa	996	2019	Radial Velocity (Multiple Instruments)	\N
70 Vir b	70 Vir	116.688	1996	Radial Velocity (Hamilton Echelle Spectrograph)	\N
75 Cet b	75 Cet	696.62	2012	Radial Velocity (HIDES Echelle Spectrograph)	\N
75 Cet c	75 Cet	2051.62	2023	Radial Velocity (HIDES Echelle Spectrograph)	\N
8 UMi b	8 UMi	93.4	2015	Radial Velocity (BOES Echelle Spectrograph)	\N
81 Cet b	81 Cet	952.7	2008	Radial Velocity (HIDES Echelle Spectrograph)	\N
91 Aqr b	91 Aqr	181.4	2013	Radial Velocity (Hamilton Echelle Spectrograph)	\N
AB Aur b	AB Aur	\N	2022	Imaging (Subaru Coronagraphic Extreme Adaptive Opti)	2860.45566
AB Pic b	AB Pic	\N	2005	Imaging (NACO Camera)	4290.5
AF Lep b	AF Lep	7520	2023	Imaging (SPHERE)	1664.46737
AU Mic b	AU Mic	8.4631427	2020	Transit (TESS CCD Array)	10.2
AU Mic c	AU Mic	18.85969	2021	Transit (TESS CCD Array)	\N
AU Mic d	AU Mic	12.73596	2023	Transit Timing Variations (Multiple Instruments)	1.053
BD+03 2562 b	BD+03 2562	481.9	2017	Radial Velocity (Multiple Instruments)	\N
BD+14 4559 b	BD+14 4559	268.94	2009	Radial Velocity (High Resolution Spectrograph)	\N
BD+15 2375 b	BD+15 2375	153.22	2016	Radial Velocity (HARPS-N Spectrograph)	\N
BD+15 2940 b	BD+15 2940	137.48	2013	Radial Velocity (High Resolution Spectrograph)	\N
BD+20 2457 b	BD+20 2457	379.63	2009	Radial Velocity (High Resolution Spectrograph)	\N
BD+20 2457 c	BD+20 2457	621.99	2009	Radial Velocity (High Resolution Spectrograph)	\N
BD+20 274 b	BD+20 274	578.2	2012	Radial Velocity (High Resolution Spectrograph)	\N
BD+20 594 b	BD+20 594	41.688644	2016	Transit (Kepler CCD Array)	\N
BD+45 564 b	BD+45 564	307.88	2021	Radial Velocity (SOPHIE Spectrograph)	\N
BD+48 738 b	BD+48 738	392.6	2011	Radial Velocity (High Resolution Spectrograph)	\N
BD+48 740 b	BD+48 740	733	2018	Radial Velocity (Multiple Instruments)	\N
BD+49 828 b	BD+49 828	2590	2015	Radial Velocity (High Resolution Spectrograph)	\N
BD+55 362 b	BD+55 362	265.59	2021	Radial Velocity (SOPHIE Spectrograph)	\N
BD+60 1417 b	BD+60 1417	\N	2021	Imaging (HgCdTe and Si:As 1K Infrared Detectors)	4767.4261
BD+63 1405 b	BD+63 1405	1230	2021	Radial Velocity (SOPHIE Spectrograph)	3305.41543
BD-06 1339 b	BD-06 1339	3.8728	2013	Radial Velocity (HARPS Spectrograph)	\N
BD-06 1339 c	BD-06 1339	125.94	2013	Radial Velocity (HARPS Spectrograph)	\N
BD-08 2823 b	BD-08 2823	5.6	2009	Radial Velocity (HARPS Spectrograph)	\N
BD-08 2823 c	BD-08 2823	237.6	2009	Radial Velocity (HARPS Spectrograph)	\N
BD-10 3166 b	BD-10 3166	3.487905	2000	Radial Velocity (HIRES Spectrometer)	\N
BD-11 4672 b	BD-11 4672	1634	2014	Radial Velocity (HARPS Spectrograph)	\N
BD-11 4672 c	BD-11 4672	74.2	2020	Radial Velocity (HARPS-N Spectrograph)	\N
BD-13 2130 b	BD-13 2130	714.29999	2007	Radial Velocity (CORALIE Spectrograph)	\N
BD-14 3065 b	BD-14 3065 A	4.2889731	2024	Transit (TESS CCD Array)	3932
BD-17 63 b	BD-17 63	655.6	2008	Radial Velocity (HARPS Spectrograph)	\N
BD-210397 b	BD-210397	1891	2023	Radial Velocity (HARPS Spectrograph)	\N
BD-210397 c	BD-210397	6240	2023	Radial Velocity (HARPS Spectrograph)	1525.57635
Barnard b	Barnard's star	3.1533	2024	Radial Velocity (ESPRESSO)	\N
CD Cet b	CD Cet	2.2907	2020	Radial Velocity (CARMENES)	\N
CFBDSIR J145829+101343 b	CFBDSIR J145829+101343	10037.5	2011	Imaging (NIRC2 Camera)	3337.1
CFHTWIR-Oph 98 b	CFHTWIR-Oph 98 A	8040000	2021	Imaging (WFC3 Camera)	2479.06157
CHXR 73 b	CHXR 73	\N	2006	Imaging (ACS Camera)	3994.486
CI Tau c	CI Tau	25.2	2024	Radial Velocity (Multiple Instruments)	\N
COCONUTS-2 b	COCONUTS-2 A	\N	2021	Imaging (SpeX)	2542.62726
CT Cha b	CT Cha	\N	2007	Imaging (NACO Camera)	5403
CoRoT-1 b	CoRoT-1	1.5089557	2008	Transit (CoRoT CCD Array)	327.35
CoRoT-10 b	CoRoT-10	13.2406	2010	Transit (CoRoT CCD Array)	867.6759
CoRoT-11 b	CoRoT-11	2.994325	2010	Transit (CoRoT CCD Array)	791.3967
CoRoT-12 b	CoRoT-12	2.82805268	2010	Transit (CoRoT CCD Array)	277.46559
CoRoT-13 b	CoRoT-13	4.03519	2010	Transit (CoRoT CCD Array)	416.99296
CoRoT-14 b	CoRoT-14	1.51214	2010	Transit (CoRoT CCD Array)	2415.4
CoRoT-16 b	CoRoT-16	5.35227	2011	Transit (CoRoT CCD Array)	170.032
CoRoT-17 b	CoRoT-17	3.7681	2011	Transit (CoRoT CCD Array)	765.9703
CoRoT-18 b	CoRoT-18	1.90009	2011	Transit (CoRoT CCD Array)	1048.839
CoRoT-19 b	CoRoT-19	3.89713	2011	Transit (CoRoT CCD Array)	367.09365
CoRoT-2 b	CoRoT-2	1.742997	2008	Transit (CoRoT CCD Array)	\N
CoRoT-20 b	CoRoT-20	9.24318	2011	Transit (CoRoT CCD Array)	1315.8162
CoRoT-20 c	CoRoT-20	1675	2018	Radial Velocity (Multiple Instruments)	\N
CoRoT-21 b	CoRoT-21	2.72474	2012	Transit (CoRoT CCD Array)	705.5826
CoRoT-22 b	CoRoT-22	9.75598	2014	Transit (CoRoT CCD Array)	12.2
CoRoT-23 b	CoRoT-23	3.6313	2011	Transit (CoRoT CCD Array)	889.9
CoRoT-24 b	CoRoT-24	5.1134	2014	Transit (CoRoT CCD Array)	5.7
CoRoT-24 c	CoRoT-24	11.759	2014	Transit (CoRoT CCD Array)	28
CoRoT-25 b	CoRoT-25	4.86069	2013	Transit (CoRoT CCD Array)	85.81
CoRoT-26 b	CoRoT-26	4.20474	2013	Transit (CoRoT CCD Array)	165.26
CoRoT-27 b	CoRoT-27	3.57532	2014	Transit (CoRoT CCD Array)	3273.649
CoRoT-28 b	CoRoT-28	5.20851	2015	Transit (CoRoT CCD Array)	152.87623
CoRoT-29 b	CoRoT-29	2.85057	2015	Transit (CoRoT CCD Array)	266.9772
CoRoT-3 b	CoRoT-3	4.2567994	2008	Transit (CoRoT CCD Array)	6814.2752
CoRoT-30 b	CoRoT-30	9.06005	2020	Transit (CoRoT CCD Array)	921.707
CoRoT-31 b	CoRoT-31	4.62941	2020	Transit (CoRoT CCD Array)	266.9772
CoRoT-35 b	CoRoT-35	3.22748	2022	Transit (CoRoT CCD Array)	349.61125
CoRoT-36 b	CoRoT-36	5.616531	2022	Transit (CoRoT CCD Array)	216.12332
CoRoT-4 b	CoRoT-4	9.20205	2008	Transit (CoRoT CCD Array)	223.43449
CoRoT-5 b	CoRoT-5	4.03790124	2009	Transit (CoRoT CCD Array)	\N
CoRoT-6 b	CoRoT-6	8.886593	2009	Transit (CoRoT CCD Array)	940.7768
CoRoT-7 b	CoRoT-7	0.853585	2009	Transit (CoRoT CCD Array)	21
CoRoT-7 c	CoRoT-7	3.697	2009	Radial Velocity (CoRoT CCD Array)	13.289
CoRoT-7 d	CoRoT-7	8.966	2022	Radial Velocity (HARPS Spectrograph)	17.142
CoRoT-8 b	CoRoT-8	6.212381	2010	Transit (CoRoT CCD Array)	69.28694
CoRoT-9 b	CoRoT-9	95.2738	2009	Transit (CoRoT CCD Array)	266.97
CoRoTID 223977153 b	CoRoTID 223977153	6.71837	2017	Transit (CoRoT CCD Array)	47.6745
DE CVn b	DE CVn	4098.1	2018	Eclipse Timing Variations (Multiple Instruments)	\N
DENIS-P J082303.1-491201 b	DENIS-P J082303.1-491201	246.36	2013	Astrometry (FORS2 Spectrograph)	9057.77
DH Tau b	DH Tau	\N	2004	Imaging (CIAO Camera)	3496.13
DMPP-1 b	DMPP-1	18.57	2019	Radial Velocity (HARPS Spectrograph)	\N
DMPP-1 c	DMPP-1	6.584	2019	Radial Velocity (HARPS Spectrograph)	\N
DMPP-1 d	DMPP-1	2.882	2019	Radial Velocity (HARPS Spectrograph)	\N
DMPP-1 e	DMPP-1	5.516	2019	Radial Velocity (HARPS Spectrograph)	\N
DMPP-2 b	DMPP-2	5.2072	2019	Radial Velocity (Multiple Instruments)	\N
DMPP-3 A b	DMPP-3 A	6.6736	2019	Radial Velocity (HARPS Spectrograph)	\N
DMPP-4 b	DMPP-4	3.4982	2023	Radial Velocity (Multiple Instruments)	\N
DP Leo b	DP Leo	10220	2009	Eclipse Timing Variations (6K CCD Mosaic)	\N
DS Tuc A b	DS Tuc A	8.13822218	2019	Transit (TESS CCD Array)	\N
EPIC 201170410.02	EPIC 201170410	6.7987	2020	Transit (Kepler CCD Array)	\N
EPIC 201238110 b	EPIC 201238110	28.1696	2019	Transit (Kepler CCD Array)	\N
EPIC 201427007 b	EPIC 201427007	0.72091	2021	Transit (Kepler CCD Array)	\N
EPIC 201497682 b	EPIC 201497682	2.13174	2019	Transit (Kepler CCD Array)	\N
EPIC 201595106 b	EPIC 201595106	0.87724	2021	Transit (Kepler CCD Array)	7.67
EPIC 201615463 c	K2-166	3.80464	2019	Transit (Kepler CCD Array)	\N
EPIC 201754305 d	K2-16	2.71578	2019	Transit (Kepler CCD Array)	\N
EPIC 201757695.02	EPIC 201757695	2.0478	2020	Transit (Kepler CCD Array)	\N
EPIC 201833600 c	K2-50	3.96151	2019	Transit (Kepler CCD Array)	\N
EPIC 201841433 b	EPIC 201841433	4.1698	2019	Transit (Kepler CCD Array)	\N
EPIC 205950854 c	K2-168	8.0516	2019	Transit (Kepler CCD Array)	\N
EPIC 206024342 b	EPIC 206024342	4.50717	2019	Transit (Kepler CCD Array)	\N
EPIC 206024342 c	EPIC 206024342	0.911618	2021	Transit (Kepler CCD Array)	\N
EPIC 206024342 d	EPIC 206024342	14.6435	2021	Transit (Kepler CCD Array)	\N
EPIC 206032309 b	EPIC 206032309	2.87814	2019	Transit (Kepler CCD Array)	\N
EPIC 206042996 b	EPIC 206042996	5.29711	2019	Transit (Kepler CCD Array)	\N
EPIC 206042996 c	EPIC 206042996	0.354884	2021	Transit (Kepler CCD Array)	\N
EPIC 206215704 b	EPIC 206215704	2.255436	2019	Transit (Kepler CCD Array)	\N
EPIC 206317286 b	EPIC 206317286	1.58252	2019	Transit (Kepler CCD Array)	\N
EPIC 206317286 c	EPIC 206317286	17.515472	2022	Transit (Kepler CCD Array)	\N
EPIC 211822797 b	EPIC 211822797	21.1595	2016	Transit (Kepler CCD Array)	\N
EPIC 211945201 b	EPIC 211945201	19.49183	2018	Transit (Kepler CCD Array)	\N
EPIC 212297394 b	EPIC 212297394	2.28896	2019	Transit (Kepler CCD Array)	\N
EPIC 212297394 c	EPIC 212297394	5.21378	2021	Transit (Kepler CCD Array)	\N
EPIC 212424622 b	EPIC 212424622	18.0971	2019	Transit (Kepler CCD Array)	\N
EPIC 212499991 b	EPIC 212499991	34.885	2019	Transit (Kepler CCD Array)	\N
EPIC 212587672 b	EPIC 212587672	15.2841	2019	Transit (Kepler CCD Array)	\N
EPIC 212587672 c	EPIC 212587672	23.226001	2021	Transit (Kepler CCD Array)	\N
EPIC 212624936 b	EPIC 212624936	0.578657	2021	Transit (Kepler CCD Array)	\N
EPIC 212624936 c	EPIC 212624936	11.81387	2021	Transit (Kepler CCD Array)	\N
EPIC 212737443 b	EPIC 212737443	13.60697954	2019	Transit (Kepler CCD Array)	\N
EPIC 212737443 c	EPIC 212737443	65.55	2019	Transit (Kepler CCD Array)	\N
EPIC 220492298 b	EPIC 220492298	0.762406	2021	Transit (Kepler CCD Array)	\N
EPIC 220554210 c	K2-282	0.70531	2019	Transit (Kepler CCD Array)	\N
EPIC 220674823 b	EPIC 220674823	0.571292	2016	Transit (Kepler CCD Array)	8.36
EPIC 220674823 c	EPIC 220674823	13.3387	2016	Transit (Kepler CCD Array)	5.7
EPIC 228836835 b	EPIC 228836835	0.72813	2021	Transit (Kepler CCD Array)	\N
EPIC 229004835 b	EPIC 229004835	16.13655	2023	Transit (Kepler CCD Array)	\N
EPIC 246851721 b	EPIC 246851721	6.1802679	2018	Transit (Kepler CCD Array)	\N
EPIC 248847494 b	EPIC 248847494	3650	2018	Transit (Kepler CCD Array)	4131.79
EPIC 249893012 b	EPIC 249893012	3.5951	2020	Transit (Kepler CCD Array)	8.75
EPIC 249893012 c	EPIC 249893012	15.624	2020	Transit (Kepler CCD Array)	14.67
EPIC 249893012 d	EPIC 249893012	35.747	2020	Transit (Kepler CCD Array)	10.18
FU Tau b	FU Tau	\N	2008	Imaging (IRAC Infrared Array Camera)	5085.28
G 196-3 b	G 196-3	\N	2024	Imaging (Gaia CCD array)	8263.53858
G 264-012 b	G 264-012	2.30538	2021	Radial Velocity (CARMENES)	\N
G 264-012 c	G 264-012	8.0518	2021	Radial Velocity (CARMENES)	\N
G 9-40 b	G 9-40	5.7459982	2019	Transit (Kepler CCD Array)	4
GJ 1002 b	GJ 1002	10.3465	2022	Radial Velocity (Multiple Instruments)	\N
GJ 1002 c	GJ 1002	21.202	2022	Radial Velocity (Multiple Instruments)	\N
GJ 1061 b	GJ 1061	3.204	2020	Radial Velocity (HARPS Spectrograph)	\N
GJ 1061 c	GJ 1061	6.689	2020	Radial Velocity (HARPS Spectrograph)	\N
GJ 1061 d	GJ 1061	13.031	2020	Radial Velocity (HARPS Spectrograph)	\N
GJ 1132 b	GJ 1132	1.628931	2015	Transit (Apogee CCD Sensor)	1.66
GJ 1132 c	GJ 1132	8.929	2018	Radial Velocity (HARPS Spectrograph)	\N
GJ 1148 b	GJ 1148	41.38	2010	Radial Velocity (HIRES Spectrometer)	\N
GJ 1148 c	GJ 1148	535.9	2017	Radial Velocity (CARMENES)	\N
GJ 1151 c	GJ 1151	389.7	2023	Radial Velocity (Multiple Instruments)	\N
GJ 1214 b	GJ 1214	1.58040442	2009	Transit (Apogee CCD Sensor)	\N
GJ 1252 b	GJ 1252	0.5182331	2020	Transit (TESS CCD Array)	1.32
GJ 1265 b	GJ 1265	3.6511	2018	Radial Velocity (CARMENES)	\N
GJ 143 b	GJ 143	35.589	2019	Transit (TESS CCD Array)	30.63
GJ 15 A b	GJ 15 A	11.4407	2014	Radial Velocity (HIRES Spectrometer)	\N
GJ 15 A c	GJ 15 A	7600	2018	Radial Velocity (HARPS-N Spectrograph)	\N
GJ 160.2 b	GJ 160.2	5.2354	2014	Radial Velocity (Multiple Instruments)	\N
GJ 163 b	GJ 163	8.63182	2013	Radial Velocity (HARPS Spectrograph)	\N
GJ 163 c	GJ 163	25.63058	2013	Radial Velocity (HARPS Spectrograph)	\N
GJ 163 d	GJ 163	603.95116	2013	Radial Velocity (HARPS Spectrograph)	\N
GJ 179 b	GJ 179	2288	2009	Radial Velocity (HIRES Spectrometer)	\N
GJ 180 b	GJ 180	17.38	2014	Radial Velocity (Multiple Instruments)	\N
GJ 180 c	GJ 180	24.329	2014	Radial Velocity (Multiple Instruments)	\N
GJ 180 d	GJ 180	106.3	2020	Radial Velocity (Multiple Instruments)	\N
GJ 2030 b	GJ 2030	2.38129	2022	Radial Velocity (Multiple Instruments)	\N
GJ 2030 c	GJ 2030	25533.11353	2022	Radial Velocity (Multiple Instruments)	4069.15709
GJ 2056 b	GJ 2056	69.971	2020	Radial Velocity (Multiple Instruments)	\N
GJ 229 A c	GJ 229	121.995	2020	Radial Velocity (Multiple Instruments)	\N
GJ 229 b	GJ 229	471	2014	Radial Velocity (Multiple Instruments)	\N
GJ 238 b	GJ 238	1.7447031	2024	Transit (TESS CCD Array)	\N
GJ 251 b	GJ 251	14.238	2020	Radial Velocity (HIRES Spectrometer)	\N
GJ 27.1 b	GJ 27.1	15.819	2014	Radial Velocity (Multiple Instruments)	\N
GJ 273 b	GJ 273	18.6498	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 273 c	GJ 273	4.7234	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 3021 b	GJ 3021	133.71	2000	Radial Velocity (CORALIE Spectrograph)	\N
GJ 3082 b	GJ 3082	11.949	2020	Radial Velocity (Multiple Instruments)	\N
GJ 3090 b	GJ 3090	2.8531016	2022	Transit (TESS CCD Array)	\N
GJ 3138 b	GJ 3138	1.22003	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 3138 c	GJ 3138	5.974	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 3138 d	GJ 3138	257.8	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 317 b	GJ 317	695.36	2007	Radial Velocity (HIRES Spectrometer)	\N
GJ 317 c	GJ 317	5312	2018	Radial Velocity (HIRES Spectrometer)	\N
GJ 3222 b	GJ 3222	10.66669	2022	Radial Velocity (Multiple Instruments)	\N
GJ 328 b	GJ 328	4100	2013	Radial Velocity (High Resolution Spectrograph)	\N
GJ 328 c	GJ 328	241.8	2023	Radial Velocity (HARPS-N Spectrograph)	\N
GJ 3293 b	GJ 3293	30.5987	2015	Radial Velocity (HARPS Spectrograph)	\N
GJ 3293 c	GJ 3293	123.75	2015	Radial Velocity (HARPS Spectrograph)	\N
GJ 3293 d	GJ 3293	48.1345	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 3293 e	GJ 3293	13.2543	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 3323 b	GJ 3323	5.3636	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 3323 c	GJ 3323	40.54	2017	Radial Velocity (HARPS Spectrograph)	\N
GJ 3341 b	GJ 3341	14.207	2015	Radial Velocity (HARPS Spectrograph)	\N
GJ 338 B b	GJ 338 B	24.45	2020	Radial Velocity (CARMENES)	\N
GJ 3470 b	GJ 3470	3.336665	2012	Radial Velocity (HARPS Spectrograph)	\N
\.


--
-- Data for Name: launch_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.launch_sites (id, name, longitude, latitude, city, country) FROM stdin;
1	Sohae Satellite Launching Station	124.71	39.66	Tongch'ang-dong	North Korea
2	Wenchang Satellite Launch Center	110.951	19.614	Wenchang	China
3	Baikonur Cosmodrome	63.305	45.965	Baikonur	Kazakhstan
4	Cape Canaveral Space Force Station	-80.55	28.5	Cape Canaveral	United States
5	Vandenberg Space Force Base	-120.57	34.74	Lompoc	United States
6	Guiana Space Centre	-52.768	5.236	Kourou	French Guiana
7	Plesetsk Cosmodrome	40.571	62.925	Mirny	Russia
8	Tanegashima Space Center	131.033	30.375	Minamitane	Japan
9	Satish Dhawan Space Centre	80.23	13.721	Sriharikota	India
10	Jiuquan Satellite Launch Center	100.292	40.96	Jiuquan	China
\.


--
-- Data for Name: telescopes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.telescopes (id, name, type, operator, spectrum, longitude, latitude, star_name) FROM stdin;
1	Hubble Space Telescope	Space Telescope	NASA / ESA	Optical / UV / IR	0	0	\N
2	James Webb Space Telescope	Space Telescope	NASA / ESA / CSA	Infrared	0	0	\N
3	Chandra X-ray Observatory	Space Telescope	NASA	X-ray	0	0	\N
4	Spitzer Space Telescope	Space Telescope	NASA	Infrared	0	0	\N
5	Very Large Telescope (VLT)	Ground-based Observatory	ESO	Optical / IR	-70.404	-24.627	\N
6	Atacama Large Millimeter/submillimeter Array (ALMA)	Ground-based Observatory	ESO / NRAO / NAOJ	Radio	-67.7532	-23.0235	\N
7	W. M. Keck Observatory	Ground-based Observatory	Caltech / University of California	Optical / IR	-155.4783	19.8283	\N
8	Arecibo Observatory	Ground-based Observatory	University of Central Florida	Radio	-66.7528	18.3442	\N
9	Subaru Telescope	Ground-based Observatory	NAOJ	Optical / IR	-155.476	19.825	\N
10	Gemini North	Ground-based Observatory	AURA	Optical / IR	-155.4691	19.8238	\N
11	Gran Telescopio Canarias (GTC)	Ground-based Observatory	IAC	Optical / IR	-17.8947	28.7606	\N
12	Fermi Gamma-ray Space Telescope	Space Telescope	NASA	Gamma-ray	0	0	\N
\.


--
-- Data for Name: observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.observations (id, date, textual_info, numerical_info, telescope_id) FROM stdin;
1	1995-10-06	First exoplanet (51 Pegasi b) discovery announced.	0.47	5
2	1990-05-20	Hubble Space Telescope captures its first light image.	\N	1
3	2022-07-12	James Webb Space Telescope reveals first full-color images.	\N	2
4	1998-01-01	Evidence for accelerating cosmic expansion published by two research teams.	\N	1
5	2019-04-10	Event Horizon Telescope collaboration releases image of M87* black hole.	6500000000	6
\.


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.satellites (name, purpose, launch_date, operator, status, payload) FROM stdin;
ACRIMSAT	Solar Irradiance Monitoring	1999-12-20	NASA	Inactive	ACRIM III
ADM-Aeolus	Atmospheric Dynamics Missions	2018-08-22	ESA	Operational	ALADIN
ALOS	Earth Observation	2006-01-24	JAXA	Inactive	PRISM, PALSAR, AVNIR-2
ALOS-2	Earth Observation	2014-05-24	JAXA	Operational	PALSAR-2
Aqua	Earth Observation	2002-05-04	NASA	Operational	AMSR-E, CERES, MODIS
Aura	Earth Observation	2004-07-15	NASA	Operational	OMI, MLS, HIRDLS
COSMO-SkyMed	Earth Observation, Radar	2007-06-08	ASI	Operational	X-Band SAR
Envisat	Environmental Monitoring	2002-03-01	ESA	Inactive	ASAR, MERIS, AATSR
Sentinel-1A	Earth Observation, Radar	2014-04-03	ESA	Operational	C-Band SAR
SMOS	Soil Moisture and Ocean Salinity	2009-11-02	ESA	Operational	MIRAS
\.


--
-- Data for Name: satellite_operator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.satellite_operator (operator, name) FROM stdin;
\.


--
-- Data for Name: tracking_stations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tracking_stations (name) FROM stdin;
NASA Near Space Network
NASA Near Deep Network
United States Space Force Satellite Control Network
Russia Tracking Network
European Space Tracking Network (ESTRAK)
JAXA Near-earth Tracking and Control Network
SatNOGS Network
ISRO Telemetry, Tracking and Command Network (ISTRAC)
\.


--
-- Name: asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asteroids_id_seq', 1, false);


--
-- Name: launch_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.launch_sites_id_seq', 10, true);


--
-- Name: observations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.observations_id_seq', 5, true);


--
-- Name: spacecraft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spacecraft_id_seq', 12, true);


--
-- Name: telescopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.telescopes_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

