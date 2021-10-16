

install:
	gem install jekyll bundler
	bundle install

serve:
	bundle exec jekyll serve

serve-live:
	bundle exec jekyll serve --livereload
