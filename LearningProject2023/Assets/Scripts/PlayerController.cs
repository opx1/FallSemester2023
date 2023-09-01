using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour
{
    public float horizontalInput;

    public float speed = 20.0f;
    public float jumpForce;

    public float xRange = 13.0f;
    public GameObject projectilePrefab;

    public bool isOnGround = true;
    public bool isOnPlatform = true;

    private Rigidbody playerRb;
    
    void Start()
    {
        playerRb = GetComponent<Rigidbody>();
    }
   
    void Update()
    {
        if (transform.position.x < -xRange)
        {
            transform.position = new Vector3(-xRange, transform.position.y, transform.position.z);
        }

        if (transform.position.x > xRange)
        {
            transform.position = new Vector3(xRange, transform.position.y, transform.position.z);
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            Instantiate(projectilePrefab, transform.position, projectilePrefab.transform.rotation);
        }

        horizontalInput = Input.GetAxis("Horizontal");
        transform.Translate(Vector3.right * (horizontalInput * Time.deltaTime * speed));

        if (Input.GetKeyDown(KeyCode.UpArrow) && (isOnGround || isOnPlatform))
        {
            playerRb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
            isOnGround = false;
            isOnPlatform = false;
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
