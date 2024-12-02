# Builder
FROM ghcr.io/graalvm/graalvm-ce:22.2.0 AS builder
ENV MAVEN_VERSION=3.9.4
ENV MAVEN_HOME=/opt/maven
ENV PATH="${MAVEN_HOME}/bin:${PATH}"
RUN microdnf install -y curl tar gzip \
    && curl -fsSL https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -o maven.tar.gz \
    && mkdir -p /opt/maven \
    && tar -xzf maven.tar.gz -C /opt/maven --strip-components=1 \
    && rm maven.tar.gz \
    && microdnf clean all
WORKDIR /root/app
COPY . ./
RUN mvn clean install -DskipTests

# Application
FROM ghcr.io/graalvm/graalvm-ce:22.2.0 AS application
COPY --from=builder /root/app/target/*.jar /home/app/
WORKDIR /home/app
RUN chmod 0777 /home/app
EXPOSE 8080
ENTRYPOINT java -jar $JAVA_OPTIONS *.jar 