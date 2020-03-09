Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA8E17DEC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGYGGcuNdO+/WIPHO6C/vplBtYVnv2v4LtcHzSPsheI=; b=kABE/0lrE0WGtX
	RQb5fg+jFW3T/l1HEo+j2tTJ2eQAxkcHqn7KeLjYABmisie/xb+u9Ks20DdZyG/rvw7vE2YUGgqUN
	wPT27psRZIGAtKfk76Jzld9P4WLCHZfkObWRTcSuNNjsqoUNwhmABLzpIATfyCRFpSCWv0HjGJm4J
	7cCqndvDhiGvFC9QF8IKtJNgwnlKmZALeJqIHkzV9/1HJ0E8J22Cc36hQ3WAlZmmljxCybxbuR4M1
	LKrPKBTcV87Gj/I8a9Mi9PqFOHnmOyHbOTjBBppKYeVV0eY3/KBERvGU35nusOWe1VLV6fg4SLNB/
	GkWU6NjXmKRzbvnQYGqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGfK-0005yP-Qz; Mon, 09 Mar 2020 11:33:46 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGf9-0005xO-Bj
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:33:38 +0000
Received: from LHREML714-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 9ED78656F0983B34BB11;
 Mon,  9 Mar 2020 11:33:28 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 LHREML714-CAH.china.huawei.com (10.201.108.37) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 9 Mar 2020 11:33:28 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 9 Mar 2020
 11:33:27 +0000
Date: Mon, 9 Mar 2020 11:33:25 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v4 05/13] firmware: arm_scmi: Add notification
 protocol-registration
Message-ID: <20200309113325.0000108c@Huawei.com>
In-Reply-To: <20200304162558.48836-6-cristian.marussi@arm.com>
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-6-cristian.marussi@arm.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_043335_704061_0BA2A70B 
X-CRM114-Status: GOOD (  32.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: james.quinlan@broadcom.com, lukasz.luba@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Mar 2020 16:25:50 +0000
Cristian Marussi <cristian.marussi@arm.com> wrote:

> Add core SCMI Notifications protocol-registration support: allow protocols
> to register their own set of supported events, during their initialization
> phase. Notification core can track multiple platform instances by their
> handles.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

Hi.

A few minor things inline.  Fairly sure kernel-doc needs
struct before the heading for each structure comment block.

Also, the events queue init looks like it could just be done with
a kfifo_alloc call.  Perhaps that makes sense given later patches...

Thanks,

Jonathan

> ---
> V3 --> V4
> - removed scratch ISR buffer, move scratch BH buffer into protocol
>   descriptor
> - converted registered_protocols and registered_events from hashtables
>   into bare fixed-sized arrays
> - removed unregister protocols' routines (never called really)
> V2 --> V3
> - added scmi_notify_instance to track target platform instance
> V1 --> V2
> - splitted out of V1 patch 04
> - moved from IDR maps to real HashTables to store events
> - scmi_notifications_initialized is now an atomic_t
> - reviewed protocol registration/unregistration to use devres
> - fixed:
>   drivers/firmware/arm_scmi/notify.c:483:18-23: ERROR:
>   	reference preceded by free on line 482
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/firmware/arm_scmi/Makefile |   2 +-
>  drivers/firmware/arm_scmi/common.h |   4 +
>  drivers/firmware/arm_scmi/notify.c | 439 +++++++++++++++++++++++++++++
>  drivers/firmware/arm_scmi/notify.h |  57 ++++
>  include/linux/scmi_protocol.h      |   9 +
>  5 files changed, 510 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/arm_scmi/notify.c
>  create mode 100644 drivers/firmware/arm_scmi/notify.h
> 
> diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
> index 6694d0d908d6..24a03a36aee4 100644
> --- a/drivers/firmware/arm_scmi/Makefile
> +++ b/drivers/firmware/arm_scmi/Makefile
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o scmi-transport.o
>  scmi-bus-y = bus.o
> -scmi-driver-y = driver.o
> +scmi-driver-y = driver.o notify.o
>  scmi-transport-y = mailbox.o shmem.o
>  scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
>  obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
> diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
> index 3c2e5d0d7b68..2106c35195ce 100644
> --- a/drivers/firmware/arm_scmi/common.h
> +++ b/drivers/firmware/arm_scmi/common.h
> @@ -6,6 +6,8 @@
>   *
>   * Copyright (C) 2018 ARM Ltd.
>   */
> +#ifndef _SCMI_COMMON_H
> +#define _SCMI_COMMON_H
>  
>  #include <linux/bitfield.h>
>  #include <linux/completion.h>
> @@ -232,3 +234,5 @@ void shmem_fetch_notification(struct scmi_shared_mem __iomem *shmem,
>  void shmem_clear_notification(struct scmi_shared_mem __iomem *shmem);
>  bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
>  		     struct scmi_xfer *xfer);
> +
> +#endif /* _SCMI_COMMON_H */
> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> new file mode 100644
> index 000000000000..31e49cb7d88e
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/notify.c
> @@ -0,0 +1,439 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * System Control and Management Interface (SCMI) Notification support
> + *
> + * Copyright (C) 2020 ARM Ltd.
> + *
> + * SCMI Protocol specification allows the platform to signal events to
> + * interested agents via notification messages: this is an implementation
> + * of the dispatch and delivery of such notifications to the interested users
> + * inside the Linux kernel.
> + *
> + * An SCMI Notification core instance is initialized for each active platform
> + * instance identified by the means of the usual @scmi_handle.
> + *
> + * Each SCMI Protocol implementation, during its initialization, registers with
> + * this core its set of supported events using @scmi_register_protocol_events():
> + * all the needed descriptors are stored in the @registered_protocols and
> + * @registered_events arrays.
> + */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <linux/atomic.h>
> +#include <linux/bug.h>
> +#include <linux/compiler.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/kernel.h>
> +#include <linux/kfifo.h>
> +#include <linux/mutex.h>
> +#include <linux/refcount.h>
> +#include <linux/scmi_protocol.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#include "notify.h"
> +
> +#define	SCMI_MAX_PROTO			256
> +#define	SCMI_ALL_SRC_IDS		0xffffUL
> +/*
> + * Builds an unsigned 32bit key from the given input tuple to be used
> + * as a key in hashtables.
> + */
> +#define MAKE_HASH_KEY(p, e, s)			\
> +	((u32)(((p) << 24) | ((e) << 16) | ((s) & SCMI_ALL_SRC_IDS)))
> +
> +#define MAKE_ALL_SRCS_KEY(p, e)			\
> +	MAKE_HASH_KEY((p), (e), SCMI_ALL_SRC_IDS)
> +
> +struct scmi_registered_protocol_events_desc;
> +
> +/**
> + * scmi_notify_instance  - Represents an instance of the notification core
> + *
> + * Each platform instance, represented by a handle, has its own instance of
> + * the notification subsystem represented by this structure.
> + *
> + * @gid: GroupID used for devres
> + * @handle: A reference to the platform instance
> + * @initialized: A flag that indicates if the core resources have been allocated
> + *		 and protocols are allowed to register their supported events
> + * @enabled: A flag to indicate events can be enabled and start flowing
> + * @registered_protocols: An statically allocated array containing pointers to
> + *			  all the registered protocol-level specific information
> + *			  related to events' handling
> + */
> +struct scmi_notify_instance {
> +	void						*gid;
> +	struct scmi_handle				*handle;
> +	atomic_t					initialized;
> +	atomic_t					enabled;
> +	struct scmi_registered_protocol_events_desc	**registered_protocols;
> +};
> +
> +/**
> + * events_queue  - Describes a queue and its associated worker

I guess this might become clear later, but right now this just looks like
we are open code what could be handled automatically by just using
kfifo_alloc

> + *
> + * Each protocol has its own dedicated events_queue descriptor.
> + *
> + * @sz: Size in bytes of the related kfifo
> + * @qbuf: Pre-allocated buffer of @sz bytes to be used by the kfifo
> + * @kfifo: A dedicated Kernel kfifo descriptor
> + */
> +struct events_queue {
> +	size_t				sz;
> +	u8				*qbuf;
> +	struct kfifo			kfifo;
> +};
> +
> +/**
> + * scmi_event_header  - A utility header

struct scmi...

> + *
> + * This header is prepended to each received event message payload before
> + * queueing it on the related events_queue.
> + *
> + * @timestamp: The timestamp, in nanoseconds (boottime), which was associated
> + *	       to this event as soon as it entered the SCMI RX ISR
> + * @evt_id: Event ID (corresponds to the Event MsgID for this Protocol)
> + * @payld_sz: Effective size of the embedded message payload which follows
> + * @payld: A reference to the embedded event payload
> + */
> +struct scmi_event_header {
> +	u64	timestamp;
> +	u8	evt_id;
> +	size_t	payld_sz;
> +	u8	payld[];
> +} __packed;
> +
> +struct scmi_registered_event;
> +
> +/**
> + * scmi_registered_protocol_events_desc  - Protocol Specific information
> + *
> + * All protocols that registers at least one event have their protocol-specific
> + * information stored here, together with the embedded allocated events_queue.
> + * These descriptors are stored in the @registered_protocols array at protocol
> + * registration time.
> + *
> + * Once these descriptors are successfully registered, they are NEVER again
> + * removed or modified since protocols do not unregister ever, so that once we
> + * safely grab a NON-NULL reference from the array we can keep it and use it.
> + *
> + * @id: Protocol ID
> + * @ops: Protocol specific and event-related operations
> + * @equeue: The embedded per-protocol events_queue
> + * @ni: A reference to the initialized instance descriptor
> + * @eh: A reference to pre-allocated buffer to be used as a scratch area by the
> + *	deferred worker when fetching data from the kfifo
> + * @eh_sz: Size of the pre-allocated buffer @eh
> + * @in_flight: A reference to an in flight @scmi_registered_event
> + * @num_events: Number of events in @registered_events
> + * @registered_events: A dynamically allocated array holding all the registered
> + *		       events' descriptors, whose fixed-size is determined at
> + *		       compile time.
> + */
> +struct scmi_registered_protocol_events_desc {
> +	u8					id;
> +	const struct scmi_protocol_event_ops	*ops;
> +	struct events_queue			equeue;
> +	struct scmi_notify_instance		*ni;
> +	struct scmi_event_header		*eh;
> +	size_t					eh_sz;
> +	void					*in_flight;
> +	int					num_events;
> +	struct scmi_registered_event		**registered_events;
> +};
> +
> +/**
> + * scmi_registered_event  - Event Specific Information

struct scmi_registered_event - Event...

> + *
> + * All registered events are represented by one of these structures that are
> + * stored in the @registered_events array at protocol registration time.
> + *
> + * Once these descriptors are successfully registered, they are NEVER again
> + * removed or modified since protocols do not unregister ever, so that once we
> + * safely grab a NON-NULL reference from the table we can keep it and use it.
> + *
> + * @proto: A reference to the associated protocol descriptor
> + * @evt: A reference to the associated event descriptor (as provided at
> + *       registration time)
> + * @report: A pre-allocated buffer used by the deferred worker to fill a
> + *	    customized event report
> + * @num_sources: The number of possible sources for this event as stated at
> + *		 events' registration time
> + * @sources: A reference to a dynamically allocated array used to refcount the
> + *	     events' enable requests for all the existing sources
> + * @sources_mtx: A mutex to serialize the access to @sources
> + */
> +struct scmi_registered_event {
> +	struct scmi_registered_protocol_events_desc	*proto;
> +	const struct scmi_event				*evt;
> +	void						*report;
> +	u32						num_sources;
> +	refcount_t					*sources;
> +	struct mutex					sources_mtx;
> +};
> +
> +/**
> + * scmi_initialize_events_queue  - Allocate/Initialize a kfifo buffer
> + *
> + * Allocate a buffer for the kfifo and initialize it.
> + *
> + * @ni: A reference to the notification instance to use
> + * @equeue: The events_queue to initialize
> + * @sz: Size of the kfifo buffer to allocate
> + *
> + * Return: 0 on Success
> + */
> +static int scmi_initialize_events_queue(struct scmi_notify_instance *ni,
> +					struct events_queue *equeue, size_t sz)
> +{
> +	equeue->qbuf = devm_kzalloc(ni->handle->dev, sz, GFP_KERNEL);
> +	if (!equeue->qbuf)
> +		return -ENOMEM;
> +	equeue->sz = sz;
> +
> +	return kfifo_init(&equeue->kfifo, equeue->qbuf, equeue->sz);

This seems like a slightly odd dance.  Why not use kfifo_alloc?

If it's because of the lack of devm_kfifo_alloc, maybe use a devm_add_action_or_reset
to handle that.

> +}
> +
> +/**
> + * scmi_allocate_registered_protocol_desc  - Allocate a registered protocol
> + * events' descriptor
> + *
> + * It is supposed to be called only once for each protocol at protocol
> + * initialization time, so it warns if the requested protocol is found
> + * already registered.
> + *
> + * @ni: A reference to the notification instance to use
> + * @proto_id: Protocol ID
> + * @queue_sz: Size of the associated queue to allocate
> + * @eh_sz: Size of the event header scratch area to pre-allocate
> + * @num_events: Number of events to support (size of @registered_events)
> + * @ops: Pointer to a struct holding references to protocol specific helpers
> + *	 needed during events handling
> + *
> + * Returns the allocated and registered descriptor on Success
> + */
> +static struct scmi_registered_protocol_events_desc *
> +scmi_allocate_registered_protocol_desc(struct scmi_notify_instance *ni,
> +				       u8 proto_id, size_t queue_sz,
> +				       size_t eh_sz, int num_events,
> +				const struct scmi_protocol_event_ops *ops)
> +{
> +	int ret;
> +	struct scmi_registered_protocol_events_desc *pd;
> +
> +	pd = READ_ONCE(ni->registered_protocols[proto_id]);
> +	if (pd) {
> +		WARN_ON(1);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	pd = devm_kzalloc(ni->handle->dev, sizeof(*pd), GFP_KERNEL);
> +	if (!pd)
> +		return ERR_PTR(-ENOMEM);
> +	pd->id = proto_id;
> +	pd->ops = ops;
> +	pd->ni = ni;
> +
> +	ret = scmi_initialize_events_queue(ni, &pd->equeue, queue_sz);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	pd->eh = devm_kzalloc(ni->handle->dev, eh_sz, GFP_KERNEL);
> +	if (!pd->eh)
> +		return ERR_PTR(-ENOMEM);
> +	pd->eh_sz = eh_sz;
> +
> +	pd->registered_events = devm_kcalloc(ni->handle->dev, num_events,
> +					     sizeof(char *), GFP_KERNEL);
> +	if (!pd->registered_events)
> +		return ERR_PTR(-ENOMEM);
> +	pd->num_events = num_events;
> +
> +	return pd;
> +}
> +
> +/**
> + * scmi_register_protocol_events  - Register Protocol Events with the core
> + *
> + * Used by SCMI Protocols initialization code to register with the notification
> + * core the list of supported events and their descriptors: takes care to
> + * pre-allocate and store all needed descriptors, scratch buffers and event
> + * queues.
> + *
> + * @handle: The handle identifying the platform instance against which the
> + *	    the protocol's events are registered
> + * @proto_id: Protocol ID
> + * @queue_sz: Size in bytes of the associated queue to be allocated
> + * @ops: Protocol specific event-related operations
> + * @evt: Event descriptor array
> + * @num_events: Number of events in @evt array
> + * @num_sources: Number of possible sources for this protocol on this
> + *		 platform.
> + *
> + * Return: 0 on Success
> + */
> +int scmi_register_protocol_events(const struct scmi_handle *handle,
> +				  u8 proto_id, size_t queue_sz,
> +				  const struct scmi_protocol_event_ops *ops,
> +				  const struct scmi_event *evt, int num_events,
> +				  int num_sources)
> +{
> +	int i;
> +	size_t payld_sz = 0;
> +	struct scmi_registered_protocol_events_desc *pd;
> +	struct scmi_notify_instance *ni = handle->notify_priv;
> +
> +	if (!ops || !evt || proto_id >= SCMI_MAX_PROTO)
> +		return -EINVAL;
> +
> +	/* Ensure atomic value is updated */
> +	smp_mb__before_atomic();
> +	if (unlikely(!ni || !atomic_read(&ni->initialized)))
> +		return -EAGAIN;
> +
> +	/* Attach to the notification main devres group */
> +	if (!devres_open_group(ni->handle->dev, ni->gid, GFP_KERNEL))
> +		return -ENOMEM;
> +
> +	for (i = 0; i < num_events; i++)
> +		payld_sz = max_t(size_t, payld_sz, evt[i].max_payld_sz);
> +	pd = scmi_allocate_registered_protocol_desc(ni, proto_id, queue_sz,
> +				    sizeof(struct scmi_event_header) + payld_sz,
> +						    num_events, ops);
> +	if (IS_ERR(pd))
> +		goto err;
> +
> +	for (i = 0; i < num_events; i++, evt++) {
> +		struct scmi_registered_event *r_evt;
> +
> +		r_evt = devm_kzalloc(ni->handle->dev, sizeof(*r_evt),
> +				     GFP_KERNEL);
> +		if (!r_evt)
> +			goto err;
> +		r_evt->proto = pd;
> +		r_evt->evt = evt;
> +
> +		r_evt->sources = devm_kcalloc(ni->handle->dev, num_sources,
> +					      sizeof(refcount_t), GFP_KERNEL);
> +		if (!r_evt->sources)
> +			goto err;
> +		r_evt->num_sources = num_sources;
> +		mutex_init(&r_evt->sources_mtx);
> +
> +		r_evt->report = devm_kzalloc(ni->handle->dev,
> +					     evt->max_report_sz, GFP_KERNEL);
> +		if (!r_evt->report)
> +			goto err;
> +
> +		WRITE_ONCE(pd->registered_events[i], r_evt);
> +		pr_info("SCMI Notifications: registered event - %X\n",
> +			MAKE_ALL_SRCS_KEY(r_evt->proto->id, r_evt->evt->id));
> +	}
> +
> +	/* Register protocol and events...it will never be removed */
> +	WRITE_ONCE(ni->registered_protocols[proto_id], pd);
> +
> +	devres_close_group(ni->handle->dev, ni->gid);
> +
> +	return 0;
> +
> +err:
> +	pr_warn("SCMI Notifications - Proto:%X - Registration Failed !\n",
> +		proto_id);
> +	/* A failing protocol registration does not trigger full failure */
> +	devres_close_group(ni->handle->dev, ni->gid);
> +
> +	return -ENOMEM;
> +}
> +
> +/**
> + * scmi_notification_init  - Initializes Notification Core Support
> + *
> + * This function lays out all the basic resources needed by the notification
> + * core instance identified by the provided handle: once done, all of the
> + * SCMI Protocols can register their events with the core during their own
> + * initializations.
> + *
> + * Note that failing to initialize the core notifications support does not
> + * cause the whole SCMI Protocols stack to fail its initialization.
> + *
> + * SCMI Notification Initialization happens in 2 steps:
> + *
> + *  - initialization: basic common allocations (this function) -> .initialized
> + *  - registration: protocols asynchronously come into life and registers their
> + *		    own supported list of events with the core; this causes
> + *		    further per-protocol allocations.
> + *
> + * Any user's callback registration attempt, referring a still not registered
> + * event, will be registered as pending and finalized later (if possible)
> + * by @scmi_protocols_late_init work.
> + * This allows for lazy initialization of SCMI Protocols due to late (or
> + * missing) SCMI drivers' modules loading.
> + *
> + * @handle: The handle identifying the platform instance to initialize
> + *
> + * Return: 0 on Success
> + */
> +int scmi_notification_init(struct scmi_handle *handle)
> +{
> +	void *gid;
> +	struct scmi_notify_instance *ni;
> +
> +	gid = devres_open_group(handle->dev, NULL, GFP_KERNEL);
> +	if (!gid)
> +		return -ENOMEM;
> +
> +	ni = devm_kzalloc(handle->dev, sizeof(*ni), GFP_KERNEL);
> +	if (!ni)
> +		goto err;
> +
> +	ni->gid = gid;
> +	ni->handle = handle;
> +
> +	ni->registered_protocols = devm_kcalloc(handle->dev, SCMI_MAX_PROTO,
> +						sizeof(char *), GFP_KERNEL);
> +	if (!ni->registered_protocols)
> +		goto err;
> +
> +	handle->notify_priv = ni;
> +
> +	atomic_set(&ni->initialized, 1);
> +	atomic_set(&ni->enabled, 1);
> +	/* Ensure atomic values are updated */
> +	smp_mb__after_atomic();
> +
> +	pr_info("SCMI Notifications Core Initialized.\n");
> +
> +	devres_close_group(handle->dev, ni->gid);
> +
> +	return 0;
> +
> +err:
> +	pr_warn("SCMI Notifications - Initialization Failed.\n");
> +	devres_release_group(handle->dev, NULL);
> +	return -ENOMEM;
> +}
> +
> +/**
> + * scmi_notification_exit  - Shutdown and clean Notification core
> + *
> + * @handle: The handle identifying the platform instance to shutdown
> + */
> +void scmi_notification_exit(struct scmi_handle *handle)
> +{
> +	struct scmi_notify_instance *ni = handle->notify_priv;
> +
> +	if (unlikely(!ni || !atomic_read(&ni->initialized)))
> +		return;
> +
> +	atomic_set(&ni->enabled, 0);
> +	/* Ensure atomic values are updated */
> +	smp_mb__after_atomic();
> +
> +	devres_release_group(ni->handle->dev, ni->gid);
> +
> +	pr_info("SCMI Notifications Core Shutdown.\n");

Is this actually useful?  Seems like noise to me, maybe pr_debug is more appopriate.

> +}
> diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
> new file mode 100644
> index 000000000000..a7ece64e8842
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/notify.h
> @@ -0,0 +1,57 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * System Control and Management Interface (SCMI) Message Protocol
> + * notification header file containing some definitions, structures
> + * and function prototypes related to SCMI Notification handling.
> + *
> + * Copyright (C) 2019 ARM Ltd.

Update the dates given you are still changing this stuff?

> + */
> +#ifndef _SCMI_NOTIFY_H
> +#define _SCMI_NOTIFY_H
> +
> +#include <linux/device.h>
> +#include <linux/types.h>
> +
> +/**
> + * scmi_event  - Describes an event to be supported

Fairly sure this isn't valid kernel-doc.

   * struct scmi_event - ...

Make sure to run the kernel-doc scripts over any files you've added kernel-doc to
and tidy up the warnings.

> + *
> + * Each SCMI protocol, during its initialization phase, can describe the events
> + * it wishes to support in a few struct scmi_event and pass them to the core
> + * using scmi_register_protocol_events().
> + *
> + * @id: Event ID
> + * @max_payld_sz: Max possible size for the payload of a notif msg of this kind
> + * @max_report_sz: Max possible size for the report of a notif msg of this kind
> + */
> +struct scmi_event {
> +	u8	id;
> +	size_t	max_payld_sz;
> +	size_t	max_report_sz;
> +

Nitpick: Blank line isn't adding anything

> +};
> +
> +/**
> + * scmi_protocol_event_ops  - Helpers called by notification core.
> + *
> + * These are called only in process context.
> + *
> + * @set_notify_enabled: Enable/disable the required evt_id/src_id notifications
> + *			using the proper custom protocol commands.
> + *			Return true if at least one the required src_id
> + *			has been successfully enabled/disabled
> + */
> +struct scmi_protocol_event_ops {
> +	bool (*set_notify_enabled)(const struct scmi_handle *handle,
> +				   u8 evt_id, u32 src_id, bool enabled);
> +};
> +
> +int scmi_notification_init(struct scmi_handle *handle);
> +void scmi_notification_exit(struct scmi_handle *handle);
> +
> +int scmi_register_protocol_events(const struct scmi_handle *handle,
> +				  u8 proto_id, size_t queue_sz,
> +				  const struct scmi_protocol_event_ops *ops,
> +				  const struct scmi_event *evt, int num_events,
> +				  int num_sources);
> +
> +#endif /* _SCMI_NOTIFY_H */
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index 5c873a59b387..0679f10ab05e 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -4,6 +4,10 @@
>   *
>   * Copyright (C) 2018 ARM Ltd.
>   */
> +
> +#ifndef _LINUX_SCMI_PROTOCOL_H
> +#define _LINUX_SCMI_PROTOCOL_H
> +
>  #include <linux/device.h>
>  #include <linux/types.h>
>  
> @@ -227,6 +231,8 @@ struct scmi_reset_ops {
>   *	protocol(for internal use only)
>   * @reset_priv: pointer to private data structure specific to reset
>   *	protocol(for internal use only)
> + * @notify_priv: pointer to private data structure specific to notifications
> + *	(for internal use only)
>   */
>  struct scmi_handle {
>  	struct device *dev;
> @@ -242,6 +248,7 @@ struct scmi_handle {
>  	void *power_priv;
>  	void *sensor_priv;
>  	void *reset_priv;
> +	void *notify_priv;
>  };
>  
>  enum scmi_std_protocol {
> @@ -319,3 +326,5 @@ static inline void scmi_driver_unregister(struct scmi_driver *driver) {}
>  typedef int (*scmi_prot_init_fn_t)(struct scmi_handle *);
>  int scmi_protocol_register(int protocol_id, scmi_prot_init_fn_t fn);
>  void scmi_protocol_unregister(int protocol_id);
> +
> +#endif /* _LINUX_SCMI_PROTOCOL_H */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
