Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EB456CB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TCDyvYqOXjVPkjlUTLqvJh6EdE6VzmBuWCq16Srfbn8=; b=oanxAjgaTBRge8nLzwxoXIqqAX
	RUAlRSTTo5VKr+QgwH3v1TM6wuHMZ+5tnHMHC9pj1ukwX1S2kAxf5jixx+BfQof78lavi2UAV1kkd
	0hCimYF2XhbAgnyLcSw6pDeAWixZjQkK64hKQWgXS1+h2XYZE3wq00KXOhwRYAh2yftvQ6QFvWzvv
	Zf3dcNDm0nlP795W7AG3+lxS6+TG6+gZaWE23ZEI3mXhimRt+yilo7v+l6KWwPOe6YqaYrAZ/SYsX
	/D4HKpinKnLyGQs/utpoKSkaNu3+/rSfXfUTMOgtaemrfLgkf1TlJfW976BvZz1js1rvnZpPJ+ycJ
	ApU+rn1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9EO-0003FF-PD; Wed, 26 Jun 2019 14:49:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9D1-0002RT-Lr
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:47:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so3064868wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cbSVQ22cXPOUgxve/+oaGWixu1F5XT9Nb/A3w74S+UE=;
 b=ADrxohoqxEA4hrkpsvA4KMOL9BPGGlrCiOlq/QZCevYKtpGMvxsSL52rFciR/q43DH
 F29Dg//dFlpDIO6EW1kiVSMeZktpL6pUM+nPBO4Ta8KaKFNthzMQ+3UnrxXX2IAFvNsr
 ttT1a1yAE4ZYsswIxky/yPdZFa0xdNutsvaa7q1rCZB6Mzvx8a1dAp8X311VyQDuF6Zi
 ASDFEI2fS3zPRj/Oudpv83ZAyCn7TXnh1n1wRQRZqwDtSfV2x+hLtzMc3LBCCHr+Nuqm
 LeJImWUPEKNBYULG7dzAKjxQPA5NoxP0pg+H0e98H0YnqSdUozrUrvMT1aq1d9c+Z4h3
 UeyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cbSVQ22cXPOUgxve/+oaGWixu1F5XT9Nb/A3w74S+UE=;
 b=mZTf2NNJ6I53znbuMBslTdi0rZDTuefWyNbn89V0g4C+XAXqQEifJ7rHWqQLch4DXH
 RneO0hR4/gZ2BsQiz9+CBlI4qtrJx6f3jVrgyBUWRmcHTubKmiQILuKYDlLWd8mAcpw4
 zp/6dKAZrY/ErNgAt8JPGfKlL1b/Sm/50fYi3eCQdrcRaKfJZJ+h6CWnDaHv1x721d8F
 bk1Fby1tr8kLvPp0MIGDJqyEgE6/RcvfDazSo6JXctdhMq84vnidyC5FsykZwbqhNL4m
 lQY32osEMaM8sGSYrWspoqri+VOxex/yKJ6sgRZogveEQs0z6tWm812o05nPH6oWTTsT
 poxA==
X-Gm-Message-State: APjAAAVvzkclEaRTw+W61aLv91hbFpR34kV8CD5xtVkBiQG5AN3kCDsE
 HmRcOQt5WKbaw4HLBD12V92M1A==
X-Google-Smtp-Source: APXvYqzTjIqk61G6aHfR2ZgD6gNM87lxfg/p2FltiDAPAz0K8FYGcNPE/L6KykeVG6B+7+bxPjBNFg==
X-Received: by 2002:adf:ce88:: with SMTP id r8mr4326334wrn.42.1561560458255;
 Wed, 26 Jun 2019 07:47:38 -0700 (PDT)
Received: from mai.imgcgcw.net (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.gmail.com with ESMTPSA id h84sm2718557wmf.43.2019.06.26.07.47.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 07:47:37 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 15/25] clocksource/drivers/arm_arch_timer: Extract elf_hwcap
 use to arch-helper
Date: Wed, 26 Jun 2019 16:46:41 +0200
Message-Id: <20190626144651.16742-15-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626144651.16742-1-daniel.lezcano@linaro.org>
References: <adba7d03-e9bd-9542-60bc-0f2d4874a40e@linaro.org>
 <20190626144651.16742-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074740_099849_D2E48055 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Andrew Murray <andrew.murray@arm.com>,
 "moderated list:ARM ARCHITECTED TIMER DRIVER"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

Different mechanisms are used to test and set elf_hwcaps between ARM
and ARM64, this results in the use of ifdeferry in this file when
setting/testing for the EVTSTRM hwcap.

Let's improve readability by extracting this to an arch helper.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm/include/asm/arch_timer.h    | 10 ++++++++++
 arch/arm64/include/asm/arch_timer.h  | 13 +++++++++++++
 drivers/clocksource/arm_arch_timer.c | 15 ++-------------
 3 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/arch/arm/include/asm/arch_timer.h b/arch/arm/include/asm/arch_timer.h
index 4b66ecd6be99..99175812d903 100644
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
 
+static inline void arch_timer_set_evtstrm_feature(void)
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
index 5c69c9a9a6a4..3c8afcd3444c 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
