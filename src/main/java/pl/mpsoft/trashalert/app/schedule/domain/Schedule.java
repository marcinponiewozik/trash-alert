package pl.mpsoft.trashalert.app.schedule.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import pl.mpsoft.trashalert.app.shared.BaseEntity;
import pl.mpsoft.trashalert.app.unit.Unit;

import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "schedule")
@Getter
@Setter
public class Schedule extends BaseEntity {
    @Id
    @GeneratedValue(generator = "app_schedule_seq")
    @GenericGenerator(
            name = "app_schedule_seq",
            strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",
            parameters = {
                    @org.hibernate.annotations.Parameter(name = "sequence_name", value = "app_schedule_seq"),
                    @org.hibernate.annotations.Parameter(name = "initial_value", value = "1"),
                    @Parameter(name = "increment_size", value = "1")
            }
    )
    private Long id;

    @ManyToOne
    @JoinColumn(name="unit_id", nullable=false)
    private Unit unit;

    private LocalDate startDate;
    private LocalDate endDate;
    private String fileUrl;

    @OneToMany(mappedBy="schedule")
    private Set<Sector> sectors;
    private String details;
}
