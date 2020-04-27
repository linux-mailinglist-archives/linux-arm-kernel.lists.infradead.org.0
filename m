Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4480B1BAFFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 23:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9nO1EgQqVYU+progB538luDZr4czXrIru7nyJH4MeA0=; b=UhE
	WPe0CoDdLmPDNqdUWOipmATtf+vUMadFBcks0ga9OFY1vsPby2S79or1eQPHyoclZQ3RIfrt9wFHD
	qw68Zjhj0XeMMb0RaegcvNKdJu5vqrLAtz4/MxjXRhiveBjlfOLaQFs5Q1DpF4KsPOvZcUlCQzGoR
	4sN9m3xTcQNVZ6l/WiC3GznKacteQaQnMGdUaBqeRsqv+rxorP21LEJmBB4RAhE2RKN0QZLYs+gfu
	+2a9QZtq5Vvqc8LwuM+TXad5CXkEP5iZLJlZFM5+hHkIc1nyyy+ORfGWwnCNVI6oQ51tbOcDyQYJ+
	AhYgdjopApqJzkFOp4QyOWYlPYuUmUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTAzk-00081i-M3; Mon, 27 Apr 2020 21:08:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTAzd-0007yt-E8
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 21:08:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A17A31B;
 Mon, 27 Apr 2020 14:08:36 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A28B3F305;
 Mon, 27 Apr 2020 14:08:35 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 0/3] SCMI System Power Support
Date: Mon, 27 Apr 2020 22:08:03 +0100
Message-Id: <20200427210806.37422-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_140845_518635_9877990E 
X-CRM114-Status: GOOD (  12.55  )
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

this series wants to add the core SCMI System Power support and related
events' handling logic: the protocol support itself is trivial and boils
down to some bare initializations and supporting one SCMI System Power
notification event meant to carry platform-originated System transition
requests. This is patch [1/3].

On top of this a new SCMI driver has been developed which registers for
such System Power notification and acts accordingly to satisfy such
plaform system-state transition requests that can be of forceful or
graceful kind.

In order to comply with such graceful requests, and co-operate with
userspace entities to drive a clean shutdown/reboot, the logic of the
driver relies on the same orderly_* API methods used by ACPI when handling
ACPI Shutdown bus events. This is patch [2/3].

Patch [3/3] is a mere JUNO example of the minimal DT bindings needed to
enable the protocol at the DT level and is NOT meant to be upstream as of
now.

A viable alternative method (not implemented here) for communicating
graceful requests to userspace could be to use instead signals to PID 1
init process (e.g. kill_cad_pid(SIGRTMIN + 4, 1)): this method is supported
out-of-the-box by SystemD and (to some extent) Android, and, maybe, could
be interesting as an optional alternative, since it avoids the dependency
on usermodehelpers introduced by the internals of the orderly_ API calls
above.

Such alternative, if deemed worth, should clearly be configurable via DT
(also in terms of which signals to use), BUT all of this work is not done
in this series: and that's the reason for the RFC tag: does it make sense
to add such a configurable additional option ?


The series is based on SCMI Notifications Core V7 (still not posted though)
which in turn is based on top of scmi-for-next-5.7 and it's available (with
some additional debug on top) at [1].


Thanks

Cristian

----

[1] http://www.linux-arm.org/git?p=linux-cm.git;a=shortlog;h=refs/heads/scmi_system_power_V1


Cristian Marussi (3):
  firmware: arm_scmi: Add System Power Protocol support
  firmware: arm_scmi: Add SCMI System Power Control driver
  arm64: dts: juno: add SCMI SystemPower Protocol support

 arch/arm64/boot/dts/arm/juno-base.dtsi        |   4 +
 drivers/firmware/Kconfig                      |  12 +
 drivers/firmware/arm_scmi/Makefile            |   3 +-
 drivers/firmware/arm_scmi/driver.c            |   1 +
 .../firmware/arm_scmi/scmi_power_control.c    | 359 ++++++++++++++++++
 drivers/firmware/arm_scmi/system.c            | 146 +++++++
 include/linux/scmi_protocol.h                 |  17 +
 7 files changed, 541 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_scmi/scmi_power_control.c
 create mode 100644 drivers/firmware/arm_scmi/system.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
