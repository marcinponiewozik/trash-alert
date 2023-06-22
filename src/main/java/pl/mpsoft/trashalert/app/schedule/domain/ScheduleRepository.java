package pl.mpsoft.trashalert.app.schedule.domain;


import org.springframework.data.repository.Repository;
import pl.mpsoft.trashalert.app.unit.Unit;

import java.time.LocalDate;
import java.util.Optional;

public interface ScheduleRepository extends Repository<Schedule, Long> {
    default Optional<Schedule> getCurrentScheduleForUnit(Unit unit) {
        LocalDate now = LocalDate.now();
        return findFirstByUnitAndStartDateLessThanEqualAndEndDateGreaterThanEqual(unit, now.withDayOfMonth(1), now.withDayOfMonth(now.lengthOfMonth()));
    }

    default Optional<Schedule> getNextScheduleForUnit(Unit unit) {
        return findFirstByUnitAndStartDateGreaterThanEqual(unit, LocalDate.now());
    }

    Optional<Schedule> findFirstByUnitAndStartDateGreaterThanEqual(Unit unit, LocalDate startDate);

    Optional<Schedule> findFirstByUnitAndStartDateLessThanEqualAndEndDateGreaterThanEqual(Unit unit, LocalDate startDate, LocalDate endDate);

    Schedule save(Schedule schedule);
}
