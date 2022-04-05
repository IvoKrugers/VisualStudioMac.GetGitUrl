using Mono.Addins;
using Mono.Addins.Description;
using VisualStudioMac.GetGitUrl;

[assembly: Addin(
    Id = "GetGitUrl",
    Namespace = "VisualStudioMac",
    Version = Constants.Version,
    Category = "IDE extensions"
)]

[assembly: AddinName("Get Git Repo URL of selected lines")]
[assembly: AddinDescription("This extension copies the URL of the selected lines in the connected Git Repo to the clipboard. GITHUB and Azure DevOps are supported.\n\nby Ivo Krugers")]
[assembly: AddinAuthor("Ivo Krugers")]
[assembly: AddinUrl("https://github.com/IvoKrugers")]

[assembly: AddinDependency("::MonoDevelop.Core", MonoDevelop.BuildInfo.Version)]
[assembly: AddinDependency("::MonoDevelop.Ide", MonoDevelop.BuildInfo.Version)]
[assembly: AddinDependency("::MonoDevelop.TextEditor", MonoDevelop.BuildInfo.Version)]