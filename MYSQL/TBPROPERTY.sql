use DBRECATALOG;

DROP TABLE IF EXISTS TBPROPERTY_CATALOG;

CREATE TABLE TBPROPERTY_CATALOG (
		FK_CATALOG_ID VARCHAR(255) NOT NULL,
		PROPERTY_KEY VARCHAR(255) NOT NULL,
		PROPERTY_VALUE VARCHAR(255) NOT NULL
	);
    
CREATE INDEX IX_PK_TBPROPERTY ON TBPROPERTY_CATALOG (FK_CATALOG_ID, PROPERTY_KEY, PROPERTY_VALUE);    
ALTER TABLE TBPROPERTY_CATALOG
  ADD CONSTRAINT PK_TBPROPERTY
    PRIMARY KEY (FK_CATALOG_ID, PROPERTY_KEY, PROPERTY_VALUE);     

CREATE INDEX IX_FK1_TBPROPERTY ON TBPROPERTY_CATALOG (FK_CATALOG_ID ASC);
ALTER TABLE TBPROPERTY_CATALOG ADD CONSTRAINT FK1_TBPROPERTY FOREIGN KEY (FK_CATALOG_ID)
	REFERENCES TBCATALOG (ID);            