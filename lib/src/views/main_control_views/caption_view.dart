import 'package:flutter/material.dart';
import 'package:flutter_story_editor/src/theme/style.dart';

// CaptionView is a StatelessWidget that provides UI for entering captions and initiating save operations.
class CaptionView extends StatelessWidget {
  final VoidCallback
      onSaveClickListener; // Callback function when the save button is clicked.

  final bool
      isSaving; // Boolean indicating whether a save operation is in progress.

  // Constructor initializing all fields with required annotations for mandatory fields.
  const CaptionView({
    super.key,
    required this.onSaveClickListener,
    required this.isSaving,
  });

  @override
  Widget build(BuildContext context) {
    // Building the widget structure for the caption view.
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Aligning children to the start and end of the row.
            children: [
              GestureDetector(
                onTap:
                    onSaveClickListener, // Gesture detector to handle tap events on the save button.
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          25), // Rounded corners for the button.
                      color: tealColor), // Background color set to teal.
                  child: Center(
                    child: isSaving
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ) // Circular progress indicator when saving.
                        : const Icon(
                            Icons.send_outlined,
                            color: Colors.white,
                          ), // Icon indicating send action.
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
