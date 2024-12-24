// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `I already have an account`
  String get i_have_account {
    return Intl.message(
      'I already have an account',
      name: 'i_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get start_now {
    return Intl.message(
      'Start Now',
      name: 'start_now',
      desc: '',
      args: [],
    );
  }

  /// `Hi, we have quick questions before you start learning`
  String get hey_question_before_start {
    return Intl.message(
      'Hi, we have quick questions before you start learning',
      name: 'hey_question_before_start',
      desc: '',
      args: [],
    );
  }

  /// `What do you want to study`
  String get choose_exam {
    return Intl.message(
      'What do you want to study',
      name: 'choose_exam',
      desc: '',
      args: [],
    );
  }

  /// `Your curriculum for Qudrat is being prepared...`
  String get prepare_curriculum_for_Qudrat {
    return Intl.message(
      'Your curriculum for Qudrat is being prepared...',
      name: 'prepare_curriculum_for_Qudrat',
      desc: '',
      args: [],
    );
  }

  /// `What is your stream`
  String get choose_stream {
    return Intl.message(
      'What is your stream',
      name: 'choose_stream',
      desc: '',
      args: [],
    );
  }

  /// `Qudrat Exam`
  String get qudrat_exam {
    return Intl.message(
      'Qudrat Exam',
      name: 'qudrat_exam',
      desc: '',
      args: [],
    );
  }

  /// `Tahsili Exam`
  String get tahsili_exam {
    return Intl.message(
      'Tahsili Exam',
      name: 'tahsili_exam',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continue_step {
    return Intl.message(
      'continue',
      name: 'continue_step',
      desc: '',
      args: [],
    );
  }

  /// `Tell us your account information...`
  String get tellUsYourInfo {
    return Intl.message(
      'Tell us your account information...',
      name: 'tellUsYourInfo',
      desc: '',
      args: [],
    );
  }

  /// `Let's make an account`
  String get letsMakeAnAccount {
    return Intl.message(
      'Let\'s make an account',
      name: 'letsMakeAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Mobile Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Choose your favorite character`
  String get chooseYourCharacter {
    return Intl.message(
      'Choose your favorite character',
      name: 'chooseYourCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your phone number`
  String get confirmYourNumber {
    return Intl.message(
      'Confirm your phone number',
      name: 'confirmYourNumber',
      desc: '',
      args: [],
    );
  }

  /// `You will receive a message on the phone number you entered,\nplease enter the {number}-digit code`
  String youWillReceiveAMessage(String number) {
    return Intl.message(
      'You will receive a message on the phone number you entered,\nplease enter the $number-digit code',
      name: 'youWillReceiveAMessage',
      desc: 'number of fields',
      args: [number],
    );
  }

  /// `سوف نضمن اجتيازك للاختبار المقرر من خلال الامور التالية`
  String get will_gurantee_your_success_by_these {
    return Intl.message(
      'سوف نضمن اجتيازك للاختبار المقرر من خلال الامور التالية',
      name: 'will_gurantee_your_success_by_these',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get monday {
    return Intl.message(
      'Monday',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message(
      'Tuesday',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message(
      'Wednesday',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get thursday {
    return Intl.message(
      'Thursday',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Friday`
  String get friday {
    return Intl.message(
      'Friday',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Saturday`
  String get saturday {
    return Intl.message(
      'Saturday',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get sunday {
    return Intl.message(
      'Sunday',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get january {
    return Intl.message(
      'January',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get february {
    return Intl.message(
      'February',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get march {
    return Intl.message(
      'March',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get april {
    return Intl.message(
      'April',
      name: 'april',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may {
    return Intl.message(
      'May',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get june {
    return Intl.message(
      'June',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get july {
    return Intl.message(
      'July',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get august {
    return Intl.message(
      'August',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get september {
    return Intl.message(
      'September',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get october {
    return Intl.message(
      'October',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get november {
    return Intl.message(
      'November',
      name: 'november',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get december {
    return Intl.message(
      'December',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `When will the exam be?`
  String get whenIsTheExam {
    return Intl.message(
      'When will the exam be?',
      name: 'whenIsTheExam',
      desc: '',
      args: [],
    );
  }

  /// `جاري تحضير منهجك لاختبار {examType}...`
  String preparingForYourExam(String examType) {
    return Intl.message(
      'جاري تحضير منهجك لاختبار $examType...',
      name: 'preparingForYourExam',
      desc: 'Message shown when preparing the curriculum for the exam.',
      args: [examType],
    );
  }

  /// `Formats`
  String get year_formats {
    return Intl.message(
      'Formats',
      name: 'year_formats',
      desc: '',
      args: [],
    );
  }

  /// `My Library`
  String get my_library {
    return Intl.message(
      'My Library',
      name: 'my_library',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Verbal`
  String get verbal {
    return Intl.message(
      'Verbal',
      name: 'verbal',
      desc: '',
      args: [],
    );
  }

  /// `Quantitative`
  String get quantitative {
    return Intl.message(
      'Quantitative',
      name: 'quantitative',
      desc: '',
      args: [],
    );
  }

  /// `Public Questions`
  String get public_questions {
    return Intl.message(
      'Public Questions',
      name: 'public_questions',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Subscription`
  String get subscription {
    return Intl.message(
      'Subscription',
      name: 'subscription',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get my_account {
    return Intl.message(
      'Account',
      name: 'my_account',
      desc: '',
      args: [],
    );
  }

  /// `تطبيق تفوّق`
  String get tafauq_app {
    return Intl.message(
      'تطبيق تفوّق',
      name: 'tafauq_app',
      desc: '',
      args: [],
    );
  }

  /// `رِحلةُ التَعلم و مُفتاح النجاح`
  String get welcome_page__message {
    return Intl.message(
      'رِحلةُ التَعلم و مُفتاح النجاح',
      name: 'welcome_page__message',
      desc: '',
      args: [],
    );
  }

  /// `لدي حساب`
  String get I_have_an_account {
    return Intl.message(
      'لدي حساب',
      name: 'I_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Resend the code`
  String get resendCode {
    return Intl.message(
      'Resend the code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `after`
  String get after {
    return Intl.message(
      'after',
      name: 'after',
      desc: '',
      args: [],
    );
  }

  /// `seconds`
  String get seconds {
    return Intl.message(
      'seconds',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `Something Went Wrong Please Try Again`
  String get somethingWentWrongPleaseTryAgain {
    return Intl.message(
      'Something Went Wrong Please Try Again',
      name: 'somethingWentWrongPleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Oops! It looks like you’re not connected to the internet. Please check your connection and try again.`
  String get noInternetErrorMessage {
    return Intl.message(
      'Oops! It looks like you’re not connected to the internet. Please check your connection and try again.',
      name: 'noInternetErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Phone number already registered`
  String get phone_number_already_registered {
    return Intl.message(
      'Phone number already registered',
      name: 'phone_number_already_registered',
      desc: '',
      args: [],
    );
  }

  /// `Phone number does not exist`
  String get phone_number_does_not_exist {
    return Intl.message(
      'Phone number does not exist',
      name: 'phone_number_does_not_exist',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Rewrite Phone Number`
  String get rewrite_phone_number {
    return Intl.message(
      'Rewrite Phone Number',
      name: 'rewrite_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `عزيزي المستخدم، رقم الجوال الذي أدخلته مسجل لدينا مسبقًا من قبل مستخدم آخر. إذا كنت صاحب هذا الرقم، يرجى الضغط على "تسجيل الدخول " لإرسال رمز التحقق إلى جوالك.`
  String get info_for_repeated_phone_number {
    return Intl.message(
      'عزيزي المستخدم، رقم الجوال الذي أدخلته مسجل لدينا مسبقًا من قبل مستخدم آخر. إذا كنت صاحب هذا الرقم، يرجى الضغط على "تسجيل الدخول " لإرسال رمز التحقق إلى جوالك.',
      name: 'info_for_repeated_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف محظور، الرحاء المحاولة بعد {minutes}`
  String phone_blocked_for_minutes(int minutes) {
    return Intl.message(
      'رقم الهاتف محظور، الرحاء المحاولة بعد $minutes',
      name: 'phone_blocked_for_minutes',
      desc:
          'Message shown when the user has made too many attempts and needs to wait.',
      args: [minutes],
    );
  }

  /// `انتهت صلاحية رمز التحقق`
  String get expired_otp {
    return Intl.message(
      'انتهت صلاحية رمز التحقق',
      name: 'expired_otp',
      desc: '',
      args: [],
    );
  }

  /// `الرمز الذي أدخلته غير صالح`
  String get wrong_otp {
    return Intl.message(
      'الرمز الذي أدخلته غير صالح',
      name: 'wrong_otp',
      desc: '',
      args: [],
    );
  }

  /// `My Plan`
  String get my_plan {
    return Intl.message(
      'My Plan',
      name: 'my_plan',
      desc: '',
      args: [],
    );
  }

  /// `Revision`
  String get revision {
    return Intl.message(
      'Revision',
      name: 'revision',
      desc: '',
      args: [],
    );
  }

  /// `Formats`
  String get formats {
    return Intl.message(
      'Formats',
      name: 'formats',
      desc: '',
      args: [],
    );
  }

  /// `Your progress is with the plans Man!!`
  String get your_progress_with_plan {
    return Intl.message(
      'Your progress is with the plans Man!!',
      name: 'your_progress_with_plan',
      desc: '',
      args: [],
    );
  }

  /// `Tahsili Section`
  String get tahsili_section {
    return Intl.message(
      'Tahsili Section',
      name: 'tahsili_section',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Qudrat Section`
  String get qudrat_section {
    return Intl.message(
      'Qudrat Section',
      name: 'qudrat_section',
      desc: '',
      args: [],
    );
  }

  /// `Qudrat`
  String get qudrat {
    return Intl.message(
      'Qudrat',
      name: 'qudrat',
      desc: '',
      args: [],
    );
  }

  /// `Tahsili`
  String get tahsili {
    return Intl.message(
      'Tahsili',
      name: 'tahsili',
      desc: '',
      args: [],
    );
  }

  /// `Passed Formats`
  String get passed_formats {
    return Intl.message(
      'Passed Formats',
      name: 'passed_formats',
      desc: '',
      args: [],
    );
  }

  /// `الاختبارات التي تم انشاءاها`
  String get exams_created {
    return Intl.message(
      'الاختبارات التي تم انشاءاها',
      name: 'exams_created',
      desc: '',
      args: [],
    );
  }

  /// `اجابات خاطئة`
  String get wrong_answers {
    return Intl.message(
      'اجابات خاطئة',
      name: 'wrong_answers',
      desc: '',
      args: [],
    );
  }

  /// `كلمات تحتاج مراجعة`
  String get words_need_revision {
    return Intl.message(
      'كلمات تحتاج مراجعة',
      name: 'words_need_revision',
      desc: '',
      args: [],
    );
  }

  /// `الاشارات المرجعية`
  String get bookmarks {
    return Intl.message(
      'الاشارات المرجعية',
      name: 'bookmarks',
      desc: '',
      args: [],
    );
  }

  /// `Applied`
  String get applied {
    return Intl.message(
      'Applied',
      name: 'applied',
      desc: '',
      args: [],
    );
  }

  /// `Filter By`
  String get filter_by {
    return Intl.message(
      'Filter By',
      name: 'filter_by',
      desc: '',
      args: [],
    );
  }

  /// `Choose Format Types`
  String get choose_types_for_formats {
    return Intl.message(
      'Choose Format Types',
      name: 'choose_types_for_formats',
      desc: '',
      args: [],
    );
  }

  /// `Verbal Section`
  String get verbal_section {
    return Intl.message(
      'Verbal Section',
      name: 'verbal_section',
      desc: '',
      args: [],
    );
  }

  /// `Quantitative Section`
  String get quantitative_section {
    return Intl.message(
      'Quantitative Section',
      name: 'quantitative_section',
      desc: '',
      args: [],
    );
  }

  /// `Paragraphs`
  String get paragraphs_section {
    return Intl.message(
      'Paragraphs',
      name: 'paragraphs_section',
      desc: '',
      args: [],
    );
  }

  /// `Comprehensive`
  String get comprehensive_section {
    return Intl.message(
      'Comprehensive',
      name: 'comprehensive_section',
      desc: '',
      args: [],
    );
  }

  /// `الرجوع الى اليوم الحالي`
  String get back_to_current_day {
    return Intl.message(
      'الرجوع الى اليوم الحالي',
      name: 'back_to_current_day',
      desc: '',
      args: [],
    );
  }

  /// `easy`
  String get easy {
    return Intl.message(
      'easy',
      name: 'easy',
      desc: '',
      args: [],
    );
  }

  /// `remaining`
  String get remaining {
    return Intl.message(
      'remaining',
      name: 'remaining',
      desc: '',
      args: [],
    );
  }

  /// `Show Answer`
  String get show_answer {
    return Intl.message(
      'Show Answer',
      name: 'show_answer',
      desc: '',
      args: [],
    );
  }

  /// `Correct Answer`
  String get correct_answer {
    return Intl.message(
      'Correct Answer',
      name: 'correct_answer',
      desc: '',
      args: [],
    );
  }

  /// `You are offline`
  String get you_are_offline {
    return Intl.message(
      'You are offline',
      name: 'you_are_offline',
      desc: '',
      args: [],
    );
  }

  /// `You seem to be offline. Check your connection and try again.`
  String get you_seem_to_be_offline {
    return Intl.message(
      'You seem to be offline. Check your connection and try again.',
      name: 'you_seem_to_be_offline',
      desc: '',
      args: [],
    );
  }

  /// `are currently unavailable`
  String get currently_unavailable {
    return Intl.message(
      'are currently unavailable',
      name: 'currently_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `الإبلاغ عن مشكلة`
  String get report_a_question {
    return Intl.message(
      'الإبلاغ عن مشكلة',
      name: 'report_a_question',
      desc: '',
      args: [],
    );
  }

  /// `السؤال فيه خطأ`
  String get question_have_issue {
    return Intl.message(
      'السؤال فيه خطأ',
      name: 'question_have_issue',
      desc: '',
      args: [],
    );
  }

  /// `السؤال غير كامل`
  String get incomplete_question {
    return Intl.message(
      'السؤال غير كامل',
      name: 'incomplete_question',
      desc: '',
      args: [],
    );
  }

  /// `الجواب غلط`
  String get wrong_answer {
    return Intl.message(
      'الجواب غلط',
      name: 'wrong_answer',
      desc: '',
      args: [],
    );
  }

  /// `احد الخيارات مكرره`
  String get option_repeated {
    return Intl.message(
      'احد الخيارات مكرره',
      name: 'option_repeated',
      desc: '',
      args: [],
    );
  }

  /// `الصورة غير صحيحة`
  String get wrong_image {
    return Intl.message(
      'الصورة غير صحيحة',
      name: 'wrong_image',
      desc: '',
      args: [],
    );
  }

  /// `ملاحظات`
  String get comments {
    return Intl.message(
      'ملاحظات',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `(إختياري)`
  String get optional_scored {
    return Intl.message(
      '(إختياري)',
      name: 'optional_scored',
      desc: '',
      args: [],
    );
  }

  /// `إبلاغ`
  String get report {
    return Intl.message(
      'إبلاغ',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `الكلمة التالية`
  String get next_word {
    return Intl.message(
      'الكلمة التالية',
      name: 'next_word',
      desc: '',
      args: [],
    );
  }

  /// `{gender, select, male{أنتهت رحلتك يا اسطوري!} female{إنتهت رحلتكٍ!} other{إنتهت رحلتك!}}`
  String roadmap_end_message(String gender) {
    return Intl.gender(
      gender,
      male: 'أنتهت رحلتك يا اسطوري!',
      female: 'إنتهت رحلتكٍ!',
      other: 'إنتهت رحلتك!',
      name: 'roadmap_end_message',
      desc: 'A gendered message for the end of the roadmap',
      args: [gender],
    );
  }

  /// `{gender, select, male{أحسنت! لكن التزم بالخطة اكثر!} female{أحسنتِ! لكن التزمي بالخطة أكثر!} other{أحسنت! لكن التزم بالخطة اكثر!}}`
  String not_according_to_plan(String gender) {
    return Intl.gender(
      gender,
      male: 'أحسنت! لكن التزم بالخطة اكثر!',
      female: 'أحسنتِ! لكن التزمي بالخطة أكثر!',
      other: 'أحسنت! لكن التزم بالخطة اكثر!',
      name: 'not_according_to_plan',
      desc: 'A gendered message for users not following the plan',
      args: [gender],
    );
  }

  /// `{gender, select, male{تقدمك متوافق مع الخطة ياقوي!} female{تقدمكٍ متوافق مع الخطة!} other{تقدمك متوافق مع الخطة!}}`
  String according_to_plan(String gender) {
    return Intl.gender(
      gender,
      male: 'تقدمك متوافق مع الخطة ياقوي!',
      female: 'تقدمكٍ متوافق مع الخطة!',
      other: 'تقدمك متوافق مع الخطة!',
      name: 'according_to_plan',
      desc: 'A gendered message for users following the plan',
      args: [gender],
    );
  }

  /// `{gender, select, male{كفو عليك استمر بالتقدم!} female{كفو أستمري بالتقدم!} other{كفو عليك استمر بالتقدم!}}`
  String finished_one_lesson(String gender) {
    return Intl.gender(
      gender,
      male: 'كفو عليك استمر بالتقدم!',
      female: 'كفو أستمري بالتقدم!',
      other: 'كفو عليك استمر بالتقدم!',
      name: 'finished_one_lesson',
      desc: 'A gendered message for users who finished one lesson',
      args: [gender],
    );
  }

  /// `{gender, select, male{الخطة صممت خصيصاً لك!} female{الخطة صممت خصيصاً لكٍ!} other{الخطة صممت خصيصاً لك!}}`
  String first_time_roadmap(String gender) {
    return Intl.gender(
      gender,
      male: 'الخطة صممت خصيصاً لك!',
      female: 'الخطة صممت خصيصاً لكٍ!',
      other: 'الخطة صممت خصيصاً لك!',
      name: 'first_time_roadmap',
      desc: 'A gendered message for the first time the user enters the roadmap',
      args: [gender],
    );
  }

  /// `حدد تاريخ الاختبار`
  String get when_is_the_exam {
    return Intl.message(
      'حدد تاريخ الاختبار',
      name: 'when_is_the_exam',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
