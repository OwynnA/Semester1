using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class spike : MonoBehaviour
{
    private void OnCollisionEnter(Collision other)
    {
        //got this code from a video I watched
        var player = other.collider.GetComponent<CharController>();
        if(player != null)
        {
            player.Die();
        }
    }
}
