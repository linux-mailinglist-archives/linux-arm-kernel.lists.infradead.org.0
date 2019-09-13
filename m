Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8CB1CAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 13:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cwamkdNDxXW7PDRR26zYwNm6t4WSf0z0IVcwrVrjcsg=; b=WA57ljEcpLqxF4
	D21aE+PIlB9kry8/xBHbNnVVhz5/FwRW06y0KgRgqQkVzampqpl1zTJ4fC9dRKzemSfZb8M+YBH6A
	AG12A0bTaCukc3TXL1KF3uG66U0htiGG6IgLelxZtAvVEmjCL2eDLeH+L6bztaFv2x/BiAgMBBA7s
	1tq1nexkOzaiEO1aD77ngVpNdJtFcAoKvkIgQJHcaAvbLo80jSQpuD9n6WZKK+SBh5Hv1q0b1dn0M
	MCDrpNtiKkVdKpHErBDLxAjelqLdrTPs8t+HENj7CcXhlcxMH4PqMtjD94bKT7QCyBXb6RU4VffTX
	HWFK3R0ZsQ+9nxYhcqXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8k8w-0008Rc-Hh; Fri, 13 Sep 2019 11:53:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8k8h-0008Qt-OK
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 11:53:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4620428;
 Fri, 13 Sep 2019 04:53:20 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3FD53F71F;
 Fri, 13 Sep 2019 04:53:17 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v6 0/3] coresight: etm4x: save/restore ETMv4 context across
 CPU low power states
Date: Fri, 13 Sep 2019 12:53:09 +0100
Message-Id: <20190913115312.12943-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_045323_882325_A12B8F83 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Al.Grant@arm.com, coresight@lists.linaro.org,
 Leo Yan <leo.yan@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some hardware will ignore bit TRCPDCR.PU which is used to signal
to hardware that power should not be removed from the trace unit.
Let's mitigate against this by conditionally saving and restoring
the trace unit state when the CPU enters low power states.

This patchset introduces a firmware property named
'arm,coresight-loses-context-with-cpu' - when this is present the
hardware state will be conditionally saved and restored.

A module parameter 'pm_save_enable' is also introduced which can
be configured to override the firmware property. This parameter
also provides a means to save/restore state when external agents
are used.

The hardware state is only ever saved and restored when a coresight
session is present.

Changes since v5:

 - Fix indentation, comment style and add implicit fallthrough comment

 - Use NOTIFY_* for all return values in pm notifier callback

 - Rename PARAM_PM_SAVE_EXTERNAL to PARAM_PM_SAVE_ALWAYS

 - Update module parameter description

 - Add comment to explain why we keep power on

 - Rebased onto coresight/next c165d8947bc4 ("eeprom: Deprecate the legacy eeprom driver")

Changes since v4:

 - Rename fwnode property to "arm,coresight-loses-context-with-cpu" as this
   doesn't imply a software policy

 - Update the device tree binding document to indicate that this property
   isn't specific to ETMs - also provide a longer description more generic
   description with an example of why it might be used

 - Set the module parameter at probe based on the value determined by firmware.
   The user can still override the firmware via the kernel command line, this
   has the effect of hiding the PARAM_PM_SAVE_FIRMWARE option from the user -
   though we still internally use it to allow us to determine if the user has
   set the parameter.

 - Remove unnecessary call to smp_processor_id

 - Move etm4_needs_save_restore helper to coresight.c and rename

 - Rebased onto coresight/next a04d8683f577 ("...ity of etm4_os_unlock comment")

 - Drop Reviewed-By from Suzuki on "coresight: etm4x: save/restore st..." patch
   as content changed too much

 - Add module option to that keeps clocks/power enabled at probe and saves
   state when external or self-hosted is in use.

Changes since v3:

 - Only save/restore when self-hosted is being used and detect this
   without relying on the coresight registers (which may not be
   available)

 - Only allocate memory for etmv4_save_state at probe time when
   configuration indicates it may be used

 - Set pm_save_enable param to 0444 such that it is static after
   boot

 - Save/restore TRCPDCR

 - Add missing comments to struct etm4_drvdata documentation

 - Rebased onto coresight/next (8f1f9857)

Changes since v2:

 - Move the PM notifier block from drvdata to file static

 - Add section names to document references

 - Add additional information to commit messages

 - Remove trcdvcvr and trcdvcmr from saved state and add a comment to
   describe why

 - Ensure TRCPDCR_PU is set after restore and add a comment to explain
   why we bother toggling TRCPDCR_PU on save/restore

 - Reword the pm_save_enable options and add comments

 - Miscellaneous style changes

 - Move device tree binding documentation to its own patch

Changes since v1:

 - Rebased onto coresight/next

 - Correcly pass bit number rather than BIT macro to coresight_timeout

 - Abort saving state if a timeout occurs

 - Fix completely broken pm_notify handling and unregister handler on error

 - Use state_needs_restore to ensure state is restored only once

 - Add module parameter description to existing boot_enable parameter
   and use module_param instead of module_param_named

 - Add firmware bindings for coresight-needs-save-restore

 - Rename 'disable_pm_save' to 'pm_save_enable' which allows for
   disabled, enabled or firmware

 - Update comment on etm4_os_lock, it incorrectly indicated that
   the code unlocks the trace registers

 - Add comments to explain use of OS lock during save/restore

 - Fix incorrect error description whilst waiting for PM stable

 - Add WARN_ON_ONCE when cpu isn't as expected during save/restore

 - Various updates to commit messages


Andrew Murray (3):
  coresight: etm4x: save/restore state across CPU low power states
  dt-bindings: arm: coresight: Add support for
    coresight-loses-context-with-cpu
  coresight: etm4x: save/restore state for external agents

 .../devicetree/bindings/arm/coresight.txt     |   9 +
 drivers/hwtracing/coresight/coresight-etm4x.c | 351 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
 drivers/hwtracing/coresight/coresight.c       |   8 +-
 include/linux/coresight.h                     |  13 +
 5 files changed, 443 insertions(+), 2 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
