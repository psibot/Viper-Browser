#include "AutoFillBridge.h"
#include "AutoFill.h"
#include "BrowserApplication.h"
#include "Settings.h"
#include "WebPage.h"

#include <QDebug>

AutoFillBridge::AutoFillBridge(WebPage *parent) :
    QObject(parent),
    m_page(parent)
{
}

AutoFillBridge::~AutoFillBridge()
{
}

void AutoFillBridge::onFormSubmitted(const QString &pageUrl, const QString &username, const QString &password, const QMap<QString, QVariant> &formData)
{
    if (!sBrowserApplication->getSettings()->getValue(BrowserSetting::EnableAutoFill).toBool())
        return;

    sBrowserApplication->getAutoFill()->onFormSubmitted(m_page, pageUrl, username, password, formData);
}
