# ASCII Image Converter

This project aims to create text-based representations of uploaded images by converting them into ASCII characters. After the user adds the desired image file to the application, the output is saved in a `.txt` file. The user can choose the directory where the file will be saved and the file name.

## Program Flow

1. **Image Selection**: The user selects an image file (supported formats such as PNG, JPG, JPEG, BMP).
2. **Convert to Grayscale**: The selected image is converted from colour image to grayscale. This process is necessary for pixel density analysis.
3. **Image Reduction**: The size of the image is reduced to 100x100 pixels. This operation is necessary to create a simpler ASCII representation.
4. **ASCII Character Selection**: The intensity (grey scale value) of each pixel is analysed and matched with one of the predefined ASCII characters. Denser pixels are represented by ‘thicker’ characters, lighter pixels by ‘thinner’ characters. 
   - The ASCII characters used are: `@`, `#`, `8`, `&`, `%`, `$`, `*`, `+`, `=`, `-`, `:`, `;`, `>`, `,`, `.`, ` `.
5. **Saving Result**: The ASCII art is saved in a text file (`.txt`). The user specifies the file name and the directory where it will be saved, then ASCII art is written to this file.

## Requirements

- MATLAB environment
- Supported image file formats: PNG, JPG, JPEG, BMP

## Future Plans

Features planned to be added to the project in the future (hopefully):

- **ASCII Resolution**: The user can select the size of the ASCII character set used (and therefore the resolution of the ASCII art).
- **Visual Saving**: ASCII art can be saved directly to visual file formats (e.g. PNG, JPEG) rather than to `.txt` files.
- **Dynamic Size Adjustment**: The user can change the image size and create ASCII art in different resolutions.
- **GUI Interface**: Adding a graphical user interface (GUI) for users. In this interface, settings such as ASCII art resolution, character set selection, colour ASCII art generation can be made.
- **Colour ASCII Art**: ASCII art can be created in colour, not only in black and white.Users can choose to have ASCII characters in different colours. This feature allows images to be converted into more detailed and visually appealing ASCII representations.
- **Colour Palettes**: Possibility for users to select different colour palettes.ASCII art can be created with different colour options and users can create more impressive and unique ASCII art using specific colour palettes.
- **ASCII Video/Gif Conversion**: The user can select a video file and convert each frame to ASCII art and play it through the terminal.
