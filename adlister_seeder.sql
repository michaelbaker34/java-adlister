use adlister_db;

insert into users (username, email, password) values
        ('admin', 'admin@admin', 'password');

insert into ads (user_id, title, description) values
        (1, "Title 1", "Description 1"),
        (1, "Title 2", "Description 2"),
        (1, "Title 3", "Description 3"),
        (1, "Title 4", "Description 4"),
        (1, "Title 5", "Description 5");