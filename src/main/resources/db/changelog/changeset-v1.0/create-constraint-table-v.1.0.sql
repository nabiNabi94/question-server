ALTER TABLE IF EXISTS public.answers
    ADD CONSTRAINT answers_ans_que_id_fkey FOREIGN KEY (ans_que_id)
        REFERENCES public.questions (que_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;

ALTER TABLE IF EXISTS public.questions
    ADD FOREIGN KEY (que_lvl_id)
        REFERENCES public.levels (lvl_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;

ALTER TABLE IF EXISTS public.questions
    ADD FOREIGN KEY (que_prof_id)
        REFERENCES public.profiles (prof_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;

ALTER TABLE IF EXISTS public.user_table
    ADD CONSTRAINT user_table_role_table_id_fk FOREIGN KEY (role_id)
        REFERENCES public.role_table (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION;

END;