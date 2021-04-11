COPIES = img index.html

all: build/css/main.css copies 

clean:
	rm -rf ./build

rebuild: clean all

build/css/main.css: src/scss/main.scss
	mkdir -p build/css
	sass src/scss/main.scss > build/css/main.css

copies: $(COPIES)
$(COPIES):
	cp src/$@ build/ -r

.PHONY: all clean rebuild copies
