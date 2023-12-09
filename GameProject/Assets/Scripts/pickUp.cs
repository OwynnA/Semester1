using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickUp : MonoBehaviour
{
    //got this from a game I coded in class last year
    public PickupType type;
    public int value;
    private SoundManager jump;

    // Start is called before the first frame update
    void Start()
    {
       jump = GameObject.FindGameObjectWithTag("SoundManager").GetComponent<SoundManager>();
    }

    public enum PickupType
    {
        Jump,
        Invincible,
        Coin,
        Health,
        Key
    }

    void OnTriggerEnter(Collider other)
    {
        CharController player = other.GetComponent<CharController>();

        switch(type)
        {
            case PickupType.Jump:
            player.JumpBoost(value);
            jump.ItemPickupSFX();
            Destroy(gameObject);
            break;
            
            case PickupType.Invincible:
            player.invincible();
            jump.ItemPickupSFX();
            Destroy(gameObject);
            break;

            case PickupType.Coin:
            jump.CoinSFX();
            break;

            case PickupType.Health:
            jump.HealSFX();
            break;

            case PickupType.Key:
            jump.KeySFX();
            break;

            default:
            print("Type not accepted");
            break;
        }
    }
}   
