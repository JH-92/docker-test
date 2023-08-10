package io.pampam.dockertest

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class DockerTestApplication

fun main(args: Array<String>) {
    runApplication<DockerTestApplication>(*args)
}
