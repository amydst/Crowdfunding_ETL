
CREATE TABLE category (
    category_id varchar(6)   NOT NULL,
    category_name varchar(25)   NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id varchar(9)   NOT NULL,
    category_name varchar(25)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(25)   NOT NULL,
    last_name varchar(25)   NOT NULL,
    email varchar(100) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(100)   NOT NULL,
    description varchar(100)   NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome varchar(10)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(50)   NOT NULL,
    currency varchar(3)   NOT NULL,
    launch_date timestamp   NOT NULL,
    end_date timestamp   NOT NULL,
    staff_pick boolean   NOT NULL,
    spolight boolean   NOT NULL,
    category_id varchar(6)   NOT NULL,
    subcategory_id varchar(9)  NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
)








