import { Item } from './item.model';
import { Status } from './status.model';

export class Order {
    id: number;
    orderNum: number;
    present: number;
    time:number;
    itemList:Item[];
    statusList:Status[];
    startDate:string;
    endDate:string;
    manager:string;
  }


