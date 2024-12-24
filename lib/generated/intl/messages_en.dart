// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(gender) =>
      "${Intl.gender(gender, female: 'تقدمكٍ متوافق مع الخطة!', male: 'تقدمك متوافق مع الخطة ياقوي!', other: 'تقدمك متوافق مع الخطة!')}";

  static String m1(gender) =>
      "${Intl.gender(gender, female: 'كفو أستمري بالتقدم!', male: 'كفو عليك استمر بالتقدم!', other: 'كفو عليك استمر بالتقدم!')}";

  static String m2(gender) =>
      "${Intl.gender(gender, female: 'الخطة صممت خصيصاً لكٍ!', male: 'الخطة صممت خصيصاً لك!', other: 'الخطة صممت خصيصاً لك!')}";

  static String m3(gender) =>
      "${Intl.gender(gender, female: 'أحسنتِ! لكن التزمي بالخطة أكثر!', male: 'أحسنت! لكن التزم بالخطة اكثر!', other: 'أحسنت! لكن التزم بالخطة اكثر!')}";

  static String m4(minutes) =>
      "رقم الهاتف محظور، الرحاء المحاولة بعد ${minutes}";

  static String m5(examType) => "جاري تحضير منهجك لاختبار ${examType}...";

  static String m6(gender) =>
      "${Intl.gender(gender, female: 'إنتهت رحلتكٍ!', male: 'أنتهت رحلتك يا اسطوري!', other: 'إنتهت رحلتك!')}";

  static String m7(number) =>
      "You will receive a message on the phone number you entered,\nplease enter the ${number}-digit code";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "I_have_an_account": MessageLookupByLibrary.simpleMessage("لدي حساب"),
        "according_to_plan": m0,
        "after": MessageLookupByLibrary.simpleMessage("after"),
        "applied": MessageLookupByLibrary.simpleMessage("Applied"),
        "april": MessageLookupByLibrary.simpleMessage("April"),
        "august": MessageLookupByLibrary.simpleMessage("August"),
        "back_to_current_day":
            MessageLookupByLibrary.simpleMessage("الرجوع الى اليوم الحالي"),
        "bookmarks": MessageLookupByLibrary.simpleMessage("الاشارات المرجعية"),
        "chooseYourCharacter": MessageLookupByLibrary.simpleMessage(
            "Choose your favorite character"),
        "choose_exam":
            MessageLookupByLibrary.simpleMessage("What do you want to study"),
        "choose_stream":
            MessageLookupByLibrary.simpleMessage("What is your stream"),
        "choose_types_for_formats":
            MessageLookupByLibrary.simpleMessage("Choose Format Types"),
        "comments": MessageLookupByLibrary.simpleMessage("ملاحظات"),
        "comprehensive_section":
            MessageLookupByLibrary.simpleMessage("Comprehensive"),
        "confirmYourNumber":
            MessageLookupByLibrary.simpleMessage("Confirm your phone number"),
        "continue_step": MessageLookupByLibrary.simpleMessage("continue"),
        "correct_answer":
            MessageLookupByLibrary.simpleMessage("Correct Answer"),
        "currently_unavailable":
            MessageLookupByLibrary.simpleMessage("are currently unavailable"),
        "december": MessageLookupByLibrary.simpleMessage("December"),
        "easy": MessageLookupByLibrary.simpleMessage("easy"),
        "exams_created":
            MessageLookupByLibrary.simpleMessage("الاختبارات التي تم انشاءاها"),
        "expired_otp":
            MessageLookupByLibrary.simpleMessage("انتهت صلاحية رمز التحقق"),
        "february": MessageLookupByLibrary.simpleMessage("February"),
        "filter_by": MessageLookupByLibrary.simpleMessage("Filter By"),
        "finished_one_lesson": m1,
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "first_time_roadmap": m2,
        "formats": MessageLookupByLibrary.simpleMessage("Formats"),
        "friday": MessageLookupByLibrary.simpleMessage("Friday"),
        "hello": MessageLookupByLibrary.simpleMessage("Hello"),
        "hey_question_before_start": MessageLookupByLibrary.simpleMessage(
            "Hi, we have quick questions before you start learning"),
        "i_have_account":
            MessageLookupByLibrary.simpleMessage("I already have an account"),
        "incomplete_question":
            MessageLookupByLibrary.simpleMessage("السؤال غير كامل"),
        "info_for_repeated_phone_number": MessageLookupByLibrary.simpleMessage(
            "عزيزي المستخدم، رقم الجوال الذي أدخلته مسجل لدينا مسبقًا من قبل مستخدم آخر. إذا كنت صاحب هذا الرقم، يرجى الضغط على \"تسجيل الدخول \" لإرسال رمز التحقق إلى جوالك."),
        "january": MessageLookupByLibrary.simpleMessage("January"),
        "july": MessageLookupByLibrary.simpleMessage("July"),
        "june": MessageLookupByLibrary.simpleMessage("June"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "letsMakeAnAccount":
            MessageLookupByLibrary.simpleMessage("Let\'s make an account"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "march": MessageLookupByLibrary.simpleMessage("March"),
        "may": MessageLookupByLibrary.simpleMessage("May"),
        "monday": MessageLookupByLibrary.simpleMessage("Monday"),
        "my_account": MessageLookupByLibrary.simpleMessage("Account"),
        "my_library": MessageLookupByLibrary.simpleMessage("My Library"),
        "my_plan": MessageLookupByLibrary.simpleMessage("My Plan"),
        "next_word": MessageLookupByLibrary.simpleMessage("الكلمة التالية"),
        "noInternetErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Oops! It looks like you’re not connected to the internet. Please check your connection and try again."),
        "not_according_to_plan": m3,
        "november": MessageLookupByLibrary.simpleMessage("November"),
        "october": MessageLookupByLibrary.simpleMessage("October"),
        "option_repeated":
            MessageLookupByLibrary.simpleMessage("احد الخيارات مكرره"),
        "optional_scored": MessageLookupByLibrary.simpleMessage("(إختياري)"),
        "paragraphs_section":
            MessageLookupByLibrary.simpleMessage("Paragraphs"),
        "passed_formats":
            MessageLookupByLibrary.simpleMessage("Passed Formats"),
        "phoneNumber":
            MessageLookupByLibrary.simpleMessage("Mobile Phone Number"),
        "phone_blocked_for_minutes": m4,
        "phone_number_already_registered": MessageLookupByLibrary.simpleMessage(
            "Phone number already registered"),
        "phone_number_does_not_exist":
            MessageLookupByLibrary.simpleMessage("Phone number does not exist"),
        "prepare_curriculum_for_Qudrat": MessageLookupByLibrary.simpleMessage(
            "Your curriculum for Qudrat is being prepared..."),
        "preparingForYourExam": m5,
        "privacy_policy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "public_questions":
            MessageLookupByLibrary.simpleMessage("Public Questions"),
        "quantitative": MessageLookupByLibrary.simpleMessage("Quantitative"),
        "quantitative_section":
            MessageLookupByLibrary.simpleMessage("Quantitative Section"),
        "qudrat": MessageLookupByLibrary.simpleMessage("Qudrat"),
        "qudrat_exam": MessageLookupByLibrary.simpleMessage("Qudrat Exam"),
        "qudrat_section":
            MessageLookupByLibrary.simpleMessage("Qudrat Section"),
        "question_have_issue":
            MessageLookupByLibrary.simpleMessage("السؤال فيه خطأ"),
        "remaining": MessageLookupByLibrary.simpleMessage("remaining"),
        "report": MessageLookupByLibrary.simpleMessage("إبلاغ"),
        "report_a_question":
            MessageLookupByLibrary.simpleMessage("الإبلاغ عن مشكلة"),
        "resendCode": MessageLookupByLibrary.simpleMessage("Resend the code"),
        "review": MessageLookupByLibrary.simpleMessage("Review"),
        "revision": MessageLookupByLibrary.simpleMessage("Revision"),
        "rewrite_phone_number":
            MessageLookupByLibrary.simpleMessage("Rewrite Phone Number"),
        "roadmap_end_message": m6,
        "saturday": MessageLookupByLibrary.simpleMessage("Saturday"),
        "seconds": MessageLookupByLibrary.simpleMessage("seconds"),
        "september": MessageLookupByLibrary.simpleMessage("September"),
        "show_answer": MessageLookupByLibrary.simpleMessage("Show Answer"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign in"),
        "somethingWentWrongPleaseTryAgain":
            MessageLookupByLibrary.simpleMessage(
                "Something Went Wrong Please Try Again"),
        "start_now": MessageLookupByLibrary.simpleMessage("Start Now"),
        "subscription": MessageLookupByLibrary.simpleMessage("Subscription"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sunday"),
        "tafauq_app": MessageLookupByLibrary.simpleMessage("تطبيق تفوّق"),
        "tahsili": MessageLookupByLibrary.simpleMessage("Tahsili"),
        "tahsili_exam": MessageLookupByLibrary.simpleMessage("Tahsili Exam"),
        "tahsili_section":
            MessageLookupByLibrary.simpleMessage("Tahsili Section"),
        "tellUsYourInfo": MessageLookupByLibrary.simpleMessage(
            "Tell us your account information..."),
        "thursday": MessageLookupByLibrary.simpleMessage("Thursday"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tuesday"),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "verbal": MessageLookupByLibrary.simpleMessage("Verbal"),
        "verbal_section":
            MessageLookupByLibrary.simpleMessage("Verbal Section"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Wednesday"),
        "welcome_page__message": MessageLookupByLibrary.simpleMessage(
            "رِحلةُ التَعلم و مُفتاح النجاح"),
        "whenIsTheExam":
            MessageLookupByLibrary.simpleMessage("When will the exam be?"),
        "when_is_the_exam":
            MessageLookupByLibrary.simpleMessage("حدد تاريخ الاختبار"),
        "will_gurantee_your_success_by_these":
            MessageLookupByLibrary.simpleMessage(
                "سوف نضمن اجتيازك للاختبار المقرر من خلال الامور التالية"),
        "words_need_revision":
            MessageLookupByLibrary.simpleMessage("كلمات تحتاج مراجعة"),
        "wrong_answer": MessageLookupByLibrary.simpleMessage("الجواب غلط"),
        "wrong_answers": MessageLookupByLibrary.simpleMessage("اجابات خاطئة"),
        "wrong_image": MessageLookupByLibrary.simpleMessage("الصورة غير صحيحة"),
        "wrong_otp":
            MessageLookupByLibrary.simpleMessage("الرمز الذي أدخلته غير صالح"),
        "year_formats": MessageLookupByLibrary.simpleMessage("Formats"),
        "youWillReceiveAMessage": m7,
        "you_are_offline":
            MessageLookupByLibrary.simpleMessage("You are offline"),
        "you_seem_to_be_offline": MessageLookupByLibrary.simpleMessage(
            "You seem to be offline. Check your connection and try again."),
        "your_progress_with_plan": MessageLookupByLibrary.simpleMessage(
            "Your progress is with the plans Man!!")
      };
}
