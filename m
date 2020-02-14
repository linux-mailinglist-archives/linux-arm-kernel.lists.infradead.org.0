Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A3215DB23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1UX71DAuMKb1P2AFihvUdtyhhGenIx/nUCk/1CG1sQc=; b=fFJDc9ndICtYIdTStGZvvxZqH+
	dGZGMhdx2815Yy/ruOTDk4QLirbX6Z9CCDlIVFJRaEwnRNqthJornocVXKlSc+VJ3jQLPoIjthOwI
	N154w/Z+nIt0bO3wyCTOv2k1jYTEdBq8CccCG/SX1/utFPMNiNoSB4g6nFOKjzIkyyeYpTbqUn9j+
	wWfCXOiStem9UumeIwLjzHeQToBdOr1G1mIarQyfJoMPcDK1ZdTgOjf/K9VbntBEurqlX2omYPCIe
	1YbdlFjPb6WVEHl9I1NfEt9HoSprjv2M0pCl9BoBqIUsEuEJ96PWOBl+G2wRb41MoULRYQsM5BgaX
	/lHxOJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2d2b-00030N-Jj; Fri, 14 Feb 2020 15:38:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2d17-0001fo-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:36:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0695F328;
 Fri, 14 Feb 2020 07:36:33 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E0C333F68E;
 Fri, 14 Feb 2020 07:36:31 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 06/13] firmware: arm_scmi: Add notification
 callbacks-registration
Date: Fri, 14 Feb 2020 15:35:28 +0000
Message-Id: <20200214153535.32046-7-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200214153535.32046-1-cristian.marussi@arm.com>
References: <20200214153535.32046-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_073633_481989_63FF761B 
X-CRM114-Status: GOOD (  25.13  )
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

Add core SCMI Notifications callbacks-registration support: allow users
to register their own callbacks against the desired events.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V1 --> V2
- splitted out of V1 patch 04
- moved from IDR maps to real HashTables to store event_handlers
- added proper enable_events refcounting via __scmi_enable_evt()
  [was broken in V1 when using ALL_SRCIDs notification chains]
- reviewed hashtable cleanup strategy in scmi_notifications_exit()
- added scmi_register_event_notifier()/scmi_unregister_event_notifier()
  to include/linux/scmi_protocol.h as a candidate user API
  [no EXPORTs still]
- added notify_ops to handle during initialization as an additional
  internal API for scmi_drivers
---
 drivers/firmware/arm_scmi/notify.c | 443 ++++++++++++++++++++++++++++-
 drivers/firmware/arm_scmi/notify.h |   2 +-
 include/linux/scmi_protocol.h      |  63 ++++
 3 files changed, 505 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
index d496522dea72..1339b6de0a4c 100644
--- a/drivers/firmware/arm_scmi/notify.c
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -14,18 +14,56 @@
  * @scmi_register_protocol_events(): all these protocols and events descriptors
  * are stored in the @scmi_registered_protocols and @scmi_registered_events
  * hashtables.
+ *
+ * Kernel users interested in some specific event can register their associated
+ * callbacks providing the usual notifier_block descriptor, since this
+ * notification system implements events' delivery using the standard Kernel
+ * notification chains machinery. All users provided callbacks are instead
+ * stored in the @scmi_registered_events_handlers hashtable.
+ *
+ * Given the number of possible events defined by SCMI and the extensibility
+ * of the SCMI Protocol itself, the underlying notification chains are created
+ * and destroyed dynamically on demand depending on the number of users
+ * effectively registered for an event, so that no support structures or chains
+ * are allocated until at least one user has registered a notifier_block for
+ * such event. Similarly, events' generation itself is enabled at the platform
+ * level only after at least one user has registered, and it is shutdown after
+ * the last user for that event has gone.
+ *
+ * An event is identified univocally by the tuple (proto_id, evt_id, src_id)
+ * and is served by its own dedicated notification chain: given that such chain
+ * is indeed dynamically created, the registration API simply represents a mean
+ * for the users to associate their callbacks with the above tuple descriptor
+ * and possibly trigger the allocation and initialization of all the required
+ * resources.
+ *
+ * The information contained in such tuples is used, in a few different ways,
+ * to generate the final keys used to store/retrieve descriptors from the above
+ * hastables.
+ *
+ * Here proto_id and evt_id are simply the protocol_id and message_id numbers
+ * as described in the SCMI Protocol specification, while src_id represents an
+ * optional, protocol dependent, source identifier (like domain_id, perf_id
+ * or sensor_id and so forth), so that a user can register its callback for a
+ * particular event coming only from a well defined source (like CPU vs GPU).
+ * When the source is not specified the user callback will be registered for
+ * all existing sources for that event (if any).
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/atomic.h>
 #include <linux/device.h>
+#include <linux/bitfield.h>
 #include <linux/err.h>
 #include <linux/hashtable.h>
 #include <linux/kernel.h>
 #include <linux/kfifo.h>
+#include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/notifier.h>
 #include <linux/refcount.h>
+#include <linux/scmi_protocol.h>
 #include <linux/slab.h>
 #include <linux/types.h>
 #include <linux/workqueue.h>
@@ -60,6 +98,17 @@
 	__obj;							\
 })
 
+#define PROTO_ID_MASK			GENMASK(31, 24)
+#define EVT_ID_MASK			GENMASK(23, 16)
+#define SRC_ID_MASK			GENMASK(15, 0)
+#define KEY_XTRACT_PROTO_ID(key)	FIELD_GET(PROTO_ID_MASK, (key))
+#define KEY_XTRACT_EVT_ID(key)		FIELD_GET(EVT_ID_MASK, (key))
+#define KEY_XTRACT_SRC_ID(key)		FIELD_GET(SRC_ID_MASK, (key))
+
+/* A couple of utility macros to limit cruft when calling protocols' helpers */
+#define REVT_NOTIFY_ENABLE(revt, ...)	\
+	((revt)->proto->ops->set_notify_enabled(__VA_ARGS__))
+
 /**
  * events_queue  - Describes a queue and its associated worker
  *
@@ -130,6 +179,32 @@ struct scmi_registered_event {
 	struct mutex					sources_mtx;
 };
 
+/**
+ * scmi_event_handler  - Event handler information
+ *
+ * This structure collects all the information needed to process a received
+ * event described by the tuple (proto_id, evt_id, src_id) invoking all the
+ * currently registered users' callbacks.
+ * These descriptors are stored in the @scmi_registered_events_handlers
+ * hashtable using as a key a value derived from that tuple.
+ *
+ * @key: The used hashkey
+ * @users: A reference count for number of active users for this handler
+ * @r_evt: A reference to the underlying registered event
+ * @chain: The notification chain dedicated to this specific event tuple
+ * @hash: The hash list_node used for collision handling
+ * @enabled: A boolean which records if event's generation has been already
+ *	     enabled for this handler as a whole
+ */
+struct scmi_event_handler {
+	u32				key;
+	refcount_t			users;
+	struct scmi_registered_event	*r_evt;
+	struct blocking_notifier_head	chain;
+	struct hlist_node		hash;
+	bool				enabled;
+};
+
 /**
  * scmi_event_header  - A utility header
  *
@@ -159,9 +234,22 @@ struct scmi_event_header {
  *				 to events' handling
  * - @scmi_registered_events: All events' descriptors registered by the
  *			      protocols, together with their ancillary data
+ * - @scmi_registered_events_handlers: All events' handlers descriptors, created
+ *				       to collect all the users' notifier_block
+ *				       callbacks and related notification chains
  */
 static DECLARE_HASHTABLE(scmi_registered_protocols, 4);
 static DECLARE_HASHTABLE(scmi_registered_events, 5);
+static DECLARE_HASHTABLE(scmi_registered_events_handlers, 8);
+
+/*
+ * A mutex to coordinate access to @scmi_registered_events_handlers which is the
+ * only hashtable which can potentially have multiple concurrent readers and
+ * writers at run-time; all other hashtables are fully populated at init time
+ * and then subsequently only read till cleanup-time when all notifications'
+ * processing would have been anyway already being stopped.
+ */
+static DEFINE_MUTEX(scmi_registered_events_handler_mtx);
 
 static atomic_t scmi_notifications_initialized = ATOMIC_INIT(0);
 
@@ -352,6 +440,18 @@ int scmi_unregister_protocol_events(struct device *dev, u8 proto_id)
 	struct scmi_registered_event *r_evt;
 	struct scmi_registered_protocol_events_desc *pdesc;
 
+	/*
+	 * We should get here only after all users have unregistered their
+	 * handlers using the API...if that's not the case give up.
+	 */
+	mutex_lock(&scmi_registered_events_handler_mtx);
+	if (!hash_empty(scmi_registered_events_handlers)) {
+		pr_err("SCMI Notifications: active users found at exit.\n");
+		mutex_unlock(&scmi_registered_events_handler_mtx);
+		return 0;
+	}
+	mutex_unlock(&scmi_registered_events_handler_mtx);
+
 	pdesc = KEY_FIND(scmi_registered_protocols, pdesc,
 			 MAKE_HASH_KEY(proto_id, 0, SCMI_ALL_SRC_IDS));
 	if (!pdesc)
@@ -397,15 +497,354 @@ bool scmi_stop_and_flush_protocol_events(u8 proto_id)
 	return true;
 }
 
+/**
+ * scmi_allocate_event_handler  - Allocate and Register an Event handler
+ *
+ * Allocate an event handler and related notification chain associated with
+ * the event identified by the provided event key. Fails if the associated
+ * event is unknown to the core (i.e. it had not been previously registered
+ * as supported by some SCMI protocol)
+ *
+ * @evt_key: 32bit key uniquely bind to the event identified by the tuple
+ *	     (proto_id, evt_id, src_id)
+ *
+ * Return: the freshly allocated structure on Success
+ */
+static struct scmi_event_handler *scmi_allocate_event_handler(u32 evt_key)
+{
+	u8 proto_id, evt_id;
+	struct scmi_registered_event *r_evt;
+	struct scmi_event_handler *hndl;
+
+	proto_id = KEY_XTRACT_PROTO_ID(evt_key);
+	evt_id = KEY_XTRACT_EVT_ID(evt_key);
+	r_evt = KEY_FIND(scmi_registered_events, r_evt,
+			 MAKE_HASH_KEY(proto_id, evt_id, SCMI_ALL_SRC_IDS));
+	if (!r_evt)
+		return ERR_PTR(-EINVAL);
+
+	hndl = kzalloc(sizeof(*hndl), GFP_KERNEL);
+	if (!hndl)
+		return ERR_PTR(-ENOMEM);
+	hndl->r_evt = r_evt;
+	hndl->key = evt_key;
+	BLOCKING_INIT_NOTIFIER_HEAD(&hndl->chain);
+	refcount_set(&hndl->users, 1);
+
+	/* Register freshly allocated event handler */
+	hash_add(scmi_registered_events_handlers, &hndl->hash, hndl->key);
+
+	return hndl;
+}
+
+/**
+ * scmi_free_event_handler  - Free the provided Event handler
+ *
+ * @hndl: The event handler structure to free
+ */
+static void scmi_free_event_handler(struct scmi_event_handler *hndl)
+{
+	hash_del(&hndl->hash);
+	kfree(hndl);
+}
+
+/**
+ * __scmi_event_handler_get_ops  - Utility to get or create an event handler
+ *
+ * After having got exclusive access to the registered events hashtable,
+ * search for the desired handler matching the key:
+ *  - if found adjust users refcount
+ *  - if not found and @create is true, create and register a new handler
+ *
+ * Events generation is NOT enabled on create within this routine since at
+ * creation time we usually want to have all setup and registered before events
+ * really start flowing.
+ *
+ * @evt_key: The event key to use
+ * @create: A boolean flag to specify if a handler must be created when
+ *	    not already existent
+ *
+ * Return: the freshly allocated structure on Success
+ */
+static inline struct scmi_event_handler *
+__scmi_event_handler_get_ops(u32 evt_key, bool create)
+{
+	struct scmi_event_handler *hndl = NULL;
+
+	mutex_lock(&scmi_registered_events_handler_mtx);
+	hndl = KEY_FIND(scmi_registered_events_handlers, hndl, evt_key);
+	if (hndl)
+		refcount_inc(&hndl->users);
+	else if (create)
+		hndl = scmi_allocate_event_handler(evt_key);
+	mutex_unlock(&scmi_registered_events_handler_mtx);
+
+	return hndl;
+}
+
+static struct scmi_event_handler *scmi_get_event_handler(u32 evt_key)
+{
+	return __scmi_event_handler_get_ops(evt_key, false);
+}
+
+static struct scmi_event_handler *scmi_get_or_create_event_handler(u32 evt_key)
+{
+	return __scmi_event_handler_get_ops(evt_key, true);
+}
+
+/**
+ * __scmi_enable_evt  - Enable/disable events generation
+ *
+ * Takes care of proper refcounting while performing enable/disable:
+ * handles the special case of ALL sources requests.
+ *
+ * @r_evt: The registered event to act upon
+ * @src_id: The src_id to act upon
+ * @enable: The action to perform: true->Enable, false->Disable
+ *
+ * Return: True when the required @action has been successfully executed
+ */
+static inline bool __scmi_enable_evt(struct scmi_registered_event *r_evt,
+				     u32 src_id, bool enable)
+{
+	int ret = 0;
+	u32 num_sources;
+	refcount_t *sid;
+
+	if (src_id == SCMI_ALL_SRC_IDS) {
+		src_id = 0;
+		num_sources = r_evt->num_sources;
+	} else if (src_id < r_evt->num_sources) {
+		num_sources = 1;
+	} else {
+		return ret;
+	}
+
+	mutex_lock(&r_evt->sources_mtx);
+	if (enable) {
+		for (; num_sources; src_id++, num_sources--) {
+			bool r;
+
+			sid = &r_evt->sources[src_id];
+			if (refcount_read(sid) == 0) {
+				r = REVT_NOTIFY_ENABLE(r_evt,
+						       r_evt->evt->evt_id,
+						       src_id, enable);
+				if (r)
+					refcount_set(sid, 1);
+			} else {
+				refcount_inc(sid);
+				r = true;
+			}
+			ret += r;
+		}
+	} else {
+		for (; num_sources; src_id++, num_sources--) {
+			sid = &r_evt->sources[src_id];
+			if (refcount_dec_and_test(sid))
+				REVT_NOTIFY_ENABLE(r_evt,
+						   r_evt->evt->evt_id,
+						   src_id, enable);
+		}
+		ret = 1;
+	}
+	mutex_unlock(&r_evt->sources_mtx);
+
+	return ret;
+}
+
+static bool scmi_enable_events(struct scmi_event_handler *hndl)
+{
+	if (!hndl->enabled)
+		hndl->enabled = __scmi_enable_evt(hndl->r_evt,
+						  KEY_XTRACT_SRC_ID(hndl->key),
+						  true);
+	return hndl->enabled;
+}
+
+static bool scmi_disable_events(struct scmi_event_handler *hndl)
+{
+	if (hndl->enabled)
+		hndl->enabled = !__scmi_enable_evt(hndl->r_evt,
+						   KEY_XTRACT_SRC_ID(hndl->key),
+						   false);
+	return !hndl->enabled;
+}
+
+static inline
+void scmi_put_event_handler_unlocked(struct scmi_event_handler *hndl)
+{
+	if (refcount_dec_and_test(&hndl->users)) {
+		scmi_disable_events(hndl);
+		scmi_free_event_handler(hndl);
+	}
+}
+
+/**
+ * scmi_put_event_handler  - Put an event handler
+ *
+ * After having got exclusive access to the registered events hashtable, update
+ * the refcount and if @hndl is no more in use by anyone:
+ *
+ *  - ask for events' generation disabling
+ *  - unregister and free the handler itself
+ *
+ * @hndl: The handler to act upon
+ */
+static void scmi_put_event_handler(struct scmi_event_handler *hndl)
+{
+	mutex_lock(&scmi_registered_events_handler_mtx);
+	scmi_put_event_handler_unlocked(hndl);
+	mutex_unlock(&scmi_registered_events_handler_mtx);
+}
+
+static int scmi_register_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
+				  struct notifier_block *nb)
+{
+	u32 evt_key;
+	struct scmi_event_handler *hndl;
+
+	/* Ensure atomic value is updated */
+	smp_mb__before_atomic();
+	if (unlikely(!atomic_read(&scmi_notifications_initialized)))
+		return 0;
+
+	/* Account for handle->notify_ops access */
+	try_module_get(THIS_MODULE);
+
+	evt_key = MAKE_HASH_KEY(proto_id, evt_id,
+				src_id ? *src_id : SCMI_ALL_SRC_IDS);
+	hndl = scmi_get_or_create_event_handler(evt_key);
+	if (IS_ERR_OR_NULL(hndl))
+		return PTR_ERR(hndl);
+
+	blocking_notifier_chain_register(&hndl->chain, nb);
+
+	/*
+	 * Ask platform to enable events': effective requests are emitted
+	 * only when required by the current state of the underlying sources.
+	 */
+	if (!scmi_enable_events(hndl)) {
+		pr_err("SCMI Notifications: Failed to ENABLE events for key:%X !\n",
+		       evt_key);
+		blocking_notifier_chain_unregister(&hndl->chain, nb);
+		scmi_put_event_handler(hndl);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * scmi_register_event_notifier  - Register a notifier_block for an event
+ *
+ * Generic helper to register a notifier_block attached to a protocol event.
+ *
+ * A notifier_block @nb will be registered for each distinct event identified
+ * by the tuple (proto_id, evt_id, src_id) on a dedicated notification chain
+ * so that:
+ *
+ *	(proto_X, evt_Y, src_Z) --> chain_X_Y_Z
+ *
+ * @src_id meaning is protocol specific and identifies the origin of the event
+ * (like domain_id, sensor_id and os forth).
+ *
+ * @src_id can be NULL to signify that the caller is interested in receiving
+ * notifications from ALL the available sources for that protocol OR simply that
+ * the protocol does not support distinct sources: in these cases @nb will be
+ * attached to a generic notification chain defined for ALL src_id of that
+ * proto_id/evt_id pair like:
+ *
+ *	(proto_X, evt_Y, NULL) --> chain_X_Y_ALL
+ *
+ * Any received event will be then dispatched to both such chains if at least
+ * one user had registered an @nb on them.
+ *
+ * @proto_id: Protocol ID
+ * @evt_id: Event ID
+ * @src_id: Source ID, when NULL register for events coming form ALL possible
+ *	    sources
+ * @nb: A standard notifier block to register for the specified event
+ *
+ * Return: Return 0 on Success
+ */
+int scmi_register_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
+				 struct notifier_block *nb)
+{
+	return scmi_register_notifier(proto_id, evt_id, src_id, nb);
+}
+
+static int scmi_unregister_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
+				    struct notifier_block *nb)
+{
+	u32 evt_key;
+	struct scmi_event_handler *hndl;
+
+	/* Account for handle->notify_ops access */
+	module_put(THIS_MODULE);
+
+	evt_key = MAKE_HASH_KEY(proto_id, evt_id,
+				src_id ? *src_id : SCMI_ALL_SRC_IDS);
+	hndl = scmi_get_event_handler(evt_key);
+	if (IS_ERR_OR_NULL(hndl))
+		return -EINVAL;
+
+	blocking_notifier_chain_unregister(&hndl->chain, nb);
+	scmi_put_event_handler(hndl);
+	/*
+	 * If this was the last user callback for this handler, this last
+	 * additional put will force the handler to be freed.
+	 * Note that if a call_chain walk is ongoing it will be instead the
+	 * call_chain's put_request which will finally free the handler;
+	 * note also that any operation on the inner notifier_block chain
+	 * is already protected on its own.
+	 */
+	scmi_put_event_handler(hndl);
+
+	return 0;
+}
+
+/**
+ * scmi_unregister_event_notifier  - Unregister a notifier_block for an event
+ *
+ * Takes care to unregister the provided @nb from the notification chain
+ * associated to the specified event and, if there are no more users for the
+ * event handler, frees also the associated event handler structures.
+ *
+ * @proto_id: Protocol ID
+ * @evt_id: Event ID
+ * @src_id: Source ID
+ * @nb: The notifier_block to unregister
+ *
+ * Return: 0 on Success
+ */
+int scmi_unregister_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
+				   struct notifier_block *nb)
+{
+	return scmi_unregister_notifier(proto_id, evt_id, src_id, nb);
+}
+
+/*
+ * notify_ops are also to the attached to the handle so that can be accessed
+ * directly from an scmi_driver to register its own notifiers.
+ */
+static struct scmi_notify_ops notify_ops = {
+	.register_event_notifier = scmi_register_notifier,
+	.unregister_event_notifier = scmi_unregister_notifier,
+};
+
 /**
  * scmi_notification_init  - Initializes Notification Core Support
  *
  * Return: 0 on Success
  */
-int __init scmi_notification_init(void)
+int scmi_notification_init(struct scmi_handle *handle)
 {
 	hash_init(scmi_registered_protocols);
 	hash_init(scmi_registered_events);
+	hash_init(scmi_registered_events_handlers);
+
+	handle->notify_ops = &notify_ops;
 
 	atomic_set(&scmi_notifications_initialized, 1);
 	/* Ensure atomic value is updated */
@@ -419,7 +858,7 @@ int __init scmi_notification_init(void)
 /**
  * scmi_notification_exit  - Shutdown and clean Notification core
  */
-void __exit scmi_notification_exit(void)
+void scmi_notification_exit(void)
 {
 	pr_info("SCMI Notifications Core disabled.\n");
 }
diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
index 3f8a69c85a36..438181147fc8 100644
--- a/drivers/firmware/arm_scmi/notify.h
+++ b/drivers/firmware/arm_scmi/notify.h
@@ -43,7 +43,7 @@ struct scmi_protocol_event_ops {
 	bool (*set_notify_enabled)(u8 evt_id, u32 src_id, bool enabled);
 };
 
-int scmi_notification_init(void);
+int scmi_notification_init(struct scmi_handle *handle);
 void scmi_notification_exit(void);
 int scmi_register_protocol_events(struct device *dev,
 				  u8 proto_id, size_t queue_sz,
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 5c873a59b387..f675f2aa7d87 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -4,7 +4,12 @@
  *
  * Copyright (C) 2018 ARM Ltd.
  */
+
+#ifndef _LINUX_SCMI_PROTOCOL_H
+#define _LINUX_SCMI_PROTOCOL_H
+
 #include <linux/device.h>
+#include <linux/notifier.h>
 #include <linux/types.h>
 
 #define SCMI_MAX_STR_SIZE	16
@@ -207,6 +212,24 @@ struct scmi_reset_ops {
 	int (*deassert)(const struct scmi_handle *handle, u32 domain);
 };
 
+/**
+ * scmi_notify_ops  - represents notifications' operations provided by SCMI core
+ *
+ * Further details below within documentation for @scmi_register_event_notifier
+ * and @scmi_unregister_event_notifier(). The functionality is the same, they
+ * are just exposed in a different way.
+ *
+ * @register_event_notifier: Register a notifier_block for the requested event
+ * @unregister_event_notifier: Unregister a notifier_block for the requested
+ *			       event
+ */
+struct scmi_notify_ops {
+	int (*register_event_notifier)(u8 proto_id, u8 evt_id, u32 *src_id,
+				       struct notifier_block *nb);
+	int (*unregister_event_notifier)(u8 proto_id, u8 evt_id, u32 *src_id,
+					 struct notifier_block *nb);
+};
+
 /**
  * struct scmi_handle - Handle returned to ARM SCMI clients for usage.
  *
@@ -236,6 +259,7 @@ struct scmi_handle {
 	struct scmi_power_ops *power_ops;
 	struct scmi_sensor_ops *sensor_ops;
 	struct scmi_reset_ops *reset_ops;
+	struct scmi_notify_ops *notify_ops;
 	/* for protocol internal use */
 	void *perf_priv;
 	void *clk_priv;
@@ -319,3 +343,42 @@ static inline void scmi_driver_unregister(struct scmi_driver *driver) {}
 typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
 int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
 void scmi_protocol_unregister(int protocol_id);
+
+/*
+ * SCMI Notification User API
+ *
+ * A user can register/unregister its own notifier_block against the
+ * desired event identified by the tuple: (proto_id, evt_id, src_id)
+ *
+ * using the following
+ *  - scmi_register_event_notifier() / scmi_unregister_event_notifier()
+ *
+ * where:
+ *
+ * @proto_id: The protocol ID as in SCMI Specification
+ * @evt_id: The message ID of the desired event as in SCMI Specification
+ * @src_id: A pointer to the desired source ID if different sources are
+ *	    possible for the protocol (like domain_id, sensor_id...etc)
+ *
+ * @src_id can be provided as NULL if it simply does NOT make sense for
+ * the protocol at hand, OR if the user is explicitly interested in
+ * receiving notifications from ANY existent source associated to the
+ * specified proto_id / evt_id.
+ *
+ * Received notifications are finally delivered to the registered users,
+ * invoking the callback provided with the notifier_block *nb as follows:
+ *
+ *	int user_cb(nb, evt_id, report)
+ *
+ * where:
+ *
+ * @nb: The notifier block provided by the user
+ * @evt_id: The message ID of the delivered event
+ * @report: A custom struct describing the specific event delivered
+ */
+int scmi_register_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
+				 struct notifier_block *nb);
+int scmi_unregister_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
+				   struct notifier_block *nb);
+
+#endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
