FROM mcr.microsoft.com/dotnet/sdk:8.0-preview
WORKDIR /app
COPY . ./
RUN dotnet restore MySolution.sln
RUN dotnet build MySolution.sln --no-restore
CMD ["dotnet", "test", "MySolution.sln", "--no-build", "--verbosity", "normal"]
