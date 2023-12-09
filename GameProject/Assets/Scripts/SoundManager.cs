using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManager : MonoBehaviour
{
    //wrote this from scratch
    private AudioSource item;
    private AudioSource background;
    public AudioClip backGround;
    public AudioClip jumpSFX;
    public AudioClip itemSFX;
    public AudioClip deathSFX;
    public AudioClip coinSFX;
    public AudioClip healSFX;
    public AudioClip keySFX;

    // Start is called before the first frame update
    void Start()
    {
        item = GetComponent<AudioSource>();
        background = GetComponent<AudioSource>();
        background.PlayOneShot(backGround, 1.0f);
    }

    public void ItemPickupSFX()
    {
        item.PlayOneShot(itemSFX, 1.0f);
    }

    public void JumpSFX()
    {
        item.PlayOneShot(jumpSFX, 1.0f);
    }

    public void DeathSFX()
    {
        background.Stop();
        item.PlayOneShot(deathSFX, 1.0f);
    }

    public void CoinSFX()
    {
        item.PlayOneShot(coinSFX, 1.0f);
    }

    public void HealSFX()
    {
        item.PlayOneShot(healSFX, 1.0f);
    }

    public void KeySFX()
    {
        item.PlayOneShot(keySFX, 1.0f);
    }
}    