package model;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serial;
import java.io.Serializable;
import java.sql.SQLException;

public class Threater implements Serializable {
    Counter counter;
    public Threater(Counter counter) {
        this.counter = counter;
    }

    @Serial
    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException, SQLException {

        try{
            in.defaultReadObject();
            this.counter.getLocation();
        } catch (Exception e) {
           throw new SQLException(e);

        }
    }

}

