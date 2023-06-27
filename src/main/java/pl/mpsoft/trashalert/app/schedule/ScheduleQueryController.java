package pl.mpsoft.trashalert.app.schedule;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pl.mpsoft.trashalert.app.schedule.domain.Schedule;
import pl.mpsoft.trashalert.app.schedule.domain.ScheduleRepository;
import pl.mpsoft.trashalert.app.unit.Unit;
import pl.mpsoft.trashalert.app.unit.UnitRepository;

import java.util.Optional;

@RequestMapping("api/schedule")
@RestController
@AllArgsConstructor
public class ScheduleQueryController {
    private final ScheduleRepository repo;
    private final UnitRepository unitRepo;

    @CrossOrigin
    @GetMapping("{teryt}/current")
    public ResponseEntity<?> getActualSchedule(@PathVariable String teryt) {
        Optional<Unit> optUnit = unitRepo.findOneByUniqueCode(teryt);

        if (optUnit.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        Optional<Schedule> optCurrentScheduleForUnit = repo.getCurrentScheduleForUnit(optUnit.get());

        if (optCurrentScheduleForUnit.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(optCurrentScheduleForUnit.get());
    }

    @CrossOrigin
    @GetMapping("{teryt}/next")
    public ResponseEntity<?> getNextSchedule(@PathVariable String teryt) {
        Optional<Unit> optUnit = unitRepo.findOneByUniqueCode(teryt);

        if (optUnit.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        Optional<Schedule> optCurrentScheduleForUnit = repo.getNextScheduleForUnit(optUnit.get());

        if (optCurrentScheduleForUnit.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(optCurrentScheduleForUnit.get());
    }
}
