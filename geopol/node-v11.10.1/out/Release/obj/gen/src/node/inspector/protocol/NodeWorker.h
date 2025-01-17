// This file is generated

// Copyright (c) 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef node_inspector_protocol_NodeWorker_h
#define node_inspector_protocol_NodeWorker_h

#include "src/node/inspector/protocol/Protocol.h"
// For each imported domain we generate a ValueConversions struct instead of a full domain definition
// and include Domain::API version from there.

namespace node {
namespace inspector {
namespace protocol {
namespace NodeWorker {

// ------------- Forward and enum declarations.
using WorkerID = String;
using SessionID = String;
class WorkerInfo;
class AttachedToWorkerNotification;
class DetachedFromWorkerNotification;
class ReceivedMessageFromWorkerNotification;

// ------------- Type and builder declarations.

class  WorkerInfo : public Serializable{
    PROTOCOL_DISALLOW_COPY(WorkerInfo);
public:
    static std::unique_ptr<WorkerInfo> fromValue(protocol::Value* value, ErrorSupport* errors);

    ~WorkerInfo() override { }

    String getWorkerId() { return m_workerId; }
    void setWorkerId(const String& value) { m_workerId = value; }

    String getType() { return m_type; }
    void setType(const String& value) { m_type = value; }

    String getTitle() { return m_title; }
    void setTitle(const String& value) { m_title = value; }

    String getUrl() { return m_url; }
    void setUrl(const String& value) { m_url = value; }

    std::unique_ptr<protocol::DictionaryValue> toValue() const;
    String serialize() override { return toValue()->serialize(); }
    std::unique_ptr<WorkerInfo> clone() const;

    template<int STATE>
    class WorkerInfoBuilder {
    public:
        enum {
            NoFieldsSet = 0,
            WorkerIdSet = 1 << 1,
            TypeSet = 1 << 2,
            TitleSet = 1 << 3,
            UrlSet = 1 << 4,
            AllFieldsSet = (WorkerIdSet | TypeSet | TitleSet | UrlSet | 0)};


        WorkerInfoBuilder<STATE | WorkerIdSet>& setWorkerId(const String& value)
        {
            static_assert(!(STATE & WorkerIdSet), "property workerId should not be set yet");
            m_result->setWorkerId(value);
            return castState<WorkerIdSet>();
        }

        WorkerInfoBuilder<STATE | TypeSet>& setType(const String& value)
        {
            static_assert(!(STATE & TypeSet), "property type should not be set yet");
            m_result->setType(value);
            return castState<TypeSet>();
        }

        WorkerInfoBuilder<STATE | TitleSet>& setTitle(const String& value)
        {
            static_assert(!(STATE & TitleSet), "property title should not be set yet");
            m_result->setTitle(value);
            return castState<TitleSet>();
        }

        WorkerInfoBuilder<STATE | UrlSet>& setUrl(const String& value)
        {
            static_assert(!(STATE & UrlSet), "property url should not be set yet");
            m_result->setUrl(value);
            return castState<UrlSet>();
        }

        std::unique_ptr<WorkerInfo> build()
        {
            static_assert(STATE == AllFieldsSet, "state should be AllFieldsSet");
            return std::move(m_result);
        }

    private:
        friend class WorkerInfo;
        WorkerInfoBuilder() : m_result(new WorkerInfo()) { }

        template<int STEP> WorkerInfoBuilder<STATE | STEP>& castState()
        {
            return *reinterpret_cast<WorkerInfoBuilder<STATE | STEP>*>(this);
        }

        std::unique_ptr<protocol::NodeWorker::WorkerInfo> m_result;
    };

    static WorkerInfoBuilder<0> create()
    {
        return WorkerInfoBuilder<0>();
    }

private:
    WorkerInfo()
    {
    }

    String m_workerId;
    String m_type;
    String m_title;
    String m_url;
};


class  AttachedToWorkerNotification : public Serializable{
    PROTOCOL_DISALLOW_COPY(AttachedToWorkerNotification);
public:
    static std::unique_ptr<AttachedToWorkerNotification> fromValue(protocol::Value* value, ErrorSupport* errors);

    ~AttachedToWorkerNotification() override { }

    String getSessionId() { return m_sessionId; }
    void setSessionId(const String& value) { m_sessionId = value; }

    protocol::NodeWorker::WorkerInfo* getWorkerInfo() { return m_workerInfo.get(); }
    void setWorkerInfo(std::unique_ptr<protocol::NodeWorker::WorkerInfo> value) { m_workerInfo = std::move(value); }

    bool getWaitingForDebugger() { return m_waitingForDebugger; }
    void setWaitingForDebugger(bool value) { m_waitingForDebugger = value; }

    std::unique_ptr<protocol::DictionaryValue> toValue() const;
    String serialize() override { return toValue()->serialize(); }
    std::unique_ptr<AttachedToWorkerNotification> clone() const;

    template<int STATE>
    class AttachedToWorkerNotificationBuilder {
    public:
        enum {
            NoFieldsSet = 0,
            SessionIdSet = 1 << 1,
            WorkerInfoSet = 1 << 2,
            WaitingForDebuggerSet = 1 << 3,
            AllFieldsSet = (SessionIdSet | WorkerInfoSet | WaitingForDebuggerSet | 0)};


        AttachedToWorkerNotificationBuilder<STATE | SessionIdSet>& setSessionId(const String& value)
        {
            static_assert(!(STATE & SessionIdSet), "property sessionId should not be set yet");
            m_result->setSessionId(value);
            return castState<SessionIdSet>();
        }

        AttachedToWorkerNotificationBuilder<STATE | WorkerInfoSet>& setWorkerInfo(std::unique_ptr<protocol::NodeWorker::WorkerInfo> value)
        {
            static_assert(!(STATE & WorkerInfoSet), "property workerInfo should not be set yet");
            m_result->setWorkerInfo(std::move(value));
            return castState<WorkerInfoSet>();
        }

        AttachedToWorkerNotificationBuilder<STATE | WaitingForDebuggerSet>& setWaitingForDebugger(bool value)
        {
            static_assert(!(STATE & WaitingForDebuggerSet), "property waitingForDebugger should not be set yet");
            m_result->setWaitingForDebugger(value);
            return castState<WaitingForDebuggerSet>();
        }

        std::unique_ptr<AttachedToWorkerNotification> build()
        {
            static_assert(STATE == AllFieldsSet, "state should be AllFieldsSet");
            return std::move(m_result);
        }

    private:
        friend class AttachedToWorkerNotification;
        AttachedToWorkerNotificationBuilder() : m_result(new AttachedToWorkerNotification()) { }

        template<int STEP> AttachedToWorkerNotificationBuilder<STATE | STEP>& castState()
        {
            return *reinterpret_cast<AttachedToWorkerNotificationBuilder<STATE | STEP>*>(this);
        }

        std::unique_ptr<protocol::NodeWorker::AttachedToWorkerNotification> m_result;
    };

    static AttachedToWorkerNotificationBuilder<0> create()
    {
        return AttachedToWorkerNotificationBuilder<0>();
    }

private:
    AttachedToWorkerNotification()
    {
          m_waitingForDebugger = false;
    }

    String m_sessionId;
    std::unique_ptr<protocol::NodeWorker::WorkerInfo> m_workerInfo;
    bool m_waitingForDebugger;
};


class  DetachedFromWorkerNotification : public Serializable{
    PROTOCOL_DISALLOW_COPY(DetachedFromWorkerNotification);
public:
    static std::unique_ptr<DetachedFromWorkerNotification> fromValue(protocol::Value* value, ErrorSupport* errors);

    ~DetachedFromWorkerNotification() override { }

    String getSessionId() { return m_sessionId; }
    void setSessionId(const String& value) { m_sessionId = value; }

    std::unique_ptr<protocol::DictionaryValue> toValue() const;
    String serialize() override { return toValue()->serialize(); }
    std::unique_ptr<DetachedFromWorkerNotification> clone() const;

    template<int STATE>
    class DetachedFromWorkerNotificationBuilder {
    public:
        enum {
            NoFieldsSet = 0,
            SessionIdSet = 1 << 1,
            AllFieldsSet = (SessionIdSet | 0)};


        DetachedFromWorkerNotificationBuilder<STATE | SessionIdSet>& setSessionId(const String& value)
        {
            static_assert(!(STATE & SessionIdSet), "property sessionId should not be set yet");
            m_result->setSessionId(value);
            return castState<SessionIdSet>();
        }

        std::unique_ptr<DetachedFromWorkerNotification> build()
        {
            static_assert(STATE == AllFieldsSet, "state should be AllFieldsSet");
            return std::move(m_result);
        }

    private:
        friend class DetachedFromWorkerNotification;
        DetachedFromWorkerNotificationBuilder() : m_result(new DetachedFromWorkerNotification()) { }

        template<int STEP> DetachedFromWorkerNotificationBuilder<STATE | STEP>& castState()
        {
            return *reinterpret_cast<DetachedFromWorkerNotificationBuilder<STATE | STEP>*>(this);
        }

        std::unique_ptr<protocol::NodeWorker::DetachedFromWorkerNotification> m_result;
    };

    static DetachedFromWorkerNotificationBuilder<0> create()
    {
        return DetachedFromWorkerNotificationBuilder<0>();
    }

private:
    DetachedFromWorkerNotification()
    {
    }

    String m_sessionId;
};


class  ReceivedMessageFromWorkerNotification : public Serializable{
    PROTOCOL_DISALLOW_COPY(ReceivedMessageFromWorkerNotification);
public:
    static std::unique_ptr<ReceivedMessageFromWorkerNotification> fromValue(protocol::Value* value, ErrorSupport* errors);

    ~ReceivedMessageFromWorkerNotification() override { }

    String getSessionId() { return m_sessionId; }
    void setSessionId(const String& value) { m_sessionId = value; }

    String getMessage() { return m_message; }
    void setMessage(const String& value) { m_message = value; }

    std::unique_ptr<protocol::DictionaryValue> toValue() const;
    String serialize() override { return toValue()->serialize(); }
    std::unique_ptr<ReceivedMessageFromWorkerNotification> clone() const;

    template<int STATE>
    class ReceivedMessageFromWorkerNotificationBuilder {
    public:
        enum {
            NoFieldsSet = 0,
            SessionIdSet = 1 << 1,
            MessageSet = 1 << 2,
            AllFieldsSet = (SessionIdSet | MessageSet | 0)};


        ReceivedMessageFromWorkerNotificationBuilder<STATE | SessionIdSet>& setSessionId(const String& value)
        {
            static_assert(!(STATE & SessionIdSet), "property sessionId should not be set yet");
            m_result->setSessionId(value);
            return castState<SessionIdSet>();
        }

        ReceivedMessageFromWorkerNotificationBuilder<STATE | MessageSet>& setMessage(const String& value)
        {
            static_assert(!(STATE & MessageSet), "property message should not be set yet");
            m_result->setMessage(value);
            return castState<MessageSet>();
        }

        std::unique_ptr<ReceivedMessageFromWorkerNotification> build()
        {
            static_assert(STATE == AllFieldsSet, "state should be AllFieldsSet");
            return std::move(m_result);
        }

    private:
        friend class ReceivedMessageFromWorkerNotification;
        ReceivedMessageFromWorkerNotificationBuilder() : m_result(new ReceivedMessageFromWorkerNotification()) { }

        template<int STEP> ReceivedMessageFromWorkerNotificationBuilder<STATE | STEP>& castState()
        {
            return *reinterpret_cast<ReceivedMessageFromWorkerNotificationBuilder<STATE | STEP>*>(this);
        }

        std::unique_ptr<protocol::NodeWorker::ReceivedMessageFromWorkerNotification> m_result;
    };

    static ReceivedMessageFromWorkerNotificationBuilder<0> create()
    {
        return ReceivedMessageFromWorkerNotificationBuilder<0>();
    }

private:
    ReceivedMessageFromWorkerNotification()
    {
    }

    String m_sessionId;
    String m_message;
};


// ------------- Backend interface.

class  Backend {
public:
    virtual ~Backend() { }

    virtual DispatchResponse sendMessageToWorker(const String& in_message, const String& in_sessionId) = 0;
    virtual DispatchResponse enable(bool in_waitForDebuggerOnStart) = 0;
    virtual DispatchResponse disable() = 0;

};

// ------------- Frontend interface.

class  Frontend {
public:
    explicit Frontend(FrontendChannel* frontendChannel) : m_frontendChannel(frontendChannel) { }
    void attachedToWorker(const String& sessionId, std::unique_ptr<protocol::NodeWorker::WorkerInfo> workerInfo, bool waitingForDebugger);
    void detachedFromWorker(const String& sessionId);
    void receivedMessageFromWorker(const String& sessionId, const String& message);

    void flush();
    void sendRawNotification(const String&);
private:
    FrontendChannel* m_frontendChannel;
};

// ------------- Dispatcher.

class  Dispatcher {
public:
    static void wire(UberDispatcher*, Backend*);

private:
    Dispatcher() { }
};

// ------------- Metainfo.

class  Metainfo {
public:
    using BackendClass = Backend;
    using FrontendClass = Frontend;
    using DispatcherClass = Dispatcher;
    static const char domainName[];
    static const char commandPrefix[];
    static const char version[];
};

} // namespace NodeWorker
} // namespace node
} // namespace inspector
} // namespace protocol

#endif // !defined(node_inspector_protocol_NodeWorker_h)
