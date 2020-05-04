Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192CF1C4036
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vL7fKwQeWYOJXsWMZartL9Lw73onKSjBmR4q2Li9L5A=; b=mVlqXnR5ADAMAvajxKXd1rUAcv
	ATAh4tYmSWxIsMDPaEtFSkYtUyJOdLqEbzRYOT6AgiCPe7DiPxtwoYSMVMMI5tcWcLo/WxM7l+keu
	Bh9E8LkHM9Odx5ZycJuQCSs3jh0+NpSvL0554OQTui3RJVW/YqBuQhNpEX5NWBQ/LeJPK7Nq9nboW
	lG/uVDXq5BRFqRysRAKJoDSbR74URf/3M7VjpMCwRnE+Zm3VdD/5VBeqeAmKQ5tIW1W0HrY1NxxY9
	3YNHhMPVEh4OxuzZQeCSsxMeNXUkpXTIKz4wVQxnMhsIQw84+qFhZYRWtBHVhZIZ6lfWCxUv06x3j
	hRIuIY8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVe9E-00044Y-6Z; Mon, 04 May 2020 16:40:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe7o-0000mS-JI
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:39:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B05F113E;
 Mon,  4 May 2020 09:39:24 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2EDA03F68F;
 Mon,  4 May 2020 09:39:23 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 3/9] firmware: arm_scmi: Add notification dispatch and
 delivery
Date: Mon,  4 May 2020 17:38:49 +0100
Message-Id: <20200504163855.54548-4-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504163855.54548-1-cristian.marussi@arm.com>
References: <20200504163855.54548-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_093924_738581_F219B024 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V5 --> V6
- added handle argument to fill_custom_report()
V4 --> V5
- fixed kernel-doc
- fixed unneded var initialization
V3 --> V4
- dispatcher now handles dequeuing of events in chunks (header+payload):
  handling of these in_flight events let us remove one unneeded memcpy
  on RX interrupt path (scmi_notify)
- deferred dispatcher now access their own per-protocol handlers' table
  reducing locking contention on the RX path
V2 --> V3
- exposing wq in sysfs via WQ_SYSFS
V1 --> V2
- splitted out of V1 patch 04
- moved from IDR maps to real HashTables to store event_handlers
- simplified delivery logic
---
 drivers/firmware/arm_scmi/notify.c | 332 ++++++++++++++++++++++++++++-
 drivers/firmware/arm_scmi/notify.h |  10 +
 2 files changed, 340 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
index f1374860dc66..0734f595fcea 100644
--- a/drivers/firmware/arm_scmi/notify.c
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -47,6 +47,27 @@
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
+ * Events' information is then extracted from the SCMI Notification messages and
+ * conveyed, converted into a custom per-event report struct, as the void *data
+ * param to the user callback provided by the registered notifier_block, so that
+ * from the user perspective his callback will look invoked like:
+ *
+ * int user_cb(struct notifier_block *nb, unsigned long event_id, void *report)
+ *
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
@@ -67,6 +88,7 @@
 #include <linux/scmi_protocol.h>
 #include <linux/slab.h>
 #include <linux/types.h>
+#include <linux/workqueue.h>
 
 #include "notify.h"
 
@@ -149,6 +171,9 @@
 #define REVT_NOTIFY_DISABLE(revt, eid, sid)				       \
 	((revt)->proto->ops->set_notify_enabled((revt)->proto->ni->handle,     \
 						(eid), (sid), false))
+#define REVT_FILL_REPORT(revt, ...)					       \
+	((revt)->proto->ops->fill_custom_report((revt)->proto->ni->handle,     \
+						__VA_ARGS__))
 
 struct scmi_registered_protocol_events_desc;
 
@@ -161,6 +186,7 @@ struct scmi_registered_protocol_events_desc;
  *		 and protocols are allowed to register their supported events
  * @enabled: A flag to indicate events can be enabled and start flowing
  * @init_work: A work item to perform final initializations of pending handlers
+ * @notify_wq: A reference to the allocated Kernel cmwq
  * @pending_mtx: A mutex to protect @pending_events_handlers
  * @registered_protocols: A statically allocated array containing pointers to
  *			  all the registered protocol-level specific information
@@ -179,6 +205,8 @@ struct scmi_notify_instance {
 
 	struct work_struct				init_work;
 
+	struct workqueue_struct				*notify_wq;
+
 	struct mutex					pending_mtx;
 	struct scmi_registered_protocol_events_desc	**registered_protocols;
 	DECLARE_HASHTABLE(pending_events_handlers, 8);
@@ -188,12 +216,16 @@ struct scmi_notify_instance {
  * struct events_queue  - Describes a queue and its associated worker
  * @sz: Size in bytes of the related kfifo
  * @kfifo: A dedicated Kernel kfifo descriptor
+ * @notify_work: A custom work item bound to this queue
+ * @wq: A reference to the associated workqueue
  *
  * Each protocol has its own dedicated events_queue descriptor.
  */
 struct events_queue {
 	size_t				sz;
 	struct kfifo			kfifo;
+	struct work_struct		notify_work;
+	struct workqueue_struct		*wq;
 };
 
 /**
@@ -315,9 +347,246 @@ struct scmi_event_handler {
 
 #define IS_HNDL_PENDING(hndl)	((hndl)->r_evt == NULL)
 
+static struct scmi_event_handler *
+scmi_get_active_handler(struct scmi_notify_instance *ni, u32 evt_key);
+static void scmi_put_active_handler(struct scmi_notify_instance *ni,
+				    struct scmi_event_handler *hndl);
 static void scmi_put_handler_unlocked(struct scmi_notify_instance *ni,
 				      struct scmi_event_handler *hndl);
 
+/**
+ * scmi_lookup_and_call_event_chain()  - Lookup the proper chain and call it
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
+	hndl = scmi_get_active_handler(ni, evt_key);
+	if (IS_ERR_OR_NULL(hndl))
+		return;
+
+	ret = blocking_notifier_call_chain(&hndl->chain,
+					   KEY_XTRACT_EVT_ID(evt_key),
+					   report);
+	/* Notifiers are NOT supposed to cut the chain ... */
+	WARN_ON_ONCE(ret & NOTIFY_STOP_MASK);
+
+	scmi_put_active_handler(ni, hndl);
+}
+
+/**
+ * scmi_process_event_header()  - Dequeue and process an event header
+ * @eq: The queue to use
+ * @pd: The protocol descriptor to use
+ *
+ * Read an event header from the protocol queue into the dedicated scratch
+ * buffer and looks for a matching registered event; in case an anomalously
+ * sized read is detected just flush the queue.
+ *
+ * Return:
+ * * a reference to the matching registered event when found
+ * * ERR_PTR(-EINVAL) when NO registered event could be found
+ * * NULL when the queue is empty
+ */
+static inline struct scmi_registered_event *
+scmi_process_event_header(struct events_queue *eq,
+			  struct scmi_registered_protocol_events_desc *pd)
+{
+	unsigned int outs;
+	struct scmi_registered_event *r_evt;
+
+	outs = kfifo_out(&eq->kfifo, pd->eh,
+			 sizeof(struct scmi_event_header));
+	if (!outs)
+		return NULL;
+	if (outs != sizeof(struct scmi_event_header)) {
+		pr_err("SCMI Notifications: corrupted EVT header. Flush.\n");
+		kfifo_reset_out(&eq->kfifo);
+		return NULL;
+	}
+
+	r_evt = SCMI_GET_REVT_FROM_PD(pd, pd->eh->evt_id);
+	if (!r_evt)
+		r_evt = ERR_PTR(-EINVAL);
+
+	return r_evt;
+}
+
+/**
+ * scmi_process_event_payload()  - Dequeue and process an event payload
+ * @eq: The queue to use
+ * @pd: The protocol descriptor to use
+ * @r_evt: The registered event descriptor to use
+ *
+ * Read an event payload from the protocol queue into the dedicated scratch
+ * buffer, fills a custom report and then look for matching event handlers and
+ * call them; skip any unknown event (as marked by scmi_process_event_header())
+ * and in case an anomalously sized read is detected just flush the queue.
+ *
+ * Return: False when the queue is empty
+ */
+static inline bool
+scmi_process_event_payload(struct events_queue *eq,
+			   struct scmi_registered_protocol_events_desc *pd,
+			   struct scmi_registered_event *r_evt)
+{
+	u32 src_id, key;
+	unsigned int outs;
+	void *report = NULL;
+
+	outs = kfifo_out(&eq->kfifo, pd->eh->payld, pd->eh->payld_sz);
+	if (unlikely(!outs))
+		return false;
+
+	/* Any in-flight event has now been officially processed */
+	pd->in_flight = NULL;
+
+	if (unlikely(outs != pd->eh->payld_sz)) {
+		pr_err("SCMI Notifications: corrupted EVT Payload. Flush.\n");
+		kfifo_reset_out(&eq->kfifo);
+		return false;
+	}
+
+	if (IS_ERR(r_evt)) {
+		pr_warn("SCMI Notifications: SKIP UNKNOWN EVT - proto:%X  evt:%d\n",
+			pd->id, pd->eh->evt_id);
+		return true;
+	}
+
+	report = REVT_FILL_REPORT(r_evt, pd->eh->evt_id, pd->eh->timestamp,
+				  pd->eh->payld, pd->eh->payld_sz,
+				  r_evt->report, &src_id);
+	if (!report) {
+		pr_err("SCMI Notifications: Report not available - proto:%X  evt:%d\n",
+		       pd->id, pd->eh->evt_id);
+		return true;
+	}
+
+	/* At first search for a generic ALL src_ids handler... */
+	key = MAKE_ALL_SRCS_KEY(pd->id, pd->eh->evt_id);
+	scmi_lookup_and_call_event_chain(pd->ni, key, report);
+
+	/* ...then search for any specific src_id */
+	key = MAKE_HASH_KEY(pd->id, pd->eh->evt_id, src_id);
+	scmi_lookup_and_call_event_chain(pd->ni, key, report);
+
+	return true;
+}
+
+/**
+ * scmi_events_dispatcher()  - Common worker logic for all work items.
+ * @work: The work item to use, which is associated to a dedicated events_queue
+ *
+ * Logic:
+ *  1. dequeue one pending RX notification (queued in SCMI RX ISR context)
+ *  2. generate a custom event report from the received event message
+ *  3. lookup for any registered ALL_SRC_IDs handler:
+ *    - > call the related notification chain passing in the report
+ *  4. lookup for any registered specific SRC_ID handler:
+ *    - > call the related notification chain passing in the report
+ *
+ * Note that:
+ * * a dedicated per-protocol kfifo queue is used: in this way an anomalous
+ *   flood of events cannot saturate other protocols' queues.
+ * * each per-protocol queue is associated to a distinct work_item, which
+ *   means, in turn, that:
+ *   + all protocols can process their dedicated queues concurrently
+ *     (since notify_wq:max_active != 1)
+ *   + anyway at most one worker instance is allowed to run on the same queue
+ *     concurrently: this ensures that we can have only one concurrent
+ *     reader/writer on the associated kfifo, so that we can use it lock-less
+ *
+ * Context: Process context.
+ */
+static void scmi_events_dispatcher(struct work_struct *work)
+{
+	struct events_queue *eq;
+	struct scmi_registered_protocol_events_desc *pd;
+	struct scmi_registered_event *r_evt;
+
+	eq = container_of(work, struct events_queue, notify_work);
+	pd = container_of(eq, struct scmi_registered_protocol_events_desc,
+			  equeue);
+	/*
+	 * In order to keep the queue lock-less and the number of memcopies
+	 * to the bare minimum needed, the dispatcher accounts for the
+	 * possibility of per-protocol in-flight events: i.e. an event whose
+	 * reception could end up being split across two subsequent runs of this
+	 * worker, first the header, then the payload.
+	 */
+	do {
+		if (likely(!pd->in_flight)) {
+			r_evt = scmi_process_event_header(eq, pd);
+			if (!r_evt)
+				break;
+			pd->in_flight = r_evt;
+		} else {
+			r_evt = pd->in_flight;
+		}
+	} while (scmi_process_event_payload(eq, pd, r_evt));
+}
+
+/**
+ * scmi_notify()  - Queues a notification for further deferred processing
+ * @handle: The handle identifying the platform instance from which the
+ *	    dispatched event is generated
+ * @proto_id: Protocol ID
+ * @evt_id: Event ID (msgID)
+ * @buf: Event Message Payload (without the header)
+ * @len: Event Message Payload size
+ * @ts: RX Timestamp in nanoseconds (boottime)
+ *
+ * Context: Called in interrupt context to queue a received event for
+ * deferred processing.
+ *
+ * Return: 0 on Success
+ */
+int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
+		const void *buf, size_t len, u64 ts)
+{
+	struct scmi_registered_event *r_evt;
+	struct scmi_event_header eh;
+	struct scmi_notify_instance *ni = handle->notify_priv;
+
+	/* Ensure atomic value is updated */
+	smp_mb__before_atomic();
+	if (unlikely(!atomic_read(&ni->enabled)))
+		return 0;
+
+	r_evt = SCMI_GET_REVT(ni, proto_id, evt_id);
+	if (unlikely(!r_evt))
+		return -EINVAL;
+
+	if (unlikely(len > r_evt->evt->max_payld_sz)) {
+		pr_err("SCMI Notifications: discard badly sized message\n");
+		return -EINVAL;
+	}
+	if (unlikely(kfifo_avail(&r_evt->proto->equeue.kfifo) <
+		     sizeof(eh) + len)) {
+		pr_warn("SCMI Notifications: queue full dropping proto_id:%d  evt_id:%d  ts:%lld\n",
+			proto_id, evt_id, ts);
+		return -ENOMEM;
+	}
+
+	eh.timestamp = ts;
+	eh.evt_id = evt_id;
+	eh.payld_sz = len;
+	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));
+	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
+	queue_work(r_evt->proto->equeue.wq,
+		   &r_evt->proto->equeue.notify_work);
+
+	return 0;
+}
+
 /**
  * scmi_kfifo_free()  - Devres action helper to free the kfifo
  * @kfifo: The kfifo to free
@@ -340,13 +609,22 @@ static void scmi_kfifo_free(void *kfifo)
 static int scmi_initialize_events_queue(struct scmi_notify_instance *ni,
 					struct events_queue *equeue, size_t sz)
 {
+	int ret;
+
 	if (kfifo_alloc(&equeue->kfifo, sz, GFP_KERNEL))
 		return -ENOMEM;
 	/* Size could have been roundup to power-of-two */
 	equeue->sz = kfifo_size(&equeue->kfifo);
 
-	return devm_add_action_or_reset(ni->handle->dev, scmi_kfifo_free,
-					&equeue->kfifo);
+	ret = devm_add_action_or_reset(ni->handle->dev, scmi_kfifo_free,
+				       &equeue->kfifo);
+	if (ret)
+		return ret;
+
+	INIT_WORK(&equeue->notify_work, scmi_events_dispatcher);
+	equeue->wq = ni->notify_wq;
+
+	return ret;
 }
 
 /**
@@ -746,6 +1024,37 @@ scmi_get_or_create_handler(struct scmi_notify_instance *ni, u32 evt_key)
 	return __scmi_event_handler_get_ops(ni, evt_key, true);
 }
 
+/**
+ * scmi_get_active_handler()  - Helper to get active handlers only
+ * @ni: A reference to the notification instance to use
+ * @evt_key: The event key to use
+ *
+ * Search for the desired handler matching the key only in the per-protocol
+ * table of registered handlers: this is called only from the dispatching path
+ * so want to be as quick as possible and do not care about pending.
+ *
+ * Return: A properly refcounted active handler
+ */
+static struct scmi_event_handler *
+scmi_get_active_handler(struct scmi_notify_instance *ni, u32 evt_key)
+{
+	struct scmi_registered_event *r_evt;
+	struct scmi_event_handler *hndl = NULL;
+
+	r_evt = SCMI_GET_REVT(ni, KEY_XTRACT_PROTO_ID(evt_key),
+			      KEY_XTRACT_EVT_ID(evt_key));
+	if (likely(r_evt)) {
+		mutex_lock(&r_evt->proto->registered_mtx);
+		hndl = KEY_FIND(r_evt->proto->registered_events_handlers,
+				hndl, evt_key);
+		if (likely(hndl))
+			refcount_inc(&hndl->users);
+		mutex_unlock(&r_evt->proto->registered_mtx);
+	}
+
+	return hndl;
+}
+
 /**
  * __scmi_enable_evt()  - Enable/disable events generation
  * @r_evt: The registered event to act upon
@@ -861,6 +1170,16 @@ static void scmi_put_handler(struct scmi_notify_instance *ni,
 	mutex_unlock(&ni->pending_mtx);
 }
 
+static void scmi_put_active_handler(struct scmi_notify_instance *ni,
+					  struct scmi_event_handler *hndl)
+{
+	struct scmi_registered_event *r_evt = hndl->r_evt;
+
+	mutex_lock(&r_evt->proto->registered_mtx);
+	scmi_put_handler_unlocked(ni, hndl);
+	mutex_unlock(&r_evt->proto->registered_mtx);
+}
+
 /**
  * scmi_event_handler_enable_events()  - Enable events associated to an handler
  * @hndl: The Event handler to act upon
@@ -1084,6 +1403,12 @@ int scmi_notification_init(struct scmi_handle *handle)
 	ni->gid = gid;
 	ni->handle = handle;
 
+	ni->notify_wq = alloc_workqueue("scmi_notify",
+					WQ_UNBOUND | WQ_FREEZABLE | WQ_SYSFS,
+					0);
+	if (!ni->notify_wq)
+		goto err;
+
 	ni->registered_protocols = devm_kcalloc(handle->dev, SCMI_MAX_PROTO,
 						sizeof(char *), GFP_KERNEL);
 	if (!ni->registered_protocols)
@@ -1129,5 +1454,8 @@ void scmi_notification_exit(struct scmi_handle *handle)
 	/* Ensure atomic values are updated */
 	smp_mb__after_atomic();
 
+	/* Destroy while letting pending work complete */
+	destroy_workqueue(ni->notify_wq);
+
 	devres_release_group(ni->handle->dev, ni->gid);
 }
diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
index f0561fb30970..a55c041180bf 100644
--- a/drivers/firmware/arm_scmi/notify.h
+++ b/drivers/firmware/arm_scmi/notify.h
@@ -47,6 +47,11 @@ struct scmi_event {
  *			using the proper custom protocol commands.
  *			Return true if at least one the required src_id
  *			has been successfully enabled/disabled
+ * @fill_custom_report: fills a custom event report from the provided
+ *			event message payld identifying the event
+ *			specific src_id.
+ *			Return NULL on failure otherwise @report now fully
+ *			populated
  *
  * Context: Helpers described in &struct scmi_protocol_event_ops are called
  *	    only in process context.
@@ -54,6 +59,9 @@ struct scmi_event {
 struct scmi_protocol_event_ops {
 	bool (*set_notify_enabled)(const struct scmi_handle *handle,
 				   u8 evt_id, u32 src_id, bool enabled);
+	void *(*fill_custom_report)(const struct scmi_handle *handle,
+				    u8 evt_id, u64 timestamp, const void *payld,
+				    size_t payld_sz, void *report, u32 *src_id);
 };
 
 int scmi_notification_init(struct scmi_handle *handle);
@@ -64,5 +72,7 @@ int scmi_register_protocol_events(const struct scmi_handle *handle,
 				  const struct scmi_protocol_event_ops *ops,
 				  const struct scmi_event *evt, int num_events,
 				  int num_sources);
+int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
+		const void *buf, size_t len, u64 ts);
 
 #endif /* _SCMI_NOTIFY_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
