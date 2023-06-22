package pl.mpsoft.trashalert.app.shared;

import jakarta.persistence.MappedSuperclass;
import jakarta.persistence.Version;

import java.io.Serializable;
import java.util.Objects;
import java.util.UUID;

@MappedSuperclass
public abstract class BaseEntity implements Serializable, Identifiable {


    private UUID uuid = UUID.randomUUID();

    @Version
    private Long version = 0L;

    public int hashCode() {
        return Objects.hash(uuid);
    }

    public boolean equals(Object that) {
        return this == that || that instanceof BaseEntity
                && Objects.equals(uuid, ((BaseEntity) that).uuid);
    }

    public Long getVersion() {
        return version;
    }

    public UUID getUuid() {
        return uuid;
    }
}
