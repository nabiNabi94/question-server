CREATE TABLE IF NOT EXISTS public.levels
(
    lvl_id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    lvl_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT levels_pkey PRIMARY KEY (lvl_id)
)
    WITH (
        OIDS = FALSE
    );