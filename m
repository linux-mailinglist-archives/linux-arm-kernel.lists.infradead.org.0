Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B148200A58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bCM6Y276DnGEcduU4dLBclSY/PHy8JxUGeYD6kI96NI=; b=ubv
	dldyU758XDmQ41iaEE/+Gor2AsF4WHkWWcJQZmNqnrrBK9k9Mf52GQXl4KHLuSl88q2CPpy04CdK1
	4dEFxvPrv+lmc/Hrj/4MDjv3Xyu77DMzQDfgjJDXb9ZaZXd9/V3R6H/XBp1PjQLf1HmX8++G9oEFx
	ciL7wzlBTHJL9pTFRGJwofETW86DZY/OgbOhDyIdL4fgu227egauX2AzHbqK+xmQQPj5omubvOzfU
	0HfZkomhHNUjQwYpqBgXECs89uUJZ//p7dMtXm/p/xei6t0Lqdv6wRCLE+TgVYMAtrN6Ivm6ltgBc
	j4dXHt1xf2/f2/H1nPucM5Yiotx1Vmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHEd-0002uX-5m; Fri, 19 Jun 2020 13:39:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHEQ-0002sC-2r
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 13:38:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9B222B;
 Fri, 19 Jun 2020 06:38:53 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB8213F6CF;
 Fri, 19 Jun 2020 06:38:52 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v10 0/9] SCMI Notifications Core Support
Date: Fri, 19 Jun 2020 14:38:25 +0100
Message-Id: <20200619133834.18497-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_063858_211170_D7980223 
X-CRM114-Status: GOOD (  16.13  )
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

Using the API exposed via scmi_handle.notify_ops a Kernel user can register
its own notifier_t callback (via a notifier_block as usual) against any
registered event as identified by the tuple:

		(proto_id, event_id, src_id)

where src_id represents a generic source identifier which is protocol
dependent like domain_id, performance_id, sensor_id and so forth.
(users can anyway do NOT provide any src_id, and subscribe instead to ALL
 the existing (if any) src_id sources for that proto_id/evt_id combination)

Each of the above tuple-specified eventis will be served on its own
dedicated blocking notification chain, dynamically allocated on-demand when
at least one user has shown interest on that event.

Upon a notification delivery all the users' registered notifier_t callbacks
will be in turn invoked and fed with the event_id as @action param and a
generated custom per-event struct _report as @data param.
(as in include/linux/scmi_protocol.h)

The final step of notification delivery via users' callback invocation is
instead delegated to a pool of deferred workers (Kernel cmwq): each
SCMI protocol has its own dedicated worker and dedicated queue to push
events from the rx ISR to the worker.

Based on scmi-next/for-next/scmi 5.8-rc1 [1], on top of:

commit dad69804b03e ("cpufreq: arm_scmi: Set fast_switch_possible
		conditionally")

This series has been tested on JUNO with an experimental firmware only
supporting Perf Notifications.


Thanks

Cristian

----
v9 --> v10:
- rebased on top of scmi-next 5.8-rc1
- fixed a couple of Warnings (-Wtype-limit)

v8 --> v9:
- rebased on top of scmi-next 5.8
- moved some pr_info() to dev_dbg()
- moved around some macros definitions (using FIELD_PREPARE properly)
- introduced some meaningful define
- shrunk hashtables' sizes
- shortened the naming of some massively long data struct

v7 --> v8:
- removed unneeded initialized/enabled atomics, added proper barriers
- added a few comments about queueing work item and kfifos

v6 --> v7:
- rebased on top of scmi-next 5.7, dropped the initial 4 patches
  since now already queued on base scmi-next [1]
- fixed some events' proto initialization
- removed some notify_enabled explicit methods exposed in some protocol_ops
  since not supposed to be used directly when using this notification
  framework (and of no other known use)
- exposing SCMI_EVENT_ enums in scmi_protocol.h
- added agent_id field in RESET_ISSUED payload as per reviewed SCMI spec
- removed POWER_STATE_CHANGE_REQUESTED pre-notification definition and
  handling as per reviewedSCMI spec
- fixed report.timestamp field type

v5 --> v6:
- added handle argument to fill_custom_report() helper

v4 --> v5:
- fixed kernel-doc
- added proper barriers around registered protocols and events
  initialization
- reviewed queues allocation using devm_add_action_or_reset
- reviewed REVT_NOTIFY_ENABLE macro

v3 --> v4:
- dropped RFC tag
- avoid one unneeded evt payload memcpy on the ISR RC code path by
  redesigning dispatcher to handle partial queue-reads (in_flight events,
  only header)
- fixed the initialization issue exposed by late SCMI modules loading by
  reviewing the init process to support possible late events registrations
  by protocols and early callbacks registrations by users (pending)
- cleanup/simplification of exit path: SCMI protocols are generally never
  de-initialized after the initial device creation, so do not deinit
  notification core either (we do halt the delivery, stop the wq and empty
  the queues though)
- reduced contention on regustered_events_handler to the minimum during
  delivery by splitting the common registered_events_handlers hashtable
  into a number of per-protocol tables
- converted registered_protocols and registered_events hastable to
  fixed size arrays: simpler and lockless in our usage scenario

v2 --> v3:
- added platform instance awareness to the notification core: a
  notification instance is created for each known handle
- reviewed notification core initialization and shutdown process
- removed generic non-handle-rooted registration API
- added WQ_SYSFS flag to workqueue instance

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


Cristian Marussi (9):
  firmware: arm_scmi: Add notification protocol-registration
  firmware: arm_scmi: Add notification callbacks-registration
  firmware: arm_scmi: Add notification dispatch and delivery
  firmware: arm_scmi: Enable notification core
  firmware: arm_scmi: Add Power notifications support
  firmware: arm_scmi: Add Perf notifications support
  firmware: arm_scmi: Add Sensor notifications support
  firmware: arm_scmi: Add Reset notifications support
  firmware: arm_scmi: Add Base notifications support

 drivers/firmware/arm_scmi/Makefile  |    2 +-
 drivers/firmware/arm_scmi/base.c    |  109 +-
 drivers/firmware/arm_scmi/common.h  |    4 +
 drivers/firmware/arm_scmi/driver.c  |   10 +
 drivers/firmware/arm_scmi/notify.c  | 1497 +++++++++++++++++++++++++++
 drivers/firmware/arm_scmi/notify.h  |   67 ++
 drivers/firmware/arm_scmi/perf.c    |  139 ++-
 drivers/firmware/arm_scmi/power.c   |   92 +-
 drivers/firmware/arm_scmi/reset.c   |   96 +-
 drivers/firmware/arm_scmi/sensors.c |   69 +-
 include/linux/scmi_protocol.h       |  108 +-
 11 files changed, 2163 insertions(+), 30 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/notify.c
 create mode 100644 drivers/firmware/arm_scmi/notify.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
