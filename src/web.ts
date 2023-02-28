import { WebPlugin } from '@capacitor/core';

import type { SecurityCheckPlugin } from './definitions';

export class SecurityCheckWeb extends WebPlugin implements SecurityCheckPlugin {
  async isEmulationDetected(): Promise<{ value: boolean; }> {
    return { value: false };
  }
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
