import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs/Observable';

import { Job } from '../job/job';
import { JobService } from '../services/job.service';

@Component({
  selector: 'app-job-form',
  templateUrl: './job-form.component.html',
  styleUrls: ['./job-form.component.sass']
})
export class JobFormComponent implements OnInit {

  constructor(private jobService: JobService) { }

  ngOnInit() {

  }

}
