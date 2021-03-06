import {user, lent, cabinetList, cabinetInfo, cabinetLent} from '../user'

//사용자 확인 - 사용자가 없는 경우, addUser, 있는 경우, getUser
export function checkUser(client:any){
	const content:string = `select * from user where user_id = ${user.user_id}`;
	client.query(content).then((err:any, res:any)=>{
		if (err) throw err;
		// console.log(res);
		if (!res.length)
			addUser(client);
		else
			getUser(client);
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
}

//사용자가 없는 경우, user 값 생성
export function addUser(client:any){
	const content:string = `insert into user value('${user.user_id}', '${user.intra_id}', '${user.auth}', '${user.email}', '${user.phone}')`;
	client.query(content).then((err:any, res:any)=>{
		if (err) throw err;
		// console.log(res);
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
}
//본인 정보 및 렌트 정보 - 리턴 페이지
export function getUser(client:any){
	const content:string = `select * from lent where lent_user_id=${user.user_id}`;
	client.query(content).then((err:any, res:any)=>{
		if (err) throw err;
		// console.log(res);
		// console.log(typeof res);
		if (res.length !== 0){ // lent page
			lent.lent_id = res[0].lent_id;
			lent.lent_cabinet_id = res[0].lent_cabinet_id;
			lent.lent_user_id = res[0].lent_user_id;
			lent.lent_time = res[0].lent_time;
			lent.expire_time = res[0].expire_time;
			lent.extension = res[0].extension;
		}
		// console.log(res.length);
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
}
//lent & user
export function getLentUser(client:any){
	const content = `select u.intra_id, l.* from user u right join lent l on l.lent_user_id=u.user_id`;
	console.log('getLentUser');
	client.query(content).then((err:any, res:any)=>{
		if (err) throw err;
		// console.log(res);
		for (let i = 0; i < res.length; i++){
			cabinetLent.push(res[i]);
		}
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
}
//location info
export function locationInfo(client:any){
	const content:string = `select distinct cabinet.location from cabinet`;

	// console.log('location info');
	client.query(content).then(async (err:any, res:any)=>{
		if (err) throw err;
		let i = -1;
		// for (const r of res){
		// 	cabinetList.location?.push(r.location);
		// 	await floorInfo(client, r.location);
		// }

		// while (res[++i]){
		// 	cabinetList.location?.push(res[i].location);
		// 	floorInfo(client, res[i].location);
		// }

		res.forEach((element:any) => {
			cabinetList.location?.push(element.location);
			floorInfo(client, element.location);
		});
		// console.log(info);
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
}
//floor info with exact location
export function floorInfo(client:any, location:string):Array<number>{
	const content:string = `select distinct cabinet.floor from cabinet where location='${location}' order by floor`;
	let floorList:Array<number> = [];
	let list:Array<Array<string>> = [];
	let tmpCabinetList:Array<Array<Array<cabinetInfo>>> = [];

	// console.log('floor info');
	client.query(content).then(async (err:any, res:any)=>{
		if (err) throw err;
		let i = -1;

		// for (const r of res){
		// 	floorList.push(r.floor);
		// 	await list.push(sectionInfo(client, location, r.floor, tmpCabinetList));
		// }

		// while (res[++i]){
		// 	floorList.push(res[i].floor);
		// 	list.push(sectionInfo(client, location, res[i].floor, tmpCabinetList));
		// }

		res.forEach((element:any) => {
			floorList.push(element.floor);
			list.push(sectionInfo(client, location, element.floor, tmpCabinetList));
		});

		cabinetList.floor?.push(floorList);
		cabinetList.section?.push(list);
		cabinetList.cabinet?.push(tmpCabinetList);
		// console.log(floorList);
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
	return floorList;
}
//section info with exact floor
export function sectionInfo(client:any, location:string, floor:number, list:any):Array<string>{
	const content:string = `select distinct cabinet.section from cabinet where location='${location}' and floor=${floor} order by section`;
	let sectionList:Array<string> = [];
	let cabinetList:Array<Array<cabinetInfo>> = [];

	// console.log('section info');
	client.query(content).then(async (err:any, res:any)=>{
		if (err) throw err;
		let i = -1;

		// for (const r of res){
		// 	sectionList.push(r.section);
		// 	await cabinetList.push(getCabinetInfo(client, location, floor, r.section));
		// }

		// while (res[++i]){
		// 	sectionList.push(res[i].section);
		// 	cabinetList.push(getCabinetInfo(client, location, floor, res[i].section));
		// }

		res.forEach((element:any) => {
			sectionList.push(element.section);
		 	cabinetList.push(getCabinetInfo(client, location, floor, element.section));
		});

		// console.log(sectionList);
		list.push(cabinetList);
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
	return sectionList;
}
export function getCabinetInfo(client:any, location:string, floor:number, section:string):Array<cabinetInfo>{
	const content:string = `select * from cabinet where location='${location}' and floor=${floor} and section='${section}' and activation=1 order by cabinet_num`;
	let cabinetList:Array<cabinetInfo> = [];

	client.query(content).then(async (err:any, res:any)=>{
		if (err) throw err;
		let i = -1;

		// for (const r of res){
		// 	await cabinetList.push(r);
		// }

		// while (res[++i]){
		// 	cabinetList.push(res[i]);
		// }

		res.forEach((element:any) => {
			cabinetList.push(element);
		});
		// console.log(cabinetList);
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
	return cabinetList;
}
//lent 값 생성
export function createLent(client:any, cabinet_id:number){
	const content:string = `INSERT INTO lent (lent_cabinet_id, lent_user_id, lent_time, expire_time, extension) VALUES (${cabinet_id}, ${user.user_id}, now(), ADDDATE(now(), 30), 0)`;
	client.query(content).then((err:any, res:any)=>{
		if (err) throw err;
		console.log(res);
	  }).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
}

//lent_log 값 생성 후 lent 값 삭제 (skim update)
export function createLentLog(client:any){
	const content:string = `select * from lent where lent_user_id=${user.user_id}`;
	client.query(content).then((err:any, res:any)=>{
		if (err) throw err;
		if (res[0] === undefined)
			return ;
		const lent_id = res[0].lent_id;
		const user_id = res[0].lent_user_id;
		const cabinet_id = res[0].lent_cabinet_id;
		const lent_time = res[0].lent_time;
		client.query(`insert into lent_log (log_user_id, log_cabinet_id, lent_time, return_time) values (${user_id}, ${cabinet_id}, '${lent_time}', now())`);
		client.query(`delete from lent where lent_cabinet_id=${lent_id}`)
		lent.lent_id = -1;
		lent.lent_cabinet_id = -1;
		lent.lent_user_id = -1;
		lent.lent_time = '';
		lent.expire_time = '';
		lent.extension = false;
	}).catch((e:any)=>{
		console.log(e);
		throw(e)
	});
}