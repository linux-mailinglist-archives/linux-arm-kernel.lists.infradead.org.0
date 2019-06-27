Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B669457E48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HE18eKHI01B83edVRcI2R1y9GPHKxRwdeO8wnGRe52s=; b=sPnPy4YgGRpEHg
	3N6FPC5HANGpLLLlQfZqArVB7632l8+E+1GzcRhEW95X42IIxc5e/MMno+H+HR9yFF8xFhnwSAngw
	Bn0HV5PWWX8tpFbDs11qG6aLY+xCKgRBdbEvjMHvVo4FH0oVSaOTrYRXzd7XXxKW0NFbXXocP6NaD
	3jLu7T00jfqS8fN1Ycd80So9iTkmqWQInMolTHoHk0M3RvhAKct0LYdiPe17EqRzqSH0Zs0xQcuuU
	oYpICp4cHFL5kGU+uDUMfFBkQzw5Y0vkZ/v9L5lsh0PkwsezlucNE2rCIRz+hi6rl1WyGMSZAGa03
	xSu6b1WqA5kpjbZQNW3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPsi-00059e-DQ; Thu, 27 Jun 2019 08:35:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPsS-00059J-92
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 08:35:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26AA62B;
 Thu, 27 Jun 2019 01:35:31 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA41D3F706;
 Thu, 27 Jun 2019 01:35:29 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v2 0/5] coresight: etm4x: save/restore ETMv4 context across
 CPU low power states
Date: Thu, 27 Jun 2019 09:35:20 +0100
Message-Id: <20190627083525.37463-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013532_363565_3D42FBAD 
X-CRM114-Status: GOOD (  12.44  )
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
Cc: coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
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
'arm,coresight-needs-save-restore' - when this is present the
hardware state will be conditionally saved and restored.

A module parameter 'pm_save_enable' is also introduced which can
be configured to override the firmware property.

The hardware state is only ever saved and restored when the claim
tags indicate that self-hosted mode is in use.

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


Andrew Murray (5):
  coresight: etm4x: remove superfluous setting of os_unlock
  coresight: etm4x: use explicit barriers on enable/disable
  coresight: etm4x: use module_param instead of module_param_named
  coresight: etm4x: improve clarity of etm4_os_unlock comment
  coresight: etm4x: save/restore state across CPU low power states

 .../devicetree/bindings/arm/coresight.txt     |   3 +
 drivers/hwtracing/coresight/coresight-etm4x.c | 315 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.h |  66 ++++
 drivers/hwtracing/coresight/coresight.c       |   2 +-
 include/linux/coresight.h                     |   8 +
 5 files changed, 387 insertions(+), 7 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
