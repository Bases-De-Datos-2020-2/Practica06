DROP TABLE "DadoDeBaja"

CREATE TABLE public. "DadoDeBajaV"
(
    id integer,
    modelo character varying(20),
    "año" date,
    motivo character varying,
    fecha_final date,
    CONSTRAINT id_vehiculo_baja_pkey PRIMARY KEY (id)
);

ALTER TABLE public."DadoDeBajaV"
    OWNER to postgres;

DROP TABLE "EnOperacion"

CREATE TABLE public."EnOperacionV"
(
    id serial,
    modelo character varying(20),
    "año" date,
    CONSTRAINT id_enoperacion_pkey PRIMARY KEY (id)
);

ALTER TABLE public."EnOperacionV"
    OWNER to postgres;

CREATE TABLE public. "vehiculo"
(
    modelo character varying(20),
    "año" date,
    marca character varying(20),
    refaccion character varying(20),
    no_cilindros integer,
    no_puertas integer,
    CONSTRAINT id_enoperacion_pkey PRIMARY KEY (modelo,"año")
);

ALTER TABLE public. "vehiculo"
    OWNER to postgres;