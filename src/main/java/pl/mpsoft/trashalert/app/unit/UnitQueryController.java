package pl.mpsoft.trashalert.app.unit;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Set;

@RequestMapping("api/unit")
@RestController
@AllArgsConstructor
class UnitQueryController {
    private final UnitRepository repo;

    @CrossOrigin
    @GetMapping
    public ResponseEntity<?> getUnits(@RequestParam(required = false) String name) {
        Set<Unit> result;

        if (name == null || name.isEmpty()) {
            result = repo.findTop10ByLicenseEndDateGreaterThanEqual(LocalDate.now());
        } else {
            result = repo.findTop10ByLicenseEndDateGreaterThanEqualAndNameContainingIgnoreCase(LocalDate.now(), name);
        }
        return ResponseEntity.ok(result);
    }
}
