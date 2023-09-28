using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pickUp : MonoBehaviour
{
    //got this from a game I coded in class last year
    public PickupType type;
    public int value;
    public float speed;
    [Header("Bobbing Motion")]
    public float rotationSpeed;
    public float bobSpeed;
    public float bobHeight;
    private bool bobbingUp;
    private Vector3 startPos;
    private SoundManager jump;

    // Start is called before the first frame update
    void Start()
    {
        wall wall = GameObject.FindGameObjectWithTag("Obstacle").GetComponent<wall>();
       jump = GameObject.FindGameObjectWithTag("Sound Manager").GetComponent<SoundManager>();
       startPos = transform.position; 
    }

    public enum PickupType
    {
        Jump,
        Blast,
        Speed
    }

    void OnTriggerEnter(Collider other)
    {
        CharController player = other.GetComponent<CharController>();

        switch(type)
        {
            case PickupType.Jump:
            player.JumpBoost(value);
            jump.ItemPickupSFX();
            wall.isNotActive();
            Destroy(gameObject);
            break;
            case PickupType.Blast:
            player.BlastBoost();
            wall.isActive();
            jump.ItemPickupSFX();
            Destroy(gameObject);
            break;

            case PickupType.Speed:
            player.SpeedBoost(speed);
            wall.isNotActive();
            jump.ItemPickupSFX();
            Destroy(gameObject);
            break;
            
            default:
            print("Type not accepted");
            break;
        }
    }
    // Update is called once per frame
    void Update()
    {
        transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
        Vector3 offset = (bobbingUp == true ? new Vector3(0, bobHeight /2, 0) : new Vector3(0, -bobHeight /2, 0));
        transform.position = Vector3.MoveTowards(transform.position, startPos + offset, bobSpeed * Time.deltaTime);
        if(transform.position == startPos + offset)
        {
            bobbingUp = !bobbingUp;
        }
    }
}   
