Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27871D1B7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 18:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1omAQ5oIwm4pYTl9VPajWjXWUqaRbrduarjH5eHkXs=; b=AFXumR90X7hLXR
	JatVTyzlClkgOxK2HZ9oXPQN6Vny3jO8n7VwLvOvhgnMvjaM7oP0JTjDh1ZucdATEXtgP4l8yfqYv
	Oxtsksmvfsg13RavUyjXke96D28HqhfalQM929ybk1eF/g3vC3USylY4acfN048opD+UfuuyLPYXX
	3vsaE786jqWTssVgQi8EDWgFzdgNQpt8wsIRTiTAZZMw6IwyfYFZAF4vaALew5c8BhTo2GBIi/WUQ
	dHkeEIa6reBwIVEcleiPhhlCPc8AT5IyxNoZMd2flOJt5WKuXS/uR93x8KWBx1oHiL5iQ9gnLMaUN
	qy9N0GpfrjAESB5Oe8zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuWc-0001aG-GC; Wed, 13 May 2020 16:46:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuWS-0001Yz-Bb
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 16:46:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12AA831B;
 Wed, 13 May 2020 09:46:16 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 123C33F305;
 Wed, 13 May 2020 09:46:14 -0700 (PDT)
Date: Wed, 13 May 2020 17:46:13 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v7 1/9] firmware: arm_scmi: Add notification
 protocol-registration
Message-ID: <20200513164612.GV21779@arm.com>
References: <20200504163855.54548-1-cristian.marussi@arm.com>
 <20200504163855.54548-2-cristian.marussi@arm.com>
 <20200506152550.GA21779@arm.com>
 <20200511220403.GB17648@e119603-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511220403.GB17648@e119603-lin.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_094620_485955_F27029C4 
X-CRM114-Status: GOOD (  48.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Jonathan.Cameron@Huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 sudeep.holla@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 11:04:03PM +0100, Cristian Marussi wrote:
> Hi Dave
> 
> thanks for the review first of all.
> 
> On Wed, May 06, 2020 at 04:25:50PM +0100, Dave Martin wrote:
> > On Mon, May 04, 2020 at 05:38:47PM +0100, Cristian Marussi wrote:
> > > Add core SCMI Notifications protocol-registration support: allow protocols
> > > to register their own set of supported events, during their initialization
> > > phase. Notification core can track multiple platform instances by their
> > > handles.
> > > 
> > > Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > > ---
> > > V4 --> V5
> > > - fixed kernel-doc
> > > - added barriers for registered protocols and events
> > > - using kfifo_alloc and devm_add_action_or_reset
> > > V3 --> V4
> > > - removed scratch ISR buffer, move scratch BH buffer into protocol
> > >   descriptor
> > > - converted registered_protocols and registered_events from hashtables
> > >   into bare fixed-sized arrays
> > > - removed unregister protocols' routines (never called really)
> > > V2 --> V3
> > > - added scmi_notify_instance to track target platform instance
> > > V1 --> V2
> > > - splitted out of V1 patch 04
> > > - moved from IDR maps to real HashTables to store events
> > > - scmi_notifications_initialized is now an atomic_t
> > > - reviewed protocol registration/unregistration to use devres
> > > - fixed:
> > >   drivers/firmware/arm_scmi/notify.c:483:18-23: ERROR:
> > >   	reference preceded by free on line 482
> > > 
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > Reported-by: Julia Lawall <julia.lawall@lip6.fr>
> > > ---
> > >  drivers/firmware/arm_scmi/Makefile |   2 +-
> > >  drivers/firmware/arm_scmi/common.h |   4 +
> > >  drivers/firmware/arm_scmi/notify.c | 444 +++++++++++++++++++++++++++++
> > >  drivers/firmware/arm_scmi/notify.h |  56 ++++
> > >  include/linux/scmi_protocol.h      |   3 +
> > >  5 files changed, 508 insertions(+), 1 deletion(-)
> > >  create mode 100644 drivers/firmware/arm_scmi/notify.c
> > >  create mode 100644 drivers/firmware/arm_scmi/notify.h
> > 
> > [...]
> > 
> > > diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c
> > 
> > [...]
> > 
> > > +int scmi_register_protocol_events(const struct scmi_handle *handle,
> > > +				  u8 proto_id, size_t queue_sz,
> > > +				  const struct scmi_protocol_event_ops *ops,
> > > +				  const struct scmi_event *evt, int num_events,
> > > +				  int num_sources)
> > > +{
> > > +	int i;
> > > +	size_t payld_sz = 0;
> > > +	struct scmi_registered_protocol_events_desc *pd;
> > > +	struct scmi_notify_instance *ni = handle->notify_priv;
> > > +
> > > +	if (!ops || !evt || proto_id >= SCMI_MAX_PROTO)
> > > +		return -EINVAL;
> > > +
> > > +	/* Ensure atomic value is updated */
> > > +	smp_mb__before_atomic();
> > > +	if (unlikely(!ni || !atomic_read(&ni->initialized)))
> > > +		return -EAGAIN;
> > 
> > The atomics/barriers don't look quite right to me here.
> > 
> > I'd have expected:
> > 
> > scmi_register_protocol_events()
> > {
> > 	if (atomic_read(&ni->initialized))
> > 		return -EAGAIN;
> > 	smp_mb_after_atomic();
> > 
> > 	/* ... */
> > }
> > 
> > to pair with:
> > 
> > scmi_notification_init()
> > {
> > 	/* ... */
> > 
> > 	smp_mb__before_atomic();
> > 	atomic_set(&ni->enabled, 1);
> > }
> > 
> > 
> > ...however, do we need to allow these two functions to race with each
> > other at all?  (I haven't tried to understand the wider context here,
> > so if there really is no way to avoid initialisation racing with use I
> > guess we may have to do something like this.  We don't want callers
> > to dumbly spin on this function though.)
> > 
> > 
> > In other patches in the series, calls to scmi_register_protocol_events()
> > seem to be assuming there is no race: the return value is not checked.
> > Possibly a bug?
> > 
> 
> I think you are right in these regards, there's no need of an atomic here
> for 'initialized' and using -EAGAIN on !initialized as error code in
> scmi_register_protocol_events() is wrong too in this context.
> 
> The aim is to detect when general SCMI notification core initialization has
> failed as a whole and in that case inhibit any further SCMI protocols events'
> registration attempt during general protocol init (since init has failed and
> no related data has been allocated and readied).
> No attempt should be made to re-register on failure because the failure to
> init the notif stuff is permanent when happens (not solvable with deferred
> re-probing) and there's no race in checking this condition
> (more on this down below)
> 
> So I think I'll just drop the 'initialized' field as a whole and simply use
> the value of handle->notify_priv (ni) to detect if initialization was
> successfull or not, like:
> 
> scmi_register_protocol_events()
> {
> 	...
> 	if (unlikely(!ni))  		// ni is NULL when init has failed
> 		return -ENOMEM;
> }
> 
> (..plus barriers where needed)
> 
> and could probably check the ret value too in the caller to printout some
> debug info in case of other-than-ENOMEM errors. (due anyway to a broken
> implementation not to runtime errors)
> 
> As said there's no race to initialized (or ni itself) in fact because the
> sequence in SCMI general init is roughly as follows:
> 
> a. SCMI bus is created and registered
> b. SCMI protocol driver (a platform driver) is probed and an SCMI handle is
>    initialized for each distinct SCMI plaform (if any) defined in the DT,
>    and then:
>   -> scmi_notification_init()
>   -> scmi_create_protocol_devices:
>      DT-defined and fw-supported SCMI protocol devices are created (this does
>      NOT cause automatically protocol initialization though...)
> 	--> scmi_set_handle()
> c. An SCMI driver using protoX is finally loaded/initialized (say scmi-cpufreq)
>    and the related protocol device is probed, and, if this was the first device
>    to be probe relying on protoX, protocol X itself (say perf.c) is finally
>    initialized:
>   __probe():
>   -> if !handle	return -EPROBEDEFER
>   -> ...
>   -> X.scmi_protocol_init()
>     ...
>     -> scmi_register_protocol_events(X..)
> 
> b. and c. could indeed happen out of order and lead to a deferred reprobe of c.
> once b. has finally completed, BUT the reprobe is triggered anyway before any
> protocol init and event registration can start, so when ni == NULL
> in scmi_register_protocol(), the initialization has been effectively attempted
> and has failed (-ENOMEM) and so makes no sense to retry further.
> 
> > 
> > I'm not sure about scmi_notification_exit() (see below).
> > 
> > > +
> > > +	/* Attach to the notification main devres group */
> > > +	if (!devres_open_group(ni->handle->dev, ni->gid, GFP_KERNEL))
> > > +		return -ENOMEM;
> > > +
> > > +	for (i = 0; i < num_events; i++)
> > > +		payld_sz = max_t(size_t, payld_sz, evt[i].max_payld_sz);
> > > +	pd = scmi_allocate_registered_protocol_desc(ni, proto_id, queue_sz,
> > > +				    sizeof(struct scmi_event_header) + payld_sz,
> > > +						    num_events, ops);
> > > +	if (IS_ERR(pd))
> > > +		goto err;
> > > +
> > > +	for (i = 0; i < num_events; i++, evt++) {
> > > +		struct scmi_registered_event *r_evt;
> > > +
> > > +		r_evt = devm_kzalloc(ni->handle->dev, sizeof(*r_evt),
> > > +				     GFP_KERNEL);
> > > +		if (!r_evt)
> > > +			goto err;
> > > +		r_evt->proto = pd;
> > > +		r_evt->evt = evt;
> > > +
> > > +		r_evt->sources = devm_kcalloc(ni->handle->dev, num_sources,
> > > +					      sizeof(refcount_t), GFP_KERNEL);
> > > +		if (!r_evt->sources)
> > > +			goto err;
> > > +		r_evt->num_sources = num_sources;
> > > +		mutex_init(&r_evt->sources_mtx);
> > > +
> > > +		r_evt->report = devm_kzalloc(ni->handle->dev,
> > > +					     evt->max_report_sz, GFP_KERNEL);
> > > +		if (!r_evt->report)
> > > +			goto err;
> > > +
> > > +		pd->registered_events[i] = r_evt;
> > > +		/* Ensure events are updated */
> > > +		smp_wmb();
> > > +		pr_info("SCMI Notifications: registered event - %X\n",
> > > +			MAKE_ALL_SRCS_KEY(r_evt->proto->id, r_evt->evt->id));
> > > +	}
> > > +
> > > +	/* Register protocol and events...it will never be removed */
> > > +	ni->registered_protocols[proto_id] = pd;
> > > +	/* Ensure protocols are updated */
> > > +	smp_wmb();
> > > +
> > > +	devres_close_group(ni->handle->dev, ni->gid);
> > > +
> > > +	return 0;
> > > +
> > > +err:
> > > +	pr_warn("SCMI Notifications - Proto:%X - Registration Failed !\n",
> > > +		proto_id);
> > > +	/* A failing protocol registration does not trigger full failure */
> > > +	devres_close_group(ni->handle->dev, ni->gid);
> > > +
> > > +	return -ENOMEM;
> > > +}
> > > +
> > > +/**
> > > + * scmi_notification_init()  - Initializes Notification Core Support
> > > + * @handle: The handle identifying the platform instance to initialize
> > > + *
> > > + * This function lays out all the basic resources needed by the notification
> > > + * core instance identified by the provided handle: once done, all of the
> > > + * SCMI Protocols can register their events with the core during their own
> > > + * initializations.
> > > + *
> > > + * Note that failing to initialize the core notifications support does not
> > > + * cause the whole SCMI Protocols stack to fail its initialization.
> > > + *
> > > + * SCMI Notification Initialization happens in 2 steps:
> > > + * * initialization: basic common allocations (this function) -> @initialized
> > > + * * registration: protocols asynchronously come into life and registers their
> > > + *		   own supported list of events with the core; this causes
> > > + *		   further per-protocol allocations
> > > + *
> > > + * Any user's callback registration attempt, referring a still not registered
> > > + * event, will be registered as pending and finalized later (if possible)
> > > + * by scmi_protocols_late_init() work.
> > > + * This allows for lazy initialization of SCMI Protocols due to late (or
> > > + * missing) SCMI drivers' modules loading.
> > > + *
> > > + * Return: 0 on Success
> > > + */
> > > +int scmi_notification_init(struct scmi_handle *handle)
> > > +{
> > > +	void *gid;
> > > +	struct scmi_notify_instance *ni;
> > > +
> > > +	gid = devres_open_group(handle->dev, NULL, GFP_KERNEL);
> > > +	if (!gid)
> > > +		return -ENOMEM;
> > > +
> > > +	ni = devm_kzalloc(handle->dev, sizeof(*ni), GFP_KERNEL);
> > > +	if (!ni)
> > > +		goto err;
> > > +
> > > +	ni->gid = gid;
> > > +	ni->handle = handle;
> > > +
> > > +	ni->registered_protocols = devm_kcalloc(handle->dev, SCMI_MAX_PROTO,
> > > +						sizeof(char *), GFP_KERNEL);
> > > +	if (!ni->registered_protocols)
> > > +		goto err;
> > > +
> > > +	handle->notify_priv = ni;
> > > +
> > > +	atomic_set(&ni->initialized, 1);
> > > +	atomic_set(&ni->enabled, 1);
> > > +	/* Ensure atomic values are updated */
> > > +	smp_mb__after_atomic();
> > > +
> > > +	pr_info("SCMI Notifications Core Initialized.\n");
> > > +
> > > +	devres_close_group(handle->dev, ni->gid);
> > > +
> > > +	return 0;
> > > +
> > > +err:
> > > +	pr_warn("SCMI Notifications - Initialization Failed.\n");
> > > +	devres_release_group(handle->dev, NULL);
> > > +	return -ENOMEM;
> > > +}
> > > +
> > > +/**
> > > + * scmi_notification_exit()  - Shutdown and clean Notification core
> > > + * @handle: The handle identifying the platform instance to shutdown
> > > + */
> > > +void scmi_notification_exit(struct scmi_handle *handle)
> > > +{
> > > +	struct scmi_notify_instance *ni = handle->notify_priv;
> > > +
> > > +	if (unlikely(!ni || !atomic_read(&ni->initialized)))
> > > +		return;
> > > +
> > > +	atomic_set(&ni->enabled, 0);
> > > +	/* Ensure atomic values are updated */
> > > +	smp_mb__after_atomic();
> > 
> > If users can race with this, we're dead: the atomic by itself doesn't
> > ensure that handle is not in use once we arrive here.  Should this
> > be a refcount instead?
> > 
> > If users can't race with this, we probably don't protection here.
> > 
> > 
> > I may be misunderstanding what this code is doing...
> > 
> 
> First of all the enabled flag does not probably belong to this commit properly;
> here is initialized but it is really fully used only in subsequent patches
> (...so makes apparently little sense here... my bad...)
> 
> Anyway, in general SCMI protocols (beside notifications stuff) are initialized
> as depicted above, BUT they are never deinitialized explicitly (there's no
> equivalent scmi_protocol_deinit()) and also proto devices are never destroyed:
> so there's no scmi_protocol_deregister_events() neither in this series, because
> it would have been tricky to properly invoke it and would have not been consistent
> with the original SCMI design.
> 
> On the other side since in protocol driver _remove() some general protos resources
> are in fact freed anyway, for consistency I decided to free the devm notification
> resources allocated with the above init() in scmi_notification_exit(): this should
> happen only at system shutdown in fact when notification are no more of a concern.
> 
> So given there's no explicit deregister I had to ensure somehow that the wanna-be-freed
> notif devm resources were safe to be released.
> 
> In this context the 'enabled' atomic flag is set to 0 @_exit to stop the dispatch of the
> events (possibly still coming from the fw) from the ISR into the kfifo queues: once such
> pkts flow is stopped I destroy_sync() (in a subsequent patch @_exit too) all the workqueues
> fetching the events from the kfifos: this way I can be sure that all the notif resources
> are no more used at all when I free all of them with devm_release() at the end.
> 
> All of this is an additional precaution against buggy fw not stopping sending events
> even when asked to do so (by drivers when deregistering notif callbacks in their shutdown)
> 
> Give the above scenario on shutdown (which I never observed to tell the truth), and the fact
> I'm freeing all devm res (including ni) at shutdown, it's now apparent ALSO that I cannot use
> 'enabled' to keep stopped the flow in a safe way after its enclosing struct ni has been freed !
> 
> So I'll remove the 'enable' atomic_t too and rely equally on the bare !ni check to determine
> if the notification are enabled and should be dispatched. So that in 
> 
> scmi_notify_init() {
> 
> 	if (unlikely(!ni))
> 		return 0;     /// Stop notification dispatching from ISR
> }
> 
> So ni and !ni will signify (initialized && enabled) or not.

Can this still race?

If teardown is impossible or useless, perhaps it would make sense not to
have the code for it (?)

Do we expect SCMI related drivers to be buildable as modules?

> Not really a short explanation...sorry

Sounds like it's not simple :)

What you've said sounds plausible -- I haven't found much time to think
about it this week I'm afraid!

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
