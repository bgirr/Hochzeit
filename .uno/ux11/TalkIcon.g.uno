[Uno.Compiler.UxGenerated]
public partial class TalkIcon: Icon
{
    static TalkIcon()
    {
    }
    [global::Uno.UX.UXConstructor]
    public TalkIcon()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        this.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../Assets/icon_talk.png"));
    }
}
