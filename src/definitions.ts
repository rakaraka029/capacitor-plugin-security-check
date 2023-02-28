export interface SecurityCheckPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  isEmulationDetected(): Promise<{ value: boolean }>;
}
