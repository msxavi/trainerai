FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y nodejs sqlite3 postgresql-client

# Set the working directory in the container to /app
WORKDIR /app

# Install Rails
RUN gem install rails

# Add Gemfile and Gemfile.lock to the /app directory in the docker container
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the current directory contents into the container at /app
COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]