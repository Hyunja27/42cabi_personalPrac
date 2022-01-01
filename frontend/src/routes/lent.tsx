import axios from 'axios';

function Lent(){
    const local_back_url = 'http://localhost:4242/auth/login';

    const handler = ()=> {
        axios.post(local_back_url, {
            data:'So Stupid!'
        }).then((res)=> console.log(res.data)).catch((err)=>console.log(err));
    }

    return (
                <div>lent page
                    <button onClick={handler}>post things</button>
                </div>);
}

// const lent = () =>
// {
//     return (
//         <div>lent page
//             <button>post things</button>
//         </div>
//     )
// }

export default Lent;