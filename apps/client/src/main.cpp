#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlContext>
#include <QtQml/QQmlEngine>
#include <QtWidgets/QApplication>

int runApp(const QGuiApplication& qtapp)
{
	QQmlApplicationEngine engine;
	//engine.rootContext()->setContextProperty("app", &app);
	engine.load(QUrl(QStringLiteral("qrc:/qml/App.qml")));
	if (engine.rootObjects().isEmpty())
		return -1;
	return qtapp.exec();
}

int main(int argc, char** argv)
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QApplication qtapp(argc, argv);
	qtapp.setQuitOnLastWindowClosed(true);
	return runApp(qtapp);
}
