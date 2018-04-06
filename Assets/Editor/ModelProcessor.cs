using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class ModelProcessor : AssetPostprocessor
{
	void OnPostprocessModel(GameObject g)
	{
		foreach (var r in g.GetComponentsInChildren<Renderer>())
		{
			foreach (var m in r.sharedMaterials)
			{
				Debug.Log(m.shader.name);
			}
		}
	}
}
