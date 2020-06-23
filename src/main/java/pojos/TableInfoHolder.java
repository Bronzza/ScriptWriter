package pojos;

import enums.Vendor;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Getter
@Setter
public class TableInfoHolder {
    private String tableName;
    private List<Column> columns;
    private List<Index> indexes;
    private List <VendorDB> vendorDBS = new ArrayList<>(3);
    private Boolean isView = true, isOds = false, isArc = true, isAl = true;

    public TableInfoHolder() {
        initializeVendors();
        initializeColumns(5);
        initializeIndexes(2);
    }

    private void initializeVendors() {
        VendorDB hana = new VendorDB(Vendor.HANA);
        VendorDB oracle = new VendorDB(Vendor.ORACLE);
        VendorDB msSql = new VendorDB(Vendor.MSSQL);
        vendorDBS.add(oracle);
        vendorDBS.add(hana);
        vendorDBS.add(msSql);
    }

    private void initializeColumns(int initialSize){
        columns = new LinkedList<>();
        for (int i = 0; i < initialSize; i++) {
            columns.add(new Column());
        }
    }

    private void initializeIndexes(int initialSize){
        indexes = new LinkedList<>();
        for (int i = 0; i < initialSize; i++) {
            indexes.add(new Index());
        }
    }
}
