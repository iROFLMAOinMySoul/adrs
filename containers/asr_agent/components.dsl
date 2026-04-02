            agent = container "ASR E2E Agent" {
                grpcServer = component "GRPC Server" "Реализует api методы сервиса" "GRPC server"
                tritonClient = component "Triton Client" "Реализует методы взаимодействия с Triton Inference Server" "GRPC client"
                bl = component "Business logic" "Бизнес логика компонента" "Python code"
                vadClient = component "VAD agent Client" "Реализует методы взаимодействия с VAD agent" "GRPC client"
                asClient = component "Antispoofing agent Client" "Реализует методы взаимодействия с Antispoofing agent" "GRPC client"
                gaClient = component "Genderage agent Client" "Реализует методы взаимодействия с Genderage agent" "GRPC client"
            }
