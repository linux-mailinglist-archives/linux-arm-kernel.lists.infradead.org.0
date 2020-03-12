Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2A9183B93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OoQI3v2hr0JkhzzAdi/KbRP5LcOpw/2nFQOie/WgWnA=; b=c1lq6MDGoMkFsHXflEn5EMZlw
	/NYxF2Im8jj8XR9MKyxGfZwtT29DfUnaCBVsWjC3M4QZxH2+sqvUqv7XdurqkF+QDNIOlmOaTtTCF
	16IbRf4PQkvdLZsqjxkVoOLYCUokdBTNqwvwgyBGXAAQg2R1ENpvpX+CDt9MfWZA8S74/tfoafDd7
	HsJqOdaMPippLg0OPfzY5pC7XnKj5AilLMKzo2Z4s0f3YqG9qVSEhd+NXFQvKY5WJj//oP8UuGC7L
	dm/sWNCSAfGRGcWrXeTndP4nOjfqEfq584cVkWIMwkFcH+xmuogNGRAZ00bZEDZaHMMM6GkBr6L+h
	DswzaX1Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVcL-0002xh-VV; Thu, 12 Mar 2020 21:43:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVc7-0002x1-GA
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:43:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA9F931B;
 Thu, 12 Mar 2020 14:43:34 -0700 (PDT)
Received: from [10.37.12.40] (unknown [10.37.12.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68F273F6CF;
 Thu, 12 Mar 2020 14:43:33 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
 <363cb1ba-76b5-cc1e-af45-454837fae788@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <484214b4-a71d-9c63-86fc-2e469cb1809b@arm.com>
Date: Thu, 12 Mar 2020 21:43:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <363cb1ba-76b5-cc1e-af45-454837fae788@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_144335_630119_BFD3B9F5 
X-CRM114-Status: GOOD (  25.65  )
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/12/20 6:34 PM, Cristian Marussi wrote:
> On 12/03/2020 13:51, Lukasz Luba wrote:
>> Hi Cristian,
>>
>> just one comment below...
> 
> Hi Lukasz
> 
> Thanks for the review
> 
>>
>> On 3/4/20 4:25 PM, Cristian Marussi wrote:
>>> Add core SCMI Notifications dispatch and delivery support logic which is
>>> able, at first, to dispatch well-known received events from the RX ISR to
>>> the dedicated deferred worker, and then, from there, to final deliver the
>>> events to the registered users' callbacks.
>>>
>>> Dispatch and delivery is just added here, still not enabled.
>>>
>>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>>> ---
>>> V3 --> V4
>>> - dispatcher now handles dequeuing of events in chunks (header+payload):
>>>     handling of these in_flight events let us remove one unneeded memcpy
>>>     on RX interrupt path (scmi_notify)
>>> - deferred dispatcher now access their own per-protocol handlers' table
>>>     reducing locking contention on the RX path
>>> V2 --> V3
>>> - exposing wq in sysfs via WQ_SYSFS
>>> V1 --> V2
>>> - splitted out of V1 patch 04
>>> - moved from IDR maps to real HashTables to store event_handlers
>>> - simplified delivery logic
>>> ---
>>>    drivers/firmware/arm_scmi/notify.c | 334 ++++++++++++++++++++++++++++-
>>>    drivers/firmware/arm_scmi/notify.h |   9 +
>>>    2 files changed, 342 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
>>
>> [snip]
>>
>>> +
>>> +/**
>>> + * scmi_notify  - Queues a notification for further deferred processing
>>> + *
>>> + * This is called in interrupt context to queue a received event for
>>> + * deferred processing.
>>> + *
>>> + * @handle: The handle identifying the platform instance from which the
>>> + *	    dispatched event is generated
>>> + * @proto_id: Protocol ID
>>> + * @evt_id: Event ID (msgID)
>>> + * @buf: Event Message Payload (without the header)
>>> + * @len: Event Message Payload size
>>> + * @ts: RX Timestamp in nanoseconds (boottime)
>>> + *
>>> + * Return: 0 on Success
>>> + */
>>> +int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
>>> +		const void *buf, size_t len, u64 ts)
>>> +{
>>> +	struct scmi_registered_event *r_evt;
>>> +	struct scmi_event_header eh;
>>> +	struct scmi_notify_instance *ni = handle->notify_priv;
>>> +
>>> +	/* Ensure atomic value is updated */
>>> +	smp_mb__before_atomic();
>>> +	if (unlikely(!atomic_read(&ni->enabled)))
>>> +		return 0;
>>> +
>>> +	r_evt = SCMI_GET_REVT(ni, proto_id, evt_id);
>>> +	if (unlikely(!r_evt))
>>> +		return -EINVAL;
>>> +
>>> +	if (unlikely(len > r_evt->evt->max_payld_sz)) {
>>> +		pr_err("SCMI Notifications: discard badly sized message\n");
>>> +		return -EINVAL;
>>> +	}
>>> +	if (unlikely(kfifo_avail(&r_evt->proto->equeue.kfifo) <
>>> +		     sizeof(eh) + len)) {
>>> +		pr_warn("SCMI Notifications: queue full dropping proto_id:%d  evt_id:%d  ts:%lld\n",
>>> +			proto_id, evt_id, ts);
>>> +		return -ENOMEM;
>>> +	}
>>> +
>>> +	eh.timestamp = ts;
>>> +	eh.evt_id = evt_id;
>>> +	eh.payld_sz = len;
>>> +	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));
>>> +	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
>>> +	queue_work(r_evt->proto->equeue.wq,
>>> +		   &r_evt->proto->equeue.notify_work);
>>
>> Is it safe to ignore the return value from the queue_work here?
>>
> 
> In fact yes, we do not want to care: it returns true or false depending on the
> fact that the specific work was or not already queued, and we just rely on
> this behavior to keep kicking the worker only when needed but never kick
> more than one instance of it per-queue (so that there's only one reader
> wq and one writer here in the scmi_notify)...explaining better:
> 
> 1. we push an event (hdr+payld) to the protocol queue if we found that there was
> enough space on the queue
> 
> 2a. if at the time of the kfifo_in( ) the worker was already running
> (queue not empty) it will process our new event sooner or later and here
> the queue_work will return false, but we do not care in fact ... we
> tried to kick it just in case
> 
> 2b. if instead at the time of the kfifo_in() the queue was empty the worker would
> have probably already gone to the sleep and this queue_work() will return true and
> so this time it will effectively wake up the worker to process our items
> 
> The important thing here is that we are sure to wakeup the worker when needed
> but we are equally sure we are never causing the scheduling of more than one worker
> thread consuming from the same queue (because that would break the one reader/one writer
> assumption which let us use the fifo in a lockless manner): this is possible because
> queue_work checks if the required work item is already pending and in such a case backs
> out returning false and we have one work_item (notify_work) defined per-protocol and
> so per-queue.

I see. That's a good assumption: one work_item per protocol and simplify
the locking. What if there would be an edge case scenario when the
consumer (work_item) has handled the last item (there was NULL from 
scmi_process_event_header()), while in meantime scmi_notify put into
the fifo new event but couldn't kick the queue_work. Would it stay there
till the next IRQ which triggers queue_work to consume two events (one
potentially a bit old)? Or we can ignore such race situation assuming
that cleaning of work item is instant and kfifo_in is slow?

> 
> Now probably I wrote too much of an explanation and confuse stuff more ... :D

No, thank you for the detailed explanation. I will continue my review.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
