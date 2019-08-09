Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B62D87B0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fNkOar/gUfF1VerZ7qBgpiMc9G/mEcS3oxQmyEPm8Iw=; b=tB6D9WsvyZPIkmJa96nkBtrKZb
	mo+MkcA99pEDoUuLDzv/b3BCug1bYS2NFn2ilfzeX4sR9nNg527mFECbxymODsr44Lrfba+gLMquA
	MOfqfzBmNFHFc8zRQzB+/788w6OuBcaxa1Ba3P+PqhIP11GyHKaeo7sc1i9kk3zBvlVvh/ihwLdTq
	jw3k4PCBA8iGDxDN6AXmer3s3lgexpzDsV2ytQKW13Q9PVmLV9maETs+LuA8RuWFqgD72iNwJYZPU
	A0oA0YbDPJeb7jSGM8s2AiMHwjwCbb7+Dwe0DL3W4JMSdvdYRZLjmLxyzGgiDS20kgxMnaT3eePuu
	G2pbNllg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4sX-00029k-N5; Fri, 09 Aug 2019 13:24:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4rI-00010f-RE
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:23:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA3D01596;
 Fri,  9 Aug 2019 06:23:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5114A3F706;
 Fri,  9 Aug 2019 06:23:02 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 5/6] firmware: arm_sdei: use common SMCCC_CONDUIT_*
Date: Fri,  9 Aug 2019 14:22:44 +0100
Message-Id: <20190809132245.43505-6-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190809132245.43505-1-mark.rutland@arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062305_028982_D0F71478 
X-CRM114-Status: GOOD (  11.05  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, robin.murphy@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have common definitions for SMCCC conduits, move the SDEI
code over to them, and remove the SDEI-specific definitions.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: James Morse <james.morse@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/kernel/sdei.c    |  3 ++-
 drivers/firmware/arm_sdei.c | 12 ++++++------
 include/linux/arm_sdei.h    |  6 ------
 3 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/sdei.c b/arch/arm64/kernel/sdei.c
index ea94cf8f9dc6..d6259dac62b6 100644
--- a/arch/arm64/kernel/sdei.c
+++ b/arch/arm64/kernel/sdei.c
@@ -2,6 +2,7 @@
 // Copyright (C) 2017 Arm Ltd.
 #define pr_fmt(fmt) "sdei: " fmt
 
+#include <linux/arm-smccc.h>
 #include <linux/arm_sdei.h>
 #include <linux/hardirq.h>
 #include <linux/irqflags.h>
@@ -161,7 +162,7 @@ unsigned long sdei_arch_get_entry_point(int conduit)
 			return 0;
 	}
 
-	sdei_exit_mode = (conduit == CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
+	sdei_exit_mode = (conduit == SMCCC_CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
 	if (arm64_kernel_unmapped_at_el0()) {
diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 9cd70d1a5622..a479023fa036 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -967,29 +967,29 @@ static int sdei_get_conduit(struct platform_device *pdev)
 	if (np) {
 		if (of_property_read_string(np, "method", &method)) {
 			pr_warn("missing \"method\" property\n");
-			return CONDUIT_INVALID;
+			return SMCCC_CONDUIT_NONE;
 		}
 
 		if (!strcmp("hvc", method)) {
 			sdei_firmware_call = &sdei_smccc_hvc;
-			return CONDUIT_HVC;
+			return SMCCC_CONDUIT_HVC;
 		} else if (!strcmp("smc", method)) {
 			sdei_firmware_call = &sdei_smccc_smc;
-			return CONDUIT_SMC;
+			return SMCCC_CONDUIT_SMC;
 		}
 
 		pr_warn("invalid \"method\" property: %s\n", method);
 	} else if (IS_ENABLED(CONFIG_ACPI) && !acpi_disabled) {
 		if (acpi_psci_use_hvc()) {
 			sdei_firmware_call = &sdei_smccc_hvc;
-			return CONDUIT_HVC;
+			return SMCCC_CONDUIT_HVC;
 		} else {
 			sdei_firmware_call = &sdei_smccc_smc;
-			return CONDUIT_SMC;
+			return SMCCC_CONDUIT_SMC;
 		}
 	}
 
-	return CONDUIT_INVALID;
+	return SMCCC_CONDUIT_NONE;
 }
 
 static int sdei_probe(struct platform_device *pdev)
diff --git a/include/linux/arm_sdei.h b/include/linux/arm_sdei.h
index 3305ea7f9dc7..0a241c5c911d 100644
--- a/include/linux/arm_sdei.h
+++ b/include/linux/arm_sdei.h
@@ -5,12 +5,6 @@
 
 #include <uapi/linux/arm_sdei.h>
 
-enum sdei_conduit_types {
-	CONDUIT_INVALID = 0,
-	CONDUIT_SMC,
-	CONDUIT_HVC,
-};
-
 #include <acpi/ghes.h>
 
 #ifdef CONFIG_ARM_SDE_INTERFACE
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
