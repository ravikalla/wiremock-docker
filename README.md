# Docker support for Wiremock

### Command to build Wiremock Docker image
`docker build -t ravikalla/wiremock-docker:1.0 .`

### Command to start Wiremock

##### Start local image
`docker run --name wiremockdocker -p 8080:8080 ravikalla/wiremock-docker:1.0`

##### Start image from Dockerhub
`docker run --name wiremockdocker -p 8080:8080 ravikalla/wiremock-docker`

### URLs:
 * Sample recording responses:
   * [http://localhost:8080/get1](http://localhost:8080/get1)
   * [http://localhost:8080/get1](http://localhost:8080/get2)
   * [http://localhost:8080/get1](http://localhost:8080/get3)
 * View All Mappings: [http://localhost:8080/__admin/mappings](http://localhost:8080/__admin/mappings)
 * Recorder Page: [http://localhost:8080/__admin/recorder/](http://localhost:8080/__admin/recorder/)
   