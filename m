Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA6216A8B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WBkECnDAdCBDIeDZUjKe9cuSQdApv9+xTt4+RlUPVVw=; b=S9BonJoX0ylhM2XTe5JJY9QsX9
	gvt3ySENMdDYQO0ncfrifCCGbtTEb2NRQCO590+3Nul58UpcRXnp+U3cD+1fO/0b7YgIS4zyAZ2lF
	ZjtSVf4YGG2x84EmxYPOji9yV2jAfLIj9zOPbZ34YnBlw89TdSq5CQE4iGdkJ0rbdcAk2VAlWvzNB
	2vrS4h4IolAncF2laAP0DRavO2WP7nM8nacMoi+rYwz0ptvIX8kgST087JaQVZavm9hgcEYuwcMp+
	wYtiSGyN9VsfCvaLQ+HWhENUhI6JicxzCX4OJPDOsqgiRodLuSrKbjLNgTr1cL9wNGU2bKznQj4QD
	MX8ZiqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Ey6-0004om-Bh; Mon, 24 Feb 2020 14:44:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Ew3-0003C8-QX
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:42:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0906E11FB;
 Mon, 24 Feb 2020 06:42:15 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A2E53F534;
 Mon, 24 Feb 2020 06:42:13 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v3 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
Date: Mon, 24 Feb 2020 14:41:18 +0000
Message-Id: <20200224144124.2008-8-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224144124.2008-1-cristian.marussi@arm.com>
References: <20200224144124.2008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_064216_182644_9690339F 
X-CRM114-Status: GOOD (  25.81  )
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
V2 --> V3
- exposing wq in sysfs via WQ_SYSFS
V1 --> V2
- splitted out of V1 patch 04
- moved from IDR maps to real HashTables to store event_handlers
- simplified delivery logic
---
 drivers/firmware/arm_scmi/notify.c | 230 ++++++++++++++++++++++++++++-
 drivers/firmware/arm_scmi/notify.h |   9 ++
 2 files changed, 237 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
index 5f95602ec13c..e4e4916aeb42 100644
--- a/drivers/firmware/arm_scmi/notify.c
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -42,6 +42,27 @@
  * as described in the SCMI Protocol specification, while src_id represents an
  * optional, protocol dependent, source identifier (like domain_id, perf_id
  * or sensor_id and so forth).
+ *
+ * Upon reception of a notification message from the platform the SCMI RX ISR
+ * passes the received message payload and some ancillary information (including
+ * an arrival timestamp in nanoseconds) to the core via @scmi_notify() which
+ * pushes the event-data itself on a protocol-dedicated kfifo queue for further
+ * deferred processing as specified in @scmi_events_dispatcher().
+ *
+ * Each protocol has it own dedicated work_struct and worker which, once kicked
+ * by the ISR, takes care to empty its own dedicated queue, deliverying the
+ * queued items into the proper notification-chain: notifications processing can
+ * proceed concurrently on distinct workers only between events belonging to
+ * different protocols while delivery of events within the same protocol is
+ * still strictly sequentially ordered by time of arrival.
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
@@ -61,6 +82,7 @@
 #include <linux/scmi_protocol.h>
 #include <linux/slab.h>
 #include <linux/types.h>
+#include <linux/workqueue.h>
 
 #include "notify.h"
 
@@ -108,6 +130,9 @@
 #define REVT_NOTIFY_ENABLE(revt, ...)	\
 	((revt)->proto->ops->set_notify_enabled((revt)->proto->ni->handle,     \
 						__VA_ARGS__))
+#define REVT_FILL_REPORT(revt, ...)	\
+	((revt)->proto->ops->fill_custom_report(__VA_ARGS__))
+
 /**
  * scmi_notify_instance  - Represents an instance of the notification core
  *
@@ -120,6 +145,7 @@
  *		 and protocols are allowed to register their supported events
  * @disabled: A flag to indicate when event's handlers registration phase has
  *	      completed and events can be enabled and start flowing
+ * @notify_wq: A reference to the allocated Kernel cmwq
  * @events_handlers_mtx: A mutex to protect @registered_events_handlers access
  * @registered_protocols: An hashtable containing all protocol-level specific
  *			  information related to events' handling
@@ -136,6 +162,8 @@ struct scmi_notify_instance {
 	atomic_t			initialized;
 	atomic_t			disabled;
 
+	struct workqueue_struct		*notify_wq;
+
 	struct mutex			events_handlers_mtx;
 	DECLARE_HASHTABLE(registered_protocols, 4);
 	DECLARE_HASHTABLE(registered_events, 5);
@@ -150,11 +178,15 @@ struct scmi_notify_instance {
  * @sz: Size in bytes of the related kfifo
  * @qbuf: Pre-allocated buffer of @sz bytes to be used by the kfifo
  * @kfifo: A dedicated Kernel kfifo descriptor
+ * @notify_work: A custom work item bound to this queue
+ * @wq: A reference to the related workqueue
  */
 struct events_queue {
 	size_t				sz;
 	u8				*qbuf;
 	struct kfifo			kfifo;
+	struct work_struct		notify_work;
+	struct workqueue_struct		*wq;
 };
 
 /**
@@ -272,6 +304,188 @@ scmi_get_event_handler(struct scmi_notify_instance *ni, u32 evt_key);
 static void scmi_put_event_handler(struct scmi_event_handler *hndl);
 static void scmi_free_event_handler(struct scmi_event_handler *hndl);
 
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
+ * @ni: A reference to the notification instance to use
+ * @evt_key: The key to use to lookup the related notification chain
+ * @report: The customized event-specific report to pass down to the callbacks
+ *	    as their *data parameter.
+ */
+static inline void
+scmi_lookup_and_call_event_chain(struct scmi_notify_instance *ni,
+				 u32 evt_key, void *report)
+{
+	int ret;
+	struct scmi_event_handler *hndl;
+
+	/* Here ensure the event handler cannot vanish while using it */
+	hndl = scmi_get_event_handler(ni, evt_key);
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
+ *     (since notify_wq:max_active != 1)
+ *   + anyway at most one worker instance is allowed to run on the same queue
+ *     concurrently: this ensures that we can have only one concurrent
+ *     reader/writer on the associated kfifo, so that we can use it lock-less
+ *
+ * @work: The work item to use, which is associated to a dedicated events_queue
+ */
+static void scmi_events_dispatcher(struct work_struct *work)
+{
+	struct events_queue *eq;
+	struct scmi_registered_protocol_events_desc *pd;
+	struct scmi_event_header eh;
+
+	eq = container_of(work, struct events_queue, notify_work);
+	pd = container_of(eq, struct scmi_registered_protocol_events_desc,
+			  equeue);
+	/* Read the scmi_event_header at first since it contains payld_sz ... */
+	while (kfifo_out(&eq->kfifo, &eh, sizeof(eh))) {
+		u32 src_id, key;
+		unsigned int outs;
+		struct scmi_registered_event *r_evt;
+		void *report = NULL;
+
+		key = MAKE_REVT_KEY(eh.proto_id, eh.evt_id);
+		r_evt = KEY_FIND(pd->ni->registered_events, r_evt, key);
+		if (!r_evt) {
+			scmi_discard_bad_evt_payload(&eq->kfifo, eh.payld_sz);
+			continue;
+		}
+
+		/* ... then read payld_sz bytes holding the evt-msg payload */
+		outs = kfifo_out(&eq->kfifo, r_evt->scratch_bh, eh.payld_sz);
+		if (outs != eh.payld_sz) {
+			pr_warn("SCMI Notifications: WQ SKIP corrupted EVT Payload.\n");
+			continue;
+		}
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
+		scmi_lookup_and_call_event_chain(pd->ni, key, report);
+		/* ...then search for any specific src_id */
+		key = MAKE_HASH_KEY(eh.proto_id, eh.evt_id, src_id);
+		scmi_lookup_and_call_event_chain(pd->ni, key, report);
+	}
+}
+
+/**
+ * scmi_notify  - Queues a notification for further deferred processing
+ *
+ * This is called in interrupt context to queue a received event for
+ * deferred processing.
+ *
+ * @handle: The handle identifying the platform instance from which the
+ *	    dispatched event is generated
+ * @proto_id: Protocol ID
+ * @evt_id: Event ID (msgID)
+ * @buf: Event Message Payload (without the header)
+ * @len: Event Message Payload size
+ * @ts: RX Timestamp in nanoseconds (boottime)
+ *
+ * Return: 0 on Success
+ */
+int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
+		const void *buf, size_t len, u64 ts)
+{
+	struct scmi_registered_event *r_evt;
+	struct scmi_event_header *eh;
+	struct scmi_notify_instance *ni = handle->notify_priv;
+
+	/* Ensure atomic value is updated */
+	smp_mb__before_atomic();
+	if (unlikely(atomic_read(&ni->disabled)))
+		return 0;
+
+	r_evt = KEY_FIND(ni->registered_events, r_evt,
+			 MAKE_REVT_KEY(proto_id, evt_id));
+	if (unlikely(!r_evt))
+		return -EINVAL;
+
+	if (unlikely(len > r_evt->evt->max_payld_sz)) {
+		pr_err("SCMI Notifications: discard badly sized message\n");
+		return -EINVAL;
+	}
+	if (unlikely(kfifo_avail(&r_evt->proto->equeue.kfifo) <
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
+	kfifo_in(&r_evt->proto->equeue.kfifo, eh, sizeof(*eh) + eh->payld_sz);
+	queue_work(r_evt->proto->equeue.wq,
+		   &r_evt->proto->equeue.notify_work);
+
+	return 0;
+}
+
 /**
  * scmi_initialize_events_queue  - Allocate/Initialize a kfifo buffer
  *
@@ -298,6 +512,9 @@ static int scmi_initialize_events_queue(struct scmi_notify_instance *ni,
 	if (ret)
 		return ret;
 
+	INIT_WORK(&equeue->notify_work, scmi_events_dispatcher);
+	equeue->wq = ni->notify_wq;
+
 	return 0;
 }
 
@@ -602,7 +819,7 @@ static int scmi_register_event_handler(struct scmi_notify_instance *ni,
 				       struct scmi_event_handler *hndl,
 				       bool allow_delayed)
 {
-	int ret = 0;
+	int ret;
 
 	ret = scmi_bind_event_handler(ni, hndl, allow_delayed);
 	if (ret)
@@ -611,7 +828,7 @@ static int scmi_register_event_handler(struct scmi_notify_instance *ni,
 	/* Register freshly allocated event handler */
 	hash_add(ni->registered_events_handlers, &hndl->hash, hndl->key);
 
-	return 0;
+	return ret;
 }
 
 /**
@@ -977,6 +1194,12 @@ int scmi_notification_init(struct scmi_handle *handle)
 	ni->gid = gid;
 	ni->handle = handle;
 
+	ni->notify_wq = alloc_workqueue("scmi_notify",
+					WQ_UNBOUND | WQ_FREEZABLE | WQ_SYSFS,
+					0);
+	if (!ni->notify_wq)
+		goto err;
+
 	hash_init(ni->registered_protocols);
 	hash_init(ni->registered_events);
 	hash_init(ni->registered_events_handlers);
@@ -1012,6 +1235,9 @@ void scmi_notification_exit(struct scmi_handle *handle)
 	if (unlikely(!ni || !atomic_read(&ni->initialized)))
 		return;
 
+	/* Destroy while letting pending work complete */
+	destroy_workqueue(ni->notify_wq);
+
 	devres_release_group(ni->handle->dev, ni->gid);
 
 	pr_info("SCMI Notifications Core Cleaned.\n");
diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
index 93f7a2503b45..fbb2c5247531 100644
--- a/drivers/firmware/arm_scmi/notify.h
+++ b/drivers/firmware/arm_scmi/notify.h
@@ -52,10 +52,17 @@ struct scmi_event {
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
 	bool (*set_notify_enabled)(const struct scmi_handle *handle,
 				   u8 evt_id, u32 src_id, bool enabled);
+	void *(*fill_custom_report)(u8 evt_id, u64 timestamp, const void *payld,
+				    size_t payld_sz, void *report, u32 *src_id);
 };
 
 int scmi_notification_init(struct scmi_handle *handle);
@@ -68,5 +75,7 @@ int scmi_register_protocol_events(const struct scmi_handle *handle,
 				  int num_sources);
 int scmi_unregister_protocol_events(const struct scmi_handle *handle,
 				    u8 proto_id);
+int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
+		const void *buf, size_t len, u64 ts);
 
 #endif /* _SCMI_NOTIFY_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
