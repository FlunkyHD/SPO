# GET BASE SDK IMGAGE
FROM mcr.microsoft.com/dotnet/sdk:5.0 as build-env
WORKDIR /app

# COPY CSPROJ FILE AND RESTORE DEPENDECIES
COPY *.csproj ./
RUN dotnet restore

# COPY THE PROJECT FILES AND BUILD THE RELEASE
COPY . ./
RUN dotnet publish -c Release -o out


# GENERATE RUNTIME IMAGE
FROM mcr.microsoft.com/dotnet/runtime:3.1
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "DOCKER_GANG.dll"]

