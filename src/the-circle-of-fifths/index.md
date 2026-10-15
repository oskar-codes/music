# III. The circle of fifths

## Introduction
The _circle of fifths_ is a visual representation of the relationships between the 12 notes of the chromatic scale. It relates intervals, chords, and key signatures and is the foundation for understanding harmony. Practically, it can provide explanations as to why some intervals may sound dissonant, why some set of notes may sound "good" together, or how "bright" or "dark" a scale may feel.

## Structure
The circle of fifths places the 12 chromatic notes in a circle, starting on $\text{C}$, to the fifth above, which is $\text{G}$, to the fifth of $\text{G}$ which is $\text{D}$ and repeats this until it reaches back to $\text{C}$. This results in the following notes: $\text{C}$ → $\text{G}$ → $\text{D}$ → $\text{A}$ → $\text{E}$ → $\text{B}$ → $\text{F}\sharp$ → $\text{C}\sharp$ → $\text{G}\sharp$ → $\text{D}\sharp$ → $\text{A}\sharp$ → $\text{F}$ → $\text{C}$. Going up a fifth means going up 7 semitones, and since 7 and 12 are coprime, repeatedly adding 7 modulo 12 will cycle through all 12 notes before returning to the starting note. Notice also that going counter-clockwise moves by fourths, as a fourth is the inverse interval of a fifth.

When the 12 notes are placed on a circle, it looks like this:

> [!COF]

## Using the circle of fifths
### Diatonic scales
For the moment, the above arrangement doesn't look like much, but observe what happens if we highlight all notes of the $\text{C}$ major scale.

> [!COF]
> { "highlightedNotes": [11, 0, 1, 2, 3, 4, 5] }

The highlighted notes form a contiguous section of the circle. This is true for any diatonic scale: all notes of a diatonic scale will always form a contiguous section of 7 notes on the circle of fifths. If we consider the qualities of the chords formed on each scale degree, we get the following pattern, going clockwise: major → major → major → minor → minor → minor → diminished.

> [!NOTE]
> Remember how notes of a scale were called scale _degrees_ ? That terminology makes total sense when viewing a scale from the perspective of the circle of fifths.

Now let's add to the circle the relative minor tonics of each major tonic. As seen previously, the tonic of minor scale is always located 3 semitones below the tonic of its relative major scale. Thus, adding them results in this:

> [!COF]
> { "highlightedNotes": [11, 0, 1, 2, 3, 4, 5], "showRelativeMinors": true, "highlightedRelativeMinors": [0, 1, 2, 8, 9, 10, 11] }

The highlighted notes in blue form the $\text{A}$ minor scale, which is the relative minor of $\text{C}$ major, highlighted in green. Notice how the minor scale is offset by three degrees.

Conceptually, the circle of fifths can be used to determine which notes sound consonant together. Notes that are close to each other on the circle will tend to sound good together, while notes that are far apart will tend to sound dissonant. The pentatonic scale makes use of this and removes from the major scale the two notes that are the furthest apart: $\text{F}$ and $\text{B}$ (which is in the case of $\text{C}$ major, but they are the fourth and seventh scale degrees). Note that these are on opposite sides of the circle, and form a tritone which is considered the most dissonant interval. This enables the pentatonic scale to sound "smoother" and without tension. The $\text{C}$ major pentatonic scale is the following.

> [!COF]
> { "highlightedNotes": [0, 1, 2, 3, 4] }

Consider each scale degree of a major scale and the quality of the chord formed on it. With the exception of diminished (seventh scale degree), if we construct each corresponding major or minor pentatonic scale, it will be contained in the overall (non-pentatonic) scale. For example, $\text{G}$ major pentatonic or $\text{D}$ minor pentatonic are both contained in $\text{C}$ major.


> [!TIP]
> This is often used in melodies, where for each underlying chord, the melody uses notes from the corresponding pentatonic scale, ensuring the melody always sounds "good" by effectively removing the largest intervals and thus the most dissonant ones. This provides a solid starting point to impovisation or melody writing, but can sound "boring" if overused, as it removes much of the tension and release that comes from dissonance and resolution.
> 
> Jazz pianists also often play what's referred to as _outside_ lines. Outside in this context simply means using the non-highlighted notes as basis for melody, chords or scales.

### Key signatures
Interesting patterns also emerge when looking at key signatures. Starting from $\text{C}$, the only key signature with no accidentals, each clockwise step adds a sharp to the key signature, while each counter-clockwise step adds a flat. For example, $\text{C}$ major has no sharps or flats, $\text{G}$ major has 1 sharp, $\text{D}$ major has 2 sharps, and so on. Conversely, $\text{F}$ major has 1 flat, $\text{B}\flat$ major has 2 flats, and so on. This pattern continues until all 7 possible sharps or flats are reached.

> [!COF]
> { "showKeySignatures": true }

Observe how the key signatures change as you move around the circle. Starting on $\text{C}$, there are no sharps or flats. By going counter-clockwise around the circle, the signatures gain flats, while going clockwise adds sharps. This goes on until the $\text{F}\sharp/\text{G}\flat$ scale which can be seen as containing 6 sharps, but also 6 flats, as seen below:

<div class="svg-container" style="text-align: center;">
  <embed class="svg-embed" src="/music/assets/F-sharp-major_d-sharp-minor.svg" />
  <embed class="svg-embed" src="/music/assets/G-flat-major_e-flat-minor.svg" />

  <blockquote>
    [!CENTER]
    Both these key signatures are enharmonically equivalent, e.g. they represent the same diatonic scale. We call the one on the left $\text{F}\sharp$ major and the one on the right $\text{G}\flat$ major.
  </blockquote>
</div>

This also happens to be true about the $\text{D}\flat$ and $\text{B}$ scale. $\text{D}\flat$ is enharmonically equivalent to $\text{C}\sharp$ and $\text{B}$ is enharmonically equivalent to $\text{C}\flat$.

<div class="svg-container" style="text-align: center;">
  <embed class="svg-embed" src="/music/assets/D-flat-major_b-flat-minor.svg" />
  <embed class="svg-embed" src="/music/assets/C-sharp-major_a-sharp-minor.svg" />

  <blockquote>
    [!CENTER]
    The $\text{D}\flat$ (left) and $\text{C}\sharp$ (right) major scales. Notice how $\text{C}\sharp$ has 7 sharps, continuing the clockwise increasing sharp pattern.
  </blockquote>
</div>

<div class="svg-container" style="text-align: center;">
  <embed class="svg-embed" src="/music/assets/C-flat-major_a-flat-minor.svg" />
  <embed class="svg-embed" src="/music/assets/B-major_g-sharp-minor.svg" />

  <blockquote>
    [!CENTER]
    The $\text{C}\flat$ (left) and $\text{B}$ (right) major scales. Notice how $\text{C}\flat$ has 7 flats, continuing the counter-clockwise increasing flats pattern.
  </blockquote>
</div>

> [!NOTE]
> The reason this is only the case for $\text{D}\flat$ and $\text{B}$ is because beyond these two scales, the key signatures would require double sharps or double flats, which are rarely used in practice. For example, the third scale degree of $\text{A}\sharp$ major (enharmonically equivalent to $\text{B}\flat$ major) would be $\text{C}$𝄪 ($\text{C}\sharp\sharp$).

> [!TIP]
> This pattern of increasing sharps/flats is often used in music for key changes, e.g. songs will often move from let's say $\text{C}$ major to $\text{F}$ major as they are next to each other on the circle of fifths and thus only differ by one sharpened or flattened note.

### Intervals

### Chords


> [!CENTER]
> Continue to [IV. Deeper into scales](../deeper-into-scales/index.md) or go back to the [front-page](../index.md).
