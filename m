Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22A51896FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 09:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PbAsDxihmQkZZ/NDGFe/deNc62/EOkm7dcuCjsQ3XV4=; b=Fr9cXFhWqNBuwiDH4dL1jXoN9
	IQHCqQ8BA9aL3sVfnEZxgOJFKntxHwQIxlfm+3dqNwH2kaeNoDaoCqSwbtCe4dFJaQmUyidzx545q
	5jdlExqBrcai4p805NoBT/1H+Gx3T16EwKFBkx5aM082cuZBBxluP0VpTZO0ECGclpQ+ahvPXrWcJ
	Py7w/xzflAze1f/ih49fuWFJuGPggRpte9SqzX+sHYkQLONTovTsqOqY8Q0EFRveOCDqpufgkD1Ii
	SDTavr0k93NdgNbJjvh+W4rbaEBThqgLTvkDBjgAytv6u6Re+8vIdlifsCvr8C1lLTwA78gSDo5b7
	fDZ/zO/Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEU20-00046W-Pj; Wed, 18 Mar 2020 08:26:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEU1s-000454-T0
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 08:26:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E426131B;
 Wed, 18 Mar 2020 01:26:12 -0700 (PDT)
Received: from [10.37.12.57] (unknown [10.37.12.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6DBE3F52E;
 Wed, 18 Mar 2020 01:26:11 -0700 (PDT)
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com, james.quinlan@broadcom.com, Jonathan.Cameron@Huawei.com
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
 <363cb1ba-76b5-cc1e-af45-454837fae788@arm.com>
 <484214b4-a71d-9c63-86fc-2e469cb1809b@arm.com>
 <20200313190224.GA5808@e120937-lin>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <d600b3d5-056d-89ef-b8e2-df403285df8b@arm.com>
Date: Wed, 18 Mar 2020 08:26:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200313190224.GA5808@e120937-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_012621_039783_C0E27A98 
X-CRM114-Status: GOOD (  33.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

On 3/16/20 2:46 PM, Cristian Marussi wrote:
> On Thu, Mar 12, 2020 at 09:43:31PM +0000, Lukasz Luba wrote:
>>
>>
>> On 3/12/20 6:34 PM, Cristian Marussi wrote:
>>> On 12/03/2020 13:51, Lukasz Luba wrote:
>>>> Hi Cristian,
>>>>
> Hi Lukasz
> 
>>>> just one comment below...
> [snip]
>>>>> +	eh.timestamp = ts;
>>>>> +	eh.evt_id = evt_id;
>>>>> +	eh.payld_sz = len;
>>>>> +	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));
>>>>> +	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
>>>>> +	queue_work(r_evt->proto->equeue.wq,
>>>>> +		   &r_evt->proto->equeue.notify_work);
>>>>
>>>> Is it safe to ignore the return value from the queue_work here?
>>>>
>>>
>>> In fact yes, we do not want to care: it returns true or false depending on the
>>> fact that the specific work was or not already queued, and we just rely on
>>> this behavior to keep kicking the worker only when needed but never kick
>>> more than one instance of it per-queue (so that there's only one reader
>>> wq and one writer here in the scmi_notify)...explaining better:
>>>
>>> 1. we push an event (hdr+payld) to the protocol queue if we found that there was
>>> enough space on the queue
>>>
>>> 2a. if at the time of the kfifo_in( ) the worker was already running
>>> (queue not empty) it will process our new event sooner or later and here
>>> the queue_work will return false, but we do not care in fact ... we
>>> tried to kick it just in case
>>>
>>> 2b. if instead at the time of the kfifo_in() the queue was empty the worker would
>>> have probably already gone to the sleep and this queue_work() will return true and
>>> so this time it will effectively wake up the worker to process our items
>>>
>>> The important thing here is that we are sure to wakeup the worker when needed
>>> but we are equally sure we are never causing the scheduling of more than one worker
>>> thread consuming from the same queue (because that would break the one reader/one writer
>>> assumption which let us use the fifo in a lockless manner): this is possible because
>>> queue_work checks if the required work item is already pending and in such a case backs
>>> out returning false and we have one work_item (notify_work) defined per-protocol and
>>> so per-queue.
>>
>> I see. That's a good assumption: one work_item per protocol and simplify
>> the locking. What if there would be an edge case scenario when the
>> consumer (work_item) has handled the last item (there was NULL from
>> scmi_process_event_header()), while in meantime scmi_notify put into
>> the fifo new event but couldn't kick the queue_work. Would it stay there
>> till the next IRQ which triggers queue_work to consume two events (one
>> potentially a bit old)? Or we can ignore such race situation assuming
>> that cleaning of work item is instant and kfifo_in is slow?
>>
> 
> In fact, this is a very good point, since between the moment the worker
> determines that the queue is empty and the moment in which the worker
> effectively exits (and it's marked as no more pending by the Kernel cmwq)
> there is a window of opportunity for a race in which the ISR could fill
> the queue with one more event and then fail to kick with queue_work() since
> the work is in fact still nominally marked as pending from the point of view
> of Kernel cmwq, as below:
> 
> ISR (core N)		|	WQ (core N+1)		cmwq flags	       	queued events
> ------------------------------------------------------------------------------------------------
> 			| if (queue_is_empty)		- WORK_PENDING		0 events queued
> 			+     ...			- WORK_PENDING		0 events queued
> 			+ } while (scmi_process_event_payload);
> 			+}// worker function exit
> kfifo_in()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
> kfifo_in()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
> queue_work()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
>    -> FALSE (pending)	+     ...cmwq backing out	- WORK_PENDING		1 events queued
> 			+     ...cmwq backing out	- WORK_PENDING		1 events queued
> 			+     ...cmwq backing out	- WORK_PENDING		1 events queued
> 			| ---- WORKER THREAD EXIT	- !WORK_PENDING		1 events queued
> 			| 		 		- !WORK_PENDING		1 events queued
> kfifo_in()		|     				- !WORK_PENDING		2 events queued
> kfifo_in()		|  				- !WORK_PENDING		2 events queued
> queue_work()		|     				- !WORK_PENDING		2 events queued
>     -> TRUE		| --- WORKER ENTER		- WORK_PENDING		2 events queued
> 			|  				- WORK_PENDING		2 events consumed
> 		
> where effectively the last event queued won't be consumed till the next
> iteration once another event is queued.
> 
> Given the fact that the ISR and the dedicated WQ on an SMP run effectively
> in parallel I do not think unfortunately that we can simply count on the fact
> the worker exit is faster than the kifos_in, enough to close the race window
> opportunity. (even if rare)
> 
> On the other side considering the impact of such scenario, I can imagine that
> it's not simply that we could only have a delayed delivery, but we must consider
> that if the delayed event is effectively the last one ever it would remain
> undelivered forever; this is particularly worrying in a scenario in which such
> last event is particularly important: imagine a system shutdown where a last
> system-power-off remains undelivered.

Agree, another example could be a thermal notification for some critical
trip point.

> 
> As a consequence I think this rare racy condition should be addressed somehow.
> 
> Looking at this scenario, it seems the classic situation in which you want to
> use some sort of completion to avoid missing out on events delivery, BUT in our
> usecase:
> 
> - placing the workers loaned from cmwq into an unbounded wait_for_completion()
>    once the queue is empty seems not the best to use resources (and probably
>    frowned upon)....using a few dedicated kernel threads to simply let them idle
>    waiting most of the time seems equally frowned upon (I could be wrong...))
> - the needed complete() in the ISR would introduce a spinlock_irqsave into the
>    interrupt path (there's already one inside queue_work in fact) so it is not
>    desirable, at least not if used on a regular base (for each event notified)
> 
> So I was thinking to try to reduce sensibly the above race window, more
> than eliminate it completely, by adding an early flag to be checked under
> specific conditions in order to retry the queue_work a few times when the race
> is hit, something like:
> 
> ISR (core N)		|	WQ (core N+1)
> -------------------------------------------------------------------------------
> 			| atomic_set(&exiting, 0);
> 			|
> 			| do {
> 			|	...
> 			| 	if (queue_is_empty)		- WORK_PENDING		0 events queued
> 			+          atomic_set(&exiting, 1)	- WORK_PENDING		0 events queued
> static int cnt=3	|          --> breakout of while	- WORK_PENDING		0 events queued
> kfifo_in()		|	....
> 			| } while (scmi_process_event_payload);
> kfifo_in()		|
> exiting = atomic_read()	|     ...cmwq backing out		- WORK_PENDING		1 events queued
> do {			|     ...cmwq backing out		- WORK_PENDING		1 events queued
>      ret = queue_work() 	|     ...cmwq backing out		- WORK_PENDING		1 events queued
>      if (ret || !exiting)|     ...cmwq backing out		- WORK_PENDING		1 events queued
> 	break;		|     ...cmwq backing out		- WORK_PENDING		1 events queued
>      mdelay(5);		|     ...cmwq backing out		- WORK_PENDING		1 events queued
>      exiting =		|     ...cmwq backing out		- WORK_PENDING		1 events queued
>        atomic_read;	|     ...cmwq backing out		- WORK_PENDING		1 events queued
> } while (--cnt);	|     ...cmwq backing out		- WORK_PENDING		1 events queued
> 			| ---- WORKER EXIT 			- !WORK_PENDING		0 events queued
> 
> like down below between the scissors.
> 
> Not tested or tried....I could be missing something...and the mdelay is horrible (and not
> the cleanest thing you've ever seen probably :D)...I'll have a chat with Sudeep too.

Indeed it looks more complicated. If you like I can join your offline
discuss when Sudeep is back.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
