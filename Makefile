.PHONY: clean server

production.tar.gz: index.html css/bootstrap.min.css
	rm -f $@
	tar czf $@ $^

clean:
	rm -f production.tar.gz

server:
	python -m SimpleHTTPServer 8080
