[Uno.Compiler.UxGenerated]
public partial class MainView: Fuse.App
{
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly MainView __parent;
        [Uno.WeakReference] internal readonly MainView __parentInstance;
        public Template(MainView parent, MainView parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::CalendarItem();
            __self.MinHeight = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
            return __self;
        }
    }
    [Uno.Compiler.UxGenerated]
    public partial class Template1: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly MainView __parent;
        [Uno.WeakReference] internal readonly MainView __parentInstance;
        public Template1(MainView parent, MainView parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template1()
        {
        }
        public override object New()
        {
            var __self = new global::CalendarItem();
            __self.MinHeight = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
            return __self;
        }
    }
    global::Uno.UX.Property<bool> showItems_Value_inst;
    global::Uno.UX.Property<float> itemsScrollView_Opacity_inst;
    global::Uno.UX.Property<object> temp_Items_inst;
    global::Uno.UX.Property<float> itemsScrollViewLocations_Opacity_inst;
    global::Uno.UX.Property<object> temp1_Items_inst;
    internal global::Fuse.Controls.StackPanel MenuItem;
    internal global::MenuText MenuItem1;
    internal global::MenuText MenuItem2;
    internal global::MenuText MenuItem3;
    internal global::MenuText MenuItem4;
    internal global::MenuText MenuItem5;
    internal global::Fuse.Controls.Panel leftHeadline;
    internal global::Fuse.Triggers.WhileFalse hideHeadlines;
    internal global::Fuse.Triggers.WhileTrue showItems;
    internal global::Fuse.Controls.ScrollView itemsScrollView;
    internal global::Fuse.Triggers.WhileTrue showLocations;
    internal global::Fuse.Controls.ScrollView itemsScrollViewLocations;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "MenuItem",
        "MenuItem1",
        "MenuItem2",
        "MenuItem3",
        "MenuItem4",
        "MenuItem5",
        "leftHeadline",
        "hideHeadlines",
        "showItems",
        "itemsScrollView",
        "showLocations",
        "itemsScrollViewLocations"
    };
    static MainView()
    {
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.Linear, "Linear");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuadraticIn, "QuadraticIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuadraticOut, "QuadraticOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuadraticInOut, "QuadraticInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.CubicIn, "CubicIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.CubicOut, "CubicOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.CubicInOut, "CubicInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuarticIn, "QuarticIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuarticOut, "QuarticOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuarticInOut, "QuarticInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuinticIn, "QuinticIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuinticOut, "QuinticOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.QuinticInOut, "QuinticInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.SinusoidalIn, "SinusoidalIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.SinusoidalOut, "SinusoidalOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.SinusoidalInOut, "SinusoidalInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.ExponentialIn, "ExponentialIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.ExponentialOut, "ExponentialOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.ExponentialInOut, "ExponentialInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.CircularIn, "CircularIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.CircularOut, "CircularOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.CircularInOut, "CircularInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.ElasticIn, "ElasticIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.ElasticOut, "ElasticOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.ElasticInOut, "ElasticInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.BackIn, "BackIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.BackOut, "BackOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.BackInOut, "BackInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.BounceIn, "BounceIn");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.BounceOut, "BounceOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Animations.Easing.BounceInOut, "BounceInOut");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Transparent, "Transparent");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Transparent, "Transparent");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Black, "Black");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Black, "Black");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Silver, "Silver");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Silver, "Silver");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Gray, "Gray");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Gray, "Gray");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.White, "White");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.White, "White");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Maroon, "Maroon");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Maroon, "Maroon");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Red, "Red");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Red, "Red");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Purple, "Purple");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Purple, "Purple");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Fuchsia, "Fuchsia");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Fuchsia, "Fuchsia");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Green, "Green");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Green, "Green");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Lime, "Lime");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Lime, "Lime");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Olive, "Olive");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Olive, "Olive");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Yellow, "Yellow");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Yellow, "Yellow");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Navy, "Navy");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Navy, "Navy");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Blue, "Blue");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Blue, "Blue");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Teal, "Teal");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Teal, "Teal");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Colors.Aqua, "Aqua");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Drawing.Brushes.Aqua, "Aqua");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TransformOrigins.TopLeft, "TopLeft");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TransformOrigins.Center, "Center");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TransformOrigins.Anchor, "Anchor");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TransformOrigins.HorizontalBoxCenter, "HorizontalBoxCenter");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TransformOrigins.VerticalBoxCenter, "VerticalBoxCenter");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TranslationModes.TransformOriginOffset, "TransformOriginOffset");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TranslationModes.PositionOffset, "PositionOffset");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TranslationModes.SizeFactor, "SizeFactor");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Elements.TranslationModes.Size, "Size");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.TranslationModes.Size, "Size");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.Actions.GiveFocus.Singleton, "GiveFocus");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.WhileKeyboardVisible.Keyboard, "Keyboard");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.LayoutTransition.PositionLayoutChange, "LayoutChange");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.LayoutTransition.SizeLayoutChange, "LayoutChange");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.LayoutTransition.WorldPositionChange, "WorldPositionChange");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.LayoutTransition.PositionChange, "PositionChange");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.LayoutTransition.ResizeSizeChange, "SizeChange");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.LayoutTransition.ScalingSizeChange, "SizeChange");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.IScrolledLengths.Points, "Points");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.IScrolledLengths.Pixels, "Pixels");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.IScrolledLengths.ContentSize, "ContentSize");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Triggers.IScrolledLengths.ScrollViewSize, "ScrollViewSize");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Resources.MemoryPolicy.PreloadRetain, "PreloadRetain");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Resources.MemoryPolicy.UnloadUnused, "UnloadUnused");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Resources.MemoryPolicy.UnloadInBackgroundPolicy, "UnloadInBackground");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.Thin, "Thin");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.Light, "Light");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.Regular, "Regular");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.Medium, "Medium");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.Bold, "Bold");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.ThinItalic, "ThinItalic");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.LightItalic, "LightItalic");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.Italic, "Italic");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.MediumItalic, "MediumItalic");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.BoldItalic, "BoldItalic");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.Font.PlatformDefault, "PlatformDefault");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.ScalingModes.Identity, "Identity");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.TranslationModes.Local, "Local");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.TranslationModes.ParentSize, "ParentSize");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.TranslationModes.Width, "Width");
        global::Uno.UX.Resource.SetGlobalKey(global::Fuse.TranslationModes.Height, "Height");
    }
    [global::Uno.UX.UXConstructor]
    public MainView()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp2 = new global::Fuse.Reactive.FuseJS.DiagnosticsImplModule();
        var temp3 = new global::Fuse.Reactive.FuseJS.Http();
        var temp4 = new global::Fuse.Reactive.FuseJS.TimerModule();
        var temp5 = new global::Fuse.Drawing.BrushConverter();
        var temp6 = new global::Fuse.Triggers.BusyTaskModule();
        var temp7 = new global::Fuse.Testing.UnoTestingHelper();
        var temp8 = new global::Fuse.FileSystem.FileSystemModule();
        var temp9 = new global::Fuse.Storage.StorageModule();
        var temp10 = new global::Fuse.WebSocket.WebSocketClientModule();
        var temp11 = new global::Polyfills.Window.WindowModule();
        var temp12 = new global::FuseJS.Globals();
        var temp13 = new global::FuseJS.Lifecycle();
        var temp14 = new global::FuseJS.Environment();
        var temp15 = new global::FuseJS.Base64();
        var temp16 = new global::FuseJS.Bundle();
        var temp17 = new global::FuseJS.FileReaderImpl();
        var temp18 = new global::FuseJS.UserEvents();
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        showItems = new global::Fuse.Triggers.WhileTrue();
        showItems_Value_inst = new CircleMenu_FuseTriggersWhileBool_Value_Property(showItems, __selector0);
        itemsScrollView = new global::Fuse.Controls.ScrollView();
        itemsScrollView_Opacity_inst = new CircleMenu_FuseElementsElement_Opacity_Property(itemsScrollView, __selector1);
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new CircleMenu_FuseReactiveEach_Items_Property(temp, __selector2);
        var temp19 = new global::Fuse.Reactive.Data("items");
        itemsScrollViewLocations = new global::Fuse.Controls.ScrollView();
        itemsScrollViewLocations_Opacity_inst = new CircleMenu_FuseElementsElement_Opacity_Property(itemsScrollViewLocations, __selector1);
        var temp1 = new global::Fuse.Reactive.Each();
        temp1_Items_inst = new CircleMenu_FuseReactiveEach_Items_Property(temp1, __selector2);
        var temp20 = new global::Fuse.Reactive.Data("locations");
        var temp21 = new global::Fuse.Controls.ClientPanel();
        var temp22 = new global::Fuse.Drawing.ImageFill();
        var temp23 = new global::Fuse.iOS.StatusBarConfig();
        var temp24 = new global::Fuse.Controls.Panel();
        var temp25 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp26 = new global::Fuse.Controls.StackPanel();
        var temp27 = new global::StampText();
        var temp28 = new global::StampText();
        var temp29 = new global::HamburgerIcon();
        var temp30 = new global::Fuse.Gestures.Clicked();
        var temp31 = new global::Fuse.Triggers.Actions.Toggle();
        var temp32 = new global::Fuse.Animations.Scale();
        MenuItem = new global::Fuse.Controls.StackPanel();
        var temp33 = new global::Fuse.Gestures.Clicked();
        var temp34 = new global::Fuse.Triggers.Actions.Toggle();
        var temp35 = new global::Fuse.Animations.Scale();
        var temp36 = new global::Fuse.Controls.Panel();
        var temp37 = new global::Fuse.Gestures.Clicked();
        var temp38 = new global::Fuse.Triggers.Actions.Toggle();
        MenuItem1 = new global::MenuText();
        var temp39 = new global::Fuse.Controls.Panel();
        var temp40 = new global::Fuse.Gestures.Clicked();
        var temp41 = new global::Fuse.Triggers.Actions.Set<bool>(showItems_Value_inst);
        MenuItem2 = new global::MenuText();
        var temp42 = new global::Fuse.Controls.Panel();
        var temp43 = new global::Fuse.Gestures.Clicked();
        var temp44 = new global::Fuse.Triggers.Actions.Set<bool>(showItems_Value_inst);
        MenuItem3 = new global::MenuText();
        var temp45 = new global::Fuse.Controls.Panel();
        var temp46 = new global::Fuse.Gestures.Clicked();
        var temp47 = new global::Fuse.Triggers.Actions.Set<bool>(showItems_Value_inst);
        MenuItem4 = new global::MenuText();
        var temp48 = new global::Fuse.Controls.Panel();
        var temp49 = new global::Fuse.Gestures.Clicked();
        var temp50 = new global::Fuse.Triggers.Actions.Set<bool>(showItems_Value_inst);
        MenuItem5 = new global::MenuText();
        leftHeadline = new global::Fuse.Controls.Panel();
        hideHeadlines = new global::Fuse.Triggers.WhileFalse();
        var temp51 = new global::Fuse.Animations.Move();
        var temp52 = new global::Fuse.Animations.Move();
        var temp53 = new global::Fuse.Controls.Panel();
        var temp54 = new global::WobbleButton();
        var temp55 = new global::Fuse.Controls.Panel();
        var temp56 = new global::Fuse.Triggers.RemovingAnimation();
        var temp57 = new global::Fuse.Animations.Change<float>(itemsScrollView_Opacity_inst);
        var temp58 = new global::Fuse.Controls.StackPanel();
        var temp59 = new Template(this, this);
        var temp60 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp19, __g_nametable, Fuse.Reactive.BindingMode.Default);
        var temp61 = new global::Fuse.Controls.Panel();
        showLocations = new global::Fuse.Triggers.WhileTrue();
        var temp62 = new global::Fuse.Triggers.RemovingAnimation();
        var temp63 = new global::Fuse.Animations.Change<float>(itemsScrollViewLocations_Opacity_inst);
        var temp64 = new global::Fuse.Controls.StackPanel();
        var temp65 = new Template1(this, this);
        var temp66 = new global::Fuse.Reactive.DataBinding(temp1_Items_inst, temp20, __g_nametable, Fuse.Reactive.BindingMode.Default);
        temp21.Background = temp22;
        temp21.Children.Add(temp23);
        temp21.Children.Add(temp24);
        temp21.Children.Add(temp25);
        temp21.Children.Add(temp26);
        temp21.Children.Add(temp29);
        temp21.Children.Add(MenuItem);
        temp21.Children.Add(leftHeadline);
        temp21.Children.Add(hideHeadlines);
        temp21.Children.Add(temp53);
        temp22.WrapMode = Fuse.Drawing.WrapMode.ClampToEdge;
        temp22.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp22.Opacity = 1f;
        temp22.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../Assets/bg.jpeg"));
        temp23.Style = Fuse.Platform.StatusBarStyle.Light;
        temp25.LineNumber = 9;
        temp25.FileName = "MainView.ux";
        temp25.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../MainView.js"));
        temp26.Padding = float4(170f, 0f, 0f, 0f);
        temp26.Children.Add(temp27);
        temp26.Children.Add(temp28);
        temp27.Value = "Ursi + Beeni";
        temp27.FontSize = 80f;
        temp28.Value = "  14.10.2017";
        temp28.FontSize = 80f;
        temp29.Color = float4(0f, 0f, 0f, 1f);
        temp29.StretchMode = Fuse.Elements.StretchMode.Fill;
        temp29.Width = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp29.Height = new Uno.UX.Size(17f, Uno.UX.Unit.Unspecified);
        temp29.Alignment = Fuse.Elements.Alignment.TopLeft;
        temp29.Margin = float4(20f, 20f, 20f, 20f);
        temp29.Children.Add(temp30);
        temp30.Animators.Add(temp32);
        temp30.Actions.Add(temp31);
        temp31.Target = hideHeadlines;
        temp32.Factor = 0.9f;
        temp32.Duration = 0.05;
        temp32.Easing = Fuse.Animations.Easing.QuadraticInOut;
        MenuItem.Name = __selector3;
        MenuItem.Children.Add(temp33);
        MenuItem.Children.Add(temp36);
        MenuItem.Children.Add(temp39);
        MenuItem.Children.Add(temp42);
        MenuItem.Children.Add(temp45);
        MenuItem.Children.Add(temp48);
        temp33.Animators.Add(temp35);
        temp33.Actions.Add(temp34);
        temp34.Target = hideHeadlines;
        temp35.Factor = 0.9f;
        temp35.Duration = 0.05;
        temp35.Easing = Fuse.Animations.Easing.QuadraticInOut;
        temp36.Children.Add(temp37);
        temp36.Children.Add(MenuItem1);
        temp37.Actions.Add(temp38);
        temp38.Target = showItems;
        MenuItem1.Value = "Ablaufplan";
        MenuItem1.FontSize = 40.3f;
        MenuItem1.Margin = float4(20f, 100f, 0f, 0f);
        MenuItem1.Name = __selector4;
        temp39.Children.Add(temp40);
        temp39.Children.Add(MenuItem2);
        temp40.Actions.Add(temp41);
        temp41.Value = false;
        MenuItem2.Value = "Locations";
        MenuItem2.FontSize = 40.3f;
        MenuItem2.Margin = float4(20f, 20f, 0f, 0f);
        MenuItem2.Name = __selector5;
        temp42.Children.Add(temp43);
        temp42.Children.Add(MenuItem3);
        temp43.Actions.Add(temp44);
        temp44.Value = false;
        MenuItem3.Value = "Info";
        MenuItem3.FontSize = 40.3f;
        MenuItem3.Margin = float4(20f, 20f, 0f, 0f);
        MenuItem3.Name = __selector6;
        temp45.Children.Add(temp46);
        temp45.Children.Add(MenuItem4);
        temp46.Actions.Add(temp47);
        temp47.Value = false;
        MenuItem4.Value = "Bilder";
        MenuItem4.FontSize = 40.3f;
        MenuItem4.Margin = float4(20f, 20f, 0f, 0f);
        MenuItem4.Name = __selector7;
        temp48.Children.Add(temp49);
        temp48.Children.Add(MenuItem5);
        temp49.Actions.Add(temp50);
        temp50.Value = false;
        MenuItem5.Value = "Kontakt";
        MenuItem5.FontSize = 40.3f;
        MenuItem5.Margin = float4(20f, 20f, 0f, 0f);
        MenuItem5.Name = __selector8;
        leftHeadline.Color = float4(1f, 1f, 1f, 1f);
        leftHeadline.Width = new Uno.UX.Size(250f, Uno.UX.Unit.Unspecified);
        leftHeadline.Height = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        leftHeadline.Alignment = Fuse.Elements.Alignment.Left;
        leftHeadline.Padding = float4(30f, 0f, 0f, 0f);
        leftHeadline.Opacity = 0.3f;
        leftHeadline.Name = __selector9;
        hideHeadlines.Bypass = Fuse.Triggers.TriggerBypassMode.Standard;
        hideHeadlines.Name = __selector10;
        hideHeadlines.Animators.Add(temp51);
        hideHeadlines.Animators.Add(temp52);
        temp51.X = -1.2f;
        temp51.Duration = 0.5;
        temp51.RelativeTo = Fuse.TranslationModes.Size;
        temp51.Target = leftHeadline;
        temp51.Easing = Fuse.Animations.Easing.CircularInOut;
        temp52.X = -1.2f;
        temp52.Duration = 0.5;
        temp52.RelativeTo = Fuse.TranslationModes.Size;
        temp52.Target = MenuItem;
        temp52.Easing = Fuse.Animations.Easing.CircularInOut;
        temp53.Children.Add(temp54);
        temp53.Children.Add(temp55);
        temp53.Children.Add(temp61);
        temp54.Width = new Uno.UX.Size(300f, Uno.UX.Unit.Unspecified);
        temp54.Height = new Uno.UX.Size(300f, Uno.UX.Unit.Unspecified);
        temp54.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp54.Offset = new Uno.UX.Size2(new Uno.UX.Size(100f, Uno.UX.Unit.Unspecified), new Uno.UX.Size(100f, Uno.UX.Unit.Unspecified));
        temp55.Margin = float4(20f, 0f, 0f, 0f);
        temp55.Padding = float4(0f, 250f, 0f, 0f);
        temp55.Children.Add(showItems);
        showItems.Name = __selector11;
        showItems.Nodes.Add(itemsScrollView);
        itemsScrollView.Name = __selector12;
        itemsScrollView.Children.Add(temp56);
        itemsScrollView.Children.Add(temp58);
        temp56.Animators.Add(temp57);
        temp57.Value = 0f;
        temp57.Duration = 0.6;
        temp57.Easing = Fuse.Animations.Easing.ExponentialOut;
        temp58.Children.Add(temp);
        temp.Templates.Add(temp59);
        temp.Bindings.Add(temp60);
        temp61.Margin = float4(20f, 0f, 0f, 0f);
        temp61.Padding = float4(0f, 200f, 0f, 0f);
        temp61.Children.Add(showLocations);
        showLocations.Name = __selector13;
        showLocations.Nodes.Add(itemsScrollViewLocations);
        itemsScrollViewLocations.Name = __selector14;
        itemsScrollViewLocations.Children.Add(temp62);
        itemsScrollViewLocations.Children.Add(temp64);
        temp62.Animators.Add(temp63);
        temp63.Value = 0f;
        temp63.Duration = 0.6;
        temp63.Easing = Fuse.Animations.Easing.ExponentialOut;
        temp64.Children.Add(temp1);
        temp1.Templates.Add(temp65);
        temp1.Bindings.Add(temp66);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(MenuItem);
        __g_nametable.Objects.Add(MenuItem1);
        __g_nametable.Objects.Add(MenuItem2);
        __g_nametable.Objects.Add(MenuItem3);
        __g_nametable.Objects.Add(MenuItem4);
        __g_nametable.Objects.Add(MenuItem5);
        __g_nametable.Objects.Add(leftHeadline);
        __g_nametable.Objects.Add(hideHeadlines);
        __g_nametable.Objects.Add(showItems);
        __g_nametable.Objects.Add(itemsScrollView);
        __g_nametable.Objects.Add(showLocations);
        __g_nametable.Objects.Add(itemsScrollViewLocations);
        this.Children.Add(temp21);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Opacity";
    static global::Uno.UX.Selector __selector2 = "Items";
    static global::Uno.UX.Selector __selector3 = "MenuItem";
    static global::Uno.UX.Selector __selector4 = "MenuItem1";
    static global::Uno.UX.Selector __selector5 = "MenuItem2";
    static global::Uno.UX.Selector __selector6 = "MenuItem3";
    static global::Uno.UX.Selector __selector7 = "MenuItem4";
    static global::Uno.UX.Selector __selector8 = "MenuItem5";
    static global::Uno.UX.Selector __selector9 = "leftHeadline";
    static global::Uno.UX.Selector __selector10 = "hideHeadlines";
    static global::Uno.UX.Selector __selector11 = "showItems";
    static global::Uno.UX.Selector __selector12 = "itemsScrollView";
    static global::Uno.UX.Selector __selector13 = "showLocations";
    static global::Uno.UX.Selector __selector14 = "itemsScrollViewLocations";
}
