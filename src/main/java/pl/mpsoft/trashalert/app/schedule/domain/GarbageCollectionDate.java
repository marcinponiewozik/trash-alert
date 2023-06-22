package pl.mpsoft.trashalert.app.schedule.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import pl.mpsoft.trashalert.app.shared.BaseEntity;

import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "garbage_collection_date")
@Getter
@Setter
public class GarbageCollectionDate extends BaseEntity {
    @Id
    @GeneratedValue(generator = "app_garbage_collection_date_seq")
    @GenericGenerator(
            name = "app_garbage_collection_date_seq",
            strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",
            parameters = {
                    @org.hibernate.annotations.Parameter(name = "sequence_name", value = "app_garbage_collection_date_seq"),
                    @org.hibernate.annotations.Parameter(name = "initial_value", value = "1"),
                    @Parameter(name = "increment_size", value = "1")
            }
    )
    private Long id;
    private String details;
    private String trashCategory;

    @ElementCollection
    @CollectionTable(
            name = "garbage_collection_date_dates",
            joinColumns = @JoinColumn(name = "garbage_collection_date_id", referencedColumnName = "id")
    )
    @Column(name = "date")
    private Set<LocalDate> date;

    @ManyToOne
    @JoinColumn(name="sector_id", nullable=false)
    @JsonIgnore
    private Sector sector;
}
