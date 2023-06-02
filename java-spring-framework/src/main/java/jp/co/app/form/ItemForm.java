package jp.co.app.form;

import java.io.Serializable;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.NotEmpty;

public class ItemForm implements Serializable {
    private static final long serialVersionUID = 1L;

    @NotNull
    @NotEmpty
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
