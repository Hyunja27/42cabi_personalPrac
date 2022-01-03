import mariadb from 'mariadb'

const pool = mariadb.createPool({
	host: 'localhost',
	user: 'root',
	password: '0000',
	database: 'spark_42cabi'
});


export async function getUser() {
	let con, row;
    console.log('trying..');
	try {
		con = await pool.getConnection();
		console.log('connected');
		row = await con.query('SELECT * FROM user');
	} 
    catch (err) {
		throw err;
	}
    finally {
		if (con) con.end();
		return (row);
	}
}