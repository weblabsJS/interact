/**
 * Welcome to a demo component!
 */

import { WebLabsElement } from "@weblabsjs/core";

//import any types or functions from the core library
//if required by the specific component

export class ComponentProp extends WebLabsElement {

    //define any custom function that your custom
    //component could use.

    customFunction() {

        //do anything with the component here
        this.coreElement.innerHTML = "This method modifies the html"

        //must return 'this'
        return this

    }

}

export default function CustomComponent(/* Take arguments if required */ ) {

    //create a new component, based on WebLabsElement
    const component = new ComponentProp("div")

    //now you can modify component before returning it.
    component.class("modified-component")
    return component

}