
create table category (
    id serial primary key,
    name text
);

create table cover (
    id serial primary key,
    category_id int references category,
    olid text,
    filename text,
    author text,
    ip inet,
    source_url text,
    source text,
    isbn text,
    created timestamp default(current_timestamp at time zone 'utc'),
    last_modified timestamp default(current_timestamp at time zone 'utc')
);

create index cover_olid_idx ON cover (olid);
create index cover_last_modified_idx ON cover (last_modified);
