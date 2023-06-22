package pl.mpsoft.trashalert.app.unit;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import pl.mpsoft.trashalert.app.shared.BaseEntity;

import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "unit")
@Getter
@Setter
public class Unit extends BaseEntity {
    @Id
    @GeneratedValue(generator = "app_unit_seq")
    @GenericGenerator(
            name = "app_unit_seq",
            strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",
            parameters = {
                    @org.hibernate.annotations.Parameter(name = "sequence_name", value = "app_unit_seq"),
                    @org.hibernate.annotations.Parameter(name = "initial_value", value = "1"),
                    @Parameter(name = "increment_size", value = "1")
            }
    )
    private Long id;
    private String name;

    private String province; // Województwo
    private String district; // Powiat
    private String uniqueCode;
    private String details;
    private LocalDate licenseEndDate;

    @ElementCollection
    @CollectionTable(
            name = "unit_locality",
            joinColumns = @JoinColumn(name = "unit_id", referencedColumnName = "id")
    )
    @Column(name = "locality")
    private Set<String> localities;
}
