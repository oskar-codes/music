# II. Where the theory starts

## Scales
A _Scale_ is a set of notes between one note and its octave. A scale can contain any number of notes chosen from the 12 notes of the _Chromatic scale_:

> [!PIANO]
> {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The 12 notes of the Chromatic scale"}

The 7 white notes ($\text{C}$, $\text{D}$, $\text{E}$, $\text{F}$, $\text{G}$, $\text{A}$ and $\text{B}$) form what is known as a Major scale. More specifically, this set of notes is the $\textbf{C}$ Major scale.

### Scales as interval sets
A scale can be defined as a set of notes, but it is generally more useful to see it as a set of intervals. That way, one can apply the intervals to any tonic using [transposition](../the-building-blocks/index.md#transposition), and obtain the corresponding scale.

Let's see an example. We denote a semitone (half-step) as $\text{H}$ and a whole step as $\text{W}$. Then, taking the notes of the $\text{C}$ Major scale and starting from $\text{C}$, we have the following intervals: $\text{W}$ - $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{W}$ - $\text{H}$. This is the definition of the major scale.

We can apply the same set of intervals to another tonic, using transposition. Starting for example from $\text{E}\flat$, we get the $\text{E}\flat$ Major scale:

> [!PIANO]
> {"startNote": "C4", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{E}\\\flat$ Major scale", "highlightedNotes": ["D#4", "F4", "G4", "G#4", "A#4", "C5", "D5", "D#5"]}

> [!NOTE]
> The notes here are denoted with flats ($\flat$) instead of sharps ($\sharp$). This avoids having two notes with the same name: with sharps, the scale would for example contain $\text{G}$ and $\text{G}\sharp$. With flats instead, it contains $\text{G}$ and $\text{A}\flat$, avoiding the same note name.

In addition to the major scale, the following are common scales found in several genres of music.

### The minor scale
The minor scale is defined with intervals as: $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$. For example, here is the $\text{C}$ minor scale:

> [!PIANO]
> {"startNote": "F3", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{C}$ minor scale", "highlightedNotes": ["C4", "D4", "D#4", "F4", "G4", "G#4", "A#4", "C5"]}

As you might have noticed, it contains the same notes as in the $\text{E}\flat$ Major scale. Hence, we say that the scales $\text{C}$ minor and $\text{E}\flat$ Major are enharmonically equivalent. Moreover, we say that $\text{C}$ is the _relative minor_ of $\text{E}\flat$ and $\text{E}$ is the _relative major_ of $\text{C}$.

We also say that the $\text{C}$ minor scale is the _parallel minor_ of the $\text{C}$ Major scale, because they share the same tonic.

### The harmonic minor scale
The harmonic minor scale is the same as the minor scale, but with a _raised_ seventh scale degree. In $\text{C}$ minor, the seventh is $\text{B}\flat$, whereas in $\text{C}$ harmonic minor, the seventh would be $\text{B}$.

This results in the intervals: $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{H}$ - $\text{WH}$ - $\text{H}$. Where $\text{WH}$ denotes a whole step plus a half step, e.g. 3 semitones.

> [!PIANO]
> {"startNote": "F3", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{C}$ harmonic minor scale", "highlightedNotes": ["C4", "D4", "D#4", "F4", "G4", "G#4", "B4", "C5"]}

### The melodic minor scale
The melodic minor scale is the same as the harmonic minor scale, but with an additional _raised_ sixth scale degree. In $\text{C}$ harmonic minor, the sixth is $\text{A}\flat$, whereas in $\text{C}$ melodic minor, the sixth would be $\text{A}$.

This results in the intervals: $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{W}$ - $\text{W}$ - $\text{H}$.

> [!PIANO]
> {"startNote": "F3", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{C}$ melodic minor scale", "highlightedNotes": ["C4", "D4", "D#4", "F4", "G4", "A4", "B4", "C5"]}

It can also be regarded as the $\text{C}$ major scale with a flattened third scale degree.

## Chords
A _chord_ is a set of notes usually played together or in the same _context_, for its harmonic consonance or dissonance. A chord is composed of a _root_, which is the starting point of the chord, and several chord tones that can be defined with intervals.

### Triads
The most basic chords are composed of 3 notes, and are called triads. These are composed of:
- A root note.
- The third, which can either be a major or minor third above the root.
- The fifth, which can either be a major or minor third above the third of the chord.

This gives four possible triads:

|                               | Major                       | Minor                       | Augmented                    | Diminished                              |
|-------------------------------|-----------------------------|-----------------------------|------------------------------|-----------------------------------------|
| **Third: interval from root** | Major third (4 semitones)   | Minor third (3 semitones)   | Major third (4 semitones)    | Minor third (3 semitones)               |
| **Fifth: interval from third**| Minor third (3 semitones)   | Major third (4 semitones)   | Major third (4 semitones)    | Minor third (3 semitones)               |
| **Fifth: interval from root** | Perfect fifth (7 semitones) | Perfect fifth (7 semitones) | Augmented fifth (8 semitones)| Diminished fifth / tritone (6 semitones)|

Below are the four triads with $\text{C}$ as root note.

<div style="display: flex; flex-wrap: wrap;">
  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ major triad", "highlightedNotes": ["C4", "E4", "G4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ minor triad", "highlightedNotes": ["C4", "D#4", "G4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ augmented triad", "highlightedNotes": ["C4", "E4", "G#4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ diminished triad", "highlightedNotes": ["C4", "D#4", "F#4"]}
  </blockquote>
</div>


### Chords in scales

## The circle of fifths

> [!CENTER]
> Continue to [III. Deeper into scales](../deeper-into-scales/index.md) or go back to the [front-page](../index.md).
