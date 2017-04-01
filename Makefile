MD = $(wildcard *.md)
HTML = $(patsubst %.md,%.html,$(MD))

all: $(HTML)

%.html: %.md
	pandoc $< --standalone  --from markdown --to html -o release/$@

clean:
	rm $(addprefix release/, $(HTML))
