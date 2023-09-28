using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharController : MonoBehaviour
{
    //I got some of this code from the character controller page in the canvas class
    //the rest came from a game I made last year
    public float moveSpeed;
    public float trueSpeed = 5f;
    public float trueJumpForce = 4f;
    public float jumpForce;
    public float gravity = -20f;
    public Transform groundCheck;
    public LayerMask groundLayer;

    private CharacterController controller;
    private Vector3 velocity;
    private bool isGrounded;
    private SoundManager jump;

    private void Awake()
    {
        jump = GameObject.FindGameObjectWithTag("Sound Manager").GetComponent<SoundManager>();
        controller = GetComponent<CharacterController>();
        jumpForce = trueJumpForce;
        moveSpeed = trueSpeed;
    }

    private void Update()
    {
        isGrounded = Physics.CheckSphere(groundCheck.position, 0.1f, groundLayer);

        // Horizontal movement
        float moveInput = Input.GetAxis("Horizontal");
        Vector3 moveDirection = new Vector3(moveInput, 0, 0);
        Vector3 move = transform.TransformDirection(moveDirection) * moveSpeed;

        // Apply gravity
        if (!isGrounded)
        {
            velocity.y += gravity * Time.deltaTime;
        }
        else
        {
            velocity.y = 0;
        }

        // Jumping
        if (isGrounded && Input.GetButtonDown("Jump"))
        {
            velocity.y = Mathf.Sqrt(jumpForce * -2 * gravity);
            jump.JumpSFX();
        }

        // Apply movement and gravity
        controller.Move((move + velocity) * Time.deltaTime);
    }

    public void JumpBoost(int newJumpHeight)
    {
        jumpForce = newJumpHeight;
        Debug.Log("Your jump force has been greatly increased");
        moveSpeed = trueSpeed;
    }

    public void BlastBoost()
    {
        jumpForce = trueJumpForce;
        moveSpeed = trueSpeed;
    }

    public void SpeedBoost(float newSpeed)
    {
        moveSpeed = newSpeed;
        Debug.Log("Your speed has been greatly increased");
        jumpForce = trueJumpForce;
    }
}