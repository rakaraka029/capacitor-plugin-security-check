export interface SecurityCheckPlugin {
  isEmulationDetected(): Promise<{ value: boolean }>;
  isJailbrokenDetected(): Promise<{ value: boolean }>;
}
