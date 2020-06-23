package pojos;

import enums.Vendor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
public class VendorDB {
    private Vendor name;
    private Boolean isEnabled = true;

    public VendorDB(Vendor name) {
        this.name = name;
    }
}
