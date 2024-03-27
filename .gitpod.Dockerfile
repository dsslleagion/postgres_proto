# Use a imagem base do Gitpod com Java e Maven pré-instalados
FROM gitpod/workspace-full:latest

USER gitpod

# Instale o PostgreSQL JDBC Driver
RUN mkdir -p /home/gitpod/.m2
RUN echo '<dependency><groupId>org.postgresql</groupId><artifactId>postgresql</artifactId><version>42.2.20</version></dependency>' > /home/gitpod/.m2/settings.xml

# Configure o Java 17
RUN /bin/bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh \
 && sdk install java 17.0.8-oracle < /dev/null \
 && sdk flush archives \
 && sdk flush temp"

# Copie o arquivo application.properties para o diretório resources
COPY application.properties /workspace/seu_projeto/src/main/resources/
