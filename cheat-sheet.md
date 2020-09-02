# Dockerized laravel for development

### Basic

```
    docker-compose build
    docker-compose up -d  
```


### Utilities

```
    # SH with laravel installer on PATH
    docker exec -it app sh --login

    # Composer
    docker exec -it app composer update

    # Artisan
    docker exec -it app php artisan

    # Migrate
    docker exec -it app php artisan migrate

    # Tinker
    docker exec -it app php artisan tinker

    # List routes
    docker exec -it app php artisan route:list

    # Create mailable class
    docker exec -it app php artisan make:mail

    # Publish vendor assets
    docker exec -it app php artisan vendor:publish --tag=

    # Publish laravel mail vendor assets
    docker exec -it app php artisan vendor:publish --tag=laravel-mail
        
    # NPM
    docker-compose run --rm npm -v
    
    # Watch assets
    docker-compose run --rm npm run watch

    # Compile assets
    docker-compose run --rm npm run dev
```
