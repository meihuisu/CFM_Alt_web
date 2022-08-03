
ALTER TABLE OBJECT_tb
ADD CONSTRAINT AREA_tb_gid_fkey FOREIGN KEY (AREA_tb_gid)
      REFERENCES AREA_tb (gid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE OBJECT_tb
ADD CONSTRAINT ZONE_tb_gid_fkey FOREIGN KEY (ZONE_tb_gid)
      REFERENCES ZONE_tb (gid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE OBJECT_tb
ADD CONSTRAINT SECTION_tb_gid_fkey FOREIGN KEY (SECTION_tb_gid)
      REFERENCES SECTION_tb (gid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE OBJECT_tb
ADD CONSTRAINT FAULT_tb_gid_fkey FOREIGN KEY (FAULT_tb_gid)
      REFERENCES FAULT_tb (gid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE OBJECT_tb
ADD CONSTRAINT OBJECT_2000m_tb_gid_fkey FOREIGN KEY (OBJECT_2000m_tb_gid)
      REFERENCES OBJECT_2000m_tb (gid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE OBJECT_tb
ADD CONSTRAINT OBJECT_1000m_tb_gid_fkey FOREIGN KEY (OBJECT_1000m_tb_gid)
      REFERENCES OBJECT_1000m_tb (gid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE OBJECT_tb
ADD CONSTRAINT OBJECT_500m_tb_gid_fkey FOREIGN KEY (OBJECT_500m_tb_gid)
      REFERENCES OBJECT_500m_tb (gid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE OBJECT_tb
ADD CONSTRAINT OBJECT_native_tb_gid_fkey FOREIGN KEY (OBJECT_native_tb_gid)
       REFERENCES OBJECT_native_tb (gid) MATCH SIMPLE
       ON UPDATE NO ACTION ON DELETE NO ACTION;
