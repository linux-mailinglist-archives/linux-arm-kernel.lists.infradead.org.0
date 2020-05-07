Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDAA1C90A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=on3cYz4nL4F14huR7fmF+AZ0Tdy5fnU0Rn/nTs9kv4Y=; b=SN7
	Cp1BUh/jfg8NvL7NfZzJwWpPGN5bCksoRPdZBKJLIxUbn06Yt+RIPoN6Jm4EPhqx0jUVkfcCl/cVO
	L2G2SKnZO7yfm2cQzUu3uOQkxVXIJPD7s2jLoNphDXNOiJTgKvO47u1Fn9/2eyhLxuB/9Q8dQzFDD
	BFXaULRKkF9Wv48U6TAQiAp8//7WUPd7GgX2s2zN9mMrfYKU719Z6K6W/ssSNQAQLs6JC6546KmrQ
	90HZbSjx9NYy0ilKzuXQN8TP1lQp/UWcUhKbjglf3sByA+z2L4asVwcxdrF3q8ug8jPVGa5il2o7L
	vA1gNWPfnPHTHe/svOeX65kcGVabrbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhq1-0001tX-IC; Thu, 07 May 2020 14:49:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhpt-0001jL-Sj
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:49:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDBE9D6E;
 Thu,  7 May 2020 07:49:12 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B65283F68F;
 Thu,  7 May 2020 07:49:11 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Subject: [PATCH] firmware: arm_scmi: fix psci dependency
Date: Thu,  7 May 2020 15:49:05 +0100
Message-Id: <20200507144905.11397-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_074917_969304_522EEC98 
X-CRM114-Status: GOOD (  11.54  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_ARM_PSCI_FW is disabled but CONFIG_HAVE_ARM_SMCCC is enabled,
arm-scmi runs into a link failure:

arm-linux-gnueabi-ld: drivers/firmware/arm_scmi/smc.o: in function `smc_send_message':
smc.c:(.text+0x200): undefined reference to `arm_smccc_1_1_get_conduit'

Change from HAVE_ARM_SMCCC to ARM_PSCI_FW config dependency for now.
We rely on PSCI bindings anyways for the conduit and this should be
fine.

Fixes: 1dc6558062da ("firmware: arm_scmi: Add smc/hvc transport")
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/Makefile | 2 +-
 drivers/firmware/arm_scmi/driver.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

Hi Arnd,

I am planning to push this patch in favour of [1]. Once we have a
separate config[2] for SMCCC v1.1+, I will change to use it instead of
ARM_PSCI_FW.

Regards,
Sudeep

[1] https://lore.kernel.org/r/20200505140820.536615-1-arnd@arndb.de
[2] https://lore.kernel.org/r/20200506164411.3284-1-sudeep.holla@arm.com/


diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 11b238f81923..1cad32b38b29 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -4,6 +4,6 @@ scmi-bus-y = bus.o
 scmi-driver-y = driver.o
 scmi-transport-y = shmem.o
 scmi-transport-$(CONFIG_MAILBOX) += mailbox.o
-scmi-transport-$(CONFIG_HAVE_ARM_SMCCC) += smc.o
+scmi-transport-$(CONFIG_ARM_PSCI_FW) += smc.o
 scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index fec308e47b9d..7483cacf63f9 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -901,7 +901,7 @@ ATTRIBUTE_GROUPS(versions);
 /* Each compatible listed below must have descriptor associated with it */
 static const struct of_device_id scmi_of_match[] = {
 	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
-#ifdef CONFIG_HAVE_ARM_SMCCC
+#ifdef CONFIG_ARM_PSCI_FW
 	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc},
 #endif
 	{ /* Sentinel */ },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
