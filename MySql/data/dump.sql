LOAD DATA LOCAL INFILE 'BioIDs_WikiIDs.csv'
INTO TABLE biology_element_wiki_id_title
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(bioidx_id,wiki_id,@create_at,@update_at)
SET created_at=NOW(), updated_at=NOW();


LOAD DATA LOCAL INFILE 'Name_Aliases.csv'
INTO TABLE biology_elements
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idx,alias,type,@create_at,@update_at)
SET id=NULL, created_at=NOW(), updated_at=NOW();


LOAD DATA LOCAL INFILE 'Wiki_Titles.csv'
INTO TABLE wiki_id_titles
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id,title,@create_at,@update_at)
SET created_at=NOW(), updated_at=NOW();


LOAD DATA LOCAL INFILE 'wid1_wid2_pmid.csv'
INTO TABLE wiki_ids_pmids
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(pmid,wiki1,wiki2,@create_at,@update_at)
SET created_at=NOW(), updated_at=NOW();
