﻿using System;
namespace VisualStudioMac.GetGitUrl
{
    public static class Constants
    {
        public const string Version = "17.0";
        public const string OneClickChar
#if DEBUG
         = "-->>";
#else
         = "-->";
#endif
        internal static string[] ExcludedExtensionsFromOneClick = { ".storyboard", ".xib", ".png", ".ttf" };
    }
}