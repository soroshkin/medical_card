package model;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@NamedQueries({
        @NamedQuery(name = Surgery.GET, query = "SELECT s FROM Surgery s WHERE s.id=:id " +
                "AND s.patient.id=:patient_id"),
        @NamedQuery(name = Surgery.GET_ALL, query = "SELECT s FROM Surgery s " +
                "WHERE s.patient.id=:patient_id ORDER BY s.date DESC "),
        @NamedQuery(name = Surgery.DELETE, query = "DELETE FROM Surgery s WHERE s.id=:id AND s.patient.id=:patient_id")

})

@Entity
@Table(name = "surgery", uniqueConstraints = {@UniqueConstraint(columnNames = {"id"})})
public class Surgery extends AbstractBaseEntity {

    public static final String GET = "Surgery.get";
    public static final String GET_ALL = "Surgery.getAll";
    public static final String DELETE = "Visit.delete()";

    @Column(name = "date", nullable = false)
    @NotBlank
    private LocalDateTime date;

    @Column(name = "type", nullable = false)
    @NotBlank
    private String type;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "patient_id")
    @NotNull
    private Patient patient;

    public Surgery() {
    }

    public Surgery(@NotBlank LocalDateTime localDateTime, @NotBlank String type) {
        this.date = localDateTime;
        this.type = type;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime localDateTime) {
        this.date = localDateTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
