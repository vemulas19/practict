FROM abc

# Copy necessary files
COPY . /app

# Set working directory
WORKDIR /app

# Define entry point and command to run Copybara
ENTRYPOINT ["copybara"]
CMD ["migrate", "./copy.bara.sky", "--force", "--init-history", "--git-committer-email", "vemulas@gmail.com", "--git-committer-name", "Srikanth", "--commands-timeout", "12000s", "--repo-timeout=20000s"]
