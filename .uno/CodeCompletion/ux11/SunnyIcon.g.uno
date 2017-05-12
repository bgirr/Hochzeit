[Uno.Compiler.UxGenerated]
public partial class SunnyIcon: Icon
{
    static SunnyIcon()
    {
    }
    [global::Uno.UX.UXConstructor]
    public SunnyIcon()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/icon_sunny.png"));
    }
}
