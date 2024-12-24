// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(gender) =>
      "${Intl.gender(gender, female: 'تقدمكٍ متوافق مع الخطة!', male: 'تقدمك متوافق مع الخطة ياقوي!', other: 'تقدمك متوافق مع الخطة!')}";

  static String m1(gender) =>
      "${Intl.gender(gender, female: 'كفو أستمري بالتقدم!', male: 'كفو عليك استمر بالتقدم!', other: 'كفو عليك استمر بالتقدم!')}";

  static String m2(gender) =>
      "${Intl.gender(gender, female: 'الخطة صممت خصيصاً لكٍ!', male: 'الخطة صممت خصيصاً لك!', other: 'الخطة صممت خصيصاً لك!')}";

  static String m3(gender) =>
      "${Intl.gender(gender, female: 'أحسنتِ! لكن التزمي بالخطة أكثر!', male: 'أحسنت! لكن التزم بالخطة اكثر!', other: 'أحسنت! لكن التزم بالخطة اكثر!')}";

  static String m4(minutes) =>
      "${Intl.plural(minutes, one: 'رقم الهاتف محظور، الرجاء المحاولة بعد دقيقة', two: 'رقم الهاتف محظور، الرجاء المحاولة بعد دقيقتين', few: 'رقم الهاتف محظور، الرجاء المحاولة بعد ${minutes} دقائق', other: 'رقم الهاتف محظور، الرجاء المحاولة بعد ${minutes} دقيقة')}";

  static String m5(examType) => "جاري تحضير منهجك لاختبار ${examType}...";

  static String m6(gender) =>
      "${Intl.gender(gender, female: 'إنتهت رحلتكٍ!', male: 'أنتهت رحلتك يا اسطوري!', other: 'إنتهت رحلتك!')}";

  static String m7(number) =>
      "ستصلك رسالة على رقم الجوال الذي قمت بادخاله,\nقم بادخال الرقم المكون من ${number} خانات";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "I_have_an_account": MessageLookupByLibrary.simpleMessage("لدي حساب"),
        "according_to_plan": m0,
        "after": MessageLookupByLibrary.simpleMessage("بعد"),
        "applied": MessageLookupByLibrary.simpleMessage("تم التقديم"),
        "april": MessageLookupByLibrary.simpleMessage("أبريل"),
        "august": MessageLookupByLibrary.simpleMessage("أغسطس"),
        "back_to_current_day":
            MessageLookupByLibrary.simpleMessage("الرجوع الى اليوم الحالي"),
        "bookmarks": MessageLookupByLibrary.simpleMessage("الاشارات المرجعية"),
        "chooseYourCharacter":
            MessageLookupByLibrary.simpleMessage("اختر شخصيتك المفضلة"),
        "choose_exam": MessageLookupByLibrary.simpleMessage("وش هدفك الحالي؟"),
        "choose_stream": MessageLookupByLibrary.simpleMessage("وش تخصصك؟"),
        "choose_types_for_formats": MessageLookupByLibrary.simpleMessage(
            "اختر الاقسام اللي تبي يكون الكويز من ضمنها."),
        "comments": MessageLookupByLibrary.simpleMessage("ملاحظات"),
        "comprehensive_section": MessageLookupByLibrary.simpleMessage("شامل"),
        "confirmYourNumber":
            MessageLookupByLibrary.simpleMessage("التحقق من رقم الجوال"),
        "continue_step": MessageLookupByLibrary.simpleMessage("متابعة"),
        "correct_answer":
            MessageLookupByLibrary.simpleMessage("الإجابة الصحيحة"),
        "currently_unavailable":
            MessageLookupByLibrary.simpleMessage("غير متوفرة حاليا"),
        "december": MessageLookupByLibrary.simpleMessage("ديسمبر"),
        "easy": MessageLookupByLibrary.simpleMessage("سهلة"),
        "exams_created":
            MessageLookupByLibrary.simpleMessage("الاختبارات التي تم انشاءاها"),
        "expired_otp":
            MessageLookupByLibrary.simpleMessage("انتهت صلاحية رمز التحقق"),
        "february": MessageLookupByLibrary.simpleMessage("فبراير"),
        "filter_by": MessageLookupByLibrary.simpleMessage("التصفية حسب"),
        "finished_one_lesson": m1,
        "firstName": MessageLookupByLibrary.simpleMessage("إسمك الأول"),
        "first_time_roadmap": m2,
        "formats": MessageLookupByLibrary.simpleMessage("نماذج"),
        "friday": MessageLookupByLibrary.simpleMessage("الجمعة"),
        "hello": MessageLookupByLibrary.simpleMessage("مرحبا"),
        "hey_question_before_start": MessageLookupByLibrary.simpleMessage(
            "أهلاً، عندنا بعض الأسئلة السريعة قبل نبدأ"),
        "i_have_account": MessageLookupByLibrary.simpleMessage("لدي حساب"),
        "incomplete_question":
            MessageLookupByLibrary.simpleMessage("السؤال غير كامل"),
        "info_for_repeated_phone_number": MessageLookupByLibrary.simpleMessage(
            "عزيزي المستخدم، رقم الجوال الذي أدخلته مسجل لدينا مسبقًا من قبل مستخدم آخر. إذا كنت صاحب هذا الرقم، يرجى الضغط على \"تسجيل الدخول \" لإرسال رمز التحقق إلى جوالك."),
        "january": MessageLookupByLibrary.simpleMessage("يناير"),
        "july": MessageLookupByLibrary.simpleMessage("يوليو"),
        "june": MessageLookupByLibrary.simpleMessage("يونيو"),
        "lastName": MessageLookupByLibrary.simpleMessage("إسم العائلة"),
        "letsMakeAnAccount":
            MessageLookupByLibrary.simpleMessage("يالله نسويلك حساب"),
        "logout": MessageLookupByLibrary.simpleMessage("خروج"),
        "march": MessageLookupByLibrary.simpleMessage("مارس"),
        "may": MessageLookupByLibrary.simpleMessage("مايو"),
        "monday": MessageLookupByLibrary.simpleMessage("الاثنين"),
        "my_account": MessageLookupByLibrary.simpleMessage("حسابي"),
        "my_library": MessageLookupByLibrary.simpleMessage("مكتبتي"),
        "my_plan": MessageLookupByLibrary.simpleMessage("خطتي"),
        "next_word": MessageLookupByLibrary.simpleMessage("الكلمة التالية"),
        "noInternetErrorMessage": MessageLookupByLibrary.simpleMessage(
            "يبدو أنك غير متصل بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى"),
        "not_according_to_plan": m3,
        "november": MessageLookupByLibrary.simpleMessage("نوفمبر"),
        "october": MessageLookupByLibrary.simpleMessage("أكتوبر"),
        "option_repeated":
            MessageLookupByLibrary.simpleMessage("احد الخيارات مكرره"),
        "optional_scored": MessageLookupByLibrary.simpleMessage("(إختياري)"),
        "paragraphs_section": MessageLookupByLibrary.simpleMessage("القطع"),
        "passed_formats":
            MessageLookupByLibrary.simpleMessage("النماذج المجتازة"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الجوال"),
        "phone_blocked_for_minutes": m4,
        "phone_number_already_registered":
            MessageLookupByLibrary.simpleMessage("رقم الجوال مسجل من قبل!"),
        "phone_number_does_not_exist":
            MessageLookupByLibrary.simpleMessage("رقم الجوال هذا غير مسجل!"),
        "prepare_curriculum_for_Qudrat": MessageLookupByLibrary.simpleMessage(
            "جاري تحضير منهجك لاختبار القدرات..."),
        "preparingForYourExam": m5,
        "privacy_policy":
            MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
        "public_questions": MessageLookupByLibrary.simpleMessage("اسئلة عامة"),
        "quantitative": MessageLookupByLibrary.simpleMessage("كمي"),
        "quantitative_section":
            MessageLookupByLibrary.simpleMessage("قسم الكمي"),
        "qudrat": MessageLookupByLibrary.simpleMessage("قدرات"),
        "qudrat_exam": MessageLookupByLibrary.simpleMessage("اختبار القدرات"),
        "qudrat_section": MessageLookupByLibrary.simpleMessage("قسم القدرات"),
        "question_have_issue":
            MessageLookupByLibrary.simpleMessage("السؤال فيه خطأ"),
        "remaining": MessageLookupByLibrary.simpleMessage("المتبقية"),
        "report": MessageLookupByLibrary.simpleMessage("إبلاغ"),
        "report_a_question":
            MessageLookupByLibrary.simpleMessage("الإبلاغ عن مشكلة"),
        "resendCode":
            MessageLookupByLibrary.simpleMessage("إعادة ارسال رمز التحقق"),
        "review": MessageLookupByLibrary.simpleMessage("مراجعة"),
        "revision": MessageLookupByLibrary.simpleMessage("مراجعة"),
        "rewrite_phone_number":
            MessageLookupByLibrary.simpleMessage("اعادة كتابة الرقم"),
        "roadmap_end_message": m6,
        "saturday": MessageLookupByLibrary.simpleMessage("السبت"),
        "seconds": MessageLookupByLibrary.simpleMessage("ثانية"),
        "september": MessageLookupByLibrary.simpleMessage("سبتمبر"),
        "show_answer": MessageLookupByLibrary.simpleMessage("عرض الاجابة"),
        "sign_in": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "somethingWentWrongPleaseTryAgain":
            MessageLookupByLibrary.simpleMessage(
                "حصل خطأ، حاول مرة أخرى لاحقا"),
        "start_now": MessageLookupByLibrary.simpleMessage("ابدأ الان"),
        "subscription": MessageLookupByLibrary.simpleMessage("الاشتراك"),
        "sunday": MessageLookupByLibrary.simpleMessage("الأحد"),
        "tafauq_app": MessageLookupByLibrary.simpleMessage("تطبيق تفوّق"),
        "tahsili": MessageLookupByLibrary.simpleMessage("تحصيلي"),
        "tahsili_exam": MessageLookupByLibrary.simpleMessage("اختبار التحصيلي"),
        "tahsili_section": MessageLookupByLibrary.simpleMessage("قسم التحصيلي"),
        "tellUsYourInfo":
            MessageLookupByLibrary.simpleMessage("علمنا معلومات حسابك..."),
        "thursday": MessageLookupByLibrary.simpleMessage("الخميس"),
        "today": MessageLookupByLibrary.simpleMessage("اليوم"),
        "tuesday": MessageLookupByLibrary.simpleMessage("الثلاثاء"),
        "unknown": MessageLookupByLibrary.simpleMessage("غير معروف"),
        "verbal": MessageLookupByLibrary.simpleMessage("لفطي"),
        "verbal_section": MessageLookupByLibrary.simpleMessage("قسم اللفظي"),
        "wednesday": MessageLookupByLibrary.simpleMessage("الأربعاء"),
        "welcome_page__message": MessageLookupByLibrary.simpleMessage(
            "رِحلةُ التَعلم و مُفتاح النجاح"),
        "whenIsTheExam":
            MessageLookupByLibrary.simpleMessage("متى راح يكون موعد الاختبار؟"),
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
        "year_formats": MessageLookupByLibrary.simpleMessage("نماذج"),
        "youWillReceiveAMessage": m7,
        "you_are_offline": MessageLookupByLibrary.simpleMessage(
            "لا يوجد لديك اتصال بالإنترنت"),
        "you_seem_to_be_offline": MessageLookupByLibrary.simpleMessage(
            "يبدو أنه لا يوجد لديك اتصال بالإنترنت، تحقق من اتصالك وحاول مرة أخرى"),
        "your_progress_with_plan": MessageLookupByLibrary.simpleMessage(
            "تقدمك متوافق مع الخطة يا كبيييير!")
      };
}
