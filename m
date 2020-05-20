Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BB41DB016
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8uexdDxGRMG8wuq9JBTByA50F97LoOU2yFUxU+uDivM=; b=scuLT+MhbTLEhLIOqBI1H6Uve
	Izj8kvkaGCWFJpzOJOg03pFU0kpfGdieM6HJnAe44nU6S98tIxkqHfq/1VQ/Ql7qNobIkhI/tnSoG
	zLIj88QH7rwd8I2KynSn6Jdv8stIrzHua9AShAwdPleOrj+jahznHJaNKdNeeVAUPlzvEp4A0PkYN
	3vB43m1KLgjaT5Uocut8A8NYiS2PULXQPJYAIAgqIWEHXvlEKLWD8PZB1BraSR5lprYxVvLs0wgPD
	zduWelyQUluLF+K9NUs0QIWeEJ9zkuVdBITAFfKkjKrOcoCWXde1hGC49LPo4AYc4Lf1z19C6NEaw
	EBEtLKA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLu7-00075C-AA; Wed, 20 May 2020 10:24:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLsl-0006Hy-Cu
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 10:23:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15DED31B;
 Wed, 20 May 2020 03:23:24 -0700 (PDT)
Received: from [10.37.12.87] (unknown [10.37.12.87])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23C6C3F68F;
 Wed, 20 May 2020 03:23:22 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
 <363cb1ba-76b5-cc1e-af45-454837fae788@arm.com>
 <484214b4-a71d-9c63-86fc-2e469cb1809b@arm.com>
 <20200313190224.GA5808@e120937-lin>
 <20200520070907.GE17648@e119603-lin.cambridge.arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <0234c256-2e29-69f8-99ae-2599f982961e@arm.com>
Date: Wed, 20 May 2020 11:23:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200520070907.GE17648@e119603-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_032327_583601_C509469B 
X-CRM114-Status: GOOD (  28.08  )
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
Cc: sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

On 5/20/20 8:09 AM, Cristian Marussi wrote:
> On Mon, Mar 16, 2020 at 02:46:05PM +0000, Cristian Marussi wrote:
>> On Thu, Mar 12, 2020 at 09:43:31PM +0000, Lukasz Luba wrote:
>>>
>>>
> 
> Hi Lukasz,
> 
> I went back looking deeper into the possible race issue you pointed out a
> while ago understanding it a bit better down below.
> 
>>> On 3/12/20 6:34 PM, Cristian Marussi wrote:
>>>> On 12/03/2020 13:51, Lukasz Luba wrote:
>>>>> Hi Cristian,
>>>>>
>> Hi Lukasz
>>
>>>>> just one comment below...
>> [snip]
>>>>>> +	eh.timestamp = ts;
>>>>>> +	eh.evt_id = evt_id;
>>>>>> +	eh.payld_sz = len;
>>>>>> +	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));
>>>>>> +	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
>>>>>> +	queue_work(r_evt->proto->equeue.wq,
>>>>>> +		   &r_evt->proto->equeue.notify_work);
>>>>>
>>>>> Is it safe to ignore the return value from the queue_work here?
>>>>>
>>>>
>>>> In fact yes, we do not want to care: it returns true or false depending on the
>>>> fact that the specific work was or not already queued, and we just rely on
>>>> this behavior to keep kicking the worker only when needed but never kick
>>>> more than one instance of it per-queue (so that there's only one reader
>>>> wq and one writer here in the scmi_notify)...explaining better:
>>>>
>>>> 1. we push an event (hdr+payld) to the protocol queue if we found that there was
>>>> enough space on the queue
>>>>
>>>> 2a. if at the time of the kfifo_in( ) the worker was already running
>>>> (queue not empty) it will process our new event sooner or later and here
>>>> the queue_work will return false, but we do not care in fact ... we
>>>> tried to kick it just in case
>>>>
>>>> 2b. if instead at the time of the kfifo_in() the queue was empty the worker would
>>>> have probably already gone to the sleep and this queue_work() will return true and
>>>> so this time it will effectively wake up the worker to process our items
>>>>
>>>> The important thing here is that we are sure to wakeup the worker when needed
>>>> but we are equally sure we are never causing the scheduling of more than one worker
>>>> thread consuming from the same queue (because that would break the one reader/one writer
>>>> assumption which let us use the fifo in a lockless manner): this is possible because
>>>> queue_work checks if the required work item is already pending and in such a case backs
>>>> out returning false and we have one work_item (notify_work) defined per-protocol and
>>>> so per-queue.
>>>
>>> I see. That's a good assumption: one work_item per protocol and simplify
>>> the locking. What if there would be an edge case scenario when the
>>> consumer (work_item) has handled the last item (there was NULL from
>>> scmi_process_event_header()), while in meantime scmi_notify put into
>>> the fifo new event but couldn't kick the queue_work. Would it stay there
>>> till the next IRQ which triggers queue_work to consume two events (one
>>> potentially a bit old)? Or we can ignore such race situation assuming
>>> that cleaning of work item is instant and kfifo_in is slow?
>>>
>>
>> In fact, this is a very good point, since between the moment the worker
>> determines that the queue is empty and the moment in which the worker
>> effectively exits (and it's marked as no more pending by the Kernel cmwq)
>> there is a window of opportunity for a race in which the ISR could fill
>> the queue with one more event and then fail to kick with queue_work() since
>> the work is in fact still nominally marked as pending from the point of view
>> of Kernel cmwq, as below:
>>
>> ISR (core N)		|	WQ (core N+1)		cmwq flags	       	queued events
>> ------------------------------------------------------------------------------------------------
>> 			| if (queue_is_empty)		- WORK_PENDING		0 events queued
>> 			+     ...			- WORK_PENDING		0 events queued
>> 			+ } while (scmi_process_event_payload);
>> 			+}// worker function exit
>> kfifo_in()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
>> kfifo_in()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
>> queue_work()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
>>    -> FALSE (pending)	+     ...cmwq backing out	- WORK_PENDING		1 events queued
>> 			+     ...cmwq backing out	- WORK_PENDING		1 events queued
>> 			+     ...cmwq backing out	- WORK_PENDING		1 events queued
>> 			| ---- WORKER THREAD EXIT	- !WORK_PENDING		1 events queued
>> 			| 		 		- !WORK_PENDING		1 events queued
>> kfifo_in()		|     				- !WORK_PENDING		2 events queued
>> kfifo_in()		|  				- !WORK_PENDING		2 events queued
>> queue_work()		|     				- !WORK_PENDING		2 events queued
>>     -> TRUE		| --- WORKER ENTER		- WORK_PENDING		2 events queued
>> 			|  				- WORK_PENDING		2 events consumed
>> 		
>> where effectively the last event queued won't be consumed till the next
>> iteration once another event is queued.
>>
> 
> In summary, looking better at Kernel cmwq code, my explanation above about
> how the possible race could be exposed by a particular tricky limit condition
> and the values assumed by the WORK_STRUCT_PENDING_BIT was ... bullshit :D
> 
> In fact there's no race at all because Kernel cmwq takes care to clear the above
> PENDING flag BEFORE the user-provided worker-function starts to finally run:
> such flag is active only when a work instance is queued pending for execution
> but it is cleared just before execution effctively starts.
> 
> kernel/workqueue.c:process_one_work()
> 
> 	set_work_pool_and_clear_pending(work, pool->id);
> 	....
> 	worker->current_func(work);
> 
> As a consequence in the racy scenario above where the ISR pushes events on the
> queues after the worker has already determined the queue to be empty but while
> the worker func is still being deactivated in terms of Kernel cmwq internal
> handling, it is not a problem since the worker while running is already NO more
> marked pending so the queue_work succeeds and a new work will simply be queued
> and run once the current instance terminates fully and it is removed from pool.

Sounds good, thanks to for digging into this workqueue code and figuring 
it out.

> 
> On the other side in the normal non racy scenario, when the worker is processing
> normally a non-empty queue, we'll end-up anyway queueing new items and a new work
> from the ISR even if the currently executing one will in fact consume already
> naturally the queued items: this will result (it's what I observe in fact) in a
> final un-needed quick worker activation/deactivation processing zero items (empty
> queue) which is in fact harmless.
> 
> Basically the racy condition is taken care by the Kernel cmwq itself, and in fact
> there is an extensive explanation also of the barriers employed to properly
> realize this in the comments around set_work_pool_and_clear_pending()
> 
> I'll add a comment in v8 just to note this behaviour.

Great research.

Regards,
Lukasz

> 
> Thanks
> 
> Cristian
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
