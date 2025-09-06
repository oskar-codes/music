# II. Where the theory starts

## Scales
A _Scale_ is a set of notes between one note and its octave. A scale can contain any number of notes chosen from the 12 notes of the _Chromatic scale_:

> [!PIANO]
> {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The 12 notes of the Chromatic scale"}

The 7 white notes ($\text{C}$, $\text{D}$, $\text{E}$, $\text{F}$, $\text{G}$, $\text{A}$ and $\text{B}$) form what is known as a major scale. More specifically, this set of notes is the $\textbf{C}$ major scale. Note that this specific set of notes was originally exists because "they sound good together", but this can also be explained using the [circle of fifths](#the-circle-of-fifths).

### Scales as interval sets
A scale can be defined as a set of notes, but it is generally more useful to see it as a set of intervals. That way, one can [transpose](../the-building-blocks/index.md#transposition) the intervals to any tonic, and obtain the corresponding scale.

Let's see an example. We denote a semitone (half-step) as $\text{H}$ and a whole step as $\text{W}$. Then, taking the notes of the $\text{C}$ major scale and starting from $\text{C}$, we have the following intervals: $\text{W}$ - $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{W}$ - $\text{H}$. This is the definition of the major scale.

We can apply the same set of intervals to another tonic, using transposition. Starting for example from $\text{E}\flat$, we get the $\text{E}\flat$ major scale:

> [!PIANO]
> {"startNote": "C4", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{E}\\\flat$ major scale", "highlightedNotes": ["D#4", "F4", "G4", "G#4", "A#4", "C5", "D5", "D#5"]}

> [!NOTE]
> The notes here are denoted with flats ($\flat$) instead of sharps ($\sharp$). This avoids having two notes with the same name: with sharps, the scale would for example contain $\text{G}$ and $\text{G}\sharp$. With flats instead, it contains $\text{G}$ and $\text{A}\flat$, avoiding the same note name.

In addition to the major scale, the following are common scales found in several genres of music.

### The minor scale
The minor scale is defined with intervals as: $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$. It is sometimes called the natural minor scale to distinguish it from other minor scales.

For example, here is the $\text{C}$ minor scale:

> [!PIANO]
> {"startNote": "F3", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{C}$ minor scale", "highlightedNotes": ["C4", "D4", "D#4", "F4", "G4", "G#4", "A#4", "C5"]}

As you might have noticed, it contains the same notes as in the $\text{E}\flat$ major scale. Hence, we say that the scales $\text{C}$ minor and $\text{E}\flat$ major are enharmonically equivalent. Moreover, we say that $\text{C}$ is the _relative minor_ of $\text{E}\flat$ and $\text{E}\flat$ is the _relative major_ of $\text{C}$.

We also say that the $\text{C}$ minor scale is the _parallel minor_ of the $\text{C}$ major scale, because they share the same tonic.

### The harmonic minor scale
The harmonic minor scale is the same as the minor scale, but with a _raised_ seventh scale degree. In $\text{C}$ minor, the seventh is $\text{B}\flat$, whereas in $\text{C}$ harmonic minor, the seventh is $\text{B}$.

This results in the intervals: $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{H}$ - $\text{WH}$ - $\text{H}$. Where $\text{WH}$ denotes a whole step plus a half step, e.g. 3 semitones.

> [!PIANO]
> {"startNote": "F3", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{C}$ harmonic minor scale", "highlightedNotes": ["C4", "D4", "D#4", "F4", "G4", "G#4", "B4", "C5"]}

### The melodic minor scale
The melodic minor scale is the same as the harmonic minor scale, but with an additional raised sixth scale degree. In $\text{C}$ harmonic minor, the sixth is $\text{A}\flat$, whereas in $\text{C}$ melodic minor, the sixth is $\text{A}$.

This results in the intervals: $\text{W}$ - $\text{H}$ - $\text{W}$ - $\text{W}$ - $\text{W}$ - $\text{W}$ - $\text{H}$.

> [!PIANO]
> {"startNote": "F3", "octaves": 2, "displayNoteNames": true, "useFlats": true, "label": "The $\\\text{C}$ melodic minor scale", "highlightedNotes": ["C4", "D4", "D#4", "F4", "G4", "A4", "B4", "C5"]}

It can also be regarded as the $\text{C}$ major scale with a flattened third scale degree.

### Important terminology
#### Diatonic scales
A _diatonic scale_ is a seven-note scale that contains five whole steps and two half steps, in which the two half steps are separated from each other by either two or three whole steps (e.g. they are maximally separated). The major scale and natural minor scale are diatonic scales. This is explained in detail [later](../deeper-into-scales/index.md#modes), but all modes of the major scale are also diatonic.

#### Scale degrees
A scale _degree_ is the position of a note on the scale relative to the tonic, e.g. it is the number given to a step of the scale. It can be written using Arabic numerals or Roman numerals. For example we may say that in the $\text{E}\flat$ major scale, $\text{E}\flat$ is the $\text{I}$, or $\text{A}\flat$ is the $\text{IV}$. Notes outside the scale can also be denoted this way using flats or sharps: $\text{A}$ is the $\flat\text{V}$ ("flat five") or the $\sharp\text{IV}$ ("sharp four").

#### Keys
It is important to distinguish _keys_ from scales. A scale does not necessarily imply a specific tonic, whereas a key binds a scale to a tonic. The scale should be seen as a set of notes or intervals that can be applied to any tonic, whereas a key is a specific instance of a scale with a given tonic. A key gives a _context_ to the notes of the scale.

#### Key signatures
A _key signature_ is a set of sharps or flats that indicate the key of a piece of music. For example the key signature of $\text{E}\flat$ major contains three flats: $\text{B}\flat$, $\text{E}\flat$ and $\text{A}\flat$. $\text{C}$ major is the only major key with no sharps or flats in its key signature.

## Chords
A _chord_ is a set of notes usually played together or in the same context, for its harmonic consonance or dissonance. A chord is composed of a _root_, which is the starting point of the chord, and several _chord tones_ defined by intervals from the root.

### Triads
The most basic chords are composed of 3 notes, and are called _triads_. These are composed of:
- A root note.
- The third, which can either be a major or minor third above the root.
- The fifth, which can either be a major or minor third above the third of the chord.

This gives four possible triads:

|                               | Major                       | Minor                       | Augmented                    | Diminished                              |
|-------------------------------|-----------------------------|-----------------------------|------------------------------|-----------------------------------------|
| **Third: interval from root** | Major third (4 semitones)   | Minor third (3 semitones)   | Major third (4 semitones)    | Minor third (3 semitones)               |
| **Fifth: interval from third**| Minor third (3 semitones)   | Major third (4 semitones)   | Major third (4 semitones)    | Minor third (3 semitones)               |
| **Fifth: interval from root** | Perfect fifth (7 semitones) | Perfect fifth (7 semitones) | Augmented fifth (8 semitones)| Diminished fifth / tritone (6 semitones)|

Major, Minor, Augmented and Diminished are called chord _qualities_. Along with a root note, they form a chord. Below are the four triads with $\text{C}$ as root note.

<div style="display: flex; flex-wrap: wrap;">
  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ major triad", "secondaryHighlightedNotes": ["C4", "E4", "G4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ minor triad", "secondaryHighlightedNotes": ["C4", "D#4", "G4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ augmented triad", "secondaryHighlightedNotes": ["C4", "E4", "G#4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{C}$ diminished triad", "secondaryHighlightedNotes": ["C4", "D#4", "F#4"]}
  </blockquote>
</div>

### Triads in scales
Many scales contain triads, constructed with a scale degree as the root of the triad, and then skipping each other note to form the triad. In the four scales mentionned above, each scale degree has an associated triad.

For example, here is how to construct a triad on the $\text{III}$ of ${\text{C}}$ major:
- The $\text{III}$ of $\text{C}$ major is $\text{E}$.
- Then we skip a note in the scale, and obtain $\text{G}$, a minor third above the root.
- We skip a note again, and obtain $\text{B}$, a major third above the previous third (a fifth from the root).

As shown above, a chord built with a minor third followed by a major third is a minor chord, meaning the $\text{III}$ of $\text{C}$ major is a minor chord. See below:

<div style="display: flex; flex-wrap: wrap;">
  <blockquote>
    [!PIANO]
    {"startNote": "C3", "octaves": 1, "displayNoteNames": true, "useFlats": true, "label": "The $\\text{C}$ major scale", "highlightedNotes": ["C3", "D3", "E3", "F3", "G3", "A3", "B3"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C3", "octaves": 1, "displayNoteNames": true, "useFlats": true, "label": "The $\\text{III}$ chord of $\\text{C}$ major: $\\text{E}$ minor", "secondaryHighlightedNotes": ["E3", "G3", "B3"]}
  </blockquote>
</div>

Here's another example, constructing a triad on the $\text{II}$ of $\text{E}$ minor:
- The $\text{II}$ of $\text{E}$ minor is $\text{F}\sharp$.
- Then we skip a note in the scale, and obtain $\text{A}$, a minor third above the root.
- We skip a note again, and obtain $\text{C}$, a minor third above the previous third (a tritone from the root).

Two stacked minor thirds form a diminished chord, meaning the $\text{II}$ of $\text{E}$ minor is a diminished chord. See below:

<div style="display: flex; flex-wrap: wrap;">
  <blockquote>
    [!PIANO]
    {"startNote": "E3", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{E}$ minor scale", "highlightedNotes": ["E3", "F#3", "G3", "A3", "B3", "C4", "D4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "E3", "octaves": 1, "displayNoteNames": true, "label": "The $\\text{II}$ chord of $\\text{E}$ minor: $\\text{F}\\sharp$ diminished", "secondaryHighlightedNotes": ["F#3", "A3", "C4"]}
  </blockquote>
</div>

> [!NOTE]
> The two above examples show that the $\text{III}$ is minor in $\text{C}$ major and the $\text{II}$ is diminished in $\text{E}$ minor, but these chord qualities would be the same for any tonic. This means that the $\text{III}$ of any major scale is always minor, and the $\text{II}$ of any minor scale is always diminished, regardless of the key they are in.

The following table shows the quality of the triad formed at each scale degree in each of the four scales.

|Scale degree  | Major scale | Minor scale | Harmonic minor scale | Melodic minor scale |
|:------------:|:-----------:|:-----------:|:--------------------:|:-------------------:|
|$\textbf{I}$  | Major       | Minor       | Minor                | Minor               |
|$\textbf{II}$ | Minor       | Diminished  | Diminished           | Minor               |
|$\textbf{III}$| Minor       | Major       | Augmented            | Augmented           |
|$\textbf{IV}$ | Major       | Minor       | Minor                | Major               |
|$\textbf{V}$  | Major       | Minor       | Major                | Major               |
|$\textbf{VI}$ | Minor       | Major       | Major                | Diminished          |
|$\textbf{VII}$| Diminished  | Major       | Major                | Diminished          |

### Seventh chords
_Tetrads_ are chords with four notes. _Tertian_ chords are chords formed with thirds, such as triads. _Seventh chords_ are tertian tetrads, e.g. four-note chords formed with thirds. They can be seen as triads with an additional fourth note placed a third above the fifth; the seventh.

Below are the most common seventh chords, with $\text{C}$ as root note.

<div style="display: flex; flex-wrap: wrap;">
  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "$\\text{C}$ major 7th", "secondaryHighlightedNotes": ["C4", "E4", "G4", "B4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "$\\text{C}$ dominant 7th (or $\\text{C}$ major minor 7th)", "secondaryHighlightedNotes": ["C4", "E4", "G4", "A#4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "$\\text{C}$ minor major 7th", "secondaryHighlightedNotes": ["C4", "D#4", "G4", "B4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "$\\text{C}$ minor 7th", "secondaryHighlightedNotes": ["C4", "D#4", "G4", "A#4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "$\\text{C}$ minor 7th flat five (or $\\text{C}$ half-diminished)", "secondaryHighlightedNotes": ["C4", "D#4", "F#4", "A#4"]}
  </blockquote>

  <blockquote>
    [!PIANO]
    {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "$\\text{C}$ diminished 7th (or $\\text{C}$ fully-diminished)", "secondaryHighlightedNotes": ["C4", "D#4", "F#4", "A4"]}
  </blockquote>
</div>

### Seventh chords in scales
Like triads, seventh chords also appear in scales. For example the $\text{VI}$ of a major scale is a minor seventh chord. See the below example in $\text{D}\flat$ major.

> [!PIANO]
> {"startNote": "C4", "octaves": 2, "displayNoteNames": true, "label": "$\\\text{D}\\\flat$ major scale", "highlightedNotes": ["C#4", "D#4", "F4", "F#4", "G#4", "A#4", "C5", "C#5", "D#5", "F5", "F#5", "G#5", "A#5"]}

> [!PIANO]
> {"startNote": "C4", "octaves": 2, "displayNoteNames": true, "label": "A seventh chord formed on the $\\\text{VI}$ of $\\\text{D}\\\flat$ major: $\\\text{B}\\\flat$ minor 7th.", "secondaryHighlightedNotes": ["A#4", "C#5", "F5", "G#5"]}

The following table shows the quality of the seventh chord formed at each scale degree in each of the four scales.

|Scale degree  | Major scale    | Minor scale        | Harmonic minor scale | Melodic minor scale |
|:------------:|:--------------:|:------------------:|:--------------------:|:-------------------:|
|$\textbf{I}$  | Major 7th      | Minor 7th          | Minor major 7th      | Minor major 7th     |
|$\textbf{II}$ | Minor 7th      | Half-diminished    | Half-diminished      | Minor 7th           |
|$\textbf{III}$| Minor 7th      | Major 7th          | Augmented maj. 7th   | Augmented maj. 7th  |
|$\textbf{IV}$ | Major 7th      | Minor 7th          | Minor 7th            | Dominant 7th        |
|$\textbf{V}$  | Dominant 7th   | Minor 7th          | Dominant 7th         | Dominant 7th        |
|$\textbf{VI}$ | Minor 7th      | Major 7th          | Major 7th            | Half-diminished     |
|$\textbf{VII}$| Half-diminished| Dominant 7th       | Fully-diminished     | Half-diminished     |

For visualizations of these chords, see the following pages:
- [Seventh chords of the major scale](../resources/seventh-chords/major.md)
- [Seventh chords of the minor scale](../resources/seventh-chords/minor.md)
- [Seventh chords of the harmonic minor scale](../resources/seventh-chords/harmonic-minor.md)
- [Seventh chords of the melodic minor scale](../resources/seventh-chords/melodic-minor.md)

### Inversions

## The circle of fifths


The _circle of fifths_ is a visual representation of the relationships between the 12 notes of the chromatic scale, their corresponding key signatures, and the associated major and minor keys. It is a crucial concept to understand and keep in mind, because it helps navigate the complexities of key changes, chord progressions, and modulation. It encompasses notes, chords and scales and thus ties together the foundational concepts of music theory.

> [!CENTER]
> Continue to [III. Deeper into scales](../deeper-into-scales/index.md) or go back to the [front-page](../index.md).
