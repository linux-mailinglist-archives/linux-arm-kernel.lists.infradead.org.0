Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A951FBF7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 21:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzejwv7KXI5zRPe149adw+UPNZwxWBZDkCF9nBh/CFs=; b=JAXyp/NJ6C64cJ
	XleMxWc1A1dGoKDZxnzJZiarcude4nmTM2KyvB6rwW5tFr/mscizaOeoT+eESxhhxCxRXZWmnuISa
	iMxj0PlJmxSTZUl4TxjN2AgML05bt97ziIGHSaoyDuXULxyrTBtpP97TJkM1kFXoCIoY7c3l4E0j3
	+T9OPkVa3Qgdx/JW3VxP8K/Aym3c5vjfslt0hBXeJ+AXgNCJ0kNJ6tE71yq4uehXUchS8KlK0exSn
	3CW6lyt0/3Kj9AYszOiqJ9OgVol/5h18bFGPERYMpiscS52N5/Jm4jOUZGZxwi/TyyOKO3zmWPf1o
	De+cqHY7QzhpbbqcHiCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlHjd-0001Ec-Kv; Tue, 16 Jun 2020 19:59:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlHjT-0001Dc-1h
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 19:58:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4423B1F1;
 Tue, 16 Jun 2020 12:58:50 -0700 (PDT)
Received: from e119603-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC2523F71F;
 Tue, 16 Jun 2020 12:58:43 -0700 (PDT)
Date: Tue, 16 Jun 2020 20:58:41 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v8 1/9] firmware: arm_scmi: Add notification
 protocol-registration
Message-ID: <20200616195841.GA26288@e119603-lin.cambridge.arm.com>
References: <20200520081118.54897-1-cristian.marussi@arm.com>
 <20200520081118.54897-2-cristian.marussi@arm.com>
 <20200608170258.GB13622@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608170258.GB13622@bogus>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_125855_192751_F21039EE 
X-CRM114-Status: GOOD (  39.77  )
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
Cc: cristian.marussi@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com, dave.martin@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep

thanks for the review.

On Mon, Jun 08, 2020 at 06:02:58PM +0100, Sudeep Holla wrote:
> On Wed, May 20, 2020 at 09:11:10AM +0100, Cristian Marussi wrote:
> > Add core SCMI Notifications protocol-registration support: allow protocols
> > to register their own set of supported events, during their initialization
> > phase. Notification core can track multiple platform instances by their
> > handles.
> >
> > Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > ---
> >  drivers/firmware/arm_scmi/Makefile |   2 +-
> >  drivers/firmware/arm_scmi/common.h |   4 +
> >  drivers/firmware/arm_scmi/notify.c | 435 +++++++++++++++++++++++++++++
> >  drivers/firmware/arm_scmi/notify.h |  56 ++++
> >  include/linux/scmi_protocol.h      |   3 +
> >  5 files changed, 499 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/firmware/arm_scmi/notify.c
> >  create mode 100644 drivers/firmware/arm_scmi/notify.h
> >
> > diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> > new file mode 100644
> > index 000000000000..8b620fc7df50
> > --- /dev/null
> > +++ b/drivers/firmware/arm_scmi/notify.c
> > @@ -0,0 +1,435 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * System Control and Management Interface (SCMI) Notification support
> > + *
> > + * Copyright (C) 2020 ARM Ltd.
> > + */
> > +/**
> > + * DOC: Theory of operation
> > + *
> > + * SCMI Protocol specification allows the platform to signal events to
> > + * interested agents via notification messages: this is an implementation
> > + * of the dispatch and delivery of such notifications to the interested users
> > + * inside the Linux kernel.
> > + *
> > + * An SCMI Notification core instance is initialized for each active platform
> > + * instance identified by the means of the usual &struct scmi_handle.
> > + *
> > + * Each SCMI Protocol implementation, during its initialization, registers with
> > + * this core its set of supported events using scmi_register_protocol_events():
> > + * all the needed descriptors are stored in the &struct registered_protocols and
> > + * &struct registered_events arrays.
> > + */
> > +
> > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > +
> > +#include <linux/bug.h>
> > +#include <linux/compiler.h>
> > +#include <linux/device.h>
> > +#include <linux/err.h>
> > +#include <linux/kernel.h>
> > +#include <linux/kfifo.h>
> > +#include <linux/mutex.h>
> > +#include <linux/refcount.h>
> > +#include <linux/scmi_protocol.h>
> > +#include <linux/slab.h>
> > +#include <linux/types.h>
> > +
> > +#include "notify.h"
> > +
> > +#define	SCMI_MAX_PROTO			256
> 
> [nit] Space after define instead of tab.
> 

Sure. (it was a one-space tab on my code..damn :D)

> > +#define	SCMI_ALL_SRC_IDS		0xffffUL
> 
> Once you move {PROTO,EVT,SRC}_ID_MASK here, you can just {re-}use SRC_ID_MASK
> 
> > +/*
> > + * Builds an unsigned 32bit key from the given input tuple to be used
> > + * as a key in hashtables.
> > + */
> > +#define MAKE_HASH_KEY(p, e, s)			\
> > +	((u32)(((p) << 24) | ((e) << 16) | ((s) & SCMI_ALL_SRC_IDS)))
> > +
> 
> You can use {PROTO,EVT,SRC}_ID_MASK here and FIELD_PREP in the above
> macro.
> 

I'll move the defs around and use the standard bitfield macros on both cases.

> > +#define MAKE_ALL_SRCS_KEY(p, e)			\
> > +	MAKE_HASH_KEY((p), (e), SCMI_ALL_SRC_IDS)
> > +
> > +struct scmi_registered_protocol_events_desc;
> > +
> 
> Just a thought here: can we rename all protocol_event* as just event*.
> The term protocol is kind of implicit and makes the names too long.
> I feel some are really too long :). Similar if you think protocol
> is implicit elsewhere, drop it.
> 

Yes you are right I hated all the time this massive protocols_ naming; I was
trying to highlight all the internal machinery related to protocols registering
with the core, but it was an ill attempt: I removed all redundant protocol_ prefixes
and it seems fine. (all but scmi_register_protocol_events() itself)

> > +/**
> > + * struct scmi_notify_instance  - Represents an instance of the notification
> > + * core
> > + * @gid: GroupID used for devres
> > + * @handle: A reference to the platform instance
> > + * @registered_protocols: A statically allocated array containing pointers to
> > + *			  all the registered protocol-level specific information
> > + *			  related to events' handling
> > + *
> > + * Each platform instance, represented by a handle, has its own instance of
> > + * the notification subsystem represented by this structure.
> > + */
> > +struct scmi_notify_instance {
> > +	void						*gid;
> > +	struct scmi_handle				*handle;
> > +	struct scmi_registered_protocol_events_desc	**registered_protocols;
> > +};
> > +
> > +/**
> > + * struct events_queue  - Describes a queue and its associated worker
> > + * @sz: Size in bytes of the related kfifo
> > + * @kfifo: A dedicated Kernel kfifo descriptor
> > + *
> > + * Each protocol has its own dedicated events_queue descriptor.
> > + */
> > +struct events_queue {
> > +	size_t				sz;
> > +	struct kfifo			kfifo;
> > +};
> > +
> 
> [nit] Add tabs only for alignment, just to keep it uniform throughout.
> 

Sure. I think this two lonely odd-tabbed things are so strangely aligned in
advance for the appearance in a following patch of another massively named
protocol field :D. I'll remove this spacing from this patch anyway.

> > +/**
> > + * struct scmi_event_header  - A utility header
> > + * @timestamp: The timestamp, in nanoseconds (boottime), which was associated
> > + *	       to this event as soon as it entered the SCMI RX ISR
> > + * @evt_id: Event ID (corresponds to the Event MsgID for this Protocol)
> > + * @payld_sz: Effective size of the embedded message payload which follows
> > + * @payld: A reference to the embedded event payload
> > + *
> > + * This header is prepended to each received event message payload before
> > + * queueing it on the related &struct events_queue.
> > + */
> > +struct scmi_event_header {
> > +	u64	timestamp;
> > +	u8	evt_id;
> > +	size_t	payld_sz;
> > +	u8	payld[];
> > +} __packed;
> > +
> 
> Is this directly read from the shmem ? Trying to understand need for
> __packed.
> 

Mmmm, not really, it's the header describing the events which is build and
pushed on the kfifo with the event payload appended to it, so it seemed to me
like a sort of 'packet' flowing somewhere and I wanted to avoid padding.

> > +struct scmi_registered_event;
> > +
> > +/**
> > + * struct scmi_registered_protocol_events_desc  - Protocol Specific information
> > + * @id: Protocol ID
> > + * @ops: Protocol specific and event-related operations
> > + * @equeue: The embedded per-protocol events_queue
> > + * @ni: A reference to the initialized instance descriptor
> > + * @eh: A reference to pre-allocated buffer to be used as a scratch area by the
> > + *	deferred worker when fetching data from the kfifo
> > + * @eh_sz: Size of the pre-allocated buffer @eh
> > + * @in_flight: A reference to an in flight &struct scmi_registered_event
> > + * @num_events: Number of events in @registered_events
> > + * @registered_events: A dynamically allocated array holding all the registered
> > + *		       events' descriptors, whose fixed-size is determined at
> > + *		       compile time.
> > + *
> > + * All protocols that register at least one event have their protocol-specific
> > + * information stored here, together with the embedded allocated events_queue.
> > + * These descriptors are stored in the @registered_protocols array at protocol
> > + * registration time.
> > + *
> > + * Once these descriptors are successfully registered, they are NEVER again
> > + * removed or modified since protocols do not unregister ever, so that, once
> > + * we safely grab a NON-NULL reference from the array we can keep it and use it.
> > + */
> > +struct scmi_registered_protocol_events_desc {
> > +	u8					id;
> > +	const struct scmi_protocol_event_ops	*ops;
> > +	struct events_queue			equeue;
> > +	struct scmi_notify_instance		*ni;
> > +	struct scmi_event_header		*eh;
> > +	size_t					eh_sz;
> > +	void					*in_flight;
> > +	int					num_events;
> > +	struct scmi_registered_event		**registered_events;
> > +};
> > +
> > +/**
> > + * struct scmi_registered_event  - Event Specific Information
> > + * @proto: A reference to the associated protocol descriptor
> > + * @evt: A reference to the associated event descriptor (as provided at
> > + *       registration time)
> > + * @report: A pre-allocated buffer used by the deferred worker to fill a
> > + *	    customized event report
> > + * @num_sources: The number of possible sources for this event as stated at
> > + *		 events' registration time
> > + * @sources: A reference to a dynamically allocated array used to refcount the
> > + *	     events' enable requests for all the existing sources
> > + * @sources_mtx: A mutex to serialize the access to @sources
> > + *
> > + * All registered events are represented by one of these structures that are
> > + * stored in the @registered_events array at protocol registration time.
> > + *
> > + * Once these descriptors are successfully registered, they are NEVER again
> > + * removed or modified since protocols do not unregister ever, so that once we
> > + * safely grab a NON-NULL reference from the table we can keep it and use it.
> > + */
> > +struct scmi_registered_event {
> > +	struct scmi_registered_protocol_events_desc	*proto;
> > +	const struct scmi_event				*evt;
> > +	void						*report;
> > +	u32						num_sources;
> > +	refcount_t					*sources;
> > +	struct mutex					sources_mtx;
> > +};
> > +
> > +/**
> > + * scmi_kfifo_free()  - Devres action helper to free the kfifo
> > + * @kfifo: The kfifo to free
> > + */
> > +static void scmi_kfifo_free(void *kfifo)
> > +{
> > +	kfifo_free((struct kfifo *)kfifo);
> > +}
> > +
> > +/**
> > + * scmi_initialize_events_queue()  - Allocate/Initialize a kfifo buffer
> > + * @ni: A reference to the notification instance to use
> > + * @equeue: The events_queue to initialize
> > + * @sz: Size of the kfifo buffer to allocate
> > + *
> > + * Allocate a buffer for the kfifo and initialize it.
> > + *
> > + * Return: 0 on Success
> > + */
> > +static int scmi_initialize_events_queue(struct scmi_notify_instance *ni,
> > +					struct events_queue *equeue, size_t sz)
> > +{
> > +	if (kfifo_alloc(&equeue->kfifo, sz, GFP_KERNEL))
> > +		return -ENOMEM;
> > +	/* Size could have been roundup to power-of-two */
> > +	equeue->sz = kfifo_size(&equeue->kfifo);
> > +
> > +	return devm_add_action_or_reset(ni->handle->dev, scmi_kfifo_free,
> > +					&equeue->kfifo);
> > +}
> > +
> > +/**
> > + * scmi_allocate_registered_protocol_desc()  - Allocate a registered protocol
> > + * events' descriptor
> > + * @ni: A reference to the &struct scmi_notify_instance notification instance
> > + *	to use
> > + * @proto_id: Protocol ID
> > + * @queue_sz: Size of the associated queue to allocate
> > + * @eh_sz: Size of the event header scratch area to pre-allocate
> > + * @num_events: Number of events to support (size of @registered_events)
> > + * @ops: Pointer to a struct holding references to protocol specific helpers
> > + *	 needed during events handling
> > + *
> > + * It is supposed to be called only once for each protocol at protocol
> > + * initialization time, so it warns if the requested protocol is found already
> > + * registered.
> > + *
> > + * Return: The allocated and registered descriptor on Success
> > + */
> > +static struct scmi_registered_protocol_events_desc *
> > +scmi_allocate_registered_protocol_desc(struct scmi_notify_instance *ni,
> > +				       u8 proto_id, size_t queue_sz,
> > +				       size_t eh_sz, int num_events,
> > +				const struct scmi_protocol_event_ops *ops)
> > +{
> > +	int ret;
> > +	struct scmi_registered_protocol_events_desc *pd;
> > +
> > +	/* Ensure protocols are up to date */
> > +	smp_rmb();
> > +	if (ni->registered_protocols[proto_id]) {
> > +		WARN_ON(1);
> 
> Can't this be if (WARN_ON(ni->registered_protocols[proto_id])) ?
> 

Yes of course.

> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	pd = devm_kzalloc(ni->handle->dev, sizeof(*pd), GFP_KERNEL);
> > +	if (!pd)
> > +		return ERR_PTR(-ENOMEM);
> > +	pd->id = proto_id;
> > +	pd->ops = ops;
> > +	pd->ni = ni;
> > +
> > +	ret = scmi_initialize_events_queue(ni, &pd->equeue, queue_sz);
> > +	if (ret)
> > +		return ERR_PTR(ret);
> > +
> > +	pd->eh = devm_kzalloc(ni->handle->dev, eh_sz, GFP_KERNEL);
> > +	if (!pd->eh)
> > +		return ERR_PTR(-ENOMEM);
> > +	pd->eh_sz = eh_sz;
> > +
> > +	pd->registered_events = devm_kcalloc(ni->handle->dev, num_events,
> > +					     sizeof(char *), GFP_KERNEL);
> > +	if (!pd->registered_events)
> > +		return ERR_PTR(-ENOMEM);
> > +	pd->num_events = num_events;
> > +
> > +	return pd;
> > +}
> > +
> > +/**
> > + * scmi_register_protocol_events()  - Register Protocol Events with the core
> > + * @handle: The handle identifying the platform instance against which the
> > + *	    the protocol's events are registered
> > + * @proto_id: Protocol ID
> > + * @queue_sz: Size in bytes of the associated queue to be allocated
> > + * @ops: Protocol specific event-related operations
> > + * @evt: Event descriptor array
> > + * @num_events: Number of events in @evt array
> > + * @num_sources: Number of possible sources for this protocol on this
> > + *		 platform.
> > + *
> > + * Used by SCMI Protocols initialization code to register with the notification
> > + * core the list of supported events and their descriptors: takes care to
> > + * pre-allocate and store all needed descriptors, scratch buffers and event
> > + * queues.
> > + *
> > + * Return: 0 on Success
> > + */
> > +int scmi_register_protocol_events(const struct scmi_handle *handle,
> > +				  u8 proto_id, size_t queue_sz,
> > +				  const struct scmi_protocol_event_ops *ops,
> > +				  const struct scmi_event *evt, int num_events,
> > +				  int num_sources)
> > +{
> > +	int i;
> > +	size_t payld_sz = 0;
> > +	struct scmi_registered_protocol_events_desc *pd;
> > +	struct scmi_notify_instance *ni;
> > +
> > +	if (!ops || !evt || proto_id >= SCMI_MAX_PROTO)
> > +		return -EINVAL;
> > +
> > +	/* Ensure notify_priv is updated */
> > +	smp_rmb();
> > +	if (unlikely(!handle->notify_priv))
> > +		return -ENOMEM;
> > +	ni = handle->notify_priv;
> > +
> > +	/* Attach to the notification main devres group */
> > +	if (!devres_open_group(ni->handle->dev, ni->gid, GFP_KERNEL))
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < num_events; i++)
> > +		payld_sz = max_t(size_t, payld_sz, evt[i].max_payld_sz);
> > +	pd = scmi_allocate_registered_protocol_desc(ni, proto_id, queue_sz,
> > +				    sizeof(struct scmi_event_header) + payld_sz,
> > +						    num_events, ops);
> > +	if (IS_ERR(pd))
> > +		goto err;
> > +
> > +	for (i = 0; i < num_events; i++, evt++) {
> > +		struct scmi_registered_event *r_evt;
> > +
> > +		r_evt = devm_kzalloc(ni->handle->dev, sizeof(*r_evt),
> > +				     GFP_KERNEL);
> > +		if (!r_evt)
> > +			goto err;
> > +		r_evt->proto = pd;
> > +		r_evt->evt = evt;
> > +
> > +		r_evt->sources = devm_kcalloc(ni->handle->dev, num_sources,
> > +					      sizeof(refcount_t), GFP_KERNEL);
> > +		if (!r_evt->sources)
> > +			goto err;
> > +		r_evt->num_sources = num_sources;
> > +		mutex_init(&r_evt->sources_mtx);
> > +
> > +		r_evt->report = devm_kzalloc(ni->handle->dev,
> > +					     evt->max_report_sz, GFP_KERNEL);
> > +		if (!r_evt->report)
> > +			goto err;
> > +
> > +		pd->registered_events[i] = r_evt;
> > +		/* Ensure events are updated */
> > +		smp_wmb();
> > +		pr_info("SCMI Notifications: registered event - %X\n",
> > +			MAKE_ALL_SRCS_KEY(r_evt->proto->id, r_evt->evt->id));
> > +	}
> > +
> > +	/* Register protocol and events...it will never be removed */
> > +	ni->registered_protocols[proto_id] = pd;
> > +	/* Ensure protocols are updated */
> > +	smp_wmb();
> > +
> > +	devres_close_group(ni->handle->dev, ni->gid);
> > +
> > +	return 0;
> > +
> > +err:
> > +	pr_warn("SCMI Notifications - Proto:%X - Registration Failed !\n",
> > +		proto_id);
> > +	/* A failing protocol registration does not trigger full failure */
> > +	devres_close_group(ni->handle->dev, ni->gid);
> > +
> > +	return -ENOMEM;
> > +}
> > +
> > +/**
> > + * scmi_notification_init()  - Initializes Notification Core Support
> > + * @handle: The handle identifying the platform instance to initialize
> > + *
> > + * This function lays out all the basic resources needed by the notification
> > + * core instance identified by the provided handle: once done, all of the
> > + * SCMI Protocols can register their events with the core during their own
> > + * initializations.
> > + *
> > + * Note that failing to initialize the core notifications support does not
> > + * cause the whole SCMI Protocols stack to fail its initialization.
> > + *
> > + * SCMI Notification Initialization happens in 2 steps:
> > + * * initialization: basic common allocations (this function)
> > + * * registration: protocols asynchronously come into life and registers their
> > + *		   own supported list of events with the core; this causes
> > + *		   further per-protocol allocations
> > + *
> > + * Any user's callback registration attempt, referring a still not registered
> > + * event, will be registered as pending and finalized later (if possible)
> > + * by scmi_protocols_late_init() work.
> > + * This allows for lazy initialization of SCMI Protocols due to late (or
> > + * missing) SCMI drivers' modules loading.
> > + *
> > + * Return: 0 on Success
> > + */
> > +int scmi_notification_init(struct scmi_handle *handle)
> > +{
> > +	void *gid;
> > +	struct scmi_notify_instance *ni;
> > +
> > +	gid = devres_open_group(handle->dev, NULL, GFP_KERNEL);
> > +	if (!gid)
> > +		return -ENOMEM;
> > +
> > +	ni = devm_kzalloc(handle->dev, sizeof(*ni), GFP_KERNEL);
> > +	if (!ni)
> > +		goto err;
> > +
> > +	ni->gid = gid;
> > +	ni->handle = handle;
> > +
> > +	ni->registered_protocols = devm_kcalloc(handle->dev, SCMI_MAX_PROTO,
> > +						sizeof(char *), GFP_KERNEL);
> 
> May not be too expensive, do we have to allocate for all 256 possible
> protocols ? Will it help if we share list of implemented protocols.
> I know this may get complex once we add support for registering protocols
> later, but do we need it now ?
> 

So the reasoning behind this was as follows: this structure is accessed heavily
on the rx (interrupt) path to lookup the proper kfifo queue to pick (if any) to
push the SCMI event packets into, so I wanted to keep this as lockless as
possible.

At first I used an RCU and an hash table to access it safely and locklessly, but
then I realized that these slots were written only once for all at initialization time
and then only (frequently) read afterwards on the rx path. (the write-once though
happens at unpredictable time, i.e. when the related underlying protocol is
initialized, action which depends on when the first SCMI driver user of that
protocol is in turn initialzed: usually at boot time, BUT possibly later if the
user driver is a module or also possibly never)

So it seemed overkill to add the complexity of an RCU htable just for writing a
word-sized aligned single-copy-atomic pointer value into an array that is written
once for all and then never changes again: the only thing I really cared here was
to concurrently write and safely read the pointer from the array and check if it
is NOT NULL.

This led indeed to a fairly sparse array mostly empty though (and a few barriers):
it seemed preferable to me at the end though.

> > +	if (!ni->registered_protocols)
> > +		goto err;
> > +
> > +	handle->notify_priv = ni;
> > +	/* Ensure handle is up to date */
> > +	smp_wmb();
> > +
> > +	pr_info("SCMI Notifications Core Enabled.\n");
> > +
> > +	devres_close_group(handle->dev, ni->gid);
> > +
> > +	return 0;
> > +
> > +err:
> > +	pr_warn("SCMI Notifications - Initialization Failed.\n");
> 
> You have defined pr_fmt, do you still need "SCMI Notifications" for
> all the logging(err/warn/info) everywhere in the file. Making use of
> it will help you trim the messages without loosing it in the log. Update
> pr_fmt if needed.
> 

Yes you are right, it just does not make sense this dumb repetition: I'll
fix the pr_fmt

> > +	devres_release_group(handle->dev, NULL);
> > +	return -ENOMEM;
> > +}
> > +
> > +/**
> > + * scmi_notification_exit()  - Shutdown and clean Notification core
> > + * @handle: The handle identifying the platform instance to shutdown
> > + */
> > +void scmi_notification_exit(struct scmi_handle *handle)
> > +{
> > +	struct scmi_notify_instance *ni;
> > +
> > +	/* Ensure notify_priv is updated */
> > +	smp_rmb();
> > +	if (unlikely(!handle->notify_priv))
> > +		return;
> > +	ni = handle->notify_priv;
> > +
> > +	devres_release_group(ni->handle->dev, ni->gid);
> > +}
> > diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
> > new file mode 100644
> > index 000000000000..54094aaf812a
> > --- /dev/null
> > +++ b/drivers/firmware/arm_scmi/notify.h
> > @@ -0,0 +1,56 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * System Control and Management Interface (SCMI) Message Protocol
> > + * notification header file containing some definitions, structures
> > + * and function prototypes related to SCMI Notification handling.
> > + *
> > + * Copyright (C) 2020 ARM Ltd.
> > + */
> > +#ifndef _SCMI_NOTIFY_H
> > +#define _SCMI_NOTIFY_H
> > +
> > +#include <linux/device.h>
> > +#include <linux/types.h>
> > +
> > +/**
> > + * struct scmi_event  - Describes an event to be supported
> > + * @id: Event ID
> > + * @max_payld_sz: Max possible size for the payload of a notif msg of this kind
> > + * @max_report_sz: Max possible size for the report of a notif msg of this kind
> 
> :s/notif msg of this kind/notification message/
> 

I'll do.

Thanks

Cristian
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
