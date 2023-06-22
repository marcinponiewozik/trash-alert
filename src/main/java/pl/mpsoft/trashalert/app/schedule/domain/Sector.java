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
@Table(name = "sector")
@Getter
@Setter
public class Sector extends BaseEntity {
    @Id
    @GeneratedValue(generator = "app_sector_seq")
    @GenericGenerator(
            name = "app_sector_seq",
            strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",
            parameters = {
                    @org.hibernate.annotations.Parameter(name = "sequence_name", value = "app_sector_seq"),
                    @org.hibernate.annotations.Parameter(name = "initial_value", value = "1"),
                    @Parameter(name = "increment_size", value = "1")
            }
    )
    private Long id;
    private String rowSymbol;

    @Column(length = 500)
    private String localities;

    @ManyToOne
    @JoinColumn(name="schedule_id", nullable=false)
    @JsonIgnore
    private Schedule schedule;

    @OneToMany(mappedBy="sector")
    private Set<GarbageCollectionDate> garbageCollectionDates;

    public LocalDate getScheduleStartDate() {
        return schedule.getStartDate();
    }

    public LocalDate getScheduleEndDate() {
        return schedule.getEndDate();
    }
}
