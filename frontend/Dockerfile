# syntax = docker/dockerfile:1

# Adjust NODE_VERSION as desired
ARG NODE_VERSION=20.1.0
FROM node:${NODE_VERSION}-slim as build

LABEL fly_launch_runtime="NodeJS"

# Install packages needed to build node modules
RUN apt-get update -qq && \
    apt-get install -y python-is-python3 pkg-config build-essential

# Install pnpm
RUN npm install -g pnpm

# NodeJS app lives here
WORKDIR /app

COPY --link . .
RUN pnpm install
RUN pnpm build

# Final stage for app image
FROM pierrezemb/gostatic

# Copy static files
COPY --from=build /app/dist /srv/http/
ENTRYPOINT ["/goStatic", "-fallback", "index.html"]
