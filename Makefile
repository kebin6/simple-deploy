.PHONY: ps
ps :
	docker-compose ps

.PHONY: restart
restart :
	docker-compose restart cor-rpc solamb-rpc message-rpc job-rpc file-api solamb-api app-api

.PHONY: reload
reload-solamb-rpc :
	docker-compose stop solamb-rpc
	docker-compose -f app-deploy.yml up -d solamb-rpc

.PHONY: reload
reload-solamb-api :
	docker-compose stop solamb-api
	docker-compose -f app-deploy.yml up -d solamb-api

.PHONY: reload
reload-solamb-app :
	docker-compose stop app-api
	docker-compose -f app-deploy.yml up -d app-api

.PHONY: reload
reload-cor-rpc :
	docker-compose stop cor-rpc
	docker-compose -f app-deploy.yml up -d core-rpc

.PHONY: reload
reload-cor-api :
	docker-compose stop cor-api
	docker-compose -f app-deploy.yml up -d core-api

.PHONY: reload
reload-job-rpc :
	docker-compose stop job-rpc
	docker-compose -f app-deploy.yml up -d job-rpc

.PHONY: reload
reload-file-api :
	docker-compose stop file-api
	docker-compose -f app-deploy.yml up -d file-api

.PHONY: reload
reload-message-rpc :
	docker-compose stop message-rpc
	docker-compose -f app-deploy.yml up -d message-rpc
