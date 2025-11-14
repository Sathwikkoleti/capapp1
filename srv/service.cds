using { ust.Sathwik as s } from '../db/model';

service MyService {

    entity RequestHeader as projection on s.RequestHeader;
    entity RequestItem as projection on s.RequestItem;

}