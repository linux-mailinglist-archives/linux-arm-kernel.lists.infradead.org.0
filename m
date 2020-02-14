Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEA615DB27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=inWx8cDycvn7yZFGB88iElDlqA2tljKZ1cbFbfrrPMM=; b=KsfZkWjkv2PNFSTZue4Vi5qRRf
	FilPqQkw09hpWhsDKjdwI74vVXXYk7IL5kNPMwntGyZkbNUwnNgFPfZp06SwDOfeTJD2jkF+KE/dG
	qGUBJjZl3uk/97Ed6v53iH0ne1NX2II4eI5niJpopaMfjcXapM4z0F6JN6wTJrMhhiVGn/CHFuAGv
	eE6W/TYexag0+GcZ3JM4ui3W0/EGzuPJvueZFQ9vFwkmZkIjxBDEUFPeSrSEmyYxibwmn9E4NvjJp
	UUybc1KxjjBoE+hFk/kP4ZQGqPjCbRe79Xodv36C0W6Px4PsDBKtWsM2TzcGSNY9pSaYoB4YuTo2e
	mFv3TTEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2d35-0003Vw-BN; Fri, 14 Feb 2020 15:38:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2d18-0001gx-T8
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:36:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B2AE106F;
 Fri, 14 Feb 2020 07:36:34 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A1E53F68E;
 Fri, 14 Feb 2020 07:36:33 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
Date: Fri, 14 Feb 2020 15:35:29 +0000
Message-Id: <20200214153535.32046-8-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200214153535.32046-1-cristian.marussi@arm.com>
References: <20200214153535.32046-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_073635_056417_68842021 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add core SCMI Notifications dispatch and delivery support logic which is
able, at first, to dispatch well-known received events from the RX ISR to
the dedicated deferred worker, and then, from there, to final deliver the
events to the registered users' callbacks.

Dispatch and delivery is just added here, still not enabled.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V1 --> V2
- splitted out of V1 patch 04
- moved from IDR maps to real HashTables to store event_handlers
- simplified delivery logic
---
 drivers/firmware/arm_scmi/notify.c | 242 ++++++++++++++++++++++++++++-
 drivers/firmware/arm_scmi/notify.h |  22 +++
 2 files changed, 262 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
index 1339b6de0a4c..c2341c5304cf 100644
--- a/drivers/firmware/arm_scmi/notify.c
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -48,13 +48,44 @@
  * particular event coming only from a well defined source (like CPU vs GPU).
  * When the source is not specified the user callback will be registered for
  * all existing sources for that event (if any).
+ *
+ * Upon reception of a notification message from the platform the SCMI RX ISR
+ * passes the received message payload and some ancillary information (including
+ * an arrival timestamp in nanoseconds) to the core via @scmi_notify(), which,
+ * in turn, after having looked up the event in @scmi_registered_events, pushes
+ * the event-data itself on a protocol dedicated kfifo queue for further
+ * deferred processing.
+ *
+ * Such dedicated protocols' queues are allocated once for all at initialization
+ * time, together with a dedicated work_item running the common delivery logic
+ * of @scmi_events_dispatcher(), so that each protocol has it own dedicated
+ * work_item and worker which, once kicked by the ISR, takes care to empty its
+ * own dedicated queue deliverying the queued items into the proper chain.
+ *
+ * Note that since the underlying cmwq workers run one distinct work_item per
+ * protocol and we allow for multiple concurrent workers (max_active != 1),
+ * notifications processing can proceed concurrently on distinct workers only
+ * between events belonging to different protocols: delivery of events within
+ * the same protocol is still strictly sequentially ordered by time of arrival;
+ * this separation of queues by protocol effectively avoids the possibility that
+ * one particularly verbose protocol, flooding the queues with events, can cause
+ * other protocols' events to be lost or their processing starved.
+ *
+ * Events' information is then extracted from SCMI Notification messages and
+ * conveyed, converted into a custom per-event report struct, as the void *data
+ * param to the user callback provided by the registered notifier_block, so that
+ * from the user perspective his callback will look invoked like:
+ *
+ * int user_cb(struct notifier_block *nb, unsigned long event_id, void *report)
+ *
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/atomic.h>
-#include <linux/device.h>
 #include <linux/bitfield.h>
+#include <linux/bug.h>
+#include <linux/device.h>
 #include <linux/err.h>
 #include <linux/hashtable.h>
 #include <linux/kernel.h>
@@ -108,6 +139,8 @@
 /* A couple of utility macros to limit cruft when calling protocols' helpers */
 #define REVT_NOTIFY_ENABLE(revt, ...)	\
 	((revt)->proto->ops->set_notify_enabled(__VA_ARGS__))
+#define REVT_FILL_REPORT(revt, ...)	\
+	((revt)->proto->ops->fill_custom_report(__VA_ARGS__))
 
 /**
  * events_queue  - Describes a queue and its associated worker
@@ -117,11 +150,15 @@
  * @sz: Size in bytes of the related kfifo
  * @qbuf: Pre-allocated buffer of @sz bytes to be used by the kfifo
  * @kfifo: A dedicated Kernel kfifo
+ * @notify_work: A custom work item bound to this queue
+ * @wq: A reference to the related workqueue
  */
 struct events_queue {
 	size_t			sz;
 	u8			*qbuf;
 	struct kfifo		kfifo;
+	struct work_struct	notify_work;
+	struct workqueue_struct	*wq;
 };
 
 /**
@@ -160,6 +197,8 @@ struct scmi_registered_protocol_events_desc {
  * @scratch_isr: A pre-allocated buffer to be used as a scratch area by ISR
  * @scratch_isr: A pre-allocated buffer to be used as a scratch area by the
  *		 deferred worker
+ * @report: A pre-allocated buffer used by the deferred worker to fill a
+ *	    customized event report
  * @hash: The hash list_node used for collision handling
  * @num_sources: The number of possible sources for this event as stated at
  *		 events' registration time
@@ -173,6 +212,7 @@ struct scmi_registered_event {
 	const struct scmi_event				*evt;
 	void						*scratch_isr;
 	void						*scratch_bh;
+	void						*report;
 	struct hlist_node				hash;
 	u32						num_sources;
 	refcount_t					*sources;
@@ -251,8 +291,191 @@ static DECLARE_HASHTABLE(scmi_registered_events_handlers, 8);
  */
 static DEFINE_MUTEX(scmi_registered_events_handler_mtx);
 
+/* Common Kernel cmwq workqueue used by notifications core */
+static struct workqueue_struct *scmi_notify_wq;
+
 static atomic_t scmi_notifications_initialized = ATOMIC_INIT(0);
 
+static struct scmi_event_handler *scmi_get_event_handler(u32 evt_key);
+static void scmi_put_event_handler(struct scmi_event_handler *hndl);
+
+/**
+ * scmi_discard_bad_evt_payload() - Utility to discard data from a kfifo
+ *
+ * @kq: The kfifo to act on
+ * @count: Number of bytes to flush
+ */
+static inline void scmi_discard_bad_evt_payload(struct kfifo *kq,
+						const unsigned int count)
+{
+	int i = 0;
+
+	pr_warn("SCMI Notifications: WQ skipping bad EVT Payload - %d bytes\n",
+		count);
+	/* Discard stale pending queued payload. */
+	for (i = 0; i < count; i++)
+		kfifo_skip(kq);
+}
+
+/**
+ * scmi_lookup_and_call_event_chain  - Lookup the proper chain and call it
+ *
+ * @evt_key: The key to use to lookup the related notification chain
+ * @report: The customized event-specific report to pass down to the callbacks
+ *	    as their *data parameter.
+ */
+static inline void scmi_lookup_and_call_event_chain(u32 evt_key, void *report)
+{
+	int ret;
+	struct scmi_event_handler *hndl;
+
+	/* Here ensure the event handler cannot vanish while using it */
+	hndl = scmi_get_event_handler(evt_key);
+	if (IS_ERR_OR_NULL(hndl))
+		return;
+
+	ret = blocking_notifier_call_chain(&hndl->chain,
+					   KEY_XTRACT_EVT_ID(evt_key),
+					   report);
+	/* Notifiers are NOT supposed to cut the chain */
+	WARN_ON_ONCE(ret & NOTIFY_STOP_MASK);
+
+	scmi_put_event_handler(hndl);
+}
+
+/**
+ * scmi_events_dispatcher  - Common worker logic for all work items.
+ *
+ * In turn:
+ *  1. dequeue one pending RX notification (queued in SCMI RX ISR context)
+ *  2. generate a custom event report from the received event message
+ *  3. lookup for any registered ALL_SRC_IDs handler
+ *     - > call the related notification chain passing in the report
+ *  4. lookup for any registered specific SRC_ID handler
+ *     - > call the related notification chain passing in the report
+ *
+ * Note that:
+ * - a dedicated per-protocol kfifo queue is used: in this way an anomalous
+ *   flood of events cannot saturate other protocols' queues.
+ *
+ * - each per-protocol queue is associated to a distinct work_item, which
+ *   means, in turn, that:
+ *   + all protocols can process their dedicated queues concurrently
+ *     (since scmi_notify_wq:max_active != 1)
+ *   + anyway at most one worker instance is allowed to run on the same queue
+ *     concurrently: this ensures that we can have only one concurrent
+ *     reader/writer on the associated kfifo, and enables us to use the kfifo
+ *     in a lock-less manner
+ *
+ * @work: The work item to use, which is associated to a dedicated events_queue
+ */
+static void scmi_events_dispatcher(struct work_struct *work)
+{
+	struct events_queue *equeue;
+	struct scmi_event_header eh;
+
+	equeue = container_of(work, struct events_queue, notify_work);
+	/* Read the scmi_event_header at first since it contains payld_sz ... */
+	while (kfifo_out(&equeue->kfifo, &eh, sizeof(eh))) {
+		u32 src_id, key;
+		unsigned int outs;
+		struct scmi_registered_event *r_evt;
+		void *report = NULL;
+
+		key = MAKE_HASH_KEY(eh.proto_id, eh.evt_id, SCMI_ALL_SRC_IDS);
+		r_evt = KEY_FIND(scmi_registered_events, r_evt, key);
+		if (!r_evt) {
+			scmi_discard_bad_evt_payload(&equeue->kfifo,
+						     eh.payld_sz);
+			continue;
+		}
+
+		/* ... then read payld_sz bytes holding the evt-msg payload */
+		outs = kfifo_out(&equeue->kfifo, r_evt->scratch_bh,
+				 eh.payld_sz);
+		if (outs != eh.payld_sz) {
+			pr_warn("SCMI Notifications: WQ SKIP corrupted EVT Payload.\n");
+			continue;
+		}
+
+
+		/* Reset and fill custom report, and obtain src_id */
+		memset(r_evt->report, 0x00, r_evt->evt->max_report_sz);
+		report = REVT_FILL_REPORT(r_evt, eh.evt_id, eh.timestamp,
+					  r_evt->scratch_bh, eh.payld_sz,
+					  r_evt->report, &src_id);
+		if (!report)
+			continue;
+
+		/* At first search for a generic ALL src_ids handler... */
+		scmi_lookup_and_call_event_chain(key, report);
+		/* ...then search for any specific src_id */
+		key = MAKE_HASH_KEY(eh.proto_id, eh.evt_id, src_id);
+		scmi_lookup_and_call_event_chain(key, report);
+	}
+}
+
+/**
+ * scmi_notify  - Queues a notification for further deferred processing
+ *
+ * This is called in interrupt context to queue a received event for
+ * deferred processing.
+ *
+ * @proto_id: Protocol ID
+ * @evt_id: Event ID (msgID)
+ * @buf: Event Message Payload (without the header)
+ * @len: Event Message Payload size
+ * @ts: RX Timestamp in nanoseconds (boottime)
+ *
+ * Return: 0 on Success
+ */
+int scmi_notify(u8 proto_id, u8 evt_id, const void *buf, size_t len, u64 ts)
+{
+	struct scmi_registered_event *r_evt;
+	struct scmi_event_header *eh;
+
+
+	/* Ensure atomic value is updated */
+	smp_mb__before_atomic();
+	if (unlikely(!atomic_read(&scmi_notifications_initialized)))
+		return 0;
+
+	r_evt = KEY_FIND(scmi_registered_events, r_evt,
+			 MAKE_HASH_KEY(proto_id, evt_id, SCMI_ALL_SRC_IDS));
+	if (unlikely(!r_evt))
+		return -EINVAL;
+
+	if (unlikely(len > r_evt->evt->max_payld_sz)) {
+		pr_err("SCMI Notifications: discard badly sized message\n");
+		return -EINVAL;
+	}
+	if (unlikely(kfifo_avail(&r_evt->proto->equeue->kfifo) <
+		     sizeof(*eh) + len)) {
+		pr_warn("SCMI Notifications: queue full dropping proto_id:%d  evt_id:%d  ts:%lld\n",
+			proto_id, evt_id, ts);
+		return -ENOMEM;
+	}
+
+	/*
+	 * Note that we can use the per protocol kfifo in a lock-less manner
+	 * since we have only one concurrent reader and writer but, in order
+	 * to avoid any trouble on the reader side, here we ensure to perform
+	 * one single kfifo write, so we have to collate in advance the event
+	 * header and payload in a scratch area at first.
+	 */
+	eh = r_evt->scratch_isr;
+	eh->timestamp = ts;
+	eh->proto_id = proto_id;
+	eh->evt_id = evt_id;
+	eh->payld_sz = len;
+	memcpy(eh->payld, buf, eh->payld_sz);
+	kfifo_in(&r_evt->proto->equeue->kfifo, eh, sizeof(*eh) + eh->payld_sz);
+	queue_work(r_evt->proto->equeue->wq,
+		   &r_evt->proto->equeue->notify_work);
+
+	return 0;
+}
+
 /**
  * scmi_allocate_events_queue  - Allocate/Initialize an events_queue descriptor
  *
@@ -278,10 +501,11 @@ static struct events_queue *scmi_allocate_events_queue(struct device *dev,
 	if (!equeue->qbuf)
 		return ERR_PTR(-ENOMEM);
 	equeue->sz = sz;
-
 	ret = kfifo_init(&equeue->kfifo, equeue->qbuf, equeue->sz);
 	if (ret)
 		return ERR_PTR(ret);
+	INIT_WORK(&equeue->notify_work, scmi_events_dispatcher);
+	equeue->wq = scmi_notify_wq;
 
 	return equeue;
 }
@@ -400,6 +624,11 @@ int scmi_register_protocol_events(struct device *dev,
 		if (!r_evt->scratch_bh)
 			goto err;
 
+		r_evt->report = devm_kzalloc(dev, evt->max_report_sz,
+					     GFP_KERNEL);
+		if (!r_evt->report)
+			goto err;
+
 		r_evt->key = MAKE_HASH_KEY(r_evt->proto->id,
 					   r_evt->evt->evt_id,
 					   SCMI_ALL_SRC_IDS);
@@ -494,6 +723,8 @@ bool scmi_stop_and_flush_protocol_events(u8 proto_id)
 	/* Ensure atomic value is updated */
 	smp_mb__after_atomic();
 
+	cancel_work_sync(&pdesc->equeue->notify_work);
+
 	return true;
 }
 
@@ -840,6 +1071,11 @@ static struct scmi_notify_ops notify_ops = {
  */
 int scmi_notification_init(struct scmi_handle *handle)
 {
+	scmi_notify_wq = alloc_workqueue("scmi_notify",
+					 WQ_UNBOUND | WQ_FREEZABLE, 0);
+	if (!scmi_notify_wq)
+		return -ENOMEM;
+
 	hash_init(scmi_registered_protocols);
 	hash_init(scmi_registered_events);
 	hash_init(scmi_registered_events_handlers);
@@ -861,4 +1097,6 @@ int scmi_notification_init(struct scmi_handle *handle)
 void scmi_notification_exit(void)
 {
 	pr_info("SCMI Notifications Core disabled.\n");
+	/* Destroy while letting pending work complete */
+	destroy_workqueue(scmi_notify_wq);
 }
diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
index 438181147fc8..bcc599822bf5 100644
--- a/drivers/firmware/arm_scmi/notify.h
+++ b/drivers/firmware/arm_scmi/notify.h
@@ -9,9 +9,22 @@
 #ifndef _SCMI_NOTIFY_H
 #define _SCMI_NOTIFY_H
 
+#include <linux/bug.h>
 #include <linux/device.h>
+#include <linux/notifier.h>
 #include <linux/types.h>
 
+#define MAP_EVT_TO_ENABLE_CMD(id, map)			\
+({							\
+	int ret = -1;					\
+							\
+	if (likely((id) < ARRAY_SIZE((map))))		\
+		ret = (map)[(id)];			\
+	else						\
+		WARN(1, "UN-KNOWN evt_id:%d\n", (id));	\
+	ret;						\
+})
+
 /**
  * scmi_event  - Describes an event to be supported
  *
@@ -26,6 +39,7 @@
 struct scmi_event {
 	u8	evt_id;
 	size_t	max_payld_sz;
+	size_t	max_report_sz;
 
 };
 
@@ -38,9 +52,16 @@ struct scmi_event {
  *			using the proper custom protocol commands.
  *			Return true if at least one the required src_id
  *			has been successfully enabled/disabled
+ * @fill_custom_report: fills a custom event report from the provided
+ *			event message payld identifying the event
+ *			specific src_id.
+ *			Return NULL on failure otherwise @report now fully
+ *			populated
  */
 struct scmi_protocol_event_ops {
 	bool (*set_notify_enabled)(u8 evt_id, u32 src_id, bool enabled);
+	void *(*fill_custom_report)(u8 evt_id, u64 timestamp, const void *payld,
+				    size_t payld_sz, void *report, u32 *src_id);
 };
 
 int scmi_notification_init(struct scmi_handle *handle);
@@ -52,5 +73,6 @@ int scmi_register_protocol_events(struct device *dev,
 				  int num_sources);
 int scmi_unregister_protocol_events(struct device *dev, u8 proto_id);
 bool scmi_stop_and_flush_protocol_events(u8 proto_id);
+int scmi_notify(u8 proto_id, u8 evt_id, const void *buf, size_t len, u64 ts);
 
 #endif /* _SCMI_NOTIFY_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
