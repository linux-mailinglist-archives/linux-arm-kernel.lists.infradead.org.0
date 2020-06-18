Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644081FFA32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EUs7q6M9kAGLGvFjLF7tdMLBkCSCW15sv2KU4sWrpis=; b=ORMB12JwmZUOSe4m3XJlyokYYa
	PKa2ufjp632ym9oRD3eMKT2vt0shJwLpQdunPASiY3NlHoSRCHQHgc1YWrpZmLwtHJdIDvUo3IJCf
	aCcaJ5KSS9wDrUoOvFkVdHes6oQBjqeyUZnVXuZ+WYQPaofqeVAY7Rci+YSwL6WJChWWTrOvr2axe
	pfVWPOjq2aMbrXmtzm2WwfqYx7ILka9awczRob08I3que00r3kryheLUTGlM9jDy/EH2N0KTEudJ7
	zLeR8iXZq7Xz1Yw25D+tx4ZMCqmVOiz0nU4lyqcXWgcQOF4KF67H8mtNLj0ykyAyAFU/NF70up/4r
	w/VtwUaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyKO-0004Qm-Dl; Thu, 18 Jun 2020 17:27:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyJm-0004Bk-AL
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:27:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5409D1396;
 Thu, 18 Jun 2020 10:27:13 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13F313F6CF;
 Thu, 18 Jun 2020 10:27:11 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v9 1/9] firmware: arm_scmi: Add notification
 protocol-registration
Date: Thu, 18 Jun 2020 18:26:24 +0100
Message-Id: <20200618172632.42842-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618172632.42842-1-cristian.marussi@arm.com>
References: <20200618172632.42842-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_102714_445944_52E7B022 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sudeep.holla@arm.com, lukasz.luba@arm.com, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com, dave.martin@arm.com, cristian.marussi@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add core SCMI Notifications protocol-registration support: allow protocols
to register their own set of supported events, during their initialization
phase. Notification core can track multiple platform instances by their
handles.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V8 --> V9
- shortened massive protocol_ struct naming
- fixed tabs
- reviewed macros to use bitfield.h
- fixed WARN_ON() usage
- switched to dev_dbg/info with proper dev_fmt
- added common define for protocol queue_sz
V7 --> V8
- Fixed init/enable procedure, un-needed atomics removed
V4 --> V5
- fixed kernel-doc
- added barriers for registered protocols and events
- using kfifo_alloc and devm_add_action_or_reset
V3 --> V4
- removed scratch ISR buffer, move scratch BH buffer into protocol
  descriptor
- converted registered_protocols and registered_events from hashtables
  into bare fixed-sized arrays
- removed unregister protocols' routines (never called really)
V2 --> V3
- added scmi_notify_instance to track target platform instance
V1 --> V2
- splitted out of V1 patch 04
- moved from IDR maps to real HashTables to store events
- scmi_notifications_initialized is now an atomic_t
- reviewed protocol registration/unregistration to use devres
- fixed:
  drivers/firmware/arm_scmi/notify.c:483:18-23: ERROR:
  	reference preceded by free on line 482

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/common.h |   4 +
 drivers/firmware/arm_scmi/notify.c | 439 +++++++++++++++++++++++++++++
 drivers/firmware/arm_scmi/notify.h |  57 ++++
 include/linux/scmi_protocol.h      |   3 +
 5 files changed, 504 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_scmi/notify.c
 create mode 100644 drivers/firmware/arm_scmi/notify.h

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 1cad32b38b29..11f1e07f603e 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o scmi-transport.o
 scmi-bus-y = bus.o
-scmi-driver-y = driver.o
+scmi-driver-y = driver.o notify.o
 scmi-transport-y = shmem.o
 scmi-transport-$(CONFIG_MAILBOX) += mailbox.o
 scmi-transport-$(CONFIG_ARM_PSCI_FW) += smc.o
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 31fe5a22a011..c113e578cc6c 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -6,6 +6,8 @@
  *
  * Copyright (C) 2018 ARM Ltd.
  */
+#ifndef _SCMI_COMMON_H
+#define _SCMI_COMMON_H
 
 #include <linux/bitfield.h>
 #include <linux/completion.h>
@@ -235,3 +237,5 @@ void shmem_fetch_notification(struct scmi_shared_mem __iomem *shmem,
 void shmem_clear_channel(struct scmi_shared_mem __iomem *shmem);
 bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
 		     struct scmi_xfer *xfer);
+
+#endif /* _SCMI_COMMON_H */
diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
new file mode 100644
index 000000000000..b0ba4da22343
--- /dev/null
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -0,0 +1,439 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Notification support
+ *
+ * Copyright (C) 2020 ARM Ltd.
+ */
+/**
+ * DOC: Theory of operation
+ *
+ * SCMI Protocol specification allows the platform to signal events to
+ * interested agents via notification messages: this is an implementation
+ * of the dispatch and delivery of such notifications to the interested users
+ * inside the Linux kernel.
+ *
+ * An SCMI Notification core instance is initialized for each active platform
+ * instance identified by the means of the usual &struct scmi_handle.
+ *
+ * Each SCMI Protocol implementation, during its initialization, registers with
+ * this core its set of supported events using scmi_register_protocol_events():
+ * all the needed descriptors are stored in the &struct registered_protocols and
+ * &struct registered_events arrays.
+ */
+
+#define dev_fmt(fmt) "SCMI Notifications - " fmt
+
+#include <linux/bitfield.h>
+#include <linux/bug.h>
+#include <linux/compiler.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/kfifo.h>
+#include <linux/mutex.h>
+#include <linux/refcount.h>
+#include <linux/scmi_protocol.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+#include "notify.h"
+
+#define SCMI_MAX_PROTO		256
+
+#define PROTO_ID_MASK		GENMASK(31, 24)
+#define EVT_ID_MASK		GENMASK(23, 16)
+#define SRC_ID_MASK		GENMASK(15, 0)
+
+/*
+ * Builds an unsigned 32bit key from the given input tuple to be used
+ * as a key in hashtables.
+ */
+#define MAKE_HASH_KEY(p, e, s)			\
+	(FIELD_PREP(PROTO_ID_MASK, (p)) |	\
+	   FIELD_PREP(EVT_ID_MASK, (e)) |	\
+	   FIELD_PREP(SRC_ID_MASK, (s)))
+
+#define MAKE_ALL_SRCS_KEY(p, e)			\
+	MAKE_HASH_KEY((p), (e), SRC_ID_MASK)
+
+struct scmi_registered_events_desc;
+
+/**
+ * struct scmi_notify_instance  - Represents an instance of the notification
+ * core
+ * @gid: GroupID used for devres
+ * @handle: A reference to the platform instance
+ * @registered_protocols: A statically allocated array containing pointers to
+ *			  all the registered protocol-level specific information
+ *			  related to events' handling
+ *
+ * Each platform instance, represented by a handle, has its own instance of
+ * the notification subsystem represented by this structure.
+ */
+struct scmi_notify_instance {
+	void					*gid;
+	struct scmi_handle			*handle;
+	struct scmi_registered_events_desc	**registered_protocols;
+};
+
+/**
+ * struct events_queue  - Describes a queue and its associated worker
+ * @sz: Size in bytes of the related kfifo
+ * @kfifo: A dedicated Kernel kfifo descriptor
+ *
+ * Each protocol has its own dedicated events_queue descriptor.
+ */
+struct events_queue {
+	size_t		sz;
+	struct kfifo	kfifo;
+};
+
+/**
+ * struct scmi_event_header  - A utility header
+ * @timestamp: The timestamp, in nanoseconds (boottime), which was associated
+ *	       to this event as soon as it entered the SCMI RX ISR
+ * @evt_id: Event ID (corresponds to the Event MsgID for this Protocol)
+ * @payld_sz: Effective size of the embedded message payload which follows
+ * @payld: A reference to the embedded event payload
+ *
+ * This header is prepended to each received event message payload before
+ * queueing it on the related &struct events_queue.
+ */
+struct scmi_event_header {
+	u64	timestamp;
+	u8	evt_id;
+	size_t	payld_sz;
+	u8	payld[];
+} __packed;
+
+struct scmi_registered_event;
+
+/**
+ * struct scmi_registered_events_desc  - Protocol Specific information
+ * @id: Protocol ID
+ * @ops: Protocol specific and event-related operations
+ * @equeue: The embedded per-protocol events_queue
+ * @ni: A reference to the initialized instance descriptor
+ * @eh: A reference to pre-allocated buffer to be used as a scratch area by the
+ *	deferred worker when fetching data from the kfifo
+ * @eh_sz: Size of the pre-allocated buffer @eh
+ * @in_flight: A reference to an in flight &struct scmi_registered_event
+ * @num_events: Number of events in @registered_events
+ * @registered_events: A dynamically allocated array holding all the registered
+ *		       events' descriptors, whose fixed-size is determined at
+ *		       compile time.
+ *
+ * All protocols that register at least one event have their protocol-specific
+ * information stored here, together with the embedded allocated events_queue.
+ * These descriptors are stored in the @registered_protocols array at protocol
+ * registration time.
+ *
+ * Once these descriptors are successfully registered, they are NEVER again
+ * removed or modified since protocols do not unregister ever, so that, once
+ * we safely grab a NON-NULL reference from the array we can keep it and use it.
+ */
+struct scmi_registered_events_desc {
+	u8				id;
+	const struct scmi_event_ops	*ops;
+	struct events_queue		equeue;
+	struct scmi_notify_instance	*ni;
+	struct scmi_event_header	*eh;
+	size_t				eh_sz;
+	void				*in_flight;
+	int				num_events;
+	struct scmi_registered_event	**registered_events;
+};
+
+/**
+ * struct scmi_registered_event  - Event Specific Information
+ * @proto: A reference to the associated protocol descriptor
+ * @evt: A reference to the associated event descriptor (as provided at
+ *       registration time)
+ * @report: A pre-allocated buffer used by the deferred worker to fill a
+ *	    customized event report
+ * @num_sources: The number of possible sources for this event as stated at
+ *		 events' registration time
+ * @sources: A reference to a dynamically allocated array used to refcount the
+ *	     events' enable requests for all the existing sources
+ * @sources_mtx: A mutex to serialize the access to @sources
+ *
+ * All registered events are represented by one of these structures that are
+ * stored in the @registered_events array at protocol registration time.
+ *
+ * Once these descriptors are successfully registered, they are NEVER again
+ * removed or modified since protocols do not unregister ever, so that once we
+ * safely grab a NON-NULL reference from the table we can keep it and use it.
+ */
+struct scmi_registered_event {
+	struct scmi_registered_events_desc	*proto;
+	const struct scmi_event			*evt;
+	void					*report;
+	u32					num_sources;
+	refcount_t				*sources;
+	struct mutex				sources_mtx;
+};
+
+/**
+ * scmi_kfifo_free()  - Devres action helper to free the kfifo
+ * @kfifo: The kfifo to free
+ */
+static void scmi_kfifo_free(void *kfifo)
+{
+	kfifo_free((struct kfifo *)kfifo);
+}
+
+/**
+ * scmi_initialize_events_queue()  - Allocate/Initialize a kfifo buffer
+ * @ni: A reference to the notification instance to use
+ * @equeue: The events_queue to initialize
+ * @sz: Size of the kfifo buffer to allocate
+ *
+ * Allocate a buffer for the kfifo and initialize it.
+ *
+ * Return: 0 on Success
+ */
+static int scmi_initialize_events_queue(struct scmi_notify_instance *ni,
+					struct events_queue *equeue, size_t sz)
+{
+	if (kfifo_alloc(&equeue->kfifo, sz, GFP_KERNEL))
+		return -ENOMEM;
+	/* Size could have been roundup to power-of-two */
+	equeue->sz = kfifo_size(&equeue->kfifo);
+
+	return devm_add_action_or_reset(ni->handle->dev, scmi_kfifo_free,
+					&equeue->kfifo);
+}
+
+/**
+ * scmi_allocate_registered_events_desc()  - Allocate a registered events'
+ * descriptor
+ * @ni: A reference to the &struct scmi_notify_instance notification instance
+ *	to use
+ * @proto_id: Protocol ID
+ * @queue_sz: Size of the associated queue to allocate
+ * @eh_sz: Size of the event header scratch area to pre-allocate
+ * @num_events: Number of events to support (size of @registered_events)
+ * @ops: Pointer to a struct holding references to protocol specific helpers
+ *	 needed during events handling
+ *
+ * It is supposed to be called only once for each protocol at protocol
+ * initialization time, so it warns if the requested protocol is found already
+ * registered.
+ *
+ * Return: The allocated and registered descriptor on Success
+ */
+static struct scmi_registered_events_desc *
+scmi_allocate_registered_events_desc(struct scmi_notify_instance *ni,
+				     u8 proto_id, size_t queue_sz, size_t eh_sz,
+				     int num_events,
+				     const struct scmi_event_ops *ops)
+{
+	int ret;
+	struct scmi_registered_events_desc *pd;
+
+	/* Ensure protocols are up to date */
+	smp_rmb();
+	if (WARN_ON(ni->registered_protocols[proto_id]))
+		return ERR_PTR(-EINVAL);
+
+	pd = devm_kzalloc(ni->handle->dev, sizeof(*pd), GFP_KERNEL);
+	if (!pd)
+		return ERR_PTR(-ENOMEM);
+	pd->id = proto_id;
+	pd->ops = ops;
+	pd->ni = ni;
+
+	ret = scmi_initialize_events_queue(ni, &pd->equeue, queue_sz);
+	if (ret)
+		return ERR_PTR(ret);
+
+	pd->eh = devm_kzalloc(ni->handle->dev, eh_sz, GFP_KERNEL);
+	if (!pd->eh)
+		return ERR_PTR(-ENOMEM);
+	pd->eh_sz = eh_sz;
+
+	pd->registered_events = devm_kcalloc(ni->handle->dev, num_events,
+					     sizeof(char *), GFP_KERNEL);
+	if (!pd->registered_events)
+		return ERR_PTR(-ENOMEM);
+	pd->num_events = num_events;
+
+	return pd;
+}
+
+/**
+ * scmi_register_protocol_events()  - Register Protocol Events with the core
+ * @handle: The handle identifying the platform instance against which the
+ *	    the protocol's events are registered
+ * @proto_id: Protocol ID
+ * @queue_sz: Size in bytes of the associated queue to be allocated
+ * @ops: Protocol specific event-related operations
+ * @evt: Event descriptor array
+ * @num_events: Number of events in @evt array
+ * @num_sources: Number of possible sources for this protocol on this
+ *		 platform.
+ *
+ * Used by SCMI Protocols initialization code to register with the notification
+ * core the list of supported events and their descriptors: takes care to
+ * pre-allocate and store all needed descriptors, scratch buffers and event
+ * queues.
+ *
+ * Return: 0 on Success
+ */
+int scmi_register_protocol_events(const struct scmi_handle *handle,
+				  u8 proto_id, size_t queue_sz,
+				  const struct scmi_event_ops *ops,
+				  const struct scmi_event *evt, int num_events,
+				  int num_sources)
+{
+	int i;
+	size_t payld_sz = 0;
+	struct scmi_registered_events_desc *pd;
+	struct scmi_notify_instance *ni;
+
+	if (!ops || !evt || proto_id >= SCMI_MAX_PROTO)
+		return -EINVAL;
+
+	/* Ensure notify_priv is updated */
+	smp_rmb();
+	if (unlikely(!handle->notify_priv))
+		return -ENOMEM;
+	ni = handle->notify_priv;
+
+	/* Attach to the notification main devres group */
+	if (!devres_open_group(ni->handle->dev, ni->gid, GFP_KERNEL))
+		return -ENOMEM;
+
+	for (i = 0; i < num_events; i++)
+		payld_sz = max_t(size_t, payld_sz, evt[i].max_payld_sz);
+	pd = scmi_allocate_registered_events_desc(ni, proto_id, queue_sz,
+				    sizeof(struct scmi_event_header) + payld_sz,
+						    num_events, ops);
+	if (IS_ERR(pd))
+		goto err;
+
+	for (i = 0; i < num_events; i++, evt++) {
+		struct scmi_registered_event *r_evt;
+
+		r_evt = devm_kzalloc(ni->handle->dev, sizeof(*r_evt),
+				     GFP_KERNEL);
+		if (!r_evt)
+			goto err;
+		r_evt->proto = pd;
+		r_evt->evt = evt;
+
+		r_evt->sources = devm_kcalloc(ni->handle->dev, num_sources,
+					      sizeof(refcount_t), GFP_KERNEL);
+		if (!r_evt->sources)
+			goto err;
+		r_evt->num_sources = num_sources;
+		mutex_init(&r_evt->sources_mtx);
+
+		r_evt->report = devm_kzalloc(ni->handle->dev,
+					     evt->max_report_sz, GFP_KERNEL);
+		if (!r_evt->report)
+			goto err;
+
+		pd->registered_events[i] = r_evt;
+		/* Ensure events are updated */
+		smp_wmb();
+		dev_dbg(handle->dev, "registered event - %lX\n",
+			MAKE_ALL_SRCS_KEY(r_evt->proto->id, r_evt->evt->id));
+	}
+
+	/* Register protocol and events...it will never be removed */
+	ni->registered_protocols[proto_id] = pd;
+	/* Ensure protocols are updated */
+	smp_wmb();
+
+	devres_close_group(ni->handle->dev, ni->gid);
+
+	return 0;
+
+err:
+	dev_warn(handle->dev, "Proto:%X - Registration Failed !\n", proto_id);
+	/* A failing protocol registration does not trigger full failure */
+	devres_close_group(ni->handle->dev, ni->gid);
+
+	return -ENOMEM;
+}
+
+/**
+ * scmi_notification_init()  - Initializes Notification Core Support
+ * @handle: The handle identifying the platform instance to initialize
+ *
+ * This function lays out all the basic resources needed by the notification
+ * core instance identified by the provided handle: once done, all of the
+ * SCMI Protocols can register their events with the core during their own
+ * initializations.
+ *
+ * Note that failing to initialize the core notifications support does not
+ * cause the whole SCMI Protocols stack to fail its initialization.
+ *
+ * SCMI Notification Initialization happens in 2 steps:
+ * * initialization: basic common allocations (this function)
+ * * registration: protocols asynchronously come into life and registers their
+ *		   own supported list of events with the core; this causes
+ *		   further per-protocol allocations
+ *
+ * Any user's callback registration attempt, referring a still not registered
+ * event, will be registered as pending and finalized later (if possible)
+ * by scmi_protocols_late_init() work.
+ * This allows for lazy initialization of SCMI Protocols due to late (or
+ * missing) SCMI drivers' modules loading.
+ *
+ * Return: 0 on Success
+ */
+int scmi_notification_init(struct scmi_handle *handle)
+{
+	void *gid;
+	struct scmi_notify_instance *ni;
+
+	gid = devres_open_group(handle->dev, NULL, GFP_KERNEL);
+	if (!gid)
+		return -ENOMEM;
+
+	ni = devm_kzalloc(handle->dev, sizeof(*ni), GFP_KERNEL);
+	if (!ni)
+		goto err;
+
+	ni->gid = gid;
+	ni->handle = handle;
+
+	ni->registered_protocols = devm_kcalloc(handle->dev, SCMI_MAX_PROTO,
+						sizeof(char *), GFP_KERNEL);
+	if (!ni->registered_protocols)
+		goto err;
+
+	handle->notify_priv = ni;
+	/* Ensure handle is up to date */
+	smp_wmb();
+
+	dev_info(handle->dev, "Core Enabled.\n");
+
+	devres_close_group(handle->dev, ni->gid);
+
+	return 0;
+
+err:
+	dev_warn(handle->dev, "Initialization Failed.\n");
+	devres_release_group(handle->dev, NULL);
+	return -ENOMEM;
+}
+
+/**
+ * scmi_notification_exit()  - Shutdown and clean Notification core
+ * @handle: The handle identifying the platform instance to shutdown
+ */
+void scmi_notification_exit(struct scmi_handle *handle)
+{
+	struct scmi_notify_instance *ni;
+
+	/* Ensure notify_priv is updated */
+	smp_rmb();
+	if (unlikely(!handle->notify_priv))
+		return;
+	ni = handle->notify_priv;
+
+	devres_release_group(ni->handle->dev, ni->gid);
+}
diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
new file mode 100644
index 000000000000..4c2416404b0b
--- /dev/null
+++ b/drivers/firmware/arm_scmi/notify.h
@@ -0,0 +1,57 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * System Control and Management Interface (SCMI) Message Protocol
+ * notification header file containing some definitions, structures
+ * and function prototypes related to SCMI Notification handling.
+ *
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef _SCMI_NOTIFY_H
+#define _SCMI_NOTIFY_H
+
+#include <linux/device.h>
+#include <linux/types.h>
+
+#define SCMI_PROTO_QUEUE_SZ	4096
+
+/**
+ * struct scmi_event  - Describes an event to be supported
+ * @id: Event ID
+ * @max_payld_sz: Max possible size for the payload of a notification message
+ * @max_report_sz: Max possible size for the report of a notification message
+ *
+ * Each SCMI protocol, during its initialization phase, can describe the events
+ * it wishes to support in a few struct scmi_event and pass them to the core
+ * using scmi_register_protocol_events().
+ */
+struct scmi_event {
+	u8	id;
+	size_t	max_payld_sz;
+	size_t	max_report_sz;
+};
+
+/**
+ * struct scmi_event_ops  - Protocol helpers called by the notification core.
+ * @set_notify_enabled: Enable/disable the required evt_id/src_id notifications
+ *			using the proper custom protocol commands.
+ *			Return true if at least one the required src_id
+ *			has been successfully enabled/disabled
+ *
+ * Context: Helpers described in &struct scmi_event_ops are called only in
+ *	    process context.
+ */
+struct scmi_event_ops {
+	bool (*set_notify_enabled)(const struct scmi_handle *handle,
+				   u8 evt_id, u32 src_id, bool enabled);
+};
+
+int scmi_notification_init(struct scmi_handle *handle);
+void scmi_notification_exit(struct scmi_handle *handle);
+
+int scmi_register_protocol_events(const struct scmi_handle *handle,
+				  u8 proto_id, size_t queue_sz,
+				  const struct scmi_event_ops *ops,
+				  const struct scmi_event *evt, int num_events,
+				  int num_sources);
+
+#endif /* _SCMI_NOTIFY_H */
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index ce2f5c28b2df..0679f10ab05e 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -231,6 +231,8 @@ struct scmi_reset_ops {
  *	protocol(for internal use only)
  * @reset_priv: pointer to private data structure specific to reset
  *	protocol(for internal use only)
+ * @notify_priv: pointer to private data structure specific to notifications
+ *	(for internal use only)
  */
 struct scmi_handle {
 	struct device *dev;
@@ -246,6 +248,7 @@ struct scmi_handle {
 	void *power_priv;
 	void *sensor_priv;
 	void *reset_priv;
+	void *notify_priv;
 };
 
 enum scmi_std_protocol {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
