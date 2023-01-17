-- Create Tables
CREATE TABLE Currency (
  id INTEGER PRIMARY KEY,
  iso_code varchar(3) NOT NULL,
  country_name varchar(60)
);

CREATE TABLE Cut_Off_Times (
  currency_id INTEGER NOT NULL,
  cut_off_date DATE NOT NULL,
  cut_off_time TIME,
  never_possible BOOLEAN NOT NULL,
  always_possible BOOLEAN NOT NULL,
  foreign key (currency_id) references Currency(id)
);