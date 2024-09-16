import { LightningElement } from 'lwc';
import methodName from '@salesforce/apex/SomeComponentController.methodName';

export default class Some_component extends LightningElement {
    isLoading = true;
    async connectedCallback(){
        let int = await methodName();
        console.log(int);
        this.isLoading = false;
    }
}