workspace "AG" "Описание"

    !identifiers hierarchical

    model {
        # Справочник систем  и участников
        !include containers.dsl

        #связи между системами
        !include links.dsl
    }

    views {
        !include styles.dsl
 
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
