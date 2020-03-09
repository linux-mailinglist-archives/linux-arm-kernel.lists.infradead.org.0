Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281D117E037
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:27:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9a/BAeuxuCj58/eiyRgVpNrSOSxjszOJHMHmptLbC7Y=; b=pFRzUCPs5srOOP
	hLP8Zi8FjH3i4CsuoRuvPKWFV2a45nh1/B4odsz3pWtKp7BzZaAOwfqZZxH8cSIV6iBQ+2WtF8nY+
	NrTxSr9iEj46bIUz/NxixJmQy42gj8wpnbRUhJ0gwlecGAU+7Jdtw0ngBLXh25eGznK3vLaDHGlVA
	ux1R2mdEu6SbdiCrr/xNTA3waK10BIWZQjokQYjmw1rQpD6OtiizrQHHp/EudvuGFkt2o7YZjskhB
	019zSZ6m4dgV+KsFER5RmzXMXhmiVkS7AbEqUtlqM3NiK15KZNha9W0ASGcd8ItAiLA3k6unuzk5V
	nvWVz8ApwIGrl5zO/42g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHUa-0005v4-3n; Mon, 09 Mar 2020 12:26:44 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHUA-0005iq-PL
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:26:21 +0000
Received: from lhreml701-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id A7DBF45AE70013DB51C5;
 Mon,  9 Mar 2020 12:26:16 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml701-cah.china.huawei.com (10.201.108.42) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 9 Mar 2020 12:26:16 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 9 Mar 2020
 12:26:16 +0000
Date: Mon, 9 Mar 2020 12:26:14 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
Message-ID: <20200309122614.00000651@Huawei.com>
In-Reply-To: <20200304162558.48836-8-cristian.marussi@arm.com>
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052619_120960_9E34EC00 
X-CRM114-Status: GOOD (  33.34  )
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

On Wed, 4 Mar 2020 16:25:52 +0000
Cristian Marussi <cristian.marussi@arm.com> wrote:

> Add core SCMI Notifications dispatch and delivery support logic which is
> able, at first, to dispatch well-known received events from the RX ISR to
> the dedicated deferred worker, and then, from there, to final deliver the
> events to the registered users' callbacks.
> 
> Dispatch and delivery is just added here, still not enabled.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

Hmm.  Doing that magic in_flight stuff looks fine, but it feels like
the wrong way to approach a problem which is down to the lack of
atomicity of the kfifo_in pair.   Could we just make that atomic via
a bit of custom manipulation of the kfifo?

The snag is that stuff isn't exported from the innards of kfifo...

Maybe what you have here is the best option.

Jonathan

> ---
> V3 --> V4
> - dispatcher now handles dequeuing of events in chunks (header+payload):
>   handling of these in_flight events let us remove one unneeded memcpy
>   on RX interrupt path (scmi_notify)
> - deferred dispatcher now access their own per-protocol handlers' table
>   reducing locking contention on the RX path
> V2 --> V3
> - exposing wq in sysfs via WQ_SYSFS
> V1 --> V2
> - splitted out of V1 patch 04
> - moved from IDR maps to real HashTables to store event_handlers
> - simplified delivery logic
> ---
>  drivers/firmware/arm_scmi/notify.c | 334 ++++++++++++++++++++++++++++-
>  drivers/firmware/arm_scmi/notify.h |   9 +
>  2 files changed, 342 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> index d6c08cce3c63..0854d48d5886 100644
> --- a/drivers/firmware/arm_scmi/notify.c
> +++ b/drivers/firmware/arm_scmi/notify.c
> @@ -44,6 +44,27 @@
>   * as described in the SCMI Protocol specification, while src_id represents an
>   * optional, protocol dependent, source identifier (like domain_id, perf_id
>   * or sensor_id and so forth).
> + *
> + * Upon reception of a notification message from the platform the SCMI RX ISR
> + * passes the received message payload and some ancillary information (including
> + * an arrival timestamp in nanoseconds) to the core via @scmi_notify() which
> + * pushes the event-data itself on a protocol-dedicated kfifo queue for further
> + * deferred processing as specified in @scmi_events_dispatcher().
> + *
> + * Each protocol has it own dedicated work_struct and worker which, once kicked
> + * by the ISR, takes care to empty its own dedicated queue, deliverying the
> + * queued items into the proper notification-chain: notifications processing can
> + * proceed concurrently on distinct workers only between events belonging to
> + * different protocols while delivery of events within the same protocol is
> + * still strictly sequentially ordered by time of arrival.
> + *
> + * Events' information is then extracted from the SCMI Notification messages and
> + * conveyed, converted into a custom per-event report struct, as the void *data
> + * param to the user callback provided by the registered notifier_block, so that
> + * from the user perspective his callback will look invoked like:
> + *
> + * int user_cb(struct notifier_block *nb, unsigned long event_id, void *report)
> + *
>   */
>  
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> @@ -64,6 +85,7 @@
>  #include <linux/scmi_protocol.h>
>  #include <linux/slab.h>
>  #include <linux/types.h>
> +#include <linux/workqueue.h>
>  
>  #include "notify.h"
>  
> @@ -143,6 +165,8 @@
>  #define REVT_NOTIFY_ENABLE(revt, ...)	\
>  	((revt)->proto->ops->set_notify_enabled((revt)->proto->ni->handle,     \
>  						__VA_ARGS__))
> +#define REVT_FILL_REPORT(revt, ...)	\
> +	((revt)->proto->ops->fill_custom_report(__VA_ARGS__))
>  
>  struct scmi_registered_protocol_events_desc;
>  
> @@ -158,6 +182,7 @@ struct scmi_registered_protocol_events_desc;
>   *		 and protocols are allowed to register their supported events
>   * @enabled: A flag to indicate events can be enabled and start flowing
>   * @init_work: A work item to perform final initializations of pending handlers
> + * @notify_wq: A reference to the allocated Kernel cmwq
>   * @pending_mtx: A mutex to protect @pending_events_handlers
>   * @registered_protocols: An statically allocated array containing pointers to
>   *			  all the registered protocol-level specific information
> @@ -173,6 +198,8 @@ struct scmi_notify_instance {
>  
>  	struct work_struct				init_work;
>  
> +	struct workqueue_struct				*notify_wq;
> +
>  	struct mutex					pending_mtx;
>  	struct scmi_registered_protocol_events_desc	**registered_protocols;
>  	DECLARE_HASHTABLE(pending_events_handlers, 8);
> @@ -186,11 +213,15 @@ struct scmi_notify_instance {
>   * @sz: Size in bytes of the related kfifo
>   * @qbuf: Pre-allocated buffer of @sz bytes to be used by the kfifo
>   * @kfifo: A dedicated Kernel kfifo descriptor
> + * @notify_work: A custom work item bound to this queue
> + * @wq: A reference to the associated workqueue
>   */
>  struct events_queue {
>  	size_t				sz;
>  	u8				*qbuf;
>  	struct kfifo			kfifo;
> +	struct work_struct		notify_work;
> +	struct workqueue_struct		*wq;
>  };
>  
>  /**
> @@ -316,8 +347,249 @@ struct scmi_event_handler {
>  
>  #define IS_HNDL_PENDING(hndl)	((hndl)->r_evt == NULL)
>  
> +static struct scmi_event_handler *
> +scmi_get_active_handler(struct scmi_notify_instance *ni, u32 evt_key);
> +static void scmi_put_active_handler(struct scmi_notify_instance *ni,
> +				    struct scmi_event_handler *hndl);
>  static void scmi_put_handler_unlocked(struct scmi_notify_instance *ni,
>  				      struct scmi_event_handler *hndl);
> +
> +/**
> + * scmi_lookup_and_call_event_chain  - Lookup the proper chain and call it
> + *
> + * @ni: A reference to the notification instance to use
> + * @evt_key: The key to use to lookup the related notification chain
> + * @report: The customized event-specific report to pass down to the callbacks
> + *	    as their *data parameter.
> + */
> +static inline void
> +scmi_lookup_and_call_event_chain(struct scmi_notify_instance *ni,
> +				 u32 evt_key, void *report)
> +{
> +	int ret;
> +	struct scmi_event_handler *hndl;
> +
> +	/* Here ensure the event handler cannot vanish while using it */
> +	hndl = scmi_get_active_handler(ni, evt_key);
> +	if (IS_ERR_OR_NULL(hndl))
> +		return;
> +
> +	ret = blocking_notifier_call_chain(&hndl->chain,
> +					   KEY_XTRACT_EVT_ID(evt_key),
> +					   report);
> +	/* Notifiers are NOT supposed to cut the chain ... */
> +	WARN_ON_ONCE(ret & NOTIFY_STOP_MASK);
> +
> +	scmi_put_active_handler(ni, hndl);
> +}
> +
> +/**
> + * scmi_process_event_header  - Dequeue and process an event header
> + *
> + * Read an event header from the protocol queue into the dedicated scratch
> + * buffer and looks for a matching registered event; in case an anomalously
> + * sized read is detected just flush the queue.
> + *
> + * @eq: The queue to use
> + * @pd: The protocol descriptor to use
> + *
> + * Returns:
> + *  - a reference to the matching registered event when found
> + *  - ERR_PTR(-EINVAL) when NO registered event could be found
> + *  - NULL when the queue is empty
> + */
> +static inline struct scmi_registered_event *
> +scmi_process_event_header(struct events_queue *eq,
> +			  struct scmi_registered_protocol_events_desc *pd)
> +{
> +	unsigned int outs;
> +	struct scmi_registered_event *r_evt;
> +
> +	outs = kfifo_out(&eq->kfifo, pd->eh,
> +			 sizeof(struct scmi_event_header));
> +	if (!outs)
> +		return NULL;
> +	if (outs != sizeof(struct scmi_event_header)) {
> +		pr_err("SCMI Notifications: corrupted EVT header. Flush.\n");
> +		kfifo_reset_out(&eq->kfifo);
> +		return NULL;
> +	}
> +
> +	r_evt = SCMI_GET_REVT_FROM_PD(pd, pd->eh->evt_id);
> +	if (!r_evt)
> +		r_evt = ERR_PTR(-EINVAL);
> +
> +	return r_evt;
> +}
> +
> +/**
> + * scmi_process_event_payload  - Dequeue and process an event payload
> + *
> + * Read an event payload from the protocol queue into the dedicated scratch
> + * buffer, fills a custom report and then look for matching event handlers and
> + * call them; skip any unknown event (as marked by scmi_process_event_header())
> + * and in case an anomalously sized read is detected just flush the queue.
> + *
> + * @eq: The queue to use
> + * @pd: The protocol descriptor to use
> + * @r_evt: The registered event descriptor to use
> + *
> + * Return: False when the queue is empty
> + */
> +static inline bool
> +scmi_process_event_payload(struct events_queue *eq,
> +			   struct scmi_registered_protocol_events_desc *pd,
> +			   struct scmi_registered_event *r_evt)
> +{
> +	u32 src_id, key;
> +	unsigned int outs;
> +	void *report = NULL;
> +
> +	outs = kfifo_out(&eq->kfifo, pd->eh->payld, pd->eh->payld_sz);
> +	if (unlikely(!outs))
> +		return false;
> +
> +	/* Any in-flight event has now been officially processed */
> +	pd->in_flight = NULL;
> +
> +	if (unlikely(outs != pd->eh->payld_sz)) {
> +		pr_err("SCMI Notifications: corrupted EVT Payload. Flush.\n");
> +		kfifo_reset_out(&eq->kfifo);
> +		return false;
> +	}
> +
> +	if (IS_ERR(r_evt)) {
> +		pr_warn("SCMI Notifications: SKIP UNKNOWN EVT - proto:%X  evt:%d\n",
> +			pd->id, pd->eh->evt_id);
> +		return true;
> +	}
> +
> +	report = REVT_FILL_REPORT(r_evt, pd->eh->evt_id, pd->eh->timestamp,
> +				  pd->eh->payld, pd->eh->payld_sz,
> +				  r_evt->report, &src_id);
> +	if (!report) {
> +		pr_err("SCMI Notifications: Report not available - proto:%X  evt:%d\n",
> +		       pd->id, pd->eh->evt_id);
> +		return true;
> +	}
> +
> +	/* At first search for a generic ALL src_ids handler... */
> +	key = MAKE_ALL_SRCS_KEY(pd->id, pd->eh->evt_id);
> +	scmi_lookup_and_call_event_chain(pd->ni, key, report);
> +
> +	/* ...then search for any specific src_id */
> +	key = MAKE_HASH_KEY(pd->id, pd->eh->evt_id, src_id);
> +	scmi_lookup_and_call_event_chain(pd->ni, key, report);
> +
> +	return true;
> +}
> +
> +/**
> + * scmi_events_dispatcher  - Common worker logic for all work items.
> + *
> + *  1. dequeue one pending RX notification (queued in SCMI RX ISR context)
> + *  2. generate a custom event report from the received event message
> + *  3. lookup for any registered ALL_SRC_IDs handler
> + *     - > call the related notification chain passing in the report
> + *  4. lookup for any registered specific SRC_ID handler
> + *     - > call the related notification chain passing in the report
> + *
> + * Note that:
> + * - a dedicated per-protocol kfifo queue is used: in this way an anomalous
> + *   flood of events cannot saturate other protocols' queues.
> + *
> + * - each per-protocol queue is associated to a distinct work_item, which
> + *   means, in turn, that:
> + *   + all protocols can process their dedicated queues concurrently
> + *     (since notify_wq:max_active != 1)
> + *   + anyway at most one worker instance is allowed to run on the same queue
> + *     concurrently: this ensures that we can have only one concurrent
> + *     reader/writer on the associated kfifo, so that we can use it lock-less
> + *
> + * @work: The work item to use, which is associated to a dedicated events_queue
> + */
> +static void scmi_events_dispatcher(struct work_struct *work)
> +{
> +	struct events_queue *eq;
> +	struct scmi_registered_protocol_events_desc *pd;
> +	struct scmi_registered_event *r_evt;
> +
> +	eq = container_of(work, struct events_queue, notify_work);
> +	pd = container_of(eq, struct scmi_registered_protocol_events_desc,
> +			  equeue);
> +	/*
> +	 * In order to keep the queue lock-less and the number of memcopies
> +	 * to the bare minimum needed, the dispatcher accounts for the
> +	 * possibility of per-protocol in-flight events: i.e. an event whose
> +	 * reception could end up being split across two subsequent runs of this
> +	 * worker, first the header, then the payload.
> +	 */
> +	do {
> +		if (likely(!pd->in_flight)) {
> +			r_evt = scmi_process_event_header(eq, pd);
> +			if (!r_evt)
> +				break;
> +			pd->in_flight = r_evt;
> +		} else {
> +			r_evt = pd->in_flight;
> +		}
> +	} while (scmi_process_event_payload(eq, pd, r_evt));
> +}
> +
> +/**
> + * scmi_notify  - Queues a notification for further deferred processing
> + *
> + * This is called in interrupt context to queue a received event for
> + * deferred processing.
> + *
> + * @handle: The handle identifying the platform instance from which the
> + *	    dispatched event is generated
> + * @proto_id: Protocol ID
> + * @evt_id: Event ID (msgID)
> + * @buf: Event Message Payload (without the header)
> + * @len: Event Message Payload size
> + * @ts: RX Timestamp in nanoseconds (boottime)
> + *
> + * Return: 0 on Success
> + */
> +int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
> +		const void *buf, size_t len, u64 ts)
> +{
> +	struct scmi_registered_event *r_evt;
> +	struct scmi_event_header eh;
> +	struct scmi_notify_instance *ni = handle->notify_priv;
> +
> +	/* Ensure atomic value is updated */
> +	smp_mb__before_atomic();
> +	if (unlikely(!atomic_read(&ni->enabled)))
> +		return 0;
> +
> +	r_evt = SCMI_GET_REVT(ni, proto_id, evt_id);
> +	if (unlikely(!r_evt))
> +		return -EINVAL;
> +
> +	if (unlikely(len > r_evt->evt->max_payld_sz)) {
> +		pr_err("SCMI Notifications: discard badly sized message\n");
> +		return -EINVAL;
> +	}
> +	if (unlikely(kfifo_avail(&r_evt->proto->equeue.kfifo) <
> +		     sizeof(eh) + len)) {
> +		pr_warn("SCMI Notifications: queue full dropping proto_id:%d  evt_id:%d  ts:%lld\n",
> +			proto_id, evt_id, ts);
> +		return -ENOMEM;
> +	}
> +
> +	eh.timestamp = ts;
> +	eh.evt_id = evt_id;
> +	eh.payld_sz = len;
> +	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));

I'd add a comment that this potential race here is the reason (I think) for all
the inflight handling above.

Either that or create a kfifo_in_pair_unsafe that just makes these atomic by only
updating the kfifo->in point after adding both parts.

It will be as simple as (I think, kfifo magic always give me a headache).
{
	struct __kfifo *__kfifo = &kfifo->kfifo;
	kfifo_copy_in(fifo, &eh, sizeof(eh), fifo->in);
	kfifo_copy_in(fifo, &buf, len, fifo->in + sizeof(eh));
	fifo->in += len + sizeof(eh);
}

It's unsafe because crazy things will happen if there isn't enough room, but you
can't get there in this code because of the check above and we are making
horrendous assumptions about the kfifo type.

> +	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
> +	queue_work(r_evt->proto->equeue.wq,
> +		   &r_evt->proto->equeue.notify_work);
> +
> +	return 0;
> +}
> +
>  /**
>   * scmi_initialize_events_queue  - Allocate/Initialize a kfifo buffer
>   *
> @@ -332,12 +604,21 @@ static void scmi_put_handler_unlocked(struct scmi_notify_instance *ni,
>  static int scmi_initialize_events_queue(struct scmi_notify_instance *ni,
>  					struct events_queue *equeue, size_t sz)
>  {
> +	int ret = 0;

ret looks to be always initialized below.

> +
>  	equeue->qbuf = devm_kzalloc(ni->handle->dev, sz, GFP_KERNEL);
>  	if (!equeue->qbuf)
>  		return -ENOMEM;
>  	equeue->sz = sz;
>  
> -	return kfifo_init(&equeue->kfifo, equeue->qbuf, equeue->sz);
> +	ret = kfifo_init(&equeue->kfifo, equeue->qbuf, equeue->sz);
> +	if (ret)
> +		return ret;
> +
> +	INIT_WORK(&equeue->notify_work, scmi_events_dispatcher);
> +	equeue->wq = ni->notify_wq;
> +
> +	return ret;
>  }
>  
>  /**
> @@ -740,6 +1021,38 @@ scmi_get_or_create_handler(struct scmi_notify_instance *ni, u32 evt_key)
>  	return __scmi_event_handler_get_ops(ni, evt_key, true);
>  }
>  
> +/**
> + * scmi_get_active_handler  - Helper to get active handlers only
> + *
> + * Search for the desired handler matching the key only in the per-protocol
> + * table of registered handlers: this is called only from the dispatching path
> + * so want to be as quick as possible and do not care about pending.
> + *
> + * @ni: A reference to the notification instance to use
> + * @evt_key: The event key to use
> + *
> + * Return: A properly refcounted active handler
> + */
> +static struct scmi_event_handler *
> +scmi_get_active_handler(struct scmi_notify_instance *ni, u32 evt_key)
> +{
> +	struct scmi_registered_event *r_evt;
> +	struct scmi_event_handler *hndl = NULL;
> +
> +	r_evt = SCMI_GET_REVT(ni, KEY_XTRACT_PROTO_ID(evt_key),
> +			      KEY_XTRACT_EVT_ID(evt_key));
> +	if (likely(r_evt)) {
> +		mutex_lock(&r_evt->proto->registered_mtx);
> +		hndl = KEY_FIND(r_evt->proto->registered_events_handlers,
> +				hndl, evt_key);
> +		if (likely(hndl))
> +			refcount_inc(&hndl->users);
> +		mutex_unlock(&r_evt->proto->registered_mtx);
> +	}
> +
> +	return hndl;
> +}
> +
>  /**
>   * __scmi_enable_evt  - Enable/disable events generation
>   *
> @@ -861,6 +1174,16 @@ static void scmi_put_handler(struct scmi_notify_instance *ni,
>  	mutex_unlock(&ni->pending_mtx);
>  }
>  
> +static void scmi_put_active_handler(struct scmi_notify_instance *ni,
> +					  struct scmi_event_handler *hndl)
> +{
> +	struct scmi_registered_event *r_evt = hndl->r_evt;
> +
> +	mutex_lock(&r_evt->proto->registered_mtx);
> +	scmi_put_handler_unlocked(ni, hndl);
> +	mutex_unlock(&r_evt->proto->registered_mtx);
> +}
> +
>  /**
>   * scmi_event_handler_enable_events  - Enable events associated to an handler
>   *
> @@ -1087,6 +1410,12 @@ int scmi_notification_init(struct scmi_handle *handle)
>  	ni->gid = gid;
>  	ni->handle = handle;
>  
> +	ni->notify_wq = alloc_workqueue("scmi_notify",
> +					WQ_UNBOUND | WQ_FREEZABLE | WQ_SYSFS,
> +					0);
> +	if (!ni->notify_wq)
> +		goto err;
> +
>  	ni->registered_protocols = devm_kcalloc(handle->dev, SCMI_MAX_PROTO,
>  						sizeof(char *), GFP_KERNEL);
>  	if (!ni->registered_protocols)
> @@ -1133,6 +1462,9 @@ void scmi_notification_exit(struct scmi_handle *handle)
>  	/* Ensure atomic values are updated */
>  	smp_mb__after_atomic();
>  
> +	/* Destroy while letting pending work complete */
> +	destroy_workqueue(ni->notify_wq);
> +
>  	devres_release_group(ni->handle->dev, ni->gid);
>  
>  	pr_info("SCMI Notifications Core Shutdown.\n");
> diff --git a/drivers/firmware/arm_scmi/notify.h b/drivers/firmware/arm_scmi/notify.h
> index f765acda2311..6cd386649d5a 100644
> --- a/drivers/firmware/arm_scmi/notify.h
> +++ b/drivers/firmware/arm_scmi/notify.h
> @@ -51,10 +51,17 @@ struct scmi_event {
>   *			using the proper custom protocol commands.
>   *			Return true if at least one the required src_id
>   *			has been successfully enabled/disabled
> + * @fill_custom_report: fills a custom event report from the provided
> + *			event message payld identifying the event
> + *			specific src_id.
> + *			Return NULL on failure otherwise @report now fully
> + *			populated
>   */
>  struct scmi_protocol_event_ops {
>  	bool (*set_notify_enabled)(const struct scmi_handle *handle,
>  				   u8 evt_id, u32 src_id, bool enabled);
> +	void *(*fill_custom_report)(u8 evt_id, u64 timestamp, const void *payld,
> +				    size_t payld_sz, void *report, u32 *src_id);
>  };
>  
>  int scmi_notification_init(struct scmi_handle *handle);
> @@ -65,5 +72,7 @@ int scmi_register_protocol_events(const struct scmi_handle *handle,
>  				  const struct scmi_protocol_event_ops *ops,
>  				  const struct scmi_event *evt, int num_events,
>  				  int num_sources);
> +int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
> +		const void *buf, size_t len, u64 ts);
>  
>  #endif /* _SCMI_NOTIFY_H */



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
