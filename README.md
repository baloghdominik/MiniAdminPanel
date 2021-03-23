# MiniAdminPanel

MiniAdminPanel is a Laravel test project.

## About MiniAdminPanel

- Basic Laravel Auth: ability to log in as administrator
- Use database seeds to create first user with email admin@admin.com and password “password”
- CRUD functionality (Create / Read / Update / Delete) for two menu items: Companies and Employees.
- Companies DB table consists of these fields: Name (required), email, logo (minimum 100×100), website
- Employees DB table consists of these fields: First name (required), last name (required), Company (foreign key to Companies), email, phone
- Use database migrations to create those schemas above
- Store companies logos in storage/app/public folder and make them accessible from public
- Use basic Laravel resource controllers with default methods – index, create, store etc.
- Use Laravel’s validation function, using Request classes
- Use pagination for showing Companies/Employees list, 10 entries per page
- Use Laravel make:auth as default Bootstrap-based design theme, but remove ability to register
- Create a dashboard notification when a new company or employee is created
- Add localization (no need for actual translation)
- Create a job that logs the companies or employees created last day, run the job daily (doesn’t matter what log channel is used)

## Preview Screenshots

<p align="center"><img src="https://i.imgur.com/Lv4hr3R.png" width="100%"></p>

<p align="center"><img src="https://i.imgur.com/WJcpMpk.png" width="100%"></p>

<p align="center"><img src="https://i.imgur.com/1ARm69N.png" width="100%"></p>

## Download

<p align="center"><a href="https://codelabs.hu/dl/files/MiniAdminPanel.rar">Download as .rar</a></p>


