FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app
RUN dotnet tool install -g x
ENV PATH="$PATH:/root/.dotnet/tools"

EXPOSE 5000
ENTRYPOINT ["x"]