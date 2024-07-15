FROM artifactorycn.netcracker.com:17091/copybara/copybara:fd946edff3c33ccbfc06964023e120bfadffa7cf

# Copy necessary files
COPY . /app

# Set working directory
WORKDIR /app

# Define entry point and command to run Copybara
ENTRYPOINT ["copybara"]
CMD ["migrate", "./copy.bara.sky", "--force", "--init-history", "--git-committer-email", "vemulas@gmail.com", "--git-committer-name", "Srikanth", "--commands-timeout", "12000s", "--repo-timeout=20000s"]
