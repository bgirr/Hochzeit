[Uno.Compiler.UxGenerated]
public partial class Cross: Fuse.Controls.Panel
{
    static Cross()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Cross()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Controls.Rectangle();
        var temp1 = new global::Fuse.Controls.Rectangle();
        this.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        this.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        this.Alignment = Fuse.Elements.Alignment.Center;
        temp.Color = float4(1f, 1f, 1f, 0.6f);
        temp.Width = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        temp.Height = new Uno.UX.Size(35f, Uno.UX.Unit.Percent);
        temp1.Color = float4(1f, 1f, 1f, 0.6f);
        temp1.Width = new Uno.UX.Size(35f, Uno.UX.Unit.Percent);
        temp1.Height = new Uno.UX.Size(2f, Uno.UX.Unit.Unspecified);
        this.TransformOrigin = Fuse.Elements.TransformOrigins.Center;
        this.Children.Add(temp);
        this.Children.Add(temp1);
    }
}
