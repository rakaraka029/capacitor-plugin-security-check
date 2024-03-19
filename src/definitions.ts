export interface SecurityCheckPlugin {
  isEmulationDetected(): Promise<{ value: boolean }>;
  isJailbrokenDetected(): Promise<{ value: boolean }>;
  isReverseEngineeringDetected(): Promise<{ value: boolean }>;
  isTampered(bundle: string): Promise<{ value: boolean }>;
}
