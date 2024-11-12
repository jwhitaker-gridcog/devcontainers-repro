FROM mcr.microsoft.com/devcontainers/universal:2-linux

COPY . .

# testfile should be EXCLUDED from the docker context, as per dockerignore
RUN if [ -f testfile ]; then echo 'test failed'; exit 1; else echo 'all good'; fi
