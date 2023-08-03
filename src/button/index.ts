import { WebLabsChild, WebLabsElement } from "@weblabsjs/core";

class ButtonOptions extends WebLabsElement {

    primary() {
        this.coreElement.classList.add('interact-btn-primary')
        return this
    }

    secondary() {
        return this
    }
    
}

export default function Button(...children: WebLabsChild[]): ButtonOptions {
    
    const btn = new ButtonOptions("button", ...children).class("interact-btn")
    return btn

}