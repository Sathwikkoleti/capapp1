namespace ust.Sathwik;

entity RequestHeader {
    key RequestNo : UUID;
    RequestDescr :String(40);
    TotalPrice : Decimal(10, 2);
    items : Composition of many RequestItem on items.RequestHeader = $self
}
entity RequestItem {
    key ItemNo : UUID;
    RequestHeader : Association to RequestHeader;
    ItemDescr   : String(40);
    Quantity  : String(10);
    
}