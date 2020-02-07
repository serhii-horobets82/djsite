# Django sample site

### Create DB 

```bash
"C:\Program Files\PostgreSQL\11\bin\psql.exe"  -h localhost -U postgres -d postgres -p 5432
```

### Run app

```bash
python manage.py runserver 0.0.0.0:5000
# or
heroku local web -f Procfile.windows
```

### Migrate

```bash
# add migration
python manage.py makemigrations <name>
# apply migration
python manage.py migrate
```

### Shell

```bash
python manage.py shell
```

### Create user

```bash
python manage.py createsuperuser
```
