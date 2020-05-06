Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C6E1C74A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuEms7MjRSxUg0j9sLmNfSvK/jA3mgAVu4fJs9U5x/M=; b=BxjpZwbZYgPPlN
	u+8jgWqRf3MIbP9dJ2g9ZJDxJGukR1uPCDNhDu8TrUYQunxvKDxEP7Zb9HXUG0WqJVUnZhZhmhwsQ
	zIcjNNlhY8BWm8/H6SQo3heEpaTXQ6FWpzXM7Zh8ccX2DfyeCQt7qjsGhoxO52rOClBDtckJ17Auj
	H3rw+EZe1BUL5sD27etQrxA26zrQvS8s/AeuicQMlZBWEbrRqNzToLW+W/8hUZkA6GAlcgi9tbJcy
	aOe0KPUxlZ46utbCBt8yAhevM4oqtRaaZt37vf1uSRc1iC4oFUKZ1hQx+tT0Z3/zWL8HWUCjVWejG
	i20tTV/W4oibg4vL3VLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLwr-00009P-W1; Wed, 06 May 2020 15:27:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLvv-0007Su-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:26:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55172101E;
 Wed,  6 May 2020 08:26:02 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54C163F68F;
 Wed,  6 May 2020 08:26:01 -0700 (PDT)
Date: Wed, 6 May 2020 16:25:50 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v7 1/9] firmware: arm_scmi: Add notification
 protocol-registration
Message-ID: <20200506152550.GA21779@arm.com>
References: <20200504163855.54548-1-cristian.marussi@arm.com>
 <20200504163855.54548-2-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504163855.54548-2-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_082603_342531_EAEEAAE8 
X-CRM114-Status: GOOD (  26.01  )
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
Cc: Jonathan.Cameron@Huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 sudeep.holla@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 05:38:47PM +0100, Cristian Marussi wrote:
> Add core SCMI Notifications protocol-registration support: allow protocols
> to register their own set of supported events, during their initialization
> phase. Notification core can track multiple platform instances by their
> handles.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> V4 --> V5
> - fixed kernel-doc
> - added barriers for registered protocols and events
> - using kfifo_alloc and devm_add_action_or_reset
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
>  drivers/firmware/arm_scmi/notify.c | 444 +++++++++++++++++++++++++++++
>  drivers/firmware/arm_scmi/notify.h |  56 ++++
>  include/linux/scmi_protocol.h      |   3 +
>  5 files changed, 508 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/arm_scmi/notify.c
>  create mode 100644 drivers/firmware/arm_scmi/notify.h

[...]

> diff --git a/drivers/firmware/arm_scmi/notify.c b/drivers/firmware/arm_scmi/notify.c

[...]

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

The atomics/barriers don't look quite right to me here.

I'd have expected:

scmi_register_protocol_events()
{
	if (atomic_read(&ni->initialized))
		return -EAGAIN;
	smp_mb_after_atomic();

	/* ... */
}

to pair with:

scmi_notification_init()
{
	/* ... */

	smp_mb__before_atomic();
	atomic_set(&ni->enabled, 1);
}


...however, do we need to allow these two functions to race with each
other at all?  (I haven't tried to understand the wider context here,
so if there really is no way to avoid initialisation racing with use I
guess we may have to do something like this.  We don't want callers
to dumbly spin on this function though.)


In other patches in the series, calls to scmi_register_protocol_events()
seem to be assuming there is no race: the return value is not checked.
Possibly a bug?


I'm not sure about scmi_notification_exit() (see below).

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
> +		pd->registered_events[i] = r_evt;
> +		/* Ensure events are updated */
> +		smp_wmb();
> +		pr_info("SCMI Notifications: registered event - %X\n",
> +			MAKE_ALL_SRCS_KEY(r_evt->proto->id, r_evt->evt->id));
> +	}
> +
> +	/* Register protocol and events...it will never be removed */
> +	ni->registered_protocols[proto_id] = pd;
> +	/* Ensure protocols are updated */
> +	smp_wmb();
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
> + * scmi_notification_init()  - Initializes Notification Core Support
> + * @handle: The handle identifying the platform instance to initialize
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
> + * * initialization: basic common allocations (this function) -> @initialized
> + * * registration: protocols asynchronously come into life and registers their
> + *		   own supported list of events with the core; this causes
> + *		   further per-protocol allocations
> + *
> + * Any user's callback registration attempt, referring a still not registered
> + * event, will be registered as pending and finalized later (if possible)
> + * by scmi_protocols_late_init() work.
> + * This allows for lazy initialization of SCMI Protocols due to late (or
> + * missing) SCMI drivers' modules loading.
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
> + * scmi_notification_exit()  - Shutdown and clean Notification core
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

If users can race with this, we're dead: the atomic by itself doesn't
ensure that handle is not in use once we arrive here.  Should this
be a refcount instead?

If users can't race with this, we probably don't protection here.


I may be misunderstanding what this code is doing...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
