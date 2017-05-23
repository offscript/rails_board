import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import { Job } from '../job/job';
import { Observable } from 'rxjs/Rx';

import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';

@Injectable()
export class JobService {

	constructor (private http: Http) {}

	private jobsUrl = 'http://localhost:3000/posts';

	//index Jobs
	getJobs() : Observable<Job[]> {
 		return this.http.get(this.jobsUrl)
                    .map(this.extractData)
                    .catch((error:any) =>  Observable.throw(error.json().error || 'Server error'));
		//get request
		/** return this.http.get(this.jobsUrl)
		// unpackage the jobs 
		.map((res:Response) => res.json())
		//errors
		.catch((error:any) =>  Observable.throw(error.json().error || 'Server error')); **/
	}
//
//	createJob(title: string, description: string, location: string) : Observable<Job[]> {
//		return 
//	}

	private extractData(res: Response) {
		let body = res.json();
		console.log(body.data[0]);
		return body.data || { };
	}
}