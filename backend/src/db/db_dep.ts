import mariadb from 'mariadb';
import {user, cabinetList} from '../user';

const con = mariadb.createPool({
	host: 'localhost',
	user: 'root',
	password: '0000',
	database: '42cabi_DB',
	dateStrings: true
});

export async function connection(queryFunction:Function) {
    let pool;
    // console.log('connected_1!');
    try{
        pool = await con.getConnection();
	    pool.query('USE 42cabi_DB');
	    // console.log('connected_2!');
        try{
            queryFunction(pool);}
        catch(e){
            console.log(e);
        }
    }catch(err){
	    console.log('error !');
        throw err;
    }finally{
        if (pool) pool.end();
	    // console.log(user);
	    // console.log(cabinetList);
	    // console.log('end of connection!');
        return ;
    }
}

export async function connectionForLent(queryFunction:any, cabinet_id:number) {
    let pool;
    try{
        pool = await con.getConnection()
        try{
            queryFunction(pool, cabinet_id);}
        catch(e){
            console.log(e);
        }
    }catch(err){
        throw err;
    }finally{
        if (pool) pool.end();
        return ;
    }
}
