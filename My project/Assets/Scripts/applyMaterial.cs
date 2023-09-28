using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class applyMaterial : MonoBehaviour
{
    //got this code from Chat GPT
    public Renderer playerRenderer;
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.CompareTag("Pickup"))
        {
            Material pickupMaterial = other.gameObject.GetComponent<Renderer>().material;
            playerRenderer.material = pickupMaterial;
        }
    }
}
