package pl.mpsoft.trashalert.app.schedule;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pl.mpsoft.trashalert.app.schedule.domain.Schedule;
import pl.mpsoft.trashalert.app.schedule.domain.ScheduleRepository;
import pl.mpsoft.trashalert.app.schedule.domain.Sector;
import pl.mpsoft.trashalert.app.unit.UnitRepository;

import java.util.*;

@RequestMapping("api/sector")
@RestController
@AllArgsConstructor
public class CurrentSectorQueryController {
    private final ScheduleRepository repo;
    private final UnitRepository unitRepo;

    @CrossOrigin
    @GetMapping
    public ResponseEntity<?> getSectors(@RequestParam Long unitId) {
        Optional<Schedule> optSchedule = repo.getCurrentScheduleForUnit(unitRepo.findOneById(unitId));

        if (optSchedule.isPresent()) {
            List<Sector> sectors = new ArrayList<>(optSchedule.get().getSectors());
            sectors.sort(Comparator.comparing(Sector::getRowSymbol));
            return ResponseEntity.ok(sectors);
        }

        return ResponseEntity.ok(Collections.emptySet());
    }
}
