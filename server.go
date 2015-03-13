package main

import (
	"net/http"
)

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":3000", nil)
}

func handler(w http.ResponseWriterter, r *http.Request) {
	http.ServeFile(w, r, "index.html")
}
