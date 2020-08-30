# Docker support for Wiremock

### Command to build Wiremock Docker image
`docker build -t ravikalla/wiremock-docker:1.0 .`

### Command to start Wiremock

##### Start local image
`docker run --name wiremockdocker -p 8150:8080 -d ravikalla/wiremock-docker:1.0`

##### Start image from Dockerhub
`docker run --name wiremockdocker -p 8150:8080 -d ravikalla/wiremock-docker`

### URLs:
 * Sample recording responses:
   * [http://localhost:8150/get1](http://localhost:8150/get1)
   * [http://localhost:8150/get1](http://localhost:8150/get2)
   * [http://localhost:8150/get1](http://localhost:8150/get3)
 * View All Mappings: [http://localhost:8150/__admin/mappings](http://localhost:8150/__admin/mappings)
 * Recorder Page: [http://localhost:8150/__admin/recorder/](http://localhost:8150/__admin/recorder/)