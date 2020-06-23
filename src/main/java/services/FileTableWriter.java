package services;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import pojos.TableInfoHolder;

@Setter
@Getter
@RequiredArgsConstructor
public class FileTableWriter implements TableWriterInterface{

    private TableInfoHolder tableInfoHolder;

    @Override
    public void write(TableInfoHolder tableInfoHolder) {

    }
}
