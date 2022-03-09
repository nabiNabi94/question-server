CREATE TABLE IF NOT EXISTS public.tests
(
    tst_id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    "test_lvl_id" bigint,
    "test_prof_id" bigint,
    "test_que_id" bigint,
    CONSTRAINT tests_pkey PRIMARY KEY (tst_id)
)
    WITH (
        OIDS = FALSE
    );

