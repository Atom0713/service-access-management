# service-access-management
Service is used to manage user access given username and role.

## Running service locally
Make sure you have **python** ^3.10 and **poetry** ^1.1.13
1. Clone the repository
2. Run `poetry run flask --app src\service\app run` (poetry will handle the virtual env for you)

If you want to use local virtual environenment:
1. Activate local virtual environment
2. Install dependencies with `poetry install`
3. Run `flask --app src\service\app run`

Access app at `http://localhost:5000`

## Running service locally using docker
1. Build service image: `docker build -t service-access-management .`
2. Run the app: `docker run -d -p 8000:5000 service-access-management`

Access app at `http://localhost:8000`

## Development

## Test