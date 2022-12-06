import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get('api/users')
  getUsers() {
    return [
      { id: 1, name: 'Bushra' },
      { id: 2, name: 'Ahmed' },
      { id: 3, name: 'Malik' },
      { id: 4, name: 'Sarah' },
    ];
  }
}
