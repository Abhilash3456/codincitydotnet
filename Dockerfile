FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /source/source
EXPOSE 80
EXPOSE 443
COPY CodincityApp.sln .
COPY CodincityApp/CodincityApp.csproj ./CodincityApp/
COPY TestProject/TestProject.csproj ./TestProject/
RUN dotnet restore
#RUN dotnet build --configuration Release CodincityApp.sln
RUN dotnet publish CodincityApp/CodincityApp.csproj -c Release -o /source/app
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /CodincityApp
COPY --from=build /source ./
ENTRYPOINT ["dotnet", "CodincityApp.dll"]
ENTRYPOINT ["dotnet", "TestProject.dll"]
FROM mcr.microsoft.com/dotnet/sdk:6.0
RUN dir
Run dotnet publish CodincityApp.sln
RUN cd C:/Users/Administrator/AppData/Local/Jenkins/.jenkins/workspace/sample 1
RUN dir
