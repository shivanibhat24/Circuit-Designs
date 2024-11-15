# 📡 Mobile Jammer Circuit

## Why This Circuit?  
A mobile jammer disrupts communication by adding noise to the frequency band used by mobile phones. This circuit generates noise in the communication band to cause signal interference. 

---

## 🛠 Software Used  
- **Proteus** (alternatives: LtSpice, Multisim)

---

## 📋 Components used and their Specifications  
| Component         | Specification              |
|-------------------|---------------------------|
| **Transistor**     | NPN (2N3707)              |
| **Inductor**       | 22nH                      |
| **Capacitors**     | 102pF, 103pF, 1μF, 4.7pF (x2), 2.2pF |
| **Resistors**      | 100Ω, 39kΩ                |
| **Oscilloscope**   | To observe noise waveform |
| **Power Supply**   | 4–5V                      |

---

## ⚙️ Circuit Explanation  
1. **RF Amplifier**  
   - The resistor, transistor, and capacitors connected at the base and collector of the NPN transistor form an RF amplifier.  
   - Capacitors generate the noise signal.  

2. **Output**  
   - The noise signal output is taken across the **2.2pF capacitor**.  

3. **Tuning Oscillator**  
   - A **22nH inductor** and **15pF capacitor** form a parallel tuning oscillator circuit to generate noise in the telecom frequency band.

4. **Power Supply**  
   - A 4–5V power source is required for proper operation.  

5. **Oscilloscope Observation**  
   - The output waveform on the oscilloscope shows noise in the telecom band, appearing as a distorted and variable waveform.

## 📊 Output Waveform  
The oscilloscope captures the noise signal as a distorted, variable waveform that interferes with communication in the telecom band.

## 🧩 Future Enhancements  
- Test noise generation at multiple frequency bands.  
- Implement a programmable noise generator for adjustable frequency bands.  

---

## 🛠 Tools & Resources  
- [Proteus Simulation](https://www.labcenter.com/)  
- [SPICE Simulation](https://www.analog.com/en/design-center/design-tools-and-calculators/spice-sim-tools.html)  

--
Onwards and Upwards!

Happy Designing!
