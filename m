Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A73B15DB10
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Pn9UZG1v4stUayTaPLa/CPRT8ASKG0ArEfc78p6rFtA=; b=UV4
	SmXSRF9gMwNF2jrTGWO4TdnrPnbodr5cPfRYEJuJHp1TsSBU/cMgBtDg6/c/2kCErKg8dEupAaXpg
	4KV3f3XleOllyIiRhfflZ+js9s5N2C+zzxeRvT+sYHNNQ1iSPVr2zwg0KpMgCmegYz334WfdvWvDR
	3kN2iDnHQ4mGOTukzAljcOgJUx1xoS4CtOYUjGla2kVcYEjAXQnsVmxqcKarzFnvGYzoE+Nca7YJB
	ZyVIzrP2ObMxMiZN3nO0+A/iHHlkxrT4do4SCgBKKUpls0Vt/QZsOsz+ppYo9rbf7+uzS2o+I5K+w
	BOTAqLWgrcPQtibofjvxFIBmI/p+Hog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2d1I-0001fp-PY; Fri, 14 Feb 2020 15:36:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2d10-0001e6-8a
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:36:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8962F328;
 Fri, 14 Feb 2020 07:36:25 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 884EA3F68E;
 Fri, 14 Feb 2020 07:36:24 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 00/13] SCMI Notifications Core Support
Date: Fri, 14 Feb 2020 15:35:22 +0000
Message-Id: <20200214153535.32046-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_073626_393511_E8E13D47 
X-CRM114-Status: GOOD (  14.74  )
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
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

this series wants to introduce SCMI Notification Support, built on top of
the standard Kernel notification chain subsystem.

At initialization time each SCMI Protocol takes care to register with the
new SCMI notification core the set of its own events which it intends to
support.

Using a possibly proposed API in include/linux/scmi_protocol.h (not
finalized though, NO EXPORTs_) a Kernel user can register its own
notifier_t callback (via a notifier_block as usual) against any registered
event as identified by the tuple:

		(proto_id, event_id, src_id)

where src_id represents a generic source identifier which is protocol
dependent like domain_id, performance_id, sensor_id and so forth.
(users can anyway do NOT provide any src_id, and subscribe instead to ALL
 the existing (if any) src_id sources for that proto_id/evt_id combination)

Each of the above tuple-specified event will be served on its own dedicated
blocking notification chain.

Upon a notification delivery all the users' registered notifier_t callbacks
will be in turn invoked and fed with the event_id as @action param and a
generated custom per-event struct _report as @data param.
(as in include/linux/scmi_protocol.h)

The final step of notification delivery via users' callback invocation is
instead delegated to a pool of deferred workers (Kernel cmwq): each
SCMI protocol has its own dedicated worker and dedicated queue to push
events from the rx ISR to the worker.

The series is marked as RFC mainly because:

- the API as said is tentative and not EXPORTed; currently consisting of a
  generic interface like:

 	 scmi_register_event_notifier(proto_id, evt_id, *src_id, *nb)

  as found in scmi_protocol.h, or using the equivalent 'handle' operations
  in scmi_notify_ops if used by an scmi_driver.

  It's open for discussion.

- no Event priorization has been considered: each protocol has its own
  queue and deferred worker instance, so as to avoid that one protocol
  flood can overrun a single queue and influence other protocols'
  notifications' delivery.
  But that's it, all the workers are unbound, low_pri cmwq workers.

  Should we enforce some sort of built-in prio amongst the events ?
  Should this priority instead be compile time configurable ?

  Again, open for discussion.

- no configuration is possible: it can be imagined that on a real platform
  events' priority (if any) and events queues' depth could be something
  somehow compile-time configurable, but this is not addressed by this
  series at all.

Based on scmi-next 5.6 [1], on top of:

commit 5c8a47a5a91d ("firmware: arm_scmi: Make scmi core independent of
		      the transport type")

This series has been tested on JUNO with an experimental firmware only
supporting Perf Notifications.

Any thoughts ?

Thanks

Cristian
----

v1 --> v2:
- dropped anti-tampering patch
- rebased on top of scmi-for-next-5.6, which includes Viresh series that
  make SCMI core independent of transport (5c8a47a5a91d)
- add a few new SCMI transport methods on top of Viresh patch to address
  needs of SCMI Notifications
- reviewed/renamed scmi_handle_xfer_delayed_resp()
- split main SCMI Notification core patch (~1k lines) into three chunks:
  protocol-registration / callbacks-registration / dispatch-and-delivery
- removed awkward usage of IDR maps in favour of pure hashtables
- added enable/disable refcounting in notification core (was broken in v1)
- removed per-protocol candidate API: a single generic API is now proposed
  instead of scmi_register_<proto>_event_notifier(evt_id, *src_id, *nb)
- added handle->notify_ops as an alternative notification API
  for scmi_driver
- moved ALL_SRCIDs enabled handling from protocol code to core code
- reviewed protocol registration/unregistration logic to use devres
- reviewed cleanup phase on shutdown
- fixed  ERROR: reference preceded by free as reported by kbuild test robot

[1] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git

Cristian Marussi (10):
  firmware: arm_scmi: Add notifications support in transport layer
  firmware: arm_scmi: Add notification protocol-registration
  firmware: arm_scmi: Add notification callbacks-registration
  firmware: arm_scmi: Add notification dispatch and delivery
  firmware: arm_scmi: Enable notification core
  firmware: arm_scmi: Add Power notifications support
  firmware: arm_scmi: Add Perf notifications support
  firmware: arm_scmi: Add Sensor notifications support
  firmware: arm_scmi: Add Reset notifications support
  firmware: arm_scmi: Add Base notifications support

Sudeep Holla (3):
  firmware: arm_scmi: Add receive buffer support for notifications
  firmware: arm_scmi: Update protocol commands and notification list
  firmware: arm_scmi: Add support for notifications message processing

 drivers/firmware/arm_scmi/Makefile  |    2 +-
 drivers/firmware/arm_scmi/base.c    |  121 +++
 drivers/firmware/arm_scmi/bus.c     |   11 +
 drivers/firmware/arm_scmi/common.h  |   12 +
 drivers/firmware/arm_scmi/driver.c  |  118 ++-
 drivers/firmware/arm_scmi/mailbox.c |   17 +
 drivers/firmware/arm_scmi/notify.c  | 1102 +++++++++++++++++++++++++++
 drivers/firmware/arm_scmi/notify.h  |   78 ++
 drivers/firmware/arm_scmi/perf.c    |  140 +++-
 drivers/firmware/arm_scmi/power.c   |  133 +++-
 drivers/firmware/arm_scmi/reset.c   |  100 ++-
 drivers/firmware/arm_scmi/sensors.c |   77 +-
 drivers/firmware/arm_scmi/shmem.c   |   15 +
 include/linux/scmi_protocol.h       |  114 +++
 14 files changed, 2009 insertions(+), 31 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/notify.c
 create mode 100644 drivers/firmware/arm_scmi/notify.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
