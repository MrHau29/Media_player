#ifndef TRANSLATION_H
#define TRANSLATION_H
#include <QObject>
#include <QTranslator>
#include <QGuiApplication>

class Translation : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString currentLanguage READ currentLanguage NOTIFY languageChanged)
public:
    Translation( QGuiApplication *app, QObject *parent = nullptr);
    QString getEmptyString();
    QString currentLanguage() const;
    void setCurrentLanguage(QString language);
    Q_INVOKABLE void selectLanguage(QString language);

signals:
    void languageChanged();
    void currentLanguageChanged();
private:
    QTranslator *m_translator;
    QGuiApplication *m_app;
    QString m_currentLanguage ;
};

#endif // TRANSLATION_H
