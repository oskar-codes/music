# I. The building blocks

## Notes
_Notes_ are distinct sounds that act as the most basic building block of all music. They represent a pitch, and a duration. In western musical theory, there are 12 distinct notes. The step between two adjacent notes from these 12 is called a semitone. _Sharpening_ a note indicates playing the note one semitone above, and is written using the $\sharp$ symbol. _Flattening_ indicates playing the note one semitone below, and is written using the $\flat$ symbol. Two semitones are called a whole tone.

The 12 notes are based on 7 notes named as follows: $\text{C}$, $\text{D}$, $\text{E}$, $\text{F}$, $\text{G}$, $\text{A}$, $\text{B}$. Between $\text{E}$ and $\text{F}$ and between $\text{B}$ and $\text{C}$, there is only a semitone, while between all other adjacent notes there is a whole tone. By sharpening or flattening some of these notes, we can obtain the remaining 5 notes. For example, by sharpening $\text{C}$, we obtain $C\sharp$, which is the same note as $D\flat$, obtained by flattening $\text{D}$. Two distinct note notations describing the same note are called _enharmonically equivalent_.

Thus, the remaining notes are $\text{C}\sharp$, $\text{D}\sharp$, $\text{F}\sharp$, $\text{G}\sharp$ and $\text{A}\sharp$, or equivalently $\text{D}\flat$, $\text{E}\flat$, $\text{G}\flat$, $\text{A}\flat$ and $\text{B}\flat$. Combining these with the original 7 notes, we obtain the full set of 12 distinct notes:

> [!PIANO]
> {"startNote": "C4", "octaves": 1, "displayNoteNames": true, "label": "The 12 notes"}

The set of 7 notes forms a _Major scale_, and the set of all 12 notes forms the _Chromatic scale_. These will be explained further in [the section about scales](../where-the-theory-starts/index.md#scales).

These 12 notes repeat going up and down octaves. To distinguish two notes in different octaves, the octave number is associated to the name. For example, $\text{A}_4$ denotes the note $\text{A}$ in the fourth octave. To number the octaves, the A440 pitch standard[^1] defines $\text{A}_4$ as having the pitch 440 Hz, and all other notes are derived from it. Doubling (or halving) moves a note up (or down) an octave. For example, $\text{A}_5$ is 880 Hz and $\text{A}_3$ is 220 Hz. All other pitches are derived from it, following a tuning system called a Musical temperament[^2]. There are several different temperaments, each meeting different requirements.

## Intervals
_Intervals_ are differences in pitch between two notes. For example as seen before, a whole tone (also called major second) is an interval of two semitones. Below are all the intervals between $\text{C}$ and the 12 notes. See [here](../resources/intervals.md) for a visualization of them.

| No. semitones | Note               | Interval name (Major, Minor or Perfect) | Interval name (Augmented or Diminished) |
|:-------------:| -------------------| ----------------------------------------| --------------------------------------- |
| 0             | $\text{C}$         | Perfect unison                          | Diminished second                       |
| 1             | $\text{C}\sharp$   | Minor second                            | Augmented unison                        |
| 2             | $\text{D}$         | Major second                            | Diminished third                        |
| 3             | $\text{D}\sharp$   | Minor third                             | Augmented second                        |
| 4             | $\text{E}$         | Major third                             | Diminished fourth                       |
| 5             | $\text{F}$         | Perfect fourth                          | Augmented third                         |
| 6             | $\text{F}\sharp$   | Tritone                                 | Diminished fifth / Augmented fourth     |
| 7             | $\text{G}$         | Perfect fifth                           | Diminished sixth                        |
| 8             | $\text{G}\sharp$   | Minor sixth                             | Augmented fifth                         |
| 9             | $\text{A}$         | Major sixth                             | Diminished seventh                      |
| 10            | $\text{A}\sharp$   | Minor seventh                           | Augmented sixth                         |
| 11            | $\text{B}$         | Major seventh                           | Diminished octave                       |
| 12            | $\text{C}$ (oct.)  | Perfect octave                          | Augmented seventh                       |

The terms major, minor, perfect, augmented and diminished are called interval _qualities_ (or _modifiers_). Along with a scale _degree_ (the number of the note in the scale), they describe an interval. Two intervals are enharmonically equivalent when they both describe the same difference in pitch between two notes.

### Using major, minor and perfect
These qualities relate to the 7 notes shown above (the Major scale).
- An interval is perfect if the second note is the same (or on another octave), or a fifth away (above and below).
- An interval is major if it is not perfect, and the second note is a note from the Major scale.
- An interval is called a tritone if the second note is precisely 6 semitones away.
- An interval is minor if it is not a tritone, and the second note is not a note from the major scale.

An interval with a major quality refers to an interval where the second note is a note from the Major scale, corresponding to the associated scale degree. For example, $\text{C}$ to $\text{E}$ is a major third because $\text{E}$ is the third note in the Major scale starting from $\text{C}$. 

An interval with a minor quality refers to an interval where the second note is one semitone lower than a major interval. For example, $\text{C}$ to $\text{E}\flat$ is a minor third because $\text{E}\flat$ is one semitone lower than $\text{E}$, which is the third note in the Major scale starting from $\text{C}$.

### Using augmented and diminished
These qualities also relate to the Major scale, but act more directly on the associated scale degree.
- Augmented intervals add a semitone to the scale degree. For example, $\text{C}$ to $\text{G}\sharp$ is an augmented fifth because $\text{G}$ is the fifth note of the Major scale, and the augmented modifier adds a semitone, thus resulting in $\text{G}\sharp$.
- Diminished intervals move the scale degree 1 step down in the Major scale. For example, $\text{C}$ to $\text{E}$ is a diminished fourth, because $\text{F}$ is the fourth note of the Major scale, and the diminished modifier moves it 1 step down in the Major scale, thus resulting in $\text{D}$. That is with the exception of the tritone, which is also called a diminished fifth even though $\text{F}\sharp$ is not in the Major scale.

> [!NOTE]
> Both these systems may seem arbitrary, but they are based on the _circle of fifths_, which is a fundamental concept in music theory. It is explained in [the section about the circle of fifths](../where-the-theory-starts/index.md#the-circle-of-fifths).

### Above the octave
Intervals can also extend to above an octave, where the scale degree continues above 8 (the perfect octave). For example, a ninth from $\text{C}$ is $\text{D}$, but an octave further. Even though the second and ninth notes are enharmonically equivalent, they are useful for denoting chords. Notes in chords also often use a slightly different interval naming system, especially in Jazz. See [the section about advanced chords](../deeper-into-chords/index.md#advanced-chords).

## Transposition
A crucial concept to understand in music is _transposition_. The interval system explained above was based on $\text{C}$, meaning for example that $\text{D}$ was named a major second because it is the second note of the $\textbf{C}$ major scale. But many times, $\text{C}$ is not the reference note and as such any of the other 12 notes could be the "reference" note. This note is called the _tonic_, or the _first degree_. For example, choosing $\text{G}$ as the tonic results in $\text{C}$ being the perfect fourth of $\text{G}$, because $\text{C}$ is 5 semitones away from $\text{G}$.

Transposition works with intervals, but also with any other set of notes. Chords, scales, modes (these are concepts which will be explained later), or entire musical pieces can also be transposed, just by keeping every interval between notes the same, but moving the tonic.

> [!CENTER]
> Continue to [II. Where the theory starts](../where-the-theory-starts/index.md) or go back to the [front-page](../index.md).

[^1]: https://en.wikipedia.org/wiki/A440_(pitch_standard)
[^2]: https://en.wikipedia.org/wiki/Musical_temperament
