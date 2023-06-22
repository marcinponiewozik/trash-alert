package pl.mpsoft.trashalert.app.schedule;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pl.mpsoft.trashalert.app.schedule.domain.ScheduleGenerator;

@RequestMapping("api/schedule")
@RestController
@AllArgsConstructor
public class ScheduleController {
    private final ScheduleGenerator scheduleGenerator;

    @GetMapping("{teryt}/generate")
    public ResponseEntity<?> getActualSchedule(@PathVariable String teryt) {
        scheduleGenerator.generate(teryt, null, null, 5);
        return ResponseEntity.ok().build();
    }
}
