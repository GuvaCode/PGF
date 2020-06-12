unit phxAudio_Uos;

{$I phxConfig.inc}

interface

uses
  Classes, SysUtils, Uos, phxClasses, phxAudio;

type
TPHXUosDevice = class;

// Provider for Uos
// See: @link(TPHXAudioProvider)
//------------------------------------------------------------------------------
{ TPHXUosProvider }
TPHXUosProvider = class(TPHXAudioProvider)
  protected
    // Return the name of the provider
    function GetName: String; override;
  public
    constructor Create; override;
    // Load the provider
    function CreateDevice(const Flags: Cardinal): IPHXAudioDevice; override;
  end;
///

{ TPHXUosSample }

TPHXUosSample = class(TPHXAudioSample)
  private
    FDevice: TPHXUosDevice;
    FHandle: HSAMPLE;
    FInfo  : BASS_SAMPLE;
  protected
    procedure LoadSample(Stream: TStream); override;

    procedure SetVolume(const Volume: Single); override;
  public
    constructor Create(ADevice: TPHXUosDevice);
    destructor Destroy; override;

    // Play this sample
    procedure Play; override;
    // Play this sample with a given volume
    procedure Play(const Volume: Single); override;
     // Stops all instances of this sample.
    procedure Stop; override;

    // The bass handle
    property Device: TPHXUosDevice read FDevice;
    // The bass handle
    property Handle: HSAMPLE read FHandle write FHandle;
  end;

// Audio stream for Bass
// See: @link(TPHXAudioStream)
//------------------------------------------------------------------------------

{ TPHXUosStream }

TPHXUosStream = class(TPHXAudioStream)
  private
    FDevice: TPHXUosDevice;
    FHandle: HSTREAM;
  protected
    procedure LoadStream(const Name: String); override;

    function GetDuration: Double; override;
    function GetPosition: Double; override;

    procedure SetVolume(const Value: Single); override;
  public
    constructor Create(ADevice: TPHXUosDevice);
    destructor Destroy; override;

    procedure Play; override;
    procedure Stop; override;
    procedure Restart; override;
    // The Uos handle
    property Device: TPHXUosDevice read FDevice;
    // The bass handle
    property Handle: HSTREAM read FHandle write FHandle;
  end;

{ TPHXUosDevice }
TPHXUosDevice = class(TInterfacedObject, IPHXAudioDevice)
  private
    // Retrieves the current master volume level.
    function GetVolume: Double;
    // Sets the output master volume.
    procedure SetVolume(const Value: Double);
  public
    constructor Create;
    destructor Destroy; override;

    // Enumerate all supported devices
    procedure EnumerateDevices(List: TPHXSoundDeviceList);

    // Initialize the audio engine using the default device
    procedure Initialize; overload;
    // Initialize the audio engine using a proviced device
    procedure Initialize(const Device: TPHXSoundDevice); overload;

    // Create a audio sample
    function CreateSample: TPHXAudioSample;
    // Create a audio stream
    function CreateStream: TPHXAudioStream;

    // Update the audio engine
    procedure Update;
    // Stops all channels
    procedure Stop;
    // Pause all channels
    procedure Pause;
    // Resume all active channels
    procedure Resume;
  end;

implementation

{ TPHXUosSample }

procedure TPHXUosSample.LoadSample(Stream: TStream);
begin

end;

procedure TPHXUosSample.SetVolume(const Volume: Single);
begin
  inherited SetVolume(Volume);
end;

constructor TPHXUosSample.Create(ADevice: TPHXUosDevice);
begin

end;

destructor TPHXUosSample.Destroy;
begin
  inherited Destroy;
end;

procedure TPHXUosSample.Play;
begin

end;

procedure TPHXUosSample.Play(const Volume: Single);
begin

end;

procedure TPHXUosSample.Stop;
begin

end;

{ TPHXUosStream }

procedure TPHXUosStream.LoadStream(const Name: String);
begin

end;

function TPHXUosStream.GetDuration: Double;
begin

end;

function TPHXUosStream.GetPosition: Double;
begin

end;

procedure TPHXUosStream.SetVolume(const Value: Single);
begin
  inherited SetVolume(Value);
end;

constructor TPHXUosStream.Create(ADevice: TPHXUosDevice);
begin

end;

destructor TPHXUosStream.Destroy;
begin
  inherited Destroy;
end;

procedure TPHXUosStream.Play;
begin

end;

procedure TPHXUosStream.Stop;
begin

end;

procedure TPHXUosStream.Restart;
begin

end;

{ TPHXUosDevice }

function TPHXUosDevice.GetVolume: Double;
begin

end;

procedure TPHXUosDevice.SetVolume(const Value: Double);
begin

end;

constructor TPHXUosDevice.Create;
begin

end;

destructor TPHXUosDevice.Destroy;
begin
  inherited Destroy;
end;

procedure TPHXUosDevice.EnumerateDevices(List: TPHXSoundDeviceList);
begin

end;

procedure TPHXUosDevice.Initialize;
begin

end;

procedure TPHXUosDevice.Initialize(const Device: TPHXSoundDevice);
begin

end;

function TPHXUosDevice.CreateSample: TPHXAudioSample;
begin

end;

function TPHXUosDevice.CreateStream: TPHXAudioStream;
begin

end;

procedure TPHXUosDevice.Update;
begin

end;

procedure TPHXUosDevice.Stop;
begin

end;

procedure TPHXUosDevice.Pause;
begin

end;

procedure TPHXUosDevice.Resume;
begin

end;

{ TPHXUosProvider }

function TPHXUosProvider.GetName: String;
begin
  Result:= 'UOS';
end;

constructor TPHXUosProvider.Create;
begin
  inherited;
end;

function TPHXUosProvider.CreateDevice(const Flags: Cardinal): IPHXAudioDevice;
begin
  Result:= TPHXUosDevice.Create;
end;

end.
