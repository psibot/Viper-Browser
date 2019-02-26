#ifndef URLRECORD_H
#define URLRECORD_H

#include <utility>
#include <vector>

#include <QDateTime>
#include <QString>
#include <QUrl>

/**
 * @struct HistoryEntry
 * @brief Contains data about a specific web URL visited by the user
 */
struct HistoryEntry
{
    /// URL of the item
    QUrl URL;

    /// Title of the web page
    QString Title;

    /// Unique visit ID of the history entry
    int VisitID;

    /// The last time the user visited this entry
    QDateTime LastVisit;

    /// The number of visits to this entry
    int NumVisits;

    /// Default constructor
    HistoryEntry() : URL(), Title(), VisitID(0), LastVisit(), NumVisits(0) {}

    /// Copy constructor
    HistoryEntry(const HistoryEntry &other) :
        URL(other.URL),
        Title(other.Title),
        VisitID(other.VisitID),
        LastVisit(other.LastVisit),
        NumVisits(other.NumVisits)
    {
    }

    /// Move constructor
    HistoryEntry(HistoryEntry &&other) :
        URL(other.URL),
        Title(other.Title),
        VisitID(other.VisitID),
        LastVisit(other.LastVisit),
        NumVisits(other.NumVisits)
    {
    }

    /// Copy assignment operator
    HistoryEntry &operator =(const HistoryEntry &other)
    {
        if (this != &other)
        {
            URL = other.URL;
            Title = other.Title;
            VisitID = other.VisitID;
            LastVisit = other.LastVisit;
            NumVisits = other.NumVisits;
        }

        return *this;
    }

    /// Move assignment operator
    HistoryEntry &operator =(HistoryEntry &&other)
    {
        if (this != &other)
        {
            URL = other.URL;
            Title = other.Title;
            VisitID = other.VisitID;
            LastVisit = other.LastVisit;
            NumVisits = other.NumVisits;
        }

        return *this;
    }

    /// Returns true if the two HistoryEntry objects are the same, false if else
    bool operator ==(const HistoryEntry &other) const
    {
        return (VisitID == other.VisitID || URL.toString().compare(other.URL.toString(), Qt::CaseSensitive) == 0);
    }
};

/**
 * @struct VisitEntry
 * @brief Keeps a record of a single visit to a URL in a \ref HistoryEntry at a distinct point in time.
 */
struct VisitEntry
{
    /// Identifier of the unique \ref HistoryEntry to which this visit references.
    int VisitID;

    /// Distinct time of the visit
    QDateTime VisitTime;

    /// Default constructor
    VisitEntry() : VisitID(0), VisitTime() {}
};

/**
 * @class URLRecord
 * @brief Contains a full record of a URL in the history database,
 *        including its \ref HistoryEntry and all \ref VisitEntry records.
 */
class URLRecord
{
    friend class HistoryManager;

public:
    /// Constructs the URL record given the associated history entry and a list of visits
    explicit URLRecord(HistoryEntry &&entry, std::vector<VisitEntry> &&visits);

    /// Returns the last time that the user visited this entry
    const QDateTime &getLastVisit() const;

    /// Returns the number of visits made to this entry
    int getNumVisits() const;

    /// Returns the URL associated with the record
    const QUrl &getUrl() const;

    /// Returns the title of the web page
    const QString &getTitle() const;

    /// Returns the unique visit identifier
    int getVisitId() const;

    /// Returns a reference to the visits associated with this record
    const std::vector<VisitEntry> &getVisits() const;

protected:
    /// Adds a visit to the record
    void addVisit(VisitEntry &&entry);

    /// The history entry, containg the URL, title, last visit and visit count
    HistoryEntry m_historyEntry;

    /// List of every visit stored in the database
    std::vector<VisitEntry> m_visits;
};

#endif // URLRECORD_H