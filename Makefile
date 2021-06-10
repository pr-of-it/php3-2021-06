ifndef ENV
	ENV = dev
endif

up:
	@echo "Project up"
	docker-compose up -d --build
	docker-compose exec php php /app/vendor/bin/phing -f /app/.build/phing/$(ENV)/build.xml

down:
	@echo "Project down"
	docker-compose down