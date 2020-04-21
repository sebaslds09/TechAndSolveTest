using JavaScriptEngineSwitcher.Core;
using JavaScriptEngineSwitcher.V8;

[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(PruebaTecnica_SebastianOrtiz.ReactConfig), "Configure")]

namespace PruebaTecnica_SebastianOrtiz
{
	public static class ReactConfig
	{
		public static void Configure()
		{
			JsEngineSwitcher.Current.DefaultEngineName = V8JsEngine.EngineName;
			JsEngineSwitcher.Current.EngineFactories.AddV8();
		}
	}
}