workspace "AG" "Описание"

    !identifiers hierarchical

    model {
        # Справочник систем  и участников
        customer = person "Пользователь"
        admin = person "Администратор"
        ss = softwareSystem "Audiogram" {
            api = container "ASR API"{
                technology "Python"
                url https://git.mts.ai/voiceplatform/dev/py/api
            }
            agent = container "ASR E2E Agent"{
                triton_client = component "Клиент, реализующий методы взаимодействия с triton inference server"
            }
            asr_triton = container "ASR E2E Triton"
            vad = container "VAD Agent"
            vad_triton = container "VAD Triton"
            as = container "Antispoofing Agent"
            as_triton = container "Antispoofing Triton"
            ga = container "Genderage Agent"
            ga_triton = container "Genderage Triton"
        }

        #связи между системами
        customer -> ss "Использует"
        admin -> ss "Конфигурирует"
        customer -> ss.api "Отправляет запросы"
        ss.api -> ss.agent "API Call" "GRPC"
        ss.agent -> ss.asr_triton "Вызывает"
        ss.agent -> ss.vad "Вызывает"
        ss.agent -> ss.as "Вызывает"
        ss.agent -> ss.ga "Вызывает"
        ss.ga -> ss.ga_triton "Вызывает"
        ss.as -> ss.as_triton "Вызывает"
        ss.vad -> ss.vad_triton "Вызывает"
    }

    views {
        styles {
            theme https://raw.githubusercontent.com/structurizr/themes/refs/heads/master/default/theme.json
            element ext {
                background grey
            }
            element db {
                shape Cylinder
            }
            element planned {
                strokeWidth 10
                opacity 50
                stroke green
            }
            relationship planned {
                color green
            }
        }
 
        systemContext ss "Diagram1" {
            include *
        }

        container ss "Diagram2" {
            include *
        }
        
        component ss.agent "Components" {
            include *
            autoLayout
            description "The component diagram for the API Application."
        }        
    }

}
