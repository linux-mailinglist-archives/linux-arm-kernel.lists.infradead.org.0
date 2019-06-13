Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260A84360F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xn2SqKCNuwK2vz8CPhIDIJDHWyor7HwnjsFCB2twju0=; b=bx5BRlh/I+xetr
	OBKDBv5n7MVblW1/8jeI08nSfHD30IdKEne/44eBwu3KhuMl/YUZqAd6iBgujzIlmv508wdhC3wOu
	rYDl6ZphrGrO/kN2c67Z+DWaq9fx18SGqo6l3Tj2LV3ZJXSEAdMw+VW8dgH3HZRlWDNbKNPGGOFir
	j0jRmq5dW1Tc/sIpsef+y7cpB2WHbyoNRA458+WEqHDOnqCa/duanCdGmaLWON9C2eyghqCzgyeSd
	Wn6ZyGskfl5b9hQZVRyxUBVLcV+Da9XBXvd41hJnxuh02eaJaEBdCZ8HTs6ULOtZBrjKw317xPKBi
	aDzhu4q8nDDcfXTFkajQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPCQ-0004gq-RK; Thu, 13 Jun 2019 12:51:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPCD-0004gX-Eo
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 12:51:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BF2C2B;
 Thu, 13 Jun 2019 05:51:12 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 432713F694;
 Thu, 13 Jun 2019 05:51:11 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2] clocksource/arm_arch_timer: extract elf_hwcap use to
 arch-helper
Date: Thu, 13 Jun 2019 13:51:02 +0100
Message-Id: <20190613125102.23879-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_055113_590225_A57D0A85 
X-CRM114-Status: GOOD (  12.18  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Different mechanisms are used to test and set elf_hwcaps between ARM
and ARM64, this results in the use of ifdeferry in this file when
setting/testing for the EVTSTRM hwcap.

Let's improve readability by extracting this to an arch helper.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
---
 arch/arm/include/asm/arch_timer.h    | 10 ++++++++++
 arch/arm64/include/asm/arch_timer.h  | 13 +++++++++++++
 drivers/clocksource/arm_arch_timer.c | 15 ++-------------
 3 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
index 4b66ecd6be99..ae533caec1e9 100644
--- a/arch/arm/include/asm/arch_timer.h
+++ b/arch/arm/include/asm/arch_timer.h
@@ -4,6 +4,7 @@
 
 #include <asm/barrier.h>
 #include <asm/errno.h>
+#include <asm/hwcap.h>
 #include <linux/clocksource.h>
 #include <linux/init.h>
 #include <linux/types.h>
@@ -124,6 +125,15 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
 	isb();
 }
 
+static inline bool arch_timer_set_evtstrm_feature(void)
+{
+	elf_hwcap |= HWCAP_EVTSTRM;
+}
+
+static inline bool arch_timer_have_evtstrm_feature(void)
+{
+	return elf_hwcap & HWCAP_EVTSTRM;
+}
 #endif
 
 #endif
diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
index 50b3ab7ded4f..a847a3ee6cab 100644
--- a/arch/arm64/include/asm/arch_timer.h
+++ b/arch/arm64/include/asm/arch_timer.h
@@ -20,6 +20,7 @@
 #define __ASM_ARCH_TIMER_H
 
 #include <asm/barrier.h>
+#include <asm/hwcap.h>
 #include <asm/sysreg.h>
 
 #include <linux/bug.h>
@@ -240,4 +241,16 @@ static inline int arch_timer_arch_init(void)
 	return 0;
 }
 
+static inline void arch_timer_set_evtstrm_feature(void)
+{
+	cpu_set_named_feature(EVTSTRM);
+#ifdef CONFIG_COMPAT
+	compat_elf_hwcap |= COMPAT_HWCAP_EVTSTRM;
+#endif
+}
+
+static inline bool arch_timer_have_evtstrm_feature(void)
+{
+	return cpu_have_named_feature(EVTSTRM);
+}
 #endif
diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index b2a951a798e2..3583a92ad960 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -804,14 +804,7 @@ static void arch_timer_evtstrm_enable(int divider)
 	cntkctl |= (divider << ARCH_TIMER_EVT_TRIGGER_SHIFT)
 			| ARCH_TIMER_VIRT_EVT_EN;
 	arch_timer_set_cntkctl(cntkctl);
-#ifdef CONFIG_ARM64
-	cpu_set_named_feature(EVTSTRM);
-#else
-	elf_hwcap |= HWCAP_EVTSTRM;
-#endif
-#ifdef CONFIG_COMPAT
-	compat_elf_hwcap |= COMPAT_HWCAP_EVTSTRM;
-#endif
+	arch_timer_set_evtstrm_feature();
 	cpumask_set_cpu(smp_processor_id(), &evtstrm_available);
 }
 
@@ -1040,11 +1033,7 @@ static int arch_timer_cpu_pm_notify(struct notifier_block *self,
 	} else if (action == CPU_PM_ENTER_FAILED || action == CPU_PM_EXIT) {
 		arch_timer_set_cntkctl(__this_cpu_read(saved_cntkctl));
 
-#ifdef CONFIG_ARM64
-		if (cpu_have_named_feature(EVTSTRM))
-#else
-		if (elf_hwcap & HWCAP_EVTSTRM)
-#endif
+		if (arch_timer_have_evtstrm_feature())
 			cpumask_set_cpu(smp_processor_id(), &evtstrm_available);
 	}
 	return NOTIFY_OK;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
