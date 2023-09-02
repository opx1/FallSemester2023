using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour
{
    public float horizontalInput;

    public float speed = 20.0f;
    public float jumpForce = 10f;
    public float leftxRange = 13.0f;
    public float rightxRange = 13.0f;

    public bool isOnGround = true;
    public bool isOnPlatform = true;
    public bool isShooting = false;

    private Rigidbody playerRb;
    
    public UnityEvent playSound;
    
    void Start()
    {
        playerRb = GetComponent<Rigidbody>();
    }
   
    void Update()
    {
        if (transform.position.x < -leftxRange)
        {
            transform.position = new Vector3(-leftxRange, transform.position.y, transform.position.z);
        }

        if (transform.position.x > rightxRange)
        {
            transform.position = new Vector3(rightxRange, transform.position.y, transform.position.z);
        }
        
        horizontalInput = Input.GetAxis("Horizontal");
        if (!isShooting)
        {
            transform.Translate(Vector3.right * (horizontalInput * Time.deltaTime * speed));
        }
        

        if (Input.GetKeyDown(KeyCode.UpArrow) && (isOnGround || isOnPlatform) && (!isShooting))
        {
            playSound.Invoke();
            playerRb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
            isOnGround = false;
            isOnPlatform = false;
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            isShooting = true;
        }
        else if (Input.GetKeyUp(KeyCode.Space))
        {
            isShooting = false;
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Ground"))
        {
            isOnGround = true;
        }

        if (collision.gameObject.CompareTag("Platform"))
        {
            isOnPlatform = true;
        }
    }
}