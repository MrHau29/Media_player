#include "translation.h"
#include<QDebug>
Translation::Translation(QGuiApplication *app, QObject *parent)
    : QObject(parent), m_app(app)
{
    // Khởi tạo các bộ dịch
    m_translator = new QTranslator(this);
      m_translator->load(":/Translator/translate_us.qm");
      m_app->installTranslator(m_translator);
}

QString Translation::getEmptyString()
{
    return QString();
}

QString Translation::currentLanguage() const
{
    if (m_currentLanguage == "vn") {
         return "";
     } else if (m_currentLanguage == "us") {
         return "";
     } else {
         return "";
     }
}

void Translation::setCurrentLanguage(QString language)
{
    if (m_currentLanguage != language) {
        m_currentLanguage = language;
        emit currentLanguageChanged();
    }
}

void Translation::selectLanguage(QString language)
{
    // Xác định đường dẫn tới các tệp tin ngôn ngữ
    qDebug() << language;
      if (m_translator) {
          if (0 == language.compare("vn")) {
              m_translator->load(":/Translator/translate_vn.qm");
          } else {
              m_translator->load(":/Translator/translate_us.qm");
          }
          m_app->installTranslator(m_translator);

          setCurrentLanguage(language);
          emit languageChanged();
      }
}
