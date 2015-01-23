DROP database pup;
CREATE database pup;
USE pup;

CREATE TABLE users (
  first_name CHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
  last_name CHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
  url TEXT CHARACTER SET utf8 COLLATE utf8_bin
);

INSERT INTO users VALUES ('lapin','cretin','http://resnlabs.com/wp-content/uploads/2012/05/GiddyUpright.gif');
