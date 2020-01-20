Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6009142A97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nCi5nQL13Hk1t1/65kVADnwPWAXY5B0rBMfoKBfkayQ=; b=ZXz
	TcCij+Z+PzNyDeGaufPboG9WiA6hAxZZUS/lDlV3nO4FpRb2F/zC0HOyi4iZE1W/z4Y8X9/KikUxK
	9mJNXKliEPd7jFa88AxgkPV8tOEA3+TF/DQ8rofkhPmvZUv+d/Vp3Z6nhMaUzcz/4mSoOH2AvNrCp
	qgd3EYuwM65/S5AgQjhyhkllM7r85X1fsRhy6vGvlVbR8mgqtwE20TB3bvLsKHXH7WLkyxjl2oC4U
	6tQTPpAPmze2tGH4+K/FgRTxpCWkGMQAN0+oSOtAcfBgs6aFbWOSwVbEskvVCGrDMGFlmzAXuFJyR
	7q5JsuSD3xc2sgKG1wYXoy50TdJR8GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itW6o-0001WP-Rt; Mon, 20 Jan 2020 12:24:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itW6U-0001Tg-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:24:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64E6530E;
 Mon, 20 Jan 2020 04:24:24 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F2E43F68E;
 Mon, 20 Jan 2020 04:24:23 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 00/11] SCMI Notifications Support
Date: Mon, 20 Jan 2020 12:23:22 +0000
Message-Id: <20200120122333.46217-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_042426_851570_12815B33 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: cristian.marussi@arm.com, james.quinlan@broadcom.com, lukasz.luba@arm.com,
 sudeep.holla@arm.com
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

Using a possibly proposed API in scmi_protocol.h (not finalized though,
NO EXPORTs_) a Kernel user can register its own notifier_t callback
(so via a notifier_block as usual) against any registered event as
identified by the tuple:

		(proto_id, event_id, src_id)

where src_id represents a generic source identifier which is protocol
dependent like domain_id, performance_id, sensor_id and so forth.
(users can anyway do NOT provide any src_id, and subscribe instead to ALL
 the existing (if any) src_id sources for that proto_id/evt_id combination)

Each of the above tuple-specified event will be served on its own dedicated
blocking notification chain; given the great number of possible events, and
the extensibility of the SCMI Protocol itself, all the underlying machinery
of notifications chains it is dynamically created and destroyed at run-time
on-demand, depending on the number of effective registered users: no users
no allocations at all.

Upon a notification delivery all the users' registered notifier_t callbacks
will be in turn invoked and fed with the event_id as @action param and a
generated custom per-event report struct as @data param.
Each event report carries also a timestamp, gathered when the notification
message had first entered the richOS world in the SCMI rx ISR.

The final step of notification delivery via users' callback invocation is
instead delegated to a pool of deferred workers (Kernel cmwq): each
SCMI protocol has its own dedicated worker and queue to push events from
the rx ISR to the worker.

Additionally, since the original Kernel notification chain mechanism does
not stop users' registered callbacks from interacting with the notification
delivery itself (like cutting the chain with a NOTIFY_STOP or mangling the
*data report struct along the way), it was thought that such behaviour was
generally undesirable for a notification delivery service, and a possible
'anti-tampering' solution is proposed in patch [02/11]

("firmware: arm_scmi: Add notifications anti-tampering")

but maybe this attempt is not worth the cost of the additional complication
or simply deemed not needed (being anyway in Kernel land), in such a case
the above anti-tampering commit can simply be dropped from the series.

The series is marked as RFC mainly because:

- the API as said is tentative and not EXPORTed; currently consisting of a
  per-protocol interface like:
 	 scmi_register_<proto>_event_notifier(evt_id, *src_id, *nb)

  but it could be simplified to one single simpler generic one like:

 	 scmi_register_event_notifier(proto_id, evt_id, *src_id, *nb)

  It's open for discussion.

- no Event priorization has been considered: each protocol has its own
  queue and deferred worker instance, so as to avoid that one protocol
  flooding can overrun a single queue and influence other protocols'
  notifications' delivery.
  But that's it, all the workers are unbound, low_pri cmwq workers.

  Should we enforce some sort of built-in prio amongst the events ?
  Should this priority instead be compile time configurable ?

  Again, open for discussion.

- no configuration is possible: it can be imagined that on a real platform
  events' priority (if any) and events queues' depth could be something
  somehow compile-time configurable, but this is not addressed by this
  series at all.

Based on scmi-next [1], on top of:

commit 257d0e20ec4f ("include: trace: Add SCMI header with trace events")

This series has been tested on JUNO with an experimental firmware only
supporting Perf Notifications.

Any thoughts ?

Thanks

Cristian
----

[1] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git

Cristian Marussi (8):
  firmware: arm_scmi: Add core notifications support
  firmware: arm_scmi: Add notifications anti-tampering
  firmware: arm_scmi: Enable core notifications
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
 drivers/firmware/arm_scmi/base.c    |  132 ++++
 drivers/firmware/arm_scmi/bus.c     |    3 +
 drivers/firmware/arm_scmi/common.h  |    4 +
 drivers/firmware/arm_scmi/driver.c  |  121 +++-
 drivers/firmware/arm_scmi/notify.c  | 1047 +++++++++++++++++++++++++++
 drivers/firmware/arm_scmi/notify.h  |   79 ++
 drivers/firmware/arm_scmi/perf.c    |  167 ++++-
 drivers/firmware/arm_scmi/power.c   |  161 +++-
 drivers/firmware/arm_scmi/reset.c   |  126 +++-
 drivers/firmware/arm_scmi/sensors.c |  105 ++-
 include/linux/scmi_protocol.h       |   82 +++
 12 files changed, 1991 insertions(+), 38 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/notify.c
 create mode 100644 drivers/firmware/arm_scmi/notify.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
