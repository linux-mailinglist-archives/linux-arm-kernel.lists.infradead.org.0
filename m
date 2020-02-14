Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3B715DB04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Oxi/T+DDakMAer0BLNUp81zj0hEk5l8RxjDWEZh0pw=; b=Ecy9cgCnfqD2D9
	ngBvJ6rwBN1mSLgirmEJihndW+UcV2MeeLjqTNDZYRiEXgF8Fvc90JXo4QcOnxziu2KqPEL/R/7G4
	nEGVeMKNMM7ql3+IrWL8HE5YRuLcXX20dLmYvgFoovDeHzQg63FWMVly3I5Rr7aV9FQsFalaC4K02
	LVVrLPU8LSdivQ4Gr7eYW9/cCy/Y7tloo4unnBhzM8vm+ndtzPN8CghI+fEP9+yMkYoocMKbYvsd9
	ewxrGzyfUUisVZVeeUVVxel3uw7ydyN54PApBB/+0nkS5JFvfIOvIg9zTP2kSG6y7Pj6hSyrLepQD
	/SyQfhY2XRkSkkFEGOzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cxj-0007zz-Ld; Fri, 14 Feb 2020 15:33:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cxZ-0007zH-Lr
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:32:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A07F7328;
 Fri, 14 Feb 2020 07:32:52 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 964E03F68E;
 Fri, 14 Feb 2020 07:32:51 -0800 (PST)
Subject: Re: [RFC PATCH 04/11] firmware: arm_scmi: Add core notifications
 support
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
References: <20200120122333.46217-1-cristian.marussi@arm.com>
 <20200120122333.46217-5-cristian.marussi@arm.com>
 <20200127181148.00006dc5@Huawei.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <1a147602-58b1-2a7c-60c5-36072afdf2bd@arm.com>
Date: Fri, 14 Feb 2020 15:32:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200127181148.00006dc5@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_073253_819430_0D240335 
X-CRM114-Status: GOOD (  28.22  )
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
Cc: james.quinlan@broadcom.com, lukasz.luba@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 27/01/2020 18:11, Jonathan Cameron wrote:
> On Mon, 20 Jan 2020 12:23:26 +0000
> Cristian Marussi <cristian.marussi@arm.com> wrote:
> 
>> Add basic support for SCMI Notifications, using Kernel notification chains
>> mechanism.
>>
>> Each SCMI Protocol has a dedicated events' queue and deferred worker which
>> is in charge of delivering the notifications to the interested users
>> invoking the users' registered callbacks.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> 
> I'm not keen on the huge asymmetry on the setup and tear down paths.
> For instance the lack of a scmi_unregister_protocol events.
> 

In v2 I removed most of the init/cleanup asymmetry reviwewing the initialization
cleanup logic and make more use of devres groups to limit the uglyness and
complexity of endless gotos on failpath.

> The idr usage is not standard.  They aren't the right structure
> if you known the value you want.
> 

Moved to hashtables as said.


> Not a particularly thorough review otherwise. Out of time for today and
> may not get back to this for a while.
> 
> Thanks,
> 
> Jonathan
> 

Regards

Cristian

>> ---
>>  drivers/firmware/arm_scmi/Makefile |   2 +-
>>  drivers/firmware/arm_scmi/common.h |   4 +
>>  drivers/firmware/arm_scmi/driver.c |   2 +
>>  drivers/firmware/arm_scmi/notify.c | 904 +++++++++++++++++++++++++++++
>>  drivers/firmware/arm_scmi/notify.h |  79 +++
>>  5 files changed, 990 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/firmware/arm_scmi/notify.c
>>  create mode 100644 drivers/firmware/arm_scmi/notify.h
>>
>> diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
>> index 5f298f00a82e..26587ea4661f 100644
>> --- a/drivers/firmware/arm_scmi/Makefile
>> +++ b/drivers/firmware/arm_scmi/Makefile
>> @@ -1,6 +1,6 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o
>>  scmi-bus-y = bus.o
>> -scmi-driver-y = driver.o
>> +scmi-driver-y = driver.o notify.o
>>  scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
>>  obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
>> diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
>> index df35358ff324..2621c05e9149 100644
>> --- a/drivers/firmware/arm_scmi/common.h
>> +++ b/drivers/firmware/arm_scmi/common.h
>> @@ -6,6 +6,8 @@
>>   *
>>   * Copyright (C) 2018 ARM Ltd.
>>   */
>> +#ifndef _SCMI_COMMON_H
>> +#define _SCMI_COMMON_H
>>  
>>  #include <linux/bitfield.h>
>>  #include <linux/completion.h>
>> @@ -113,3 +115,5 @@ void scmi_setup_protocol_implemented(const struct scmi_handle *handle,
>>  				     u8 *prot_imp);
>>  
>>  int scmi_base_protocol_init(struct scmi_handle *h);
>> +
>> +#endif /* _SCMI_COMMON_H */
>> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
>> index 28ed1f0cb417..a43fad29de11 100644
>> --- a/drivers/firmware/arm_scmi/driver.c
>> +++ b/drivers/firmware/arm_scmi/driver.c
>> @@ -350,12 +350,14 @@ __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
>>  
>>  static void scmi_handle_notification(struct scmi_chan_info *cinfo, u32 msg_hdr)
>>  {
>> +	ktime_t ts;
>>  	struct scmi_xfer *xfer;
>>  	struct device *dev = cinfo->dev;
>>  	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
>>  	struct scmi_xfers_info *minfo = &info->rx_minfo;
>>  	struct scmi_shared_mem __iomem *mem = cinfo->payload;
>>  
>> +	ts = ktime_get_boottime();
>>  	xfer = scmi_xfer_get(cinfo->handle, minfo);
>>  	if (IS_ERR(xfer)) {
>>  		dev_err(dev, "failed to get free message slot (%ld)\n",
>> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
>> new file mode 100644
>> index 000000000000..da342f43021e
>> --- /dev/null
>> +++ b/drivers/firmware/arm_scmi/notify.c
>> @@ -0,0 +1,904 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * System Control and Management Interface (SCMI) Notification support
>> + *
>> + * Copyright (C) 2019 ARM Ltd.
>> + *
>> + * SCMI Protocol specification allows the platform to signal events to
>> + * interested agents via notification messages: this in an implementation
>> + * of the dispatch and delivery of such notifications to the interested users
>> + * inside the Linux kernel.
>> + *
>> + * Each SCMI Protocol implementation, during its initialization, registers with
>> + * this core notification framework its set of supported events via
>> + * @scmi_register_protocol_events(), while Kernel users interested in some
>> + * specific event can register their associated callbacks providing the usual
>> + * notifier_block descriptor, since the notification system internally supports
>> + * events delivery using customized notification chains.
>> + *
>> + * Given the number of possible events defined by SCMI and the extensibility
>> + * of the SCMI Protocol itself, such underlying notification chains are created
>> + * and destroyed dynamically on demand depending on the number of users
>> + * effectively registered for an event, so that no structures or chains are
>> + * allocated until at least one user has registered a notifier_block for such
>> + * event. Similarly, events' generation itself is enabled at the platform level
>> + * only after at least one user has registered, and it is shutdown after the
>> + * last user for that event has gone.
>> + *
>> + * An event is identified univocally by the tuple (proto_id, evt_id, src_id)
>> + * and is served by its own dedicated notification chain: given that such chain
>> + * is dynamically created, the registration API simply let the users associate
>> + * their callbacks with the above tuple.
>> + *
>> + * Here proto_id and evt_id are simply the protocol_id and message_id numbers as
>> + * reported in the SCMI Protocol specification, while src_id represents an
>> + * optional, protocol dependent, source identifier (like domain_id, perf_id
>> + * or sensor_id and so forth), so that a user can register its callbacks for a
>> + * particular event coming only from a defined source (like CPU vs GPU).
>> + * When the source is not specified the user callback will be registered for
>> + * all existing sources for that event (if any).
>> + *
>> + * Upon reception of a notification message from the platform the SCMI RX ISR
>> + * passes the received message payload and some ancillary information (including
>> + * an arrival timestamp in nanoseconds) to the core via @scmi_notify(), which,
>> + * in turn, after having looked up the event in the registered events mapping,
>> + * pushes the event-data itself on a protocol dedicated kfifo queue for deferred
>> + * processing.
>> + *
>> + * Such dedicated protocols' queues are allocated once for all at initialization
>> + * time, together with a dedicated work_item running the common delivery logic
>> + * of @scmi_events_dispatcher(), so that each protocol has it own dedicated
>> + * worker which, once kicked by the ISR, takes care to empty is own dedicated
>> + * queue deliverying the queued items into the proper notification chain.
>> + * Note that since the underlying cmwq workers run one distinct work_item per
>> + * protocol and there are a number of max-active workers equal to the number of
>> + * protocols, notifications processing can proceed concurrently only between
>> + * events belonging to different protocols, while delivery of events within the
>> + * same protocol is still strictly sequentially ordered by time of arrival; this
>> + * separation effectively avoids the possibility that one particularly verbose
>> + * protocol, flooding the queues with events, can cause other protocols' events
>> + * to be lost or their processing starved.
>> + *
>> + * Event's information is converted to a custom per-event report struct before
>> + * being fed as void *data param to the user callback embedded in the registered
>> + * notifier_block so that it looks like as follow from the user perspective:
>> + *
>> + * int user_cb(struct notifier_block *nb, unsigned long event_id, void *report)
>> + *
> No point in having blank lines at the end of a comment block.
>> + *
>> + */
>> +
>> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>> +
>> +#include <linux/bug.h>
>> +#include <linux/bitfield.h>
>> +#include <linux/err.h>
>> +#include <linux/idr.h>
>> +#include <linux/kernel.h>
>> +#include <linux/kfifo.h>
>> +#include <linux/notifier.h>
>> +#include <linux/refcount.h>
>> +#include <linux/slab.h>
>> +#include <linux/scmi_protocol.h>
>> +#include <linux/types.h>
>> +#include <linux/workqueue.h>
>> +
>> +#include "notify.h"
>> +
>> +#define SCMI_NOTIF_MAX_ACTIVE_QUEUES	7
>> +
>> +/*
>> + * Builds an unsigned 32bit key from the given input tuple to be used as a key
>> + * in IDR mappings; note that if __src_p is passed in as NULL, the returned key
>> + * is built using SCMI_ALL_SRC_IDS as src_id.
>> + */
>> +#define MAKE_EVT_KEY(__proto, __evt, __src_p)				\
>> +	({								\
>> +		u32 __evt_key, __src_id;				\
>> +									\
>> +		__src_id = ((__src_p)) ?				\
>> +			    (*((u32 *)(__src_p)) & SCMI_ALL_SRC_IDS) :	\
>> +			    SCMI_ALL_SRC_IDS;				\
>> +		__evt_key = ((__proto) << 24) |				\
>> +				((__evt) << 16) | __src_id;		\
>> +		__evt_key;						\
>> +	})
>> +
>> +#define PROTO_ID_MASK			GENMASK(31, 24)
>> +#define EVT_ID_MASK			GENMASK(23, 16)
>> +#define SRC_ID_MASK			GENMASK(15, 0)
>> +#define KEY_XTRACT_PROTO_ID(key)	FIELD_GET(PROTO_ID_MASK, (key))
>> +#define KEY_XTRACT_EVT_ID(key)		FIELD_GET(EVT_ID_MASK, (key))
>> +#define KEY_XTRACT_SRC_ID(key)		FIELD_GET(SRC_ID_MASK, (key))
>> +
>> +/**
>> + * events_queue  - Describes a queue and its associated worker
> 
> Not valid kernel-doc.    I'll assume all other instances will get fixed
> and not bother talking about them.
> 
>> + *
>> + * Each protocol has its own dedicated events_queue descriptor.
>> + *
>> + * @sz: Size in bytes of the related kfifo
>> + * @kfifo: A dedicated Kernel kfifo
>> + * @notify_work: A custom work item bound to this queue
>> + * @wq: A reference to the related workqueue
>> + */
>> +struct events_queue {
>> +	size_t			sz;
>> +	struct kfifo		kfifo;
>> +	struct work_struct	notify_work;
>> +	struct workqueue_struct	*wq;
>> +};
>> +
>> +/**
>> + * scmi_registered_protocol_events_desc  - Protocol Specific information
>> + *
>> + * All protocols that registers at least an event have their protocol-specific
>> + * information stored here, together with a pointer to the allocated
>> + * events_queue.
>> + *
>> + * @id: Protocol ID
>> + * @ops: Protocol specific and event-related operations
>> + * @equeue: A reference to the associated per-protocol events_queue
>> + */
>> +struct scmi_registered_protocol_events_desc {
>> +	u8					id;
>> +	const struct scmi_protocol_event_ops	*ops;
>> +	struct events_queue			*equeue;
>> +};
>> +
>> +/**
>> + * scmi_registered_event  - Event Specific Information
>> + *
>> + * All registered events are represented by one of these structures.
>> + *
>> + * @proto: A reference to the associated protocol descriptor
>> + * @evt: A reference to the associated event descriptor (as provided at
>> + *       registration time)
>> + * @scratch_isr: A pre-allocated buffer to be used as a scratch area by ISR
>> + * @scratch_isr: A pre-allocated buffer to be used as a scratch area by the
>> + *		 deferred worker
> scratch_bh.
> 
>> + * @report: A pre-allocated buffer used by the deferred workr to fill a
> 
> worker
> 
>> + *	    customized event report
>> + */
>> +struct scmi_registered_event {
>> +	struct scmi_registered_protocol_events_desc	*proto;
>> +	const struct scmi_event				*evt;
>> +	void						*scratch_isr;
>> +	void						*scratch_bh;
>> +	void						*report;
>> +};
>> +
>> +/**
>> + * scmi_event_handler  - Event handler information
>> + *
>> + * This structure collects all the information needed to process a received
>> + * event, calling all the registered notifier callbacks.
>> + * Note this an event handler is associated to a tuple of values like:
>> + *	(proto_id, evt_id, src_id)
>> + * through the means of a key and an IDR mapping.
>> + *
>> + * @evt_key: The unsigned 32bit key associated to this descriptor in the
>> + *	     related IDR mapping
>> + * @r_evt: A reference to the underlying registered event
>> + * @chain: The notification chain dedicated to this specific event tuple
>> + */
>> +struct scmi_event_handler {
>> +	u32				evt_key;
>> +	bool				enabled;
>> +	refcount_t			users;
>> +	struct scmi_registered_event	*r_evt;
>> +	struct blocking_notifier_head	chain;
>> +};
>> +
>> +/**
>> + * scmi_event_header  - A utility header
> 
> That's not a good description.
> 
>> + *
>> + * This header is prepended to each received event message payload before
>> + * being queued on the related events_queue, and describes the attached event
>> + * message.
>> + *
>> + * @timestamp: The timestamp, innanoseconds (boottime), which was associated
>> + *	       to this event as soon as it entered the SCMI RX ISR
>> + * @proto_id: Protocol ID
>> + * @evt_id: Event ID (corresponds to the Event MsgID for this Protocol)
>> + * @payld_sz: Effective size of the attached message payload which follows
>> + * @payld: A reference to the included Event payload
>> + */
>> +struct scmi_event_header {
>> +	u64	timestamp;
>> +	u8	proto_id;
>> +	u8	evt_id;
>> +	size_t	payld_sz;
>> +	u8	payld[];
>> +} __packed;
>> +
>> +/*
>> + * A few IDR maps to track:
>> + *
>> + * - @scmi_registered_events: All event's descriptors registered by the
>> + *			      protocols, together with their ancillary data
>> + * - @scmi_registered_events_handlers: All event's handlers descriptors, created
>> + *				       to collect all the users' notifier_block
>> + *				       callbacks and related notification chains
>> + * - @scmi_registered_protocols: All protocol-level specific information related
>> + *				 to events' handling
>> + */
>> +static struct idr scmi_registered_events;
>> +static struct idr scmi_registered_events_handlers;
>> +static DEFINE_MUTEX(scmi_registered_events_handler_mtx);
>> +static struct idr scmi_registered_protocols;
>> +
>> +/* Common Kernel cmwq workqueue used by notifications core */
>> +static struct workqueue_struct *scmi_notify_wq;
>> +
>> +static bool scmi_notifications_initialized;
>> +
>> +static struct scmi_event_handler *scmi_get_event_handler(u32 evt_key);
>> +static void scmi_put_event_handler(struct scmi_event_handler *hndl);
>> +
>> +/**
>> + * scmi_discard_bad_evt_payloadi() - Discard data from a kfifo
> 
> function name is wrong.
> 
>> + *
>> + * @kq: The kfifo to act on
>> + * @count: Number of bytes to flush
>> + */
>> +static inline void scmi_discard_bad_evt_payload(struct kfifo *kq,
>> +						const unsigned int count)
>> +{
>> +	int i = 0;
>> +
>> +	pr_warn("SCMI Notification WQ :: skipping bad EVT Payload - %d bytes\n",
>> +		count);
>> +	/* Discard stale pending queued payload. */
>> +	for (i = 0; i < count; i++)
>> +		kfifo_skip(kq);
>> +}
>> +
>> +/**
>> + * scmi_lookup_and_call_event_chain  - Lookup the proper chain and call it
>> + *
>> + * @evt_key: The event key to use to lookup the related notification chain
>> + * @report: The customized event-specific report to pass down to the callbacks
>> + *	    as their *data parameter.
>> + */
>> +static inline void scmi_lookup_and_call_event_chain(u32 evt_key, void *report)
>> +{
>> +	int ret;
>> +	struct scmi_event_handler *hndl;
>> +
>> +	hndl = scmi_get_event_handler(evt_key);
>> +	if (IS_ERR_OR_NULL(hndl))
>> +		return;
>> +
>> +	ret = blocking_notifier_call_chain(&hndl->chain,
>> +					   KEY_XTRACT_EVT_ID(evt_key),
>> +					   report);
>> +	/* Notifiers are NOT supposed to cut the chain */
>> +	WARN_ON_ONCE(ret & NOTIFY_STOP_MASK);
>> +
>> +	scmi_put_event_handler(hndl);
>> +}
>> +
>> +/**
>> + * scmi_events_dispatcher  - Common worker logic for all work items.
>> + *
>> + * In turn:
>> + *  1. dequeue one pending RX notification (queued in SCMI RX ISR context)
>> + *  2. generate a custom event report from the received event message
>> + *  3. lookup for any registered ALL_SRC_IDs handler
>> + *     - > call the related notification chain passing in the report
>> + *  4. lookup for any registered specific SRC_ID handler
>> + *     - > call the related notification chain passing in the report
>> + *
>> + * Note that:
>> + * - a dedicated per-protocol kfifo queue is used: in this way an anomalous
>> + *   flood of events cannot saturate other protocols' queues.
>> + *
>> + * - each per-protocol queue is associated to a distinct work_item, which
>> + *   means, in turn, that:
>> + *   + all protocol can process their dedicated queues concurrently
>> + *     (since scmi_notify_wq:max_active > 1)
>> + *   + anyway at most one worker instance is allowed to run on the same queue
>> + *     concurrently: this ensures that we can have only one concurrent
>> + *     reader/writer on the associated kfifo (needed for lock-less access)
>> + *
>> + * @work: The work item to use, which is associated to the proper events_queue
>> + */
>> +static void scmi_events_dispatcher(struct work_struct *work)
>> +{
>> +	struct events_queue *equeue;
>> +	struct scmi_event_header eh;
>> +
>> +	equeue = container_of(work, struct events_queue, notify_work);
>> +	while (kfifo_out(&equeue->kfifo, &eh, sizeof(eh))) {
>> +		u32 src_id, evt_key;
>> +		unsigned int outs;
>> +		struct scmi_registered_event *r_evt;
>> +		void *report = NULL;
>> +
>> +		evt_key = MAKE_EVT_KEY(eh.proto_id, eh.evt_id, NULL);
>> +		r_evt = idr_find(&scmi_registered_events, evt_key);
>> +		if (!r_evt) {
>> +			scmi_discard_bad_evt_payload(&equeue->kfifo,
>> +						     eh.payld_sz);
>> +			continue;
>> +		}
>> +
>> +		outs = kfifo_out(&equeue->kfifo, r_evt->scratch_bh,
>> +				 eh.payld_sz);
>> +		if (outs != eh.payld_sz) {
>> +			pr_warn("SCMI Notification WQ :: SKIP corrupted EVT Payload.\n");
>> +			continue;
>> +		}
>> +
>> +		/* Reset and fill custom report */
>> +		memset(r_evt->report, 0x00, r_evt->evt->max_report_sz);
>> +		report = r_evt->proto->ops->fill_custom_report(eh.evt_id,
>> +							eh.timestamp,
>> +							r_evt->scratch_bh,
>> +							eh.payld_sz,
>> +							r_evt->report,
>> +							&src_id);
>> +		if (!report)
>> +			continue;
>> +
>> +		/* At first search for a generic ALL src_ids handler... */
>> +		scmi_lookup_and_call_event_chain(evt_key, report);
>> +		if (src_id != SCMI_ALL_SRC_IDS) {
>> +			u32 *__sub_p = &src_id;
>> +
>> +			evt_key = MAKE_EVT_KEY(eh.proto_id, eh.evt_id, __sub_p);
>> +			scmi_lookup_and_call_event_chain(evt_key, report);
>> +		}
>> +	}
>> +}
>> +
>> +/**
>> + * scmi_notify  - Queues a notification for further deferred processing
>> + *
>> + * This is called in interrupt context to queue a received event for
>> + * deferred processing.
>> + *
>> + * @proto_id: Protocol ID
>> + * @evt_id: Event ID (msgID)
>> + * @buf: Event Message Payload (without the header)
>> + * @len: Event Message Payload size
>> + * @ts: RX Timestamp in nanoseconds (boottime)
>> + *
>> + * Return: 0 on Success
>> + */
>> +int scmi_notify(u8 proto_id, u8 evt_id, const void *buf, size_t len, u64 ts)
>> +{
>> +	struct scmi_registered_event *r_evt;
>> +	struct scmi_event_header *eh;
>> +
>> +	if (unlikely(!scmi_notifications_initialized))
>> +		return 0;
>> +
>> +	r_evt = idr_find(&scmi_registered_events,
>> +			 MAKE_EVT_KEY(proto_id, evt_id, NULL));
>> +	if (unlikely(!r_evt || !r_evt->proto->equeue))
>> +		return -EINVAL;
>> +
>> +	if (unlikely(len > r_evt->evt->max_payld_sz)) {
>> +		pr_err("SCMI Notification discard badly sized message\n");
>> +		return -EINVAL;
>> +	}
>> +	if (unlikely(kfifo_avail(&r_evt->proto->equeue->kfifo) <
>> +		     sizeof(*eh) + len)) {
>> +		pr_warn("SCMI Notification queue full: dropping proto_id:%d  evt_id:%d  ts:%lld\n",
>> +			proto_id, evt_id, ts);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	/*
>> +	 * Note that we can use the per protocol kfifo in a lock-less manner
>> +	 * since we have only one concurrent reader and writer but, in order
>> +	 * to avoid any trouble on the reader side, here we perform one single
>> +	 * write, so we have to collate event header and payload in a scratch
>> +	 * area at first.
>> +	 */
>> +	eh = r_evt->scratch_isr;
>> +	eh->timestamp = ts;
>> +	eh->proto_id = proto_id;
>> +	eh->evt_id = evt_id;
>> +	eh->payld_sz = len;
>> +	memcpy(eh->payld, buf, eh->payld_sz);
>> +	kfifo_in(&r_evt->proto->equeue->kfifo, eh, sizeof(*eh) + eh->payld_sz);
>> +	queue_work(r_evt->proto->equeue->wq,
>> +		   &r_evt->proto->equeue->notify_work);
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * scmi_allocate_events_queue  - Allocate an events_queue descriptor
>> + *
>> + * @sz: Size of the kfifo to initialize
>> + *
>> + * Return: A valid pointer to the allocated events_queue on Success
>> + */
>> +static struct events_queue *scmi_allocate_events_queue(size_t sz)
>> +{
>> +	int ret;
>> +	struct events_queue *equeue;
>> +
>> +	equeue = kzalloc(sizeof(*equeue), GFP_KERNEL);
>> +	if (!equeue)
>> +		return ERR_PTR(-ENOMEM);
>> +	ret = kfifo_alloc(&equeue->kfifo, sz, GFP_KERNEL);
>> +	if (ret) {
>> +		kfree(equeue);
>> +		return ERR_PTR(ret);
>> +	}
>> +	equeue->sz = sz;
>> +	INIT_WORK(&equeue->notify_work, scmi_events_dispatcher);
>> +	equeue->wq = scmi_notify_wq;
>> +
>> +	return equeue;
>> +}
>> +
>> +/**
>> + * scmi_deallocate_events_queue  - Deallocate am events_queue descriptor
>> + *
>> + * @equeue: The events_queue to free
>> + */
>> +static void scmi_deallocate_events_queue(struct events_queue *equeue)
>> +{
>> +	kfifo_free(&equeue->kfifo);
>> +	kfree(equeue);
>> +}
>> +
>> +/**
>> + * scmi_allocate_registered_protocol_desc  - Allocate a registered protocol
>> + * events' descriptor
>> + *
>> + * Used to keep protocol specific information related to events handling for any
>> + * protocl which has registered at least one event.
> 
> protocol
> 
>> + *
>> + * @proto_id: Protocol ID
>> + * @queue_sz: Size of the associated queue to allocate
>> + * @ops: Pointer to a struct holding references to protocol specific helpers
>> + *	 needed during events handling
>> + */
>> +static struct scmi_registered_protocol_events_desc *
>> +scmi_allocate_registered_protocol_desc(u8 proto_id, size_t queue_sz,
>> +				const struct scmi_protocol_event_ops *ops)
>> +{
>> +	int ret;
>> +	struct scmi_registered_protocol_events_desc *pdesc;
>> +
>> +	pdesc = idr_find(&scmi_registered_protocols, proto_id);
> 
> Perhaps add a comment here on why this might get called multiple times
> but is still safe from point of view of release path.
> 
>> +	if (pdesc)
>> +		return pdesc;
> 
> 
>> +
>> +	pdesc = kzalloc(sizeof(*pdesc), GFP_KERNEL);
>> +	if (!pdesc)
>> +		return ERR_PTR(-ENOMEM);
>> +	pdesc->id = proto_id;
>> +	pdesc->ops = ops;
>> +
>> +	pdesc->equeue = scmi_allocate_events_queue(queue_sz);
>> +	if (IS_ERR(pdesc->equeue)) {
>> +		kfree(pdesc);
>> +		return ERR_CAST(pdesc->equeue);
>> +	}
>> +
>> +	ret = idr_alloc(&scmi_registered_protocols, pdesc,
>> +			pdesc->id, pdesc->id + 1, GFP_KERNEL);
>> +	if (ret < 0) {
>> +		pr_err("SCMI Failed to allocate PDESC IDR - key:%d - err:%d\n",
>> +		       pdesc->id, ret);
>> +		scmi_deallocate_events_queue(pdesc->equeue);
>> +		kfree(pdesc);
>> +		return ERR_PTR(ret);
>> +	}
>> +
>> +	return pdesc;
>> +}
>> +
>> +/**
>> + * scmi_register_protocol_events  - Register Protocol Events with the core
>> + *
>> + * Used by SCMI Protocols initialization code to register with the notification
>> + * core the list of supported events and their description: this takes care to
>> + * pre-allocate all needed scratch buffers and link the proper event queue to
>> + * this event.
>> + *
>> + * @proto_id: Protocol ID
>> + * @queue_sz: Size in bytes of the associated queue to be allocated
>> + * @ops: Protocol specific event-related operations
>> + * @evt: Event descriptor array
>> + * @num_events: Number of events in @evt array
>> + *
>> + * Return: 0 on Success
>> + */
>> +int scmi_register_protocol_events(u8 proto_id, size_t queue_sz,
>> +				  const struct scmi_protocol_event_ops *ops,
>> +				  const struct scmi_event *evt, int num_events)
>> +{
>> +	int i;
>> +	struct scmi_registered_protocol_events_desc *pdesc;
>> +
>> +	if (!scmi_notifications_initialized)
>> +		return -EAGAIN;
>> +
>> +	if (!ops || !evt)
>> +		return -EINVAL;
>> +
>> +	pdesc = scmi_allocate_registered_protocol_desc(proto_id, queue_sz, ops);
>> +	if (IS_ERR(pdesc))
>> +		return -ENOMEM;
>> +
>> +	for (i = 0; i < num_events; i++, evt++) {
>> +		int ret;
>> +		u32 key;
>> +		struct scmi_registered_event *r_evt;
>> +
>> +		r_evt = kzalloc(sizeof(*r_evt), GFP_KERNEL);
>> +		if (!r_evt)
>> +			continue;
>> +		r_evt->proto = pdesc;
>> +		r_evt->evt = evt;
>> +
>> +		r_evt->scratch_isr = kzalloc(sizeof(struct scmi_event_header) +
>> +					     evt->max_payld_sz, GFP_KERNEL);
>> +		if (!r_evt->scratch_isr)
>> +			goto continue_isr_fail;
>> +
>> +		r_evt->scratch_bh = kzalloc(evt->max_payld_sz, GFP_KERNEL);
>> +		if (!r_evt->scratch_bh)
>> +			goto continue_bh_fail;
>> +
>> +		r_evt->report = kzalloc(evt->max_report_sz, GFP_KERNEL);
>> +		if (!r_evt->report)
>> +			goto continue_report_fail;
>> +
>> +		key = MAKE_EVT_KEY(r_evt->proto->id, evt->evt_id, NULL);
>> +		ret = idr_alloc(&scmi_registered_events, r_evt,
>> +				key, key + 1, GFP_KERNEL);
>> +		if (ret < 0) {
>> +			pr_err("SCMI Failed to allocate EVENT IDR - key:%X - err:%d\n",
>> +			       key, ret);
>> +			goto continue_idr_fail;
>> +		}
>> +
>> +		pr_info("SCMI Notification registered event - key:%X\n", key);
>> +		continue;
>> +
>> +	/* yes, this is not nice ... */
>> +continue_idr_fail:
>> +		kfree(r_evt->report);
>> +continue_report_fail:
>> +		kfree(r_evt->scratch_bh);
>> +continue_bh_fail:
>> +		kfree(r_evt->scratch_isr);
>> +continue_isr_fail:
>> +		kfree(r_evt);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * scmi_register_event_handler  - Allocate an Event handler
>> + *
>> + * Allocate an event handler and related notification chain associated with
>> + * the event identified by the provided event key. Fails if the associated
>> + * event is unknown to the core (i.e. it had not been successfully registered
>> + * upfront by some protocol)
>> + *
>> + * @evt_key: 32bit key uniquely bind to the event identified by the tuple
>> + *	     (proto_id, evt_id, src_id)
>> + *
>> + * Return: the freshly allocated structure on Success
>> + */
>> +static struct scmi_event_handler *scmi_register_event_handler(u32 evt_key)
>> +{
>> +	int id;
>> +	u8 proto_id, evt_id;
>> +	struct scmi_registered_event *r_evt;
>> +	struct scmi_event_handler *hndl;
>> +
>> +	proto_id = KEY_XTRACT_PROTO_ID(evt_key);
>> +	evt_id = KEY_XTRACT_EVT_ID(evt_key);
>> +	r_evt = idr_find(&scmi_registered_events,
>> +			 MAKE_EVT_KEY(proto_id, evt_id, NULL));
>> +	if (!r_evt)
>> +		return ERR_PTR(-EINVAL);
>> +
>> +	hndl = kzalloc(sizeof(*hndl), GFP_KERNEL);
>> +	if (!hndl)
>> +		return ERR_PTR(-ENOMEM);
>> +	hndl->r_evt = r_evt;
>> +	hndl->evt_key = evt_key;
>> +	BLOCKING_INIT_NOTIFIER_HEAD(&hndl->chain);
>> +	refcount_set(&hndl->users, 1);
>> +
>> +	/* Register freshly allocated event handler */
>> +	id = idr_alloc(&scmi_registered_events_handlers, hndl,
>> +		       evt_key, evt_key + 1, GFP_KERNEL);
> 
> Umm. That's not using an idr for what it is meant for. You aren't allocating an id, you
> are using it as a poor wrapper around an xarray.
> 
>> +	if (id < 0) {
>> +		pr_err("SCMI Failed to allocate HNDL IDR - key:%X  err:%d\n",
>> +		       evt_key, id);
>> +		kfree(hndl);
>> +		return ERR_PTR(id);
>> +	}
>> +
>> +	return hndl;
>> +}
>> +
>> +/**
>> + * scmi_unregister_event_handler  - Free the provided Event handler
>> + *
>> + * @hndl: The event handler structure to free
>> + */
>> +static void scmi_unregister_event_handler(struct scmi_event_handler *hndl)
>> +{
>> +	idr_remove(&scmi_registered_events_handlers, hndl->evt_key);
>> +	kfree(hndl);
>> +}
>> +
>> +/**
>> + * __scmi_event_handler_get_ops  - Get or create an event handler
>> + *
>> + * After having got exclusive access to the registered events map, searches for
>> + * the desired handler matching the key: when found adjust refcount, when not
>> + * create and register a new handler is asked to do so.
>> + * Events generation is NOT enabled within this routine since at creation time
>> + * we usually want to have all setup and registered before events starts
>> + * flowing.
>> + *
>> + * @evt_key: The event key to use
>> + * @create: A boolean flag to specify if a handler must be created
>> + *	    when not found
>> + */
>> +static inline struct scmi_event_handler *
>> +__scmi_event_handler_get_ops(u32 evt_key, bool create)
>> +{
>> +	struct scmi_event_handler *hndl = NULL;
>> +
>> +	mutex_lock(&scmi_registered_events_handler_mtx);
>> +	hndl = idr_find(&scmi_registered_events_handlers, evt_key);
>> +	if (hndl)
>> +		refcount_inc(&hndl->users);
>> +	else if (create)
>> +		hndl = scmi_register_event_handler(evt_key);
>> +	mutex_unlock(&scmi_registered_events_handler_mtx);
>> +
>> +	return hndl;
>> +}
>> +
>> +static struct scmi_event_handler *scmi_get_event_handler(u32 evt_key)
>> +{
>> +	return __scmi_event_handler_get_ops(evt_key, false);
>> +}
>> +
>> +static struct scmi_event_handler *scmi_get_or_create_event_handler(u32 evt_key)
>> +{
>> +	return __scmi_event_handler_get_ops(evt_key, true);
>> +}
>> +
>> +/**
>> + * __scmi_enable_events_ops  - Enable/disable events generation
>> + *
>> + * @hndl: The handler specifying the events enable/disable
>> + * @action: The action to perform: true->Enable false->Disable
>> + *
>> + * Return: True when the required @action has been successfully executed
>> + */
>> +static inline bool __scmi_enable_events_ops(struct scmi_event_handler *hndl,
>> +					    bool action)
>> +{
>> +	bool ret = true;
>> +
>> +	if (hndl->enabled != action) {
>> +		u8 evt_id;
>> +		u32 src_id;
>> +
>> +		evt_id = KEY_XTRACT_EVT_ID(hndl->evt_key);
>> +		src_id = KEY_XTRACT_SRC_ID(hndl->evt_key);
>> +		ret = hndl->r_evt->proto->ops->set_notify_enabled(evt_id,
>> +			      src_id != SCMI_ALL_SRC_IDS ? &src_id : NULL,
>> +			      action);
>> +		if (ret)
>> +			hndl->enabled = action;
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>> +static bool scmi_enable_events(struct scmi_event_handler *hndl)
>> +{
>> +	return __scmi_enable_events_ops(hndl, true);
>> +}
>> +
>> +static bool scmi_disable_events(struct scmi_event_handler *hndl)
>> +{
>> +	return __scmi_enable_events_ops(hndl, false);
>> +}
>> +
>> +/**
>> + * scmi_put_event_handler  - Put an event handler
>> + *
>> + * After having got exclusive access to the registered events map, update
>> + * the refcount and if @hndl is no more in use by anyone:
>> + *  - disable the events generation
>> + *  - unregister and free the handler itself
>> + *
>> + * @hndl: The handler to act upon
>> + */
>> +static void scmi_put_event_handler(struct scmi_event_handler *hndl)
>> +{
>> +	mutex_lock(&scmi_registered_events_handler_mtx);
>> +	if (refcount_dec_and_test(&hndl->users)) {
>> +		scmi_disable_events(hndl);
>> +		scmi_unregister_event_handler(hndl);
>> +	}
>> +	mutex_unlock(&scmi_registered_events_handler_mtx);
>> +}
>> +
>> +/**
>> + * scmi_register_event_notifier  - Register a notifier_block for an event
>> + *
>> + * Generic helper to register a notifier_block attached to a protocol event.
>> + *
>> + * A notifier_block @nb will be registered for each distinct event identified
>> + * by the tuple (proto_id, evt_id, src_id) on a dedicated notification chain
>> + * so that:
>> + *
>> + *	(proto_X, evt_Y, src_Z) --> chain_X_Y_Z
>> + *
>> + * @src_id meaning is protocol specific and identifies the origin of the event
>> + * (like domain_id, sensor_id and os forth); @src_id can be NULL to signify that
> 
> so
> 
>> + * the caller is interested in receiving notifications from ALL the available
>> + * sources for that protocol OR simply that the protocol does not support
>> + * distinct sources: in these cases @nb will be attached to a generic
>> + * notification chain defined for ALL src_id of that proto_id/evt_id pair like:
>> + *
>> + *	(proto_X, evt_Y, NULL) --> chain_X_Y_ALL
>> + *
>> + * Any received event will be then dispatched to both such chains if at least
>> + * one user had registered an @nb on them.
> 
> both should be all I think.
> 
>> + *
>> + * Note also that notification chains are created dynamically: a new chain is
>> + * created each time a new distinct tuple is detected and then the provided @nb
>> + * is bound to such chain; at creation time the related SCMI notifications are
>> + * also enabled: this way, only when at least one user has registered its
>> + * interest for a specific event tuple, the underlying notification chain is
>> + * created and the related notifications are enabled in the platform.
> 
> That's one of the most complex bits of punctuation I've seenin a comment for
> a long time.   Please break that sentence up for readability.
> 
>> + *
>> + * @proto_id: Protocol ID
>> + * @evt_id: Event ID
>> + * @src_id: Source ID
>> + * @nb: A standard notifier block to register for the specified event
>> + *
>> + * Return: Return 0 on Success
>> + */
>> +int scmi_register_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
>> +				 struct notifier_block *nb)
>> +{
>> +	u32 evt_key;
>> +	struct scmi_event_handler *hndl;
>> +
>> +	evt_key = MAKE_EVT_KEY(proto_id, evt_id, src_id);
>> +	hndl = scmi_get_or_create_event_handler(evt_key);
>> +	if (IS_ERR_OR_NULL(hndl))
>> +		return PTR_ERR(hndl);
>> +
>> +	blocking_notifier_chain_register(&hndl->chain, nb);
>> +
>> +	if (!scmi_enable_events(hndl)) {
>> +		pr_err("SCMI Failed to ENABLE events for key:%X !\n", evt_key);
>> +		blocking_notifier_chain_unregister(&hndl->chain, nb);
>> +		scmi_put_event_handler(hndl);
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * scmi_unregister_event_notifier  - Unregister a notifier_block for an event
>> + *
>> + * Takes care to unregister the provided @nb from the notification chain
>> + * associated to the specified event and, if there are no more users for the
>> + * event handler, frees also the associated event handler structures.
>> + *
>> + * @proto_id: Protocol ID
>> + * @evt_id: Event ID
>> + * @src_id: Source ID
>> + * @nb: The notifier_block to unregister
>> + *
>> + * Return: 0 on Success
>> + */
>> +int scmi_unregister_event_notifier(u8 proto_id, u8 evt_id, u32 *src_id,
>> +				   struct notifier_block *nb)
>> +{
>> +	u32 evt_key;
>> +	struct scmi_event_handler *hndl;
>> +
>> +	evt_key = MAKE_EVT_KEY(proto_id, evt_id, src_id);
>> +	hndl = scmi_get_event_handler(evt_key);
>> +	if (IS_ERR_OR_NULL(hndl))
>> +		return -EINVAL;
>> +
>> +	blocking_notifier_chain_unregister(&hndl->chain, nb);
>> +
>> +	scmi_put_event_handler(hndl);
>> +	/*
>> +	 * If this was the last user callback for this handler, this last put
>> +	 * will force the handler to be freed.
>> +	 * Note that if a call_chain walk is ongoing it will be the call_chain
>> +	 * put request which will finally free the handler; note also that any
>> +	 * operation on the inner notifier_block chain is protected on its own.
>> +	 */
>> +	scmi_put_event_handler(hndl);
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * scmi_notification_init  - Initializes Notification Core Support
>> + *
>> + * Return: 0 on Success
>> + */
>> +int __init scmi_notification_init(void)
>> +{
>> +	scmi_notify_wq = alloc_workqueue("scmi_notify",
>> +					 WQ_UNBOUND | WQ_FREEZABLE,
>> +					 SCMI_NOTIF_MAX_ACTIVE_QUEUES);
>> +	if (!scmi_notify_wq)
>> +		return -ENOMEM;
>> +	idr_init(&scmi_registered_events);
>> +	idr_init(&scmi_registered_events_handlers);
>> +	idr_init(&scmi_registered_protocols);
>> +
>> +	scmi_notifications_initialized = true;
>> +
>> +	pr_info("SCMI Notifications enabled.\n");
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * scmi_notification_exit  - Shutdown and clean Notification core
>> + */
>> +void __exit scmi_notification_exit(void)
>> +{
>> +	int k;
>> +	struct scmi_event_handler *hndl;
>> +	struct scmi_registered_protocol_events_desc *pdesc;
>> +	struct scmi_registered_event *r_evt;
>> +
>> +	scmi_notifications_initialized = false;
>> +
>> +	/* Disable notifications' generation */
>> +	idr_for_each_entry(&scmi_registered_events_handlers, hndl, k)
>> +		scmi_disable_events(hndl);
>> +
>> +	/* Let pending work complete */
>> +	destroy_workqueue(scmi_notify_wq);
>> +
>> +	/* Remove ALL events handlers */
>> +	idr_for_each_entry(&scmi_registered_events_handlers, hndl, k)
>> +		scmi_put_event_handler(hndl);
>> +	idr_destroy(&scmi_registered_events_handlers);
>> +
>> +	/* Finally remove all registered events */
> 
> Finally seems a bit premature here ;)
> 
>> +	idr_for_each_entry(&scmi_registered_events, r_evt, k) {
>> +		idr_remove(&scmi_registered_events, k);
>> +		kfree(r_evt->report);
>> +		kfree(r_evt->scratch_isr);
>> +		kfree(r_evt->scratch_bh);
>> +		kfree(r_evt);
>> +	}
>> +	idr_destroy(&scmi_registered_events);
>> +
>> +	/* free any remaining protocol data */
>> +	idr_for_each_entry(&scmi_registered_protocols, pdesc, k) {
>> +		idr_remove(&scmi_registered_protocols, k);
>> +		scmi_deallocate_events_queue(pdesc->equeue);
>> +		kfree(pdesc);
>> +	}
>> +	idr_destroy(&scmi_registered_protocols);
>> +}
>> diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
>> new file mode 100644
>> index 000000000000..6fa07b244b14
>> --- /dev/null
>> +++ b/drivers/firmware/arm_scmi/notify.h
>> @@ -0,0 +1,79 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * System Control and Management Interface (SCMI) Message Protocol
>> + * notification header file containing some definitions, structures
>> + * and function prototypes related to SCMI Notification handling.
>> + *
>> + * Copyright (C) 2019 ARM Ltd.
>> + */
>> +#ifndef _SCMI_NOTIFY_H
>> +#define _SCMI_NOTIFY_H
>> +
>> +#include <linux/bug.h>
>> +#include <linux/notifier.h>
>> +#include <linux/types.h>
>> +
>> +#define	SCMI_ALL_SRC_IDS		0x0000ffffL
>> +
>> +#define MAP_EVT_TO_ENABLE_CMD(id, map)			\
>> +({							\
>> +	int ret = -1;					\
>> +							\
>> +	if (likely((id) < ARRAY_SIZE((map))))		\
>> +		ret = (map)[(id)];			\
>> +	else						\
>> +		WARN(1, "UN-KNOWN evt_id:%d\n", (id));	\
>> +	ret;						\
>> +})
>> +
>> +/**
>> + * scmi_event  - Describes an event to be supported
> 
> I don't think this is valid kernel-doc.  Make sure to point the scripts at the
> file and check and fix any warnings.
> 
>> + *
>> + * Each SCMI protocol, during its initialization phase, can describe the events
>> + * it wishes to support in a few struct scmi_event and pass them to the core
>> + * using scmi_register_protocol_events().
>> + *
>> + * @evt_id: Event ID
>> + * @max_payld_sz: Max possible size for the payload of a notif msg of this kind
>> + * @max_report_sz: Max possible size for the report of a notif msg of this kind
>> + */
>> +struct scmi_event {
>> +	u8	evt_id;
>> +	size_t	max_payld_sz;
>> +	size_t	max_report_sz;
>> +
>> +};
>> +
>> +/**
>> + * scmi_protocol_event_ops  - Helpers called by notification core.
>> + *
>> + * These are called only in process context.
>> + *
>> + * @set_notify_enabled: Enable/disable the required evt_id/src_id notifications
>> + *			using the proper custom protocol commands.
>> + *			Return true if at least one the required src_id
>> + *			has been successfully enabled/disabled
>> + * @fill_custom_report: fills a custom event report from the provided
> 
> Nitpick.  Inconsistent capitalization after the :
> 
>> + *			event message payld identifying the event
>> + *			specific src_id.
>> + *			Return NULL on failure otherwise @report now fully
>> + *			populated
>> + */
>> +struct scmi_protocol_event_ops {
>> +	bool (*set_notify_enabled)(u8 evt_id, const u32 *src_id, bool enabled);
>> +	void *(*fill_custom_report)(u8 evt_id, u64 timestamp, const void *payld,
>> +				    size_t payld_sz, void *report, u32 *src_id);
>> +};
>> +
>> +int scmi_notification_init(void);
>> +void scmi_notification_exit(void);
>> +int scmi_register_protocol_events(u8 proto_id, size_t queue_sz,
>> +				  const struct scmi_protocol_event_ops *ops,
>> +				  const struct scmi_event *evt, int num_events);
>> +int scmi_register_event_notifier(u8 proto_id, u8 evt_id, u32 *sub_id,
>> +				 struct notifier_block *nb);
>> +int scmi_unregister_event_notifier(u8 proto_id, u8 evt_id, u32 *sub_id,
>> +				   struct notifier_block *nb);
>> +int scmi_notify(u8 proto_id, u8 evt_id, const void *buf, size_t len, u64 ts);
>> +
>> +#endif /* _SCMI_NOTIFY_H */
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
