import { LightningElement, api, wire } from 'lwc';
import getContactsByAccountId from '@salesforce/apex/AccountContactsController.getContactsByAccountId';

export default class AccountContacts extends LightningElement {
  @api
  recordId;

  @wire(getContactsByAccountId, { accountId: '$recordId' })
  wiredContacts;
}