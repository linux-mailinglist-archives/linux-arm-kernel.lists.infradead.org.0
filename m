Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CC9F99F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2LWZGl90hn6KL++LGxy/1AG/fMm7QOWrwpn8Tzhw/s=; b=cbrt6kUTQ8p9vN
	Ddcd6lhIZpVC7LPpTCb2KBVO2KyJpBD2Kz9Q3n7v+Bv1ZA4O4RTtCvJg31Jp98SKxQ49CJlMqeMr9
	2ku5LfW+1LhhlOaXqfDFVDgW8VjFielmrKHhZjpmUw566V07tbLfY4UIZaDNUi0ZWV2pltl9gl82p
	fh0GvelNSTaRjFMHjtGCke9cpjKv602WS51490CCn+czOwFuC88/PLEaCH91tcCulA3w09IUvFckN
	sI7qghRdghnuhWa4stHHFtUUHIgOghBftkexG0unOtsEq4rIBx3JSYJi8I5RzhLXvJMQphRGIhKX/
	2zyk+ZqBUIvbO/E53Mng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSab-0003UZ-4Q; Tue, 30 Apr 2019 13:14:29 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSaT-0003Tz-D4
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:14:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A11D80D;
 Tue, 30 Apr 2019 06:14:20 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A73E03F5AF;
 Tue, 30 Apr 2019 06:14:18 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] clocksource/arm_arch_timer: extract elf_hwcap use to
 arch-helper
Date: Tue, 30 Apr 2019 14:14:13 +0100
Message-Id: <20190430131413.10017-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_061421_456429_004A83A3 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
and ARM64, this results in the use of #ifdef's in this file when
setting/testing for the EVTSTRM hwcap.

Let's improve readability by extracting this to an arch helper.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm/include/asm/arch_timer.h    | 13 +++++++++++++
 arch/arm64/include/asm/arch_timer.h  | 13 +++++++++++++
 drivers/clocksource/arm_arch_timer.c | 15 ++-------------
 3 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
index 0a8d7bba2cb0..f21e038dc9f3 100644
--- a/arch/arm/include/asm/arch_timer.h
+++ b/arch/arm/include/asm/arch_timer.h
@@ -4,6 +4,7 @@
 
 #include <asm/barrier.h>
 #include <asm/errno.h>
+#include <asm/hwcap.h>
 #include <linux/clocksource.h>
 #include <linux/init.h>
 #include <linux/types.h>
@@ -110,6 +111,18 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
 	isb();
 }
 
+static inline bool arch_timer_set_evtstrm_feature(void)
+{
+	elf_hwcap |= HWCAP_EVTSTRM;
+#ifdef CONFIG_COMPAT
+	compat_elf_hwcap |= COMPAT_HWCAP_EVTSTRM;
+#endif
+}
+
+static inline bool arch_timer_have_evtstrm_feature(void)
+{
+	return elf_hwcap & HWCAP_EVTSTRM;
+}
 #endif
 
 #endif
diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
index f2a234d6516c..f371d4a94f06 100644
--- a/arch/arm64/include/asm/arch_timer.h
+++ b/arch/arm64/include/asm/arch_timer.h
@@ -20,6 +20,7 @@
 #define __ASM_ARCH_TIMER_H
 
 #include <asm/barrier.h>
+#include <asm/hwcap.h>
 #include <asm/sysreg.h>
 
 #include <linux/bug.h>
@@ -165,4 +166,16 @@ static inline int arch_timer_arch_init(void)
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
index 6cc8aff83805..5e507e81515f 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -833,14 +833,7 @@ static void arch_timer_evtstrm_enable(int divider)
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
 
@@ -1059,11 +1052,7 @@ static int arch_timer_cpu_pm_notify(struct notifier_block *self,
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
