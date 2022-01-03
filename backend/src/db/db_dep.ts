import mariadb from 'mariadb';
import {getUser} from './query';

const makePool = mariadb.createPool(
    {
        host: 'localhost',
        user: 'root'
    }
)

export async function connection() {
    let pool, row;

    try{
        pool = await makePool.getConnection()
        getUser(pool)
    }
    catch(err){
        throw err;
    }
    finally
    {
        if (pool)
            pool.end();
        return;
    }
}