        # Справочник систем  и участников
        customer = person "Пользователь"
        admin = person "Администратор"
        ss = softwareSystem "Audiogram" {
            api = container "ASR API"{
                technology "Python"
                url https://git.mts.ai/voiceplatform/dev/py/api
            }
            agent = container "ASR E2E Agent"
            asr_triton = container "ASR E2E Triton"
            vad = container "VAD Agent"
            vad_triton = container "VAD Triton"
            as = container "Antispoofing Agent"
            as_triton = container "Antispoofing Triton"
            ga = container "Genderage Agent"
            ga_triton = container "Genderage Triton"
        }
