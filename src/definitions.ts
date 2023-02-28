export interface SecurityCheckPlugin {
  isEmulationDetected(): Promise<{ value: boolean }>;
}
