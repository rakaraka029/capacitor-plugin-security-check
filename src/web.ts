import { WebPlugin } from '@capacitor/core';

import type { SecurityCheckPlugin } from './definitions';

export class SecurityCheckWeb extends WebPlugin implements SecurityCheckPlugin {
  async isEmulationDetected(): Promise<{ value: boolean; }> {
    return { value: false };
  }
  async isJailbrokenDetected(): Promise<{ value: boolean; }> {
    return { value: false };
  }
}
