Running nighthawk:

* First start the 3 services
    * envoy-gloo-ee: `run-envoy-gloo-ee.sh`
    * tap server: `run-tap-server.sh`
    * nighthawk server (upstream): `run-nighthawk-server.sh`
* Then run the benchmark suite: `run-benchmark.sh`
* Alternately, you can run the nighthawk client manually for testing by running `run-nighthawk-client.sh`
    * Example with some additional options to change the request and response body sizes:

      ./run-nighthawk-client.sh \
          --request-body-size $((100 * 1024)) \
          --request-header "x-nighthawk-test-server-config:{response_body_size:1000}"

Ports:

* envoy-gloo-ee: 11000
    * admin: 11001
* nighthawk server: 11100
    * admin: 11101
* tap server: 11200
