using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class wall : MonoBehaviour
{
    //wrote this code from scratch
    private static bool active = false;
    private SoundManager blast;
    static Collider obstacle;

    // Start is called before the first frame update
    void Start()
    {
        blast = GameObject.FindGameObjectWithTag("Sound Manager").GetComponent<SoundManager>();
    }

    void Update()
    {
        obstacle = GetComponent<Collider>();
    }

    public static void isActive()
    {
        active = true;
        obstacle.isTrigger = true;
        Debug.Log("You can now break through walls");
    }

    public static void isNotActive()
    {
        active = false;
        obstacle.isTrigger = false;
    }

    void OnTriggerEnter(Collider other)
    {
        if(active == true)
        {
            blast.BlastSFX();
            Destroy(gameObject);
        }
    }
}
