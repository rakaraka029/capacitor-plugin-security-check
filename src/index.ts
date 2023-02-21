import { registerPlugin } from '@capacitor/core';

import type { SecurityCheckPlugin } from './definitions';

const SecurityCheck = registerPlugin<SecurityCheckPlugin>('SecurityCheck', {
  web: () => import('./web').then(m => new m.SecurityCheckWeb()),
});

export * from './definitions';
export { SecurityCheck };
