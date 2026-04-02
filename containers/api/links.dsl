#ВЗАИМОДЕЙСТВИЯ НА УРОВНЕ КОНТЕЙНЕРОВ
ss.api -> ss.agent "API Call" "GRPC"

#ВЗАИМОДЕЙСТВИЯ НА УРОВНЕ КОМПОНЕНТОВ
ss.api -> ss.agent.grpcServer "API Call" "GRPC"
