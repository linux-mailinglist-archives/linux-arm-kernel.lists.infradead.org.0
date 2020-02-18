Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA65D1632E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A63RYcO7AErR2fT0pgK9XWFVTAbp/O7vs5yej3+gywQ=; b=hZ9maNtK9VpDgw
	JYlB5BPwtjOq9ylk1+nXybb8rgu227SO76L7E/idzL/V5wYd6F5tQeFY0KFvwEk968vNSZIclTTx4
	apUKJAXdsHu7IMM4I28AzWRSy7X4Tbmojg759VpZjzy8RmdUQZfopqXScsmBAwYahUmYOWD892bT+
	BY/UXRoTwM+Lx7Dd8YbxQS9mD2h7Ta/hOJZsuebPjjt9e6A54yRJDr7uVfptAM6YPgLEvJdltBMnC
	GzjcS9I39TJ9/W909tE04KKy5hsYnIshKU2IAB3oNyzg2W2x/6UJv6k4QDQNdKfZRC0Ymcxn50OX6
	ml7cr0JpS8Y3omJTlefg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j49LD-0000mi-R6; Tue, 18 Feb 2020 20:19:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j49L1-0000mE-S1
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 20:19:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so4079618wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 12:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fjd7JDIqMogS+ecAjflr/UQOm6NZ79xvDYhlsrLIVp8=;
 b=GTbwyqXSsALa3HKNnan9u6EmLpurUr35f2SvXSLcV5aMTSlz0e/VvVuBpRS3r8gTVr
 sgwK/1l7FK9/VCrgHmT9q92e8CyvVBFpDrcMR1UQ8CP1gkeDnmwnFSI2z3n+gjyVrpxO
 NWveKV/3TiBNAME8rv50/BSamKlvJc2OFLXLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fjd7JDIqMogS+ecAjflr/UQOm6NZ79xvDYhlsrLIVp8=;
 b=Q9314f3duAoHx0MK8qHzNG4UfpTOOBRU+/o40F498NAAgDxLnEPZ+Cor74Hla+auVz
 +VornKWG4S2mv++ItbBj+stZ9vqYacyhiUoDhfqX+nnvBkPUNUgm4vmlE/mFiBY1Q6kf
 n1YQLctsynzOJh9SR9FTgurkk6gGDFwwCUdDWqXcwPRg6TjfrYgl6oAHgMIaebiW9GDE
 3D7vf4n1gSPRP7oOt2mzUSzAOJ3f1wjCn0g6+hWimbaX1R3LoIaif7IH3s5dCGkKqBtd
 gORFPdUl3eDFGsfQI5FcslR2fWl9S8NHSOysO+NL6OunwQQI9MLeOypCSxAele+wzatN
 jiHw==
X-Gm-Message-State: APjAAAXg8ec6Yjw5DtWqrn5YxbnMjYc1FETkclHNfHLqPVmsXTfXM+0e
 e6kAVBZMELDalNCpL+VwBuvVSkkMKshzAufMiwuMQQ==
X-Google-Smtp-Source: APXvYqwyT1Zl+Ukm4WyEu9LaH1ZAWp8D6b5xvv2uarrWNoLF2k+riF1MagTvM49bzlcQDPRxwbPI7wKPV+UhrpVk228=
X-Received: by 2002:a7b:ce98:: with SMTP id q24mr4807130wmj.41.1582057161792; 
 Tue, 18 Feb 2020 12:19:21 -0800 (PST)
MIME-Version: 1.0
References: <20200214153535.32046-1-cristian.marussi@arm.com>
In-Reply-To: <20200214153535.32046-1-cristian.marussi@arm.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 18 Feb 2020 15:19:10 -0500
Message-ID: <CA+-6iNyFYusJTfiFgCNoRrcT5Xo4nof4fc=d46GiPAUD4o2j+Q@mail.gmail.com>
Subject: Re: [RFC PATCH v2 00/13] SCMI Notifications Core Support
To: Cristian Marussi <cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_121923_912256_F19B3682 
X-CRM114-Status: GOOD (  28.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Cristian,

This looks very robust and general but I'm wondering about the
"notification -> user" latency.  It appears there are at least five or
so memcpy()s of the notification message as it works its way to the
user, and added to that is the work queue deferral latency.  Is there
a concern on your end for low latency notifications, perhaps for
emergency notifications or do you consider this to be quick enough?

Note that we (BrcmSTB) have implemented our own  SCMI notification
system for a proprietary protocol and we designed it to deliver
notifications as quickly as possible.  Our system is more or less a
disposable hack and would not stand up to heavy or general usage.  We
fully intend to move to the approved Linux notification system.  On
that note,  I'm just wondering if you had any comment on the
possibility of  "slimming down" your RFC, e.g. perhaps somehow
collapsing some memcpy()s.

Thanks,
Jim
PS I'm going on vacation so I won't be able to email for a week.


On Fri, Feb 14, 2020 at 10:36 AM Cristian Marussi
<cristian.marussi@arm.com> wrote:
>
> Hi all,
>
> this series wants to introduce SCMI Notification Support, built on top of
> the standard Kernel notification chain subsystem.
>
> At initialization time each SCMI Protocol takes care to register with the
> new SCMI notification core the set of its own events which it intends to
> support.
>
> Using a possibly proposed API in include/linux/scmi_protocol.h (not
> finalized though, NO EXPORTs_) a Kernel user can register its own
> notifier_t callback (via a notifier_block as usual) against any registered
> event as identified by the tuple:
>
>                 (proto_id, event_id, src_id)
>
> where src_id represents a generic source identifier which is protocol
> dependent like domain_id, performance_id, sensor_id and so forth.
> (users can anyway do NOT provide any src_id, and subscribe instead to ALL
>  the existing (if any) src_id sources for that proto_id/evt_id combination)
>
> Each of the above tuple-specified event will be served on its own dedicated
> blocking notification chain.
>
> Upon a notification delivery all the users' registered notifier_t callbacks
> will be in turn invoked and fed with the event_id as @action param and a
> generated custom per-event struct _report as @data param.
> (as in include/linux/scmi_protocol.h)
>
> The final step of notification delivery via users' callback invocation is
> instead delegated to a pool of deferred workers (Kernel cmwq): each
> SCMI protocol has its own dedicated worker and dedicated queue to push
> events from the rx ISR to the worker.
>
> The series is marked as RFC mainly because:
>
> - the API as said is tentative and not EXPORTed; currently consisting of a
>   generic interface like:
>
>          scmi_register_event_notifier(proto_id, evt_id, *src_id, *nb)
>
>   as found in scmi_protocol.h, or using the equivalent 'handle' operations
>   in scmi_notify_ops if used by an scmi_driver.
>
>   It's open for discussion.
>
> - no Event priorization has been considered: each protocol has its own
>   queue and deferred worker instance, so as to avoid that one protocol
>   flood can overrun a single queue and influence other protocols'
>   notifications' delivery.
>   But that's it, all the workers are unbound, low_pri cmwq workers.
>
>   Should we enforce some sort of built-in prio amongst the events ?
>   Should this priority instead be compile time configurable ?
>
>   Again, open for discussion.
>
> - no configuration is possible: it can be imagined that on a real platform
>   events' priority (if any) and events queues' depth could be something
>   somehow compile-time configurable, but this is not addressed by this
>   series at all.
>
> Based on scmi-next 5.6 [1], on top of:
>
> commit 5c8a47a5a91d ("firmware: arm_scmi: Make scmi core independent of
>                       the transport type")
>
> This series has been tested on JUNO with an experimental firmware only
> supporting Perf Notifications.
>
> Any thoughts ?
>
> Thanks
>
> Cristian
> ----
>
> v1 --> v2:
> - dropped anti-tampering patch
> - rebased on top of scmi-for-next-5.6, which includes Viresh series that
>   make SCMI core independent of transport (5c8a47a5a91d)
> - add a few new SCMI transport methods on top of Viresh patch to address
>   needs of SCMI Notifications
> - reviewed/renamed scmi_handle_xfer_delayed_resp()
> - split main SCMI Notification core patch (~1k lines) into three chunks:
>   protocol-registration / callbacks-registration / dispatch-and-delivery
> - removed awkward usage of IDR maps in favour of pure hashtables
> - added enable/disable refcounting in notification core (was broken in v1)
> - removed per-protocol candidate API: a single generic API is now proposed
>   instead of scmi_register_<proto>_event_notifier(evt_id, *src_id, *nb)
> - added handle->notify_ops as an alternative notification API
>   for scmi_driver
> - moved ALL_SRCIDs enabled handling from protocol code to core code
> - reviewed protocol registration/unregistration logic to use devres
> - reviewed cleanup phase on shutdown
> - fixed  ERROR: reference preceded by free as reported by kbuild test robot
>
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git
>
> Cristian Marussi (10):
>   firmware: arm_scmi: Add notifications support in transport layer
>   firmware: arm_scmi: Add notification protocol-registration
>   firmware: arm_scmi: Add notification callbacks-registration
>   firmware: arm_scmi: Add notification dispatch and delivery
>   firmware: arm_scmi: Enable notification core
>   firmware: arm_scmi: Add Power notifications support
>   firmware: arm_scmi: Add Perf notifications support
>   firmware: arm_scmi: Add Sensor notifications support
>   firmware: arm_scmi: Add Reset notifications support
>   firmware: arm_scmi: Add Base notifications support
>
> Sudeep Holla (3):
>   firmware: arm_scmi: Add receive buffer support for notifications
>   firmware: arm_scmi: Update protocol commands and notification list
>   firmware: arm_scmi: Add support for notifications message processing
>
>  drivers/firmware/arm_scmi/Makefile  |    2 +-
>  drivers/firmware/arm_scmi/base.c    |  121 +++
>  drivers/firmware/arm_scmi/bus.c     |   11 +
>  drivers/firmware/arm_scmi/common.h  |   12 +
>  drivers/firmware/arm_scmi/driver.c  |  118 ++-
>  drivers/firmware/arm_scmi/mailbox.c |   17 +
>  drivers/firmware/arm_scmi/notify.c  | 1102 +++++++++++++++++++++++++++
>  drivers/firmware/arm_scmi/notify.h  |   78 ++
>  drivers/firmware/arm_scmi/perf.c    |  140 +++-
>  drivers/firmware/arm_scmi/power.c   |  133 +++-
>  drivers/firmware/arm_scmi/reset.c   |  100 ++-
>  drivers/firmware/arm_scmi/sensors.c |   77 +-
>  drivers/firmware/arm_scmi/shmem.c   |   15 +
>  include/linux/scmi_protocol.h       |  114 +++
>  14 files changed, 2009 insertions(+), 31 deletions(-)
>  create mode 100644 drivers/firmware/arm_scmi/notify.c
>  create mode 100644 drivers/firmware/arm_scmi/notify.h
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
