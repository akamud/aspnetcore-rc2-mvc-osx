FROM microsoft/dotnet:latest

#Set urls and port environments
ENV ASPNETCORE_URLS="http://*:5000"
ENV ASPNETCORE_ENVIRONMENT="Development"

COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]

EXPOSE 5000
ENTRYPOINT ["dotnet", "run"]