create extension if not exists pgcrypto;

update _user set password = crypt(password, gen_salt('bf', 8));