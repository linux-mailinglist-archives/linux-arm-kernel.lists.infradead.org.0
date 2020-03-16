Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38978186DB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:46:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4SCf1cPBpK+espiaT6KOIz/Jf+1c0je3Qu7iJC6FWk=; b=tCfuPe0JH39eeD
	0j5SsXd4rYOD1PYWntcGFdIoyOrxd/ec2rjg5m92kiAcPcv2H+ChHtiOthfQxTtThTJyGkPB3446x
	6r0T1gYdWDz79rb+kibvF2omc5l4lgtGpdKb+o2mHpTdrlx7XbtWzAGu1qPvTQHK28x1tpn8c5QIQ
	5QeUBFNdvo6FGB55UzqcPz9DC3HXuL8aN74WzHtfsUq4bq8ALfvwWNbBUZjjx1bmQHDlGt3zZFBcX
	Bo3APSh1OZWrwgL4GtAkRPxoJUdu0YaQelypa8fXs1wikISvsoaK1ij76AWqoHbfPge4dcdFoE0iN
	94YtBpuXBHoYiz8wSs6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDr0c-0006Vn-Uj; Mon, 16 Mar 2020 14:46:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDr0Q-0006Ug-7X
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:46:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A4511FB;
 Mon, 16 Mar 2020 07:46:08 -0700 (PDT)
Received: from e120937-lin (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 966CE3F534;
 Mon, 16 Mar 2020 07:46:07 -0700 (PDT)
Date: Mon, 16 Mar 2020 14:46:05 +0000
From: Cristian Marussi <cristian.marussi@arm.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v4 07/13] firmware: arm_scmi: Add notification dispatch
 and delivery
Message-ID: <20200313190224.GA5808@e120937-lin>
Mail-Followup-To: Lukasz Luba <lukasz.luba@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com
References: <20200304162558.48836-1-cristian.marussi@arm.com>
 <20200304162558.48836-8-cristian.marussi@arm.com>
 <45d4aee9-57df-6be9-c176-cf0d03940c21@arm.com>
 <363cb1ba-76b5-cc1e-af45-454837fae788@arm.com>
 <484214b4-a71d-9c63-86fc-2e469cb1809b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <484214b4-a71d-9c63-86fc-2e469cb1809b@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_074614_361216_BC818002 
X-CRM114-Status: GOOD (  39.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: james.quinlan@broadcom.com, Jonathan.Cameron@Huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 09:43:31PM +0000, Lukasz Luba wrote:
> 
> 
> On 3/12/20 6:34 PM, Cristian Marussi wrote:
> > On 12/03/2020 13:51, Lukasz Luba wrote:
> > > Hi Cristian,
> > > 
Hi Lukasz

> > > just one comment below...
[snip]
> > > > +	eh.timestamp = ts;
> > > > +	eh.evt_id = evt_id;
> > > > +	eh.payld_sz = len;
> > > > +	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));
> > > > +	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
> > > > +	queue_work(r_evt->proto->equeue.wq,
> > > > +		   &r_evt->proto->equeue.notify_work);
> > > 
> > > Is it safe to ignore the return value from the queue_work here?
> > > 
> > 
> > In fact yes, we do not want to care: it returns true or false depending on the
> > fact that the specific work was or not already queued, and we just rely on
> > this behavior to keep kicking the worker only when needed but never kick
> > more than one instance of it per-queue (so that there's only one reader
> > wq and one writer here in the scmi_notify)...explaining better:
> > 
> > 1. we push an event (hdr+payld) to the protocol queue if we found that there was
> > enough space on the queue
> > 
> > 2a. if at the time of the kfifo_in( ) the worker was already running
> > (queue not empty) it will process our new event sooner or later and here
> > the queue_work will return false, but we do not care in fact ... we
> > tried to kick it just in case
> > 
> > 2b. if instead at the time of the kfifo_in() the queue was empty the worker would
> > have probably already gone to the sleep and this queue_work() will return true and
> > so this time it will effectively wake up the worker to process our items
> > 
> > The important thing here is that we are sure to wakeup the worker when needed
> > but we are equally sure we are never causing the scheduling of more than one worker
> > thread consuming from the same queue (because that would break the one reader/one writer
> > assumption which let us use the fifo in a lockless manner): this is possible because
> > queue_work checks if the required work item is already pending and in such a case backs
> > out returning false and we have one work_item (notify_work) defined per-protocol and
> > so per-queue.
> 
> I see. That's a good assumption: one work_item per protocol and simplify
> the locking. What if there would be an edge case scenario when the
> consumer (work_item) has handled the last item (there was NULL from
> scmi_process_event_header()), while in meantime scmi_notify put into
> the fifo new event but couldn't kick the queue_work. Would it stay there
> till the next IRQ which triggers queue_work to consume two events (one
> potentially a bit old)? Or we can ignore such race situation assuming
> that cleaning of work item is instant and kfifo_in is slow?
> 

In fact, this is a very good point, since between the moment the worker
determines that the queue is empty and the moment in which the worker
effectively exits (and it's marked as no more pending by the Kernel cmwq)
there is a window of opportunity for a race in which the ISR could fill
the queue with one more event and then fail to kick with queue_work() since
the work is in fact still nominally marked as pending from the point of view
of Kernel cmwq, as below:

ISR (core N)		|	WQ (core N+1)		cmwq flags	       	queued events
------------------------------------------------------------------------------------------------
			| if (queue_is_empty)		- WORK_PENDING		0 events queued
			+     ...			- WORK_PENDING		0 events queued
			+ } while (scmi_process_event_payload);
			+}// worker function exit 
kfifo_in()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
kfifo_in()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
queue_work()		+     ...cmwq backing out	- WORK_PENDING		1 events queued
  -> FALSE (pending)	+     ...cmwq backing out	- WORK_PENDING		1 events queued
			+     ...cmwq backing out	- WORK_PENDING		1 events queued
			+     ...cmwq backing out	- WORK_PENDING		1 events queued
			| ---- WORKER THREAD EXIT	- !WORK_PENDING		1 events queued
			| 		 		- !WORK_PENDING		1 events queued
kfifo_in()		|     				- !WORK_PENDING		2 events queued
kfifo_in()		|  				- !WORK_PENDING		2 events queued
queue_work()		|     				- !WORK_PENDING		2 events queued
   -> TRUE		| --- WORKER ENTER		- WORK_PENDING		2 events queued
			|  				- WORK_PENDING		2 events consumed
		
where effectively the last event queued won't be consumed till the next
iteration once another event is queued.

Given the fact that the ISR and the dedicated WQ on an SMP run effectively
in parallel I do not think unfortunately that we can simply count on the fact
the worker exit is faster than the kifos_in, enough to close the race window
opportunity. (even if rare)

On the other side considering the impact of such scenario, I can imagine that
it's not simply that we could only have a delayed delivery, but we must consider
that if the delayed event is effectively the last one ever it would remain
undelivered forever; this is particularly worrying in a scenario in which such
last event is particularly important: imagine a system shutdown where a last
system-power-off remains undelivered.

As a consequence I think this rare racy condition should be addressed somehow.

Looking at this scenario, it seems the classic situation in which you want to
use some sort of completion to avoid missing out on events delivery, BUT in our
usecase:

- placing the workers loaned from cmwq into an unbounded wait_for_completion()
  once the queue is empty seems not the best to use resources (and probably
  frowned upon)....using a few dedicated kernel threads to simply let them idle
  waiting most of the time seems equally frowned upon (I could be wrong...))
- the needed complete() in the ISR would introduce a spinlock_irqsave into the
  interrupt path (there's already one inside queue_work in fact) so it is not
  desirable, at least not if used on a regular base (for each event notified)

So I was thinking to try to reduce sensibly the above race window, more
than eliminate it completely, by adding an early flag to be checked under
specific conditions in order to retry the queue_work a few times when the race
is hit, something like:

ISR (core N)		|	WQ (core N+1)
-------------------------------------------------------------------------------
			| atomic_set(&exiting, 0);
			|
			| do {
			|	...
			| 	if (queue_is_empty)		- WORK_PENDING		0 events queued
			+          atomic_set(&exiting, 1)	- WORK_PENDING		0 events queued
static int cnt=3	|          --> breakout of while	- WORK_PENDING		0 events queued
kfifo_in()		|	....
			| } while (scmi_process_event_payload);
kfifo_in()		|
exiting = atomic_read()	|     ...cmwq backing out		- WORK_PENDING		1 events queued
do {			|     ...cmwq backing out		- WORK_PENDING		1 events queued
    ret = queue_work() 	|     ...cmwq backing out		- WORK_PENDING		1 events queued
    if (ret || !exiting)|     ...cmwq backing out		- WORK_PENDING		1 events queued
	break;		|     ...cmwq backing out		- WORK_PENDING		1 events queued
    mdelay(5);		|     ...cmwq backing out		- WORK_PENDING		1 events queued
    exiting =		|     ...cmwq backing out		- WORK_PENDING		1 events queued
      atomic_read;	|     ...cmwq backing out		- WORK_PENDING		1 events queued
} while (--cnt);	|     ...cmwq backing out		- WORK_PENDING		1 events queued
			| ---- WORKER EXIT 			- !WORK_PENDING		0 events queued

like down below between the scissors.

Not tested or tried....I could be missing something...and the mdelay is horrible (and not
the cleanest thing you've ever seen probably :D)...I'll have a chat with Sudeep too.

> > 
> > Now probably I wrote too much of an explanation and confuse stuff more ... :D
> 
> No, thank you for the detailed explanation. I will continue my review.
> 

Thanks

Regards

Cristian



-->8-----------------
diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
index 9eb6b8b71bac..8719e077358c 100644
--- a/drivers/firmware/arm_scmi/notify.c
+++ b/drivers/firmware/arm_scmi/notify.c
@@ -223,6 +223,7 @@ struct scmi_notify_instance {
  */
 struct events_queue {
 	size_t				sz;
+	atomic_t			exiting;
 	struct kfifo			kfifo;
 	struct work_struct		notify_work;
 	struct workqueue_struct		*wq;
@@ -406,11 +407,16 @@ scmi_process_event_header(struct events_queue *eq,
 
 	outs = kfifo_out(&eq->kfifo, pd->eh,
 			 sizeof(struct scmi_event_header));
-	if (!outs)
+	if (!outs) {
+		atomic_set(&eq->exiting, 1);
+		smp_mb__after_atomic();
 		return NULL;
+	}
 	if (outs != sizeof(struct scmi_event_header)) {
 		pr_err("SCMI Notifications: corrupted EVT header. Flush.\n");
 		kfifo_reset_out(&eq->kfifo);
+		atomic_set(&eq->exiting, 1);
+		smp_mb__after_atomic();
 		return NULL;
 	}
 
@@ -446,6 +452,8 @@ scmi_process_event_payload(struct events_queue *eq,
 	outs = kfifo_out(&eq->kfifo, pd->eh->payld, pd->eh->payld_sz);
 	if (unlikely(!outs)) {
 		pr_warn("--- EMPTY !!!!\n");
+		atomic_set(&eq->exiting, 1);
+		smp_mb__after_atomic();
 		return false;
 	}
 
@@ -455,6 +463,8 @@ scmi_process_event_payload(struct events_queue *eq,
 	if (unlikely(outs != pd->eh->payld_sz)) {
 		pr_err("SCMI Notifications: corrupted EVT Payload. Flush.\n");
 		kfifo_reset_out(&eq->kfifo);
+		atomic_set(&eq->exiting, 1);
+		smp_mb__after_atomic();
 		return false;
 	}
 
@@ -526,6 +536,8 @@ static void scmi_events_dispatcher(struct work_struct *work)
 	mdelay(200);
 
 	eq = container_of(work, struct events_queue, notify_work);
+	atomic_set(&eq->exiting, 0);
+	smp_mb__after_atomic();
 	pd = container_of(eq, struct scmi_registered_protocol_events_desc,
 			  equeue);
 	/*
@@ -579,6 +591,8 @@ static void scmi_events_dispatcher(struct work_struct *work)
 int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
 		const void *buf, size_t len, u64 ts)
 {
+	bool exiting;
+	static u8 cnt = 3;
 	struct scmi_registered_event *r_evt;
 	struct scmi_event_header eh;
 	struct scmi_notify_instance *ni = handle->notify_priv;
@@ -616,8 +630,20 @@ int scmi_notify(const struct scmi_handle *handle, u8 proto_id, u8 evt_id,
 	kfifo_in(&r_evt->proto->equeue.kfifo, &eh, sizeof(eh));
 	mdelay(30);
 	kfifo_in(&r_evt->proto->equeue.kfifo, buf, len);
-	queue_work(r_evt->proto->equeue.wq,
-		   &r_evt->proto->equeue.notify_work);
+
+	smp_mb__before_atomic();
+	exiting = atomic_read(&r_evt->proto->equeue.exiting);
+	do {
+		bool ret;
+
+		ret = queue_work(r_evt->proto->equeue.wq,
+				 &r_evt->proto->equeue.notify_work);
+		if (likely(ret || !exiting))
+			break;
+		mdelay(5);
+		smp_mb__before_atomic();
+		exiting = atomic_read(&r_evt->proto->equeue.exiting);
+	} while (--cnt);
 
 	return 0;
 }
@@ -655,6 +681,7 @@ static int scmi_initialize_events_queue(struct scmi_notify_instance *ni,
 				       &equeue->kfifo);
 	if (ret)
 		return ret;
+	atomic_set(&equeue->exiting, 0);
 
 	INIT_WORK(&equeue->notify_work, scmi_events_dispatcher);
 	equeue->wq = ni->notify_wq;
--<8-----------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
