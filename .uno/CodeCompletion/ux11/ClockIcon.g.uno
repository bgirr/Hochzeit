[Uno.Compiler.UxGenerated]
public partial class ClockIcon: Icon
{
    static ClockIcon()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ClockIcon()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/icon_clock.png"));
    }
}
