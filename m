Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C8D164C5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 18:44:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2KjsU1G41O946zuI1ZG5c7fMMaBrZbxYuw3Ap3d+mU=; b=T9y+E6qulrGzu0
	uiVfFFv6LOlHBZITu48oAS4nXp9+bijZbQD7TAevfPLUB0t9bPZ4V62AHjyMh5gUizujwRRG4bW03
	IKXTXHVfiIIla5t0i+EJ+8G1eB/ImgOasO9+bFT0JwdY2hkOPVgqd7GavMoUcGsKlhZocZDbK2+8Q
	N3J3ysT06fj1vB/AmarUm9bJc1HKZQR06SY8dgBzh/bFkTaHJ4/odrutMlvUJqD5tbHsYGYG9FQJa
	OXeLe10gG9ra8p7wvcey6YdDrgYNiPlRMq+zlmoE6X7GK1bcwxil3r5L5Gw6QFZ46uKCWGz6fvFz9
	0sMNLVbLpAcsjw3mK6DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4TO5-0006mR-TI; Wed, 19 Feb 2020 17:43:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TNu-0006lj-Rh
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 17:43:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0E5A31B;
 Wed, 19 Feb 2020 09:43:40 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0E843F703;
 Wed, 19 Feb 2020 09:43:39 -0800 (PST)
Subject: Re: [RFC PATCH v2 00/13] SCMI Notifications Core Support
To: Jim Quinlan <james.quinlan@broadcom.com>
References: <20200214153535.32046-1-cristian.marussi@arm.com>
 <CA+-6iNyFYusJTfiFgCNoRrcT5Xo4nof4fc=d46GiPAUD4o2j+Q@mail.gmail.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <e2587fae-a7d4-0426-fffd-104ebf26d014@arm.com>
Date: Wed, 19 Feb 2020 17:43:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CA+-6iNyFYusJTfiFgCNoRrcT5Xo4nof4fc=d46GiPAUD4o2j+Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_094342_982003_9E1FDED8 
X-CRM114-Status: GOOD (  37.96  )
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
Cc: Jonathan.Cameron@huawei.com, Lukasz Luba <lukasz.luba@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jim

and thanks for the feedback first of all.

On 18/02/2020 20:19, Jim Quinlan wrote:
> Hi Cristian,
> 
> This looks very robust and general but I'm wondering about the
> "notification -> user" latency.  It appears there are at least five or
> so memcpy()s of the notification message as it works its way to the
> user, and added to that is the work queue deferral latency.  Is there
> a concern on your end for low latency notifications, perhaps for
> emergency notifications or do you consider this to be quick enough?
> 
I have to say user-latency was a primary concern when I first started
looking into this, so that at first I had thought about exposing a
dedicated additional method to let the users register callbacks which
would have been called straight away from the RX ISR using an
atomic notification chain.

Reasoning about that, though:

- me being really nervous about letting users register something that I'm
  going to call on behalf of them in atomic context (...not bold enough I know :D)
  since can potentially be misused and cause slowdowns to the notification
  delivery or to the system as a whole

- if something like that must be allowed it must be policed somehow from the
  core....what if dozens of callbacks are allowed to be registered in this way
  instead of the blocking mode ? they will slow down each other anyway..and
  what about relative priorities amongst callbacks inside the same notification
  chain ? (potentially registered from different users)

- let's say we allow this and you can register your own atomic callback (which it would
  be policed), what you can do with that at the end ? What are the benefits of this
  scenario ? AICS there are two possible scenarios (but if you can propose more scenarios
  that I've missed you're more than welcome):

   1. you can do the smallest-amount-possible-of-work-in-irq-as-usual and defer,
      probably attaching a timestamp of arrival to the stuff you push for
      deferred processing (and this is what I'm doing already for you..even if
      with too much memcpying around probably :D....more on this later...)
OR 

   2. you can immediately signal the condition just received to an external
      processing unit...say like raising a line which will trigger an interrupt
      in those agent...and this is a scenario in which I can imagine the atomic
      notification chain can benefit (in fact that's the reason I'm still thinking
      about it as a controlled/policed alternative)...but, anyway, in this scenario,
      you are going to route as quickly as possible a critical SCMI notification to
      some external processor for immediate processing...and so you want it to be
      propagated as fast as possible...fine..but why passing through the richOS at all ?
      if it's so critical shouldn't have been already handled by the platform to the
      processing entity bypassing the richOS as a whole and all its inherent latencies ?
      (beside my own memcpys :D)
      So for this last consideration I gave up thinking about some more performant
      atomic delivery of notifications ? But if you can make a case where some sort of
      alternative quick atomic (policed) delivery makes sense, I'll be happy to think
      about it again.


> Note that we (BrcmSTB) have implemented our own  SCMI notification
> system for a proprietary protocol and we designed it to deliver
> notifications as quickly as possible.  Our system is more or less a
> disposable hack and would not stand up to heavy or general usage.  We
> fully intend to move to the approved Linux notification system.  On
> that note,  I'm just wondering if you had any comment on the
> possibility of  "slimming down" your RFC, e.g. perhaps somehow
> collapsing some memcpy()s.
> 

Having said all of the above, I'll certainly review the memcopying to see if I can
redesign an shrink a bit their number. (the only thing that I want to avoid is placing
a spinlock into the ISR side of the dispatching...since now is all lock-free on that side
thanks to the kfifo, the 1-reader-1-writer scnario, and an additional memcpy)

In these regards what I had started to do (but no more), it was to sort of "profiling" a bit
the latency from event RX up to the point immediately before the report is delivered to the users
callbacks, and see if I can improve a bit this path in term of performance reshuffling the code.

In V3 I'm reviewing a lot notification init/exit logic (which was a bit dirty and faulty ...)
and handling of possible different platform instances (which were not handled), I'll see if I
can stick some meaningful fix about memcopies (if not it will be V4)

Moreover on this theme, given your low latencies requirements: as of now I'm using as a backend
the normal Kernel notification chains, which means though, that:

- users are in control of callbacks relative priorities, so that registering a high-pri slow one
  could waste any gain and slow-down some other user registered callbacks on the same notification
  chain (no matter if atomic or blocking)
- users (maliciously ?) could simply register a callback that return NOTIFY_STOP and to cut the chain
- users can (maliciously or not) mangle the event report fed to your callback along the way,
  so that one user can trash potentially the event seen by the next user on the same chain

Do you think the above issues are worth considering to be addressed (for performance/security issues) ?
Because in v1 I had a patch for anti-tampering (now dropped to simplify the code) that could address
all of the above, but I did not know if such policying/anti-tampering attempt was worth an valid.
(even though, I think that if I'd end up adding some emergency/critical fast support, that would need
some sort of callbacks priority policying at least)

Thanks

Regards

Cristian


> Thanks,
> Jim
> PS I'm going on vacation so I won't be able to email for a week.
> 
> 
> On Fri, Feb 14, 2020 at 10:36 AM Cristian Marussi
> <cristian.marussi@arm.com> wrote:
>>
>> Hi all,
>>
>> this series wants to introduce SCMI Notification Support, built on top of
>> the standard Kernel notification chain subsystem.
>>
>> At initialization time each SCMI Protocol takes care to register with the
>> new SCMI notification core the set of its own events which it intends to
>> support.
>>
>> Using a possibly proposed API in include/linux/scmi_protocol.h (not
>> finalized though, NO EXPORTs_) a Kernel user can register its own
>> notifier_t callback (via a notifier_block as usual) against any registered
>> event as identified by the tuple:
>>
>>                 (proto_id, event_id, src_id)
>>
>> where src_id represents a generic source identifier which is protocol
>> dependent like domain_id, performance_id, sensor_id and so forth.
>> (users can anyway do NOT provide any src_id, and subscribe instead to ALL
>>  the existing (if any) src_id sources for that proto_id/evt_id combination)
>>
>> Each of the above tuple-specified event will be served on its own dedicated
>> blocking notification chain.
>>
>> Upon a notification delivery all the users' registered notifier_t callbacks
>> will be in turn invoked and fed with the event_id as @action param and a
>> generated custom per-event struct _report as @data param.
>> (as in include/linux/scmi_protocol.h)
>>
>> The final step of notification delivery via users' callback invocation is
>> instead delegated to a pool of deferred workers (Kernel cmwq): each
>> SCMI protocol has its own dedicated worker and dedicated queue to push
>> events from the rx ISR to the worker.
>>
>> The series is marked as RFC mainly because:
>>
>> - the API as said is tentative and not EXPORTed; currently consisting of a
>>   generic interface like:
>>
>>          scmi_register_event_notifier(proto_id, evt_id, *src_id, *nb)
>>
>>   as found in scmi_protocol.h, or using the equivalent 'handle' operations
>>   in scmi_notify_ops if used by an scmi_driver.
>>
>>   It's open for discussion.
>>
>> - no Event priorization has been considered: each protocol has its own
>>   queue and deferred worker instance, so as to avoid that one protocol
>>   flood can overrun a single queue and influence other protocols'
>>   notifications' delivery.
>>   But that's it, all the workers are unbound, low_pri cmwq workers.
>>
>>   Should we enforce some sort of built-in prio amongst the events ?
>>   Should this priority instead be compile time configurable ?
>>
>>   Again, open for discussion.
>>
>> - no configuration is possible: it can be imagined that on a real platform
>>   events' priority (if any) and events queues' depth could be something
>>   somehow compile-time configurable, but this is not addressed by this
>>   series at all.
>>
>> Based on scmi-next 5.6 [1], on top of:
>>
>> commit 5c8a47a5a91d ("firmware: arm_scmi: Make scmi core independent of
>>                       the transport type")
>>
>> This series has been tested on JUNO with an experimental firmware only
>> supporting Perf Notifications.
>>
>> Any thoughts ?
>>
>> Thanks
>>
>> Cristian
>> ----
>>
>> v1 --> v2:
>> - dropped anti-tampering patch
>> - rebased on top of scmi-for-next-5.6, which includes Viresh series that
>>   make SCMI core independent of transport (5c8a47a5a91d)
>> - add a few new SCMI transport methods on top of Viresh patch to address
>>   needs of SCMI Notifications
>> - reviewed/renamed scmi_handle_xfer_delayed_resp()
>> - split main SCMI Notification core patch (~1k lines) into three chunks:
>>   protocol-registration / callbacks-registration / dispatch-and-delivery
>> - removed awkward usage of IDR maps in favour of pure hashtables
>> - added enable/disable refcounting in notification core (was broken in v1)
>> - removed per-protocol candidate API: a single generic API is now proposed
>>   instead of scmi_register_<proto>_event_notifier(evt_id, *src_id, *nb)
>> - added handle->notify_ops as an alternative notification API
>>   for scmi_driver
>> - moved ALL_SRCIDs enabled handling from protocol code to core code
>> - reviewed protocol registration/unregistration logic to use devres
>> - reviewed cleanup phase on shutdown
>> - fixed  ERROR: reference preceded by free as reported by kbuild test robot
>>
>> [1] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git
>>
>> Cristian Marussi (10):
>>   firmware: arm_scmi: Add notifications support in transport layer
>>   firmware: arm_scmi: Add notification protocol-registration
>>   firmware: arm_scmi: Add notification callbacks-registration
>>   firmware: arm_scmi: Add notification dispatch and delivery
>>   firmware: arm_scmi: Enable notification core
>>   firmware: arm_scmi: Add Power notifications support
>>   firmware: arm_scmi: Add Perf notifications support
>>   firmware: arm_scmi: Add Sensor notifications support
>>   firmware: arm_scmi: Add Reset notifications support
>>   firmware: arm_scmi: Add Base notifications support
>>
>> Sudeep Holla (3):
>>   firmware: arm_scmi: Add receive buffer support for notifications
>>   firmware: arm_scmi: Update protocol commands and notification list
>>   firmware: arm_scmi: Add support for notifications message processing
>>
>>  drivers/firmware/arm_scmi/Makefile  |    2 +-
>>  drivers/firmware/arm_scmi/base.c    |  121 +++
>>  drivers/firmware/arm_scmi/bus.c     |   11 +
>>  drivers/firmware/arm_scmi/common.h  |   12 +
>>  drivers/firmware/arm_scmi/driver.c  |  118 ++-
>>  drivers/firmware/arm_scmi/mailbox.c |   17 +
>>  drivers/firmware/arm_scmi/notify.c  | 1102 +++++++++++++++++++++++++++
>>  drivers/firmware/arm_scmi/notify.h  |   78 ++
>>  drivers/firmware/arm_scmi/perf.c    |  140 +++-
>>  drivers/firmware/arm_scmi/power.c   |  133 +++-
>>  drivers/firmware/arm_scmi/reset.c   |  100 ++-
>>  drivers/firmware/arm_scmi/sensors.c |   77 +-
>>  drivers/firmware/arm_scmi/shmem.c   |   15 +
>>  include/linux/scmi_protocol.h       |  114 +++
>>  14 files changed, 2009 insertions(+), 31 deletions(-)
>>  create mode 100644 drivers/firmware/arm_scmi/notify.c
>>  create mode 100644 drivers/firmware/arm_scmi/notify.h
>>
>> --
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
