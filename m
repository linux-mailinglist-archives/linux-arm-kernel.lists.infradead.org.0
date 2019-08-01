Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB517D766
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tL2Fvzy5a5AtNGz1Ea+5LOM10zpkoYjVjrxWTL3M5Rk=; b=BHhAZsYs+eRR7t
	KDMrzkW+Q8+KNxKr1yJV6YseOYpWGHoXx2mGWlX2tHnOiOcr0+YenMr6rh1HJTVEhk7tyanCQFWny
	aQ1UpNakgddxH9/pzRuSIctopz/8mQWvuVqWfVDpPmnn6KwRwK3PXg491FWiEUjTDnPyb6LQTq/+i
	JuSPPdK0rHCZE+XRDIbaFszqA42nJo+MalOpi9/oBMDZyJS5uBwNW3wpGtay5cPACWLTuX+spcz5V
	cBhrTvVgq6hXpwdmlGbgdYPsi37p5E2mLP7F4DMDmC6w32gPougH2FgWaxKZnxsuF4ZEt94lLmznP
	Kf0gJ7wZxdRzCJ+BcRFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6M6-00053t-9k; Thu, 01 Aug 2019 08:22:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Js-00020U-5A
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so33729480pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Arpm02aGI6YJCtpiPBRj6TsiybDi8jaAFcwPdh06aYE=;
 b=KFNcIvSPhxIo/odZ9ybPsb9qMK2cpgoaVZ8iH84d7RPdUFNek/1EEwSu9tw1iYMp+8
 t2bFOAkHVWg0hLqefH+McTYk9uLnPdwSNnfqVlQ9PHp3BCyUizQDCgGuuVIPQG17SlNg
 ycG0TRW4fcgFqkP6bWg44knQmV3arFqIJ03dRbjiM9rBG7mD7gBwjfBoME/qB8E2Whqa
 EdDkt9c955THlC0GL2hBqmmPTGw2rKKIkXiozQzic18cUfkXQvO2b+El/HmOK2wKEiBm
 WSuElSHgMmE9x0wz3ndbhJemenycSSwxXshFkg2hjJvBRRPDrKzTYeag28MFkyj/Fbc7
 mI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Arpm02aGI6YJCtpiPBRj6TsiybDi8jaAFcwPdh06aYE=;
 b=ZKUGvoiMc/WDcy486gCTA7BEIlOiC08nXiFGXyrZDOfKYzWIXMo8JXUK9J7XwA6bPS
 SmXWqjto5/0IpU/5qCDUqUQF2ggXVvVK2qPdzs4Td5wsO4h9BgqZCEBB/SAcCr7k4m3N
 ttNR6gsMn66EoA7TY89+2d0hVnR1mT8wuRszJH46hNxOpd3lvdEwR8sf4aneQKH51zX5
 splvyNQLHls0+J1pYy6DOtP3ujQPCSTfIhQyQj6cjfGMFubxAMaLe9XksghdtlQSjmGW
 2q5ZPFTgudrnft68kvQ24K1DCy+BftQ/o4cCCHy1uIBuFzRgMgHXGHqO88qblrmPGqt+
 cDZg==
X-Gm-Message-State: APjAAAXa7gkcmzd/MfzElF30gbxzEuj5yFvsdSyN0QcydPuJDqN8ObGV
 JFX05enIlInYyn9UgANFoE8cdw==
X-Google-Smtp-Source: APXvYqwbu12n3uYWy4e6tAr7Volxz6tobUd7+JfG5OBzuqilJ86eVfILw5p8mwxbJriX300JBmLYSQ==
X-Received: by 2002:a17:90a:3ac2:: with SMTP id
 b60mr7327890pjc.74.1564647614913; 
 Thu, 01 Aug 2019 01:20:14 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id b26sm80003500pfo.129.2019.08.01.01.20.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:14 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 15/47] ARM: spectre-v2: add Cortex A8 and A15
 validation of the IBE bit
Date: Thu,  1 Aug 2019 13:45:59 +0530
Message-Id: <9a610b2709bb86b37ec86270f023f5a3e18d3a7c.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012016_527615_ACB539A9 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit e388b80288aade31135aca23d32eee93dd106795 upstream.

When the branch predictor hardening is enabled, firmware must have set
the IBE bit in the auxiliary control register.  If this bit has not
been set, the Spectre workarounds will not be functional.

Add validation that this bit is set, and print a warning at alert level
if this is not the case.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/mm/Makefile       |  2 +-
 arch/arm/mm/proc-v7-bugs.c | 36 ++++++++++++++++++++++++++++++++++++
 arch/arm/mm/proc-v7.S      |  4 ++--
 3 files changed, 39 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mm/proc-v7-bugs.c

diff --git a/arch/arm/mm/Makefile b/arch/arm/mm/Makefile
index 7f76d96ce546..35307176e46c 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -92,7 +92,7 @@ obj-$(CONFIG_CPU_MOHAWK)	+= proc-mohawk.o
 obj-$(CONFIG_CPU_FEROCEON)	+= proc-feroceon.o
 obj-$(CONFIG_CPU_V6)		+= proc-v6.o
 obj-$(CONFIG_CPU_V6K)		+= proc-v6.o
-obj-$(CONFIG_CPU_V7)		+= proc-v7.o
+obj-$(CONFIG_CPU_V7)		+= proc-v7.o proc-v7-bugs.o
 obj-$(CONFIG_CPU_V7M)		+= proc-v7m.o
 
 AFLAGS_proc-v6.o	:=-Wa,-march=armv6
diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
new file mode 100644
index 000000000000..e46557db6446
--- /dev/null
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/kernel.h>
+#include <linux/smp.h>
+
+static __maybe_unused void cpu_v7_check_auxcr_set(bool *warned,
+						  u32 mask, const char *msg)
+{
+	u32 aux_cr;
+
+	asm("mrc p15, 0, %0, c1, c0, 1" : "=r" (aux_cr));
+
+	if ((aux_cr & mask) != mask) {
+		if (!*warned)
+			pr_err("CPU%u: %s", smp_processor_id(), msg);
+		*warned = true;
+	}
+}
+
+static DEFINE_PER_CPU(bool, spectre_warned);
+
+static void check_spectre_auxcr(bool *warned, u32 bit)
+{
+	if (IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR) &&
+		cpu_v7_check_auxcr_set(warned, bit,
+				       "Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable\n");
+}
+
+void cpu_v7_ca8_ibe(void)
+{
+	check_spectre_auxcr(this_cpu_ptr(&spectre_warned), BIT(6));
+}
+
+void cpu_v7_ca15_ibe(void)
+{
+	check_spectre_auxcr(this_cpu_ptr(&spectre_warned), BIT(0));
+}
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index c2950317c7c2..1436ad424f2a 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -511,7 +511,7 @@ ENDPROC(__v7_setup)
 	globl_equ	cpu_ca8_do_suspend,	cpu_v7_do_suspend
 	globl_equ	cpu_ca8_do_resume,	cpu_v7_do_resume
 #endif
-	define_processor_functions ca8, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+	define_processor_functions ca8, dabort=v7_early_abort, pabort=v7_pabort, suspend=1, bugs=cpu_v7_ca8_ibe
 
 	@ Cortex-A9 - needs more registers preserved across suspend/resume
 	@ and bpiall switch_mm for hardening
@@ -544,7 +544,7 @@ ENDPROC(__v7_setup)
 	globl_equ	cpu_ca15_suspend_size,	cpu_v7_suspend_size
 	globl_equ	cpu_ca15_do_suspend,	cpu_v7_do_suspend
 	globl_equ	cpu_ca15_do_resume,	cpu_v7_do_resume
-	define_processor_functions ca15, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+	define_processor_functions ca15, dabort=v7_early_abort, pabort=v7_pabort, suspend=1, bugs=cpu_v7_ca15_ibe
 #ifdef CONFIG_CPU_PJ4B
 	define_processor_functions pj4b, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
 #endif
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
