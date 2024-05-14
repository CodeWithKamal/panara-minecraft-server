FROM openjdk:21
WORKDIR /minecraft

# Copy server jar
COPY server.jar server.jar

# Accept the EULA before starting the server
RUN echo "eula=true" > eula.txt

# Expose the default Minecraft port
EXPOSE 25565

# Start the server (this time for real)
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
