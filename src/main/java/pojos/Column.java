package pojos;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString(exclude = "attributes")
@RequiredArgsConstructor
public class Column {
    private String name;
    private String type;
    private String attributes;
}
