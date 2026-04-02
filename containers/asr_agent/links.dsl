#ВЗАИМОДЕЙСТВИЯ НА УРОВНЕ КОНТЕЙНЕРОВ
ss.agent -> ss.asr_triton "Вызывает"
ss.agent -> ss.vad "Вызывает"
ss.agent -> ss.as "Вызывает"
ss.agent -> ss.ga "Вызывает"

#ВЗАИМОДЕЙСТВИЯ НА УРОВНЕ КОМПОНЕНТОВ
ss.agent.grpcServer -> ss.agent.bl "Получает аудио для распознавания"
ss.agent.bl -> ss.agent.tritonClient "Отправляет чанки аудио на распознавание"
ss.agent.bl -> ss.agent.vadClient "Отправляет аудио на разметку Vadом"
ss.agent.bl -> ss.agent.asClient "Отправляет аудио в антиспуфинг"
ss.agent.bl -> ss.agent.gaClient "Отправляет аудио в гендерэйдж"
ss.agent.tritonClient -> ss.asr_triton "API Call" "GRPC"
ss.agent.vadClient -> ss.vad "API Call" "GRPC"
ss.agent.asClient -> ss.as "API Call" "GRPC"
ss.agent.gaClient -> ss.ga "API Call" "GRPC"          
