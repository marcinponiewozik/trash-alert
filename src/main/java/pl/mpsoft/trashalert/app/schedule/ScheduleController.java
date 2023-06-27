package pl.mpsoft.trashalert.app.schedule;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pl.mpsoft.trashalert.app.schedule.domain.ScheduleGenerator;

@RequestMapping("api/schedule")
@RestController
@AllArgsConstructor
public class ScheduleController {
    private final ScheduleGenerator scheduleGenerator;

    @CrossOrigin
    @GetMapping("{teryt}/generate")
    public ResponseEntity<?> getActualSchedule(@PathVariable String teryt) {
        scheduleGenerator.generate(teryt, null, null, 5);
        return ResponseEntity.ok().build();
    }
}
