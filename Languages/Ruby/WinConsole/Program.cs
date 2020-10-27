/* ****************************************************************************
 *
 * Copyright (c) Microsoft Corporation. 
 *
 * This source code is subject to terms and conditions of the Apache License, Version 2.0. A 
 * copy of the license can be found in the License.html file at the root of this distribution. If 
 * you cannot locate the  Apache License, Version 2.0, please send an email to 
 * ironruby@microsoft.com. By using this source code in any fashion, you are agreeing to be bound 
 * by the terms of the Apache License, Version 2.0.
 *
 * You must not remove this notice, or any other, from this software.
 *
 *
 * ***************************************************************************/

using IronRuby.Hosting;
using IronRuby.Runtime;
using Microsoft.Scripting.Hosting;
using Microsoft.Scripting.Hosting.Shell;
using System;

internal sealed class Host : RubyConsoleHost {
    protected override ConsoleOptions ParseOptions(string/*!*/[]/*!*/ args, ScriptRuntimeSetup/*!*/ runtimeSetup, LanguageSetup/*!*/ languageSetup) {
        var rubyOptions = (RubyConsoleOptions)base.ParseOptions(args, runtimeSetup, languageSetup);
        if (rubyOptions == null) {
            return null;
        }

        if (rubyOptions.ChangeDirectory != null) {
            Environment.CurrentDirectory = rubyOptions.ChangeDirectory;
        }

        if (rubyOptions.Introspection || rubyOptions.Command == null && rubyOptions.FileName == null) {
            PrintHelp();
            return null;
        }

        return rubyOptions;
    }

    protected override void ReportInvalidOption(InvalidOptionException e) {
        MsgBox(e.Message, "Invalid Option");
    }

    [STAThread]
    [RubyStackTraceHidden]
    static int Main(string[] args) {
        return new Host().Run(args);
    }

    protected override void PrintHelp() {
        MsgBox(GetHelp(), "IronRuby Window Console Help");
    }

    internal MsgBoxResult MsgBox(string text, string caption) {

        if (System.Environment.OSVersion.Platform != System.PlatformID.Unix) {
            return UnsafeNativeMethods.MessageBox(System.IntPtr.Zero, text, caption, 0);
        }

        text = text.Replace("\"", @"\""");
        caption = caption.Replace("\"", @"\""");

        using (System.Diagnostics.Process p = System.Diagnostics.Process.Start("notify-send", "\"" + caption + "\" \"" + text + "\"")) {
            p.WaitForExit();
        }
        return MsgBoxResult.Ok;
    }


    // https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-messagebox
    internal class UnsafeNativeMethods {
        [System.Runtime.InteropServices.DllImport("user32.dll")]
        internal static extern MsgBoxResult MessageBox(System.IntPtr hWnd, string text, string caption, MsgBoxStyle options);
    }

    [System.Flags]
    internal enum MsgBoxStyle {
        OkOnly = 0,
        OkCancel = 1,
        AbortRetryIgnore = 2,
        YesNoCancel = AbortRetryIgnore | OkCancel, // 0x00000003
        YesNo = 4,
        RetryCancel = YesNo | OkCancel, // 0x00000005
        Critical = 16, // 0x00000010
        Question = 32, // 0x00000020
        Exclamation = Question | Critical, // 0x00000030
        Information = 64, // 0x00000040
        DefaultButton1 = 0,
        DefaultButton2 = 256, // 0x00000100
        DefaultButton3 = 512, // 0x00000200
        ApplicationModal = 0,
        SystemModal = 4096, // 0x00001000
        MsgBoxHelp = 16384, // 0x00004000
        MsgBoxRight = 524288, // 0x00080000
        MsgBoxRtlReading = 1048576, // 0x00100000
        MsgBoxSetForeground = 65536, // 0x00010000
    }

    internal enum MsgBoxResult : int {
        Abort = 3,
        Cancel = 2,
        Ignore = 5,
        No = 7,
        Ok = 1,
        Retry = 4,
        Yes = 6
    }
}