using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;

public class Death : MonoBehaviour
{
    public UnityEvent playSound;

    private void OnCollisionEnter(Collision collision)
    {
        playSound.Invoke();
        if (collision.gameObject.CompareTag("Player"))
        {
            playSound.Invoke();
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
    }
}

