Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E927904E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 17:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8cyY3p8W7SUJvM+sNA2Dqx3no6vsQr3eXnRqSgy4Pdg=; b=RAyU0FHkfOL5vl
	BYjTxxFrVurAhHR3r/UH1V07nIIwnJ1DHCWVP9dB5GnLopS//nrpahn2AF1N8KXIbT4Zv9AhaSDaA
	4prHSoQ7XrdGwYylI3ahRLM2hXp/7kpE57gRb7xkHUEG1EOsca6MAvWFpsUsfmmGpuThwbfE2QTUv
	ITHrXafbLFStcw9DAOkGl/BkTqOaNkhZx7i8H3YyO7OmjdqiRH8QX5TI4+CK8TpL2yrCqFYPjVz2g
	A0CONyoZbXYcY/3tpUuF7Mo/RA4LcfAD1I7aA9baLYJv4Vx2q+0KoGmQw2YgVY1rvX/EwOAZI3Ccg
	q+pntqBG6KkIBw0hEZrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyeR1-0001or-GO; Fri, 16 Aug 2019 15:46:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyeQo-0001oH-9F
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 15:46:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FA51344;
 Fri, 16 Aug 2019 08:46:21 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5C7E3F694;
 Fri, 16 Aug 2019 08:46:19 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v5 0/3] coresight: etm4x: save/restore ETMv4 context across
 CPU low power states
Date: Fri, 16 Aug 2019 16:46:12 +0100
Message-Id: <20190816154615.39854-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_084622_415730_D4E672B6 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Al.Grant@arm.com, coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
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

The last patch should be considered as an RFC as further consideration is
required relating to where the pm_save_enable parameter lives and to
determine if the external agent support should be a pm_save_enable option
or a new kernel option.

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
 drivers/hwtracing/coresight/coresight-etm4x.c | 339 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
 drivers/hwtracing/coresight/coresight.c       |   8 +-
 include/linux/coresight.h                     |  13 +
 5 files changed, 431 insertions(+), 2 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
