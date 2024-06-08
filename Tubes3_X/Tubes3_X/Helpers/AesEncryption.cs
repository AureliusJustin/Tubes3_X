using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace Tubes3_X
{
    public class AesEncryption
    {
        private static readonly byte[] sbox = new byte[256] {
            0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
            0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
            0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
            0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
            0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
            0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
            0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
            0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
            0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
            0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
            0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
            0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
            0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
            0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
            0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
            0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16,
        };

        private static readonly byte[] invSbox = new byte[256] {
            0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb,
            0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb,
            0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e,
            0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25,
            0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92,
            0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84,
            0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06,
            0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b,
            0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73,
            0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e,
            0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b,
            0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4,
            0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f,
            0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef,
            0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61,
            0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d,
        };

        // AES Rijndael Round Constants
        private static readonly byte[] rcon = new byte[11] {
            0x0, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36
        };
        private byte[] key;
        private byte[] iv;
        public AesEncryption(byte[] key, byte[] iv)
        {
            this.key = key;
            this.iv = iv;
        }

        // AES Key Expansion
        private byte[] KeyExpansion(byte[] key)
        {
            int keyLength = key.Length;
            int expandedKeySize = 176; // For AES-128

            byte[] expandedKey = new byte[expandedKeySize];
            Array.Copy(key, expandedKey, keyLength);

            int bytesGenerated = keyLength;
            int rconIteration = 1;
            byte[] temp = new byte[4];

            while (bytesGenerated < expandedKeySize)
            {
                for (int i = 0; i < 4; i++)
                    temp[i] = expandedKey[i + bytesGenerated - 4];

                if (bytesGenerated % keyLength == 0)
                {
                    temp = SubWord(RotWord(temp));
                    temp[0] ^= rcon[rconIteration++];
                }
                else if (keyLength == 32 && bytesGenerated % keyLength == 16)
                {
                    temp = SubWord(temp);
                }

                for (int i = 0; i < 4; i++)
                    expandedKey[bytesGenerated] = (byte)(expandedKey[bytesGenerated - keyLength] ^ temp[i]);

                bytesGenerated += 4;
            }

            return expandedKey;
        }

        // AES SubBytes Transformation
        private byte[] SubBytes(byte[] state)
        {
            for (int i = 0; i < state.Length; i++)
                state[i] = sbox[state[i]];
            return state;
        }

        // AES ShiftRows Transformation
        private static byte[] ShiftRows(byte[] state)
        {
            byte[] newState = new byte[state.Length];
            for (int i = 0; i < 4; i++)
                for (int j = 0; j < 4; j++)
                    newState[i * 4 + j] = state[(i + j) % 4 * 4 + j];
            return newState;
        }

        // AES MixColumns Transformation
        private byte[] MixColumns(byte[] state)
        {
            byte[] newState = new byte[state.Length];
            for (int i = 0; i < 4; i++)
            {
                byte s0 = state[i];
                byte s1 = state[4 + i];
                byte s2 = state[8 + i];
                byte s3 = state[12 + i];

                newState[i] = (byte)(GMul(0x02, s0) ^ GMul(0x03, s1) ^ s2 ^ s3);
                newState[4 + i] = (byte)(s0 ^ GMul(0x02, s1) ^ GMul(0x03, s2) ^ s3);
                newState[8 + i] = (byte)(s0 ^ s1 ^ GMul(0x02, s2) ^ GMul(0x03, s3));
                newState[12 + i] = (byte)(GMul(0x03, s0) ^ s1 ^ s2 ^ GMul(0x02, s3));
            }
            return newState;
        }

        // AES AddRoundKey Transformation
        private byte[] AddRoundKey(byte[] state, byte[] roundKey)
        {
            byte[] newState = new byte[state.Length];
            for (int i = 0; i < state.Length; i++)
                newState[i] = (byte)(state[i] ^ roundKey[i]);
            return newState;
        }

        // AES Key Expansion helper methods
        private static byte[] SubWord(byte[] word)
        {
            for (int i = 0; i < word.Length; i++)
                word[i] = sbox[word[i]];
            return word;
        }

        private byte[] RotWord(byte[] word)
        {
            byte temp = word[0];
            for (int i = 0; i < word.Length - 1; i++)
                word[i] = word[i + 1];
            word[word.Length - 1] = temp;
            return word;
        }

        // AES MixColumns helper method
        private byte GMul(byte a, byte b)
        {
            byte p = 0;
            byte counter;
            byte hi_bit_set;
            for (counter = 0; counter < 8; counter++)
            {
                if ((b & 1) == 1)
                    p ^= a;
                hi_bit_set = (byte)(a & 0x80);
                a <<= 1;
                if (hi_bit_set == 0x80)
                    a ^= 0x1b; // x^8 + x^4 + x^3 + x + 1
                b >>= 1;
            }
            return p;
        }
        private byte[] Pad(byte[] data)
        {
            int paddingLength = 16 - (data.Length % 16);
            byte[] paddedData = new byte[data.Length + paddingLength];
            Buffer.BlockCopy(data, 0, paddedData, 0, data.Length);
            for (int i = data.Length; i < paddedData.Length; i++)
            {
                paddedData[i] = (byte)paddingLength;
            }
            return paddedData;
        }

        public static byte[] RemovePadding(byte[] data)
        {
            if (data == null || data.Length == 0)
                throw new ArgumentNullException(nameof(data));

            int paddingLength = data[data.Length - 1];
            if (paddingLength < 1 || paddingLength > 16)
                throw new InvalidOperationException("Invalid padding length");

            for (int i = data.Length - paddingLength; i < data.Length; i++)
            {
                if (data[i] != paddingLength)
                    throw new InvalidOperationException("Invalid padding");
            }

            byte[] unpaddedData = new byte[data.Length - paddingLength];
            Array.Copy(data, unpaddedData, unpaddedData.Length);
            return unpaddedData;
        }

        // AES encryption
        public byte[] Encrypt(byte[] plaintext)
        {
            if (plaintext == null || plaintext.Length == 0)
                throw new ArgumentNullException("plaintext");
            if (this.key == null || this.key.Length != 16)
                throw new ArgumentException("Key length must be 16 bytes (128 bits).", "key");
            if (iv == null || iv.Length != 16)
                throw new ArgumentException("IV length must be 16 bytes (128 bits).", "iv");

            byte[] paddedPlaintext = Pad(plaintext);
            List<byte> encryptedData = new List<byte>();

            for (int i = 0; i < paddedPlaintext.Length; i += 16)
            {
                byte[] block = new byte[16];
                Array.Copy(paddedPlaintext, i, block, 0, 16);
                byte[] encryptedBlock = EncryptBlock(block);
                encryptedData.AddRange(encryptedBlock);
            }

            return encryptedData.ToArray();

        }
        public byte[] EncryptBlock(byte[] plaintext)
        {
            byte[] state = new byte[16];
            byte[] roundKey = KeyExpansion(key);

            // Add IV to the first block of plaintext
            for (int i = 0; i < 16; i++)
                state[i] = (byte)(plaintext[i] ^ iv[i]);

            state = AddRoundKey(state, roundKey);

            for (int round = 1; round < 10; round++)
            {
                state = SubBytes(state);
                state = ShiftRows(state);
                state = MixColumns(state);
                roundKey = KeyExpansion(key);
                state = AddRoundKey(state, roundKey);
            }

            state = SubBytes(state);
            state = ShiftRows(state);
            roundKey = KeyExpansion(key);
            state = AddRoundKey(state, roundKey);

            return state;
        }

        public byte[] Decrypt(byte[] ciphertext)
        {
            if (ciphertext == null || ciphertext.Length == 0)
                throw new ArgumentNullException(nameof(ciphertext));
            if (key == null || key.Length != 16)
                throw new ArgumentException("Key length must be 16 bytes (128 bits).", nameof(key));

            List<byte> decryptedData = new List<byte>();

            for (int i = 0; i < ciphertext.Length; i += 16)
            {
                byte[] block = new byte[16];
                Array.Copy(ciphertext, i, block, 0, 16);
                byte[] decryptedBlock = DecryptBlock(block);
                decryptedData.AddRange(decryptedBlock);
            }

            return RemovePadding(decryptedData.ToArray());
        }
        public byte[] DecryptBlock(byte[] ciphertext)
        {

            byte[] state = new byte[16];
            byte[] roundKey = KeyExpansion(key);

            state = AddRoundKey(ciphertext, roundKey);

            for (int round = 9; round > 0; round--)
            {
                state = InvShiftRows(state);
                state = InvSubBytes(state);
                roundKey = KeyExpansion(key);
                state = AddRoundKey(state, roundKey);
                state = InvMixColumns(state);
            }

            state = InvShiftRows(state);
            state = InvSubBytes(state);
            roundKey = KeyExpansion(key);
            state = AddRoundKey(state, roundKey);

            // Remove IV from the first block of plaintext
            for (int i = 0; i < 16; i++)
                state[i] = (byte)(state[i] ^ iv[i]);

            return state;
        }

        // AES InvShiftRows Transformation
        private byte[] InvShiftRows(byte[] state)
        {
            byte[] newState = new byte[state.Length];
            for (int i = 0; i < 4; i++)
                for (int j = 0; j < 4; j++)
                    newState[i * 4 + j] = state[((i - j) % 4 + 4) % 4 * 4 + j];
            return newState;
        }

        // AES InvSubBytes Transformation
        private byte[] InvSubBytes(byte[] state)
        {
            for (int i = 0; i < state.Length; i++)
                state[i] = invSbox[state[i]];
            return state;
        }

        // AES InvMixColumns Transformation
        private byte[] InvMixColumns(byte[] state)
        {
            byte[] newState = new byte[state.Length];
            for (int i = 0; i < 4; i++)
            {
                byte s0 = state[i];
                byte s1 = state[4 + i];
                byte s2 = state[8 + i];
                byte s3 = state[12 + i];

                newState[i] = (byte)(GMul(0x0E, s0) ^ GMul(0x0B, s1) ^ GMul(0x0D, s2) ^ GMul(0x09, s3));
                newState[4 + i] = (byte)(GMul(0x09, s0) ^ GMul(0x0E, s1) ^ GMul(0x0B, s2) ^ GMul(0x0D, s3));
                newState[8 + i] = (byte)(GMul(0x0D, s0) ^ GMul(0x09, s1) ^ GMul(0x0E, s2) ^ GMul(0x0B, s3));
                newState[12 + i] = (byte)(GMul(0x0B, s0) ^ GMul(0x0D, s1) ^ GMul(0x09, s2) ^ GMul(0x0E, s3));
            }
            return newState;
        }

        // AES decryption
        public string DecryptString(byte[] ciphertext)
        {
            byte[] decryptedBytes = Decrypt(ciphertext);
            return Encoding.UTF8.GetString(decryptedBytes);
        }
    }
}