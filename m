Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE6A16A8B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QX1XDvdsOfhIlvL9bGP/b0CBdDZRd3RPUW7GV75Au3Y=; b=TDPNRPHwnt805V5zxHb4H0nvdN
	nTeQ8CAhDot7a0QcYaRZPrzKneqdil41PEYXTzeDqdb4UF620+PSkmZIP1XhNc3iIvV4e1nQQz5yb
	2saLpiHgSJwbT1m38xurZKZPom3wYr0+F6stXtWEPFmSMTza0UQbDlekVu6//MC28ab4+gK0vzt9W
	qVlBF79//8x9c6dmak/+1hgc2AIzIkBuWvhzkEcGe0B7D7QBhT3CEwCj1biKYt95GL0XW4y2cvOz5
	60zDZjBECf+2mfMmNawjdoTsblaldNyhOiznzjU35E0RhnI+Je2sDw1cFTESmP+BRhJE0FhJKEvGe
	+hv5WqjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Exu-0004WM-4H; Mon, 24 Feb 2020 14:44:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Ew2-000384-3P
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:42:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA25030E;
 Mon, 24 Feb 2020 06:42:13 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0B8C3F534;
 Mon, 24 Feb 2020 06:42:12 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v3 06/13] firmware: arm_scmi: Add notification
 callbacks-registration
Date: Mon, 24 Feb 2020 14:41:17 +0000
Message-Id: <20200224144124.2008-7-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224144124.2008-1-cristian.marussi@arm.com>
References: <20200224144124.2008-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_064214_451023_EBFFC0A6 
X-CRM114-Status: GOOD (  25.46  )
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
V2 --> V3
- refactored get/put event_handler
- removed generic non-handle-based API
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
 drivers/firmware/arm_scmi/notify.c | 525 ++++++++++++++++++++++++++++-
 drivers/firmware/arm_scmi/notify.h |  13 +
 include/linux/scmi_protocol.h      |  50 +++
 3 files changed, 586 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
index f032c4e9fd89..5f95602ec13c 100644
--- a/drivers/firmware/arm_scmi/notify.c
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -16,11 +16,39 @@
  * this core its set of supported events using @scmi_register_protocol_events():
  * all the needed descriptors are stored in the @registered_protocols and
  * @registered_events hashtables.
+ *
+ * Kernel users interested in some specific event can register their callbacks
+ * providing the usual notifier_block descriptor, since this core implements
+ * events' delivery using the standard Kernel notification chains machinery.
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
+ * All users provided callbacks and allocated notification-chains are instead
+ * stored in the @registered_events_handlers hashtable.
+ *
+ * An event is identified univocally by the tuple (proto_id, evt_id, src_id)
+ * and is served by its own dedicated notification chain; information contained
+ * in such tuples is used, in a few different ways, to generate the needed
+ * hash-keys.
+ *
+ * Here proto_id and evt_id are simply the protocol_id and message_id numbers
+ * as described in the SCMI Protocol specification, while src_id represents an
+ * optional, protocol dependent, source identifier (like domain_id, perf_id
+ * or sensor_id and so forth).
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/atomic.h>
+#include <linux/bitfield.h>
+#include <linux/bug.h>
 #include <linux/device.h>
 #include <linux/err.h>
 #include <linux/hashtable.h>
@@ -28,11 +56,11 @@
 #include <linux/kfifo.h>
 #include <linux/list.h>
 #include <linux/mutex.h>
+#include <linux/notifier.h>
 #include <linux/refcount.h>
 #include <linux/scmi_protocol.h>
 #include <linux/slab.h>
 #include <linux/types.h>
-#include <linux/workqueue.h>
 
 #include "notify.h"
 
@@ -69,6 +97,17 @@
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
+	((revt)->proto->ops->set_notify_enabled((revt)->proto->ni->handle,     \
+						__VA_ARGS__))
 /**
  * scmi_notify_instance  - Represents an instance of the notification core
  *
@@ -81,11 +120,15 @@
  *		 and protocols are allowed to register their supported events
  * @disabled: A flag to indicate when event's handlers registration phase has
  *	      completed and events can be enabled and start flowing
+ * @events_handlers_mtx: A mutex to protect @registered_events_handlers access
  * @registered_protocols: An hashtable containing all protocol-level specific
  *			  information related to events' handling
  * @registered_events: An hashtable containing all events' descriptors
  *		       registered by the protocols, together with their
  *		       ancillary data
+ * @registered_events_handlers: An hashtable containing all events' handlers
+ *				descriptors, created to collect all the users'
+ *				notifier_block callbacks and related chains
  */
 struct scmi_notify_instance {
 	void				*gid;
@@ -93,8 +136,10 @@ struct scmi_notify_instance {
 	atomic_t			initialized;
 	atomic_t			disabled;
 
+	struct mutex			events_handlers_mtx;
 	DECLARE_HASHTABLE(registered_protocols, 4);
 	DECLARE_HASHTABLE(registered_events, 5);
+	DECLARE_HASHTABLE(registered_events_handlers, 8);
 };
 
 /**
@@ -172,6 +217,34 @@ struct scmi_registered_event {
 	struct mutex					sources_mtx;
 };
 
+/**
+ * scmi_event_handler  - Event handler information
+ *
+ * This structure collects all the information needed to process a received
+ * event identified by the tuple (proto_id, evt_id, src_id) invoking all the
+ * currently registered users' callbacks.
+ * These descriptors are stored in the @registered_events_handlers table using
+ * as a key a value derived from that tuple.
+ *
+ * @key: The used hashkey
+ * @users: A reference count for number of active users for this handler
+ * @r_evt: A reference to the associated registered event
+ * @chain: The notification chain dedicated to this specific event tuple
+ * @hash: The hlist_node used for collision handling
+ * @deferred_enable: A flag to defer the enabling of events
+ * @enabled: A boolean which records if event's generation has been already
+ *	     enabled for this handler as a whole
+ */
+struct scmi_event_handler {
+	u32				key;
+	refcount_t			users;
+	struct scmi_registered_event	*r_evt;
+	struct blocking_notifier_head	chain;
+	struct hlist_node		hash;
+	bool				deferred_enable;
+	bool				enabled;
+};
+
 /**
  * scmi_event_header  - A utility header
  *
@@ -194,10 +267,16 @@ struct scmi_event_header {
 	u8	payld[];
 } __packed;
 
+static struct scmi_event_handler *
+scmi_get_event_handler(struct scmi_notify_instance *ni, u32 evt_key);
+static void scmi_put_event_handler(struct scmi_event_handler *hndl);
+static void scmi_free_event_handler(struct scmi_event_handler *hndl);
+
 /**
  * scmi_initialize_events_queue  - Allocate/Initialize a kfifo buffer
  *
- * Allocate a buffer for the kfifo and initialize it.
+ * Allocate a buffer for the kfifo and initialize it together with the
+ * associated work item.
  *
  * @ni: A reference to the notification instance to use
  * @equeue: The events_queue to initialize
@@ -396,6 +475,25 @@ int scmi_unregister_protocol_events(const struct scmi_handle *handle,
 	if (unlikely(!pd))
 		return 0;
 
+	mutex_lock(&ni->events_handlers_mtx);
+	if (!hash_empty(ni->registered_events_handlers)) {
+		struct scmi_event_handler *hndl;
+
+		/*
+		 * We should get here only after all users have unregistered
+		 * their handlers using the API, if it's not the case clean up.
+		 */
+		hash_for_each(ni->registered_events_handlers, bkt, hndl, hash) {
+			if (hndl->r_evt->proto == pd) {
+				WARN_ONCE(1,
+					  "SCMI Notifications: active users at exit protocol:%X\n",
+					  pd->id);
+				scmi_free_event_handler(hndl);
+			}
+		}
+	}
+	mutex_unlock(&ni->events_handlers_mtx);
+
 	/*
 	 * Remove all registered events for this protocol and the
 	 * protocol descriptor itself.
@@ -409,6 +507,426 @@ int scmi_unregister_protocol_events(const struct scmi_handle *handle,
 	return devres_release_group(ni->handle->dev, pd->gid);
 }
 
+/**
+ * scmi_allocate_event_handler  - Allocate Event handler
+ *
+ * Allocate an event handler and related notification chain associated with
+ * the provided event handler key.
+ * Note that, at this point, a related registered_event is still to be
+ * associated to this handler descriptor (hndl->r_evt == NULL)
+ *
+ * @ni: A reference to the notification instance to use
+ * @evt_key: 32bit key uniquely bind to the event identified by the tuple
+ *	     (proto_id, evt_id, src_id)
+ *
+ * Return: the freshly allocated structure on Success
+ */
+static struct scmi_event_handler *
+scmi_allocate_event_handler(struct scmi_notify_instance *ni, u32 evt_key)
+{
+	struct scmi_event_handler *hndl;
+
+	hndl = kzalloc(sizeof(*hndl), GFP_KERNEL);
+	if (!hndl)
+		return ERR_PTR(-ENOMEM);
+	hndl->key = evt_key;
+	BLOCKING_INIT_NOTIFIER_HEAD(&hndl->chain);
+	refcount_set(&hndl->users, 1);
+
+	return hndl;
+}
+
+/**
+ * scmi_bind_event_handler  - Bind an handler to the associated registered
+ * event
+ *
+ * Search for the related registered_event to bind; if no registered event could
+ * be found and @allow_delayed is true, just carry on: binding will be retried
+ * again later once protocols' registration has completed.
+ *
+ * @ni: A reference to the notification instance to use
+ * @hndl: The event handler to bind
+ * @allow_delayed: A boolean to indicate if registration can be deferred to the
+ *		   @init_work worker in case no existent registered_event could
+ *		   be found for this hndl->key.
+ *
+ * Return: 0 on Success
+ */
+static int scmi_bind_event_handler(struct scmi_notify_instance *ni,
+				   struct scmi_event_handler *hndl,
+				   bool allow_delayed)
+{
+	u8 proto_id, evt_id;
+	struct scmi_registered_event *r_evt;
+
+	proto_id = KEY_XTRACT_PROTO_ID(hndl->key);
+	evt_id = KEY_XTRACT_EVT_ID(hndl->key);
+	r_evt = KEY_FIND(ni->registered_events, r_evt,
+			 MAKE_REVT_KEY(proto_id, evt_id));
+
+	if (!r_evt && !allow_delayed)
+		return -EINVAL;
+
+	if (likely(r_evt))
+		hndl->r_evt = r_evt;
+	/* Delay enabling events anyway if allowing delayed binding */
+	hndl->deferred_enable = allow_delayed;
+
+	return 0;
+}
+
+/**
+ * scmi_register_event_handler  - Register whenever possible an Event handler
+ *
+ * This routine tries to bind an event handler to its associated event and, on
+ * a successful binding, registers the handler amongst
+ * @registered_events_handlers.
+ *
+ * It can happen that NO such related registered event could be found: this can
+ * be caused not only by errors (due to registrations attempts made with wrong
+ * proto_id/evt_id tuple values), but also simply because the related event has
+ * still not been registered since initialization was still in progress when a
+ * user requested this handler registration.
+ * Pending incomplete bindings will be retried later by a dedicated worker once
+ * the initialization has completed for all protocols.
+ *
+ * @ni: A reference to the notification instance to use
+ * @hndl: The event handler to register
+ * @allow_delayed: A boolean to indicate if registration can be deferred to the
+ *		   @init_work worker in case no existent registered_event could
+ *		   be found for this hndl->key.
+ *
+ * Return: 0 on Success
+ */
+static int scmi_register_event_handler(struct scmi_notify_instance *ni,
+				       struct scmi_event_handler *hndl,
+				       bool allow_delayed)
+{
+	int ret = 0;
+
+	ret = scmi_bind_event_handler(ni, hndl, allow_delayed);
+	if (ret)
+		return ret;
+
+	/* Register freshly allocated event handler */
+	hash_add(ni->registered_events_handlers, &hndl->hash, hndl->key);
+
+	return 0;
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
+ *  - if not found and @create is true, create and register the new handler:
+ *    registration can be @allow_delayed if core is still disabled, since not
+ *    all protocols have completed registration.
+ *
+ * Events generation is NOT enabled on create within this routine since at
+ * creation time we usually want to have all setup and registered before events
+ * really start flowing.
+ *
+ * @ni: A reference to the notification instance to use
+ * @evt_key: The event key to use
+ * @create: A boolean flag to specify if a handler must be created when
+ *	    not already existent
+ *
+ * Return: the freshly allocated structure on Success
+ */
+static inline struct scmi_event_handler *
+__scmi_event_handler_get_ops(struct scmi_notify_instance *ni,
+			     u32 evt_key, bool create)
+{
+	bool allow_delayed;
+	struct scmi_event_handler *hndl = NULL;
+
+	mutex_lock(&ni->events_handlers_mtx);
+
+	/* Ensure atomic value is updated */
+	smp_mb__before_atomic();
+	allow_delayed = atomic_read(&ni->disabled);
+
+	hndl = KEY_FIND(ni->registered_events_handlers, hndl, evt_key);
+	if (likely(hndl)) {
+		refcount_inc(&hndl->users);
+	} else if (create) {
+		hndl = scmi_allocate_event_handler(ni, evt_key);
+		if (!IS_ERR_OR_NULL(hndl)) {
+			int ret;
+
+			ret = scmi_register_event_handler(ni, hndl,
+							  allow_delayed);
+			if (ret) {
+				scmi_free_event_handler(hndl);
+				hndl = ERR_PTR(ret);
+			}
+		}
+	}
+	mutex_unlock(&ni->events_handlers_mtx);
+
+	return hndl;
+}
+
+static struct scmi_event_handler *
+scmi_get_event_handler(struct scmi_notify_instance *ni, u32 evt_key)
+{
+	return __scmi_event_handler_get_ops(ni, evt_key, false);
+}
+
+static struct scmi_event_handler *
+scmi_get_or_create_event_handler(struct scmi_notify_instance *ni, u32 evt_key)
+{
+	return __scmi_event_handler_get_ops(ni, evt_key, true);
+}
+
+/**
+ * __scmi_enable_evt  - Enable/disable events generation
+ *
+ * Takes care of proper refcounting while performing enable/disable:
+ * handles the special case of ALL sources requests by itself.
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
+/**
+ * scmi_put_event_handler  - Put an event handler
+ *
+ * After having got exclusive access to the registered events hashtable, update
+ * the refcount and if @hndl is no more in use by anyone:
+ *
+ *  - ask for events' generation disabling
+ *  - unregister and free the handler itself
+ *
+ * @hndl: The event handler to act upon
+ */
+static void scmi_put_event_handler(struct scmi_event_handler *hndl)
+{
+	mutex_lock(&((hndl)->r_evt->proto->ni->events_handlers_mtx));
+	if (refcount_dec_and_test(&hndl->users)) {
+		scmi_disable_events(hndl);
+		scmi_free_event_handler(hndl);
+	}
+	mutex_unlock(&((hndl)->r_evt->proto->ni->events_handlers_mtx));
+}
+
+/**
+ * scmi_event_handler_enable_events  - Enable events associated to an handler
+ *
+ * @hndl: The Event handler to act upon
+ *
+ * Return: 0 on success
+ */
+static int scmi_event_handler_enable_events(struct scmi_event_handler *hndl)
+{
+	if (!scmi_enable_events(hndl)) {
+		pr_err("SCMI Notifications: Failed to ENABLE events for key:%X !\n",
+		       hndl->key);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * scmi_register_notifier  - Register a notifier_block for an event
+ *
+ * Generic helper to register a notifier_block against a protocol event.
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
+ * the protocol does not support distinct sources.
+ *
+ * As soon as one user for the specified tuple appears, an handler is created,
+ * and that specific event's generation is enabled at the platform level, unless
+ * @deferred_enabled is found true, meaning that the core is still initializing
+ * and the just registered handler is still pending: we do not want to enable
+ * event's generation for pending handlers since they will be discarded.
+ *
+ * @handle: The handle identifying the platform instance against which the
+ *	    callback is registered
+ * @proto_id: Protocol ID
+ * @evt_id: Event ID
+ * @src_id: Source ID, when NULL register for events coming form ALL possible
+ *	    sources
+ * @nb: A standard notifier block to register for the specified event
+ *
+ * Return: Return 0 on Success
+ */
+static int scmi_register_notifier(const struct scmi_handle *handle,
+				  u8 proto_id, u8 evt_id, u32 *src_id,
+				  struct notifier_block *nb)
+{
+	int ret = 0;
+	u32 evt_key;
+	struct scmi_event_handler *hndl;
+	struct scmi_notify_instance *ni = handle->notify_priv;
+
+	evt_key = MAKE_HASH_KEY(proto_id, evt_id,
+				src_id ? *src_id : SCMI_ALL_SRC_IDS);
+	hndl = scmi_get_or_create_event_handler(ni, evt_key);
+	if (IS_ERR_OR_NULL(hndl))
+		return PTR_ERR(hndl);
+
+	blocking_notifier_chain_register(&hndl->chain, nb);
+	/*
+	 * Ask platform to enable events': effective requests are emitted
+	 * only when required by the current state of the underlying sources.
+	 */
+	if (!hndl->deferred_enable) {
+		ret = scmi_event_handler_enable_events(hndl);
+		if (ret)
+			scmi_put_event_handler(hndl);
+	}
+
+	return ret;
+}
+
+/**
+ * scmi_unregister_notifier  - Unregister a notifier_block for an event
+ *
+ * Takes care to unregister the provided @nb from the notification chain
+ * associated to the specified event and, if there are no more users for the
+ * event handler, frees also the associated event handler structures.
+ *
+ * @handle: The handle identifying the platform instance against which the
+ *	    callback is unregistered
+ * @proto_id: Protocol ID
+ * @evt_id: Event ID
+ * @src_id: Source ID
+ * @nb: The notifier_block to unregister
+ *
+ * Return: 0 on Success
+ */
+static int scmi_unregister_notifier(const struct scmi_handle *handle,
+				    u8 proto_id, u8 evt_id, u32 *src_id,
+				    struct notifier_block *nb)
+{
+	u32 evt_key;
+	struct scmi_event_handler *hndl;
+	struct scmi_notify_instance *ni = handle->notify_priv;
+
+	evt_key = MAKE_HASH_KEY(proto_id, evt_id,
+				src_id ? *src_id : SCMI_ALL_SRC_IDS);
+	hndl = scmi_get_event_handler(ni, evt_key);
+	if (IS_ERR_OR_NULL(hndl))
+		return -EINVAL;
+
+	blocking_notifier_chain_unregister(&hndl->chain, nb);
+	scmi_put_event_handler(hndl);
+
+	/*
+	 * If this was the last user callback for this handler, this last
+	 * additional put will cause the handler to be freed; moreover if this
+	 * was the last user, but @scmi_lookup_and_call_event_chain was ongoing,
+	 * walking this chain, it will be its @scmi_put_event_handler which will
+	 * finally free the handler.
+	 */
+	scmi_put_event_handler(hndl);
+
+	return 0;
+}
+
+/*
+ * notify_ops are attached to the handle so that can be accessed
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
@@ -461,8 +979,11 @@ int scmi_notification_init(struct scmi_handle *handle)
 
 	hash_init(ni->registered_protocols);
 	hash_init(ni->registered_events);
+	hash_init(ni->registered_events_handlers);
+	mutex_init(&ni->events_handlers_mtx);
 
 	handle->notify_priv = ni;
+	handle->notify_ops = &notify_ops;
 
 	atomic_set(&ni->disabled, 1);
 	atomic_set(&ni->initialized, 1);
diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
index 8de19a3b75ab..93f7a2503b45 100644
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
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 0679f10ab05e..797e1e03ae52 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -9,6 +9,8 @@
 #define _LINUX_SCMI_PROTOCOL_H
 
 #include <linux/device.h>
+#include <linux/ktime.h>
+#include <linux/notifier.h>
 #include <linux/types.h>
 
 #define SCMI_MAX_STR_SIZE	16
@@ -211,6 +213,52 @@ struct scmi_reset_ops {
 	int (*deassert)(const struct scmi_handle *handle, u32 domain);
 };
 
+/**
+ * scmi_notify_ops  - represents notifications' operations provided by SCMI core
+ *
+ * A user can register/unregister its own notifier_block against the wanted
+ * platform instance regarding the desired event identified by the
+ * tuple: (proto_id, evt_id, src_id)
+ *
+ * @register_event_notifier: Register a notifier_block for the requested event
+ * @unregister_event_notifier: Unregister a notifier_block for the requested
+ *			       event
+ *
+ * where:
+ *
+ * @handle: The handle identifying the platform instance to use
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
+ * with:
+ *
+ * @nb: The notifier block provided by the user
+ * @evt_id: The message ID of the delivered event
+ * @report: A custom struct describing the specific event delivered
+ *
+ * Events' customized report structs are detailed in the following.
+ */
+struct scmi_notify_ops {
+	int (*register_event_notifier)(const struct scmi_handle *handle,
+				       u8 proto_id, u8 evt_id, u32 *src_id,
+				       struct notifier_block *nb);
+	int (*unregister_event_notifier)(const struct scmi_handle *handle,
+					 u8 proto_id, u8 evt_id, u32 *src_id,
+					 struct notifier_block *nb);
+};
+
 /**
  * struct scmi_handle - Handle returned to ARM SCMI clients for usage.
  *
@@ -221,6 +269,7 @@ struct scmi_reset_ops {
  * @clk_ops: pointer to set of clock protocol operations
  * @sensor_ops: pointer to set of sensor protocol operations
  * @reset_ops: pointer to set of reset protocol operations
+ * @notify_ops: pointer to set of notifications related operations
  * @perf_priv: pointer to private data structure specific to performance
  *	protocol(for internal use only)
  * @clk_priv: pointer to private data structure specific to clock
@@ -242,6 +291,7 @@ struct scmi_handle {
 	struct scmi_power_ops *power_ops;
 	struct scmi_sensor_ops *sensor_ops;
 	struct scmi_reset_ops *reset_ops;
+	struct scmi_notify_ops *notify_ops;
 	/* for protocol internal use */
 	void *perf_priv;
 	void *clk_priv;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
