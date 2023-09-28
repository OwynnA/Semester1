using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManager : MonoBehaviour
{
    //wrote this from scratch
    private AudioSource item;
    public AudioClip jumpSFX;
    public AudioClip itemSFX;
    public AudioClip blastSFX;

    // Start is called before the first frame update
    void Start()
    {
        item = GetComponent<AudioSource>();
    }

    public void ItemPickupSFX()
    {
        item.PlayOneShot(itemSFX, 1.0f);
    }

    public void JumpSFX()
    {
        item.PlayOneShot(jumpSFX, 1.0f);
    }

    public void BlastSFX()
    {
        item.PlayOneShot(blastSFX, 1.0f);
    }
}    