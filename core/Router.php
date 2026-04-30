<?php

class Router {
    private $routes = [];

    public function get($uri, $action) {
        $this->routes['GET'][$uri] = $action;
    }

    public function run() {
        $uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
        $base = '/nominagit/public';

        $uri = str_replace($base, '', $uri);
        $uri = $uri ?: '/';

        if (isset($this->routes['GET'][$uri])) {
            $action = $this->routes['GET'][$uri];

            list($file, $method) = explode('@', $action);

            require_once __DIR__ . "/../acciones/$file.php";
            $method();
        } else {
            echo "404";
        }
    }
}
