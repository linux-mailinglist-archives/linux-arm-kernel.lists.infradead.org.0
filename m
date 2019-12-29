Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B1E12C751
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 19:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wDf0jmOlFHB6Zg97qH0NLJYildQyR3olz0oxZ99yYrk=; b=rfb
	sZJXnSZnGQ+T3wdPNhCVUR3FTyTv4ldh4qWEj2JvxBkUsxJ7MX9JekIB7YmjihiX8+rOG2TxWG9tw
	ocr9MbGC6Xz7ERE7sJI9IV7V+cf96+7annRA4lH+erZ/X5ZIVhGxJtBdD/XAQ56ppbfvUclIaLMO4
	o7WLuGa3crXdftWrlfRWAi4DFbMLh2hvNRrb7vZChMGJFTUWk2Mk9KLEIOUy8AU1ccKMQnA3rRmDH
	eXZLJet8xhfkzhfLKN0Q122HRPykHeb7N3OoxE4wuGbmMgazLOKlL8c2EMCNsVivkMzxK9Jic6odY
	GgZgq76iaudZm05ofto8ro97ruw+XGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ild0T-0007uZ-4B; Sun, 29 Dec 2019 18:09:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ild0G-0007ti-OP
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 18:09:26 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 754DE206A4;
 Sun, 29 Dec 2019 18:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577642964;
 bh=+YBS7n7jqJ53S6HvX93BfgZRfoAttIJ+SIElGBLSgqM=;
 h=From:To:Cc:Subject:Date:From;
 b=XytEjOEurhjJTShnLSoF6V0pKh8UWSrV3+ocJp0GzOkqtZdJ5E6PGSdOj+2fHjz+V
 nQr/4bGruIfAdtca2M5HnUq2vsjPxWwLYpsrN3qkznS+R2YbvGVSM+AUz3xBgoMgmZ
 4wpLCAucYhlvpbMJipEOStNlPUnQkGeA01iDvrwA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] cpuidle: arm: Enable compile testing for some of drivers
Date: Sun, 29 Dec 2019 19:09:11 +0100
Message-Id: <20191229180912.17100-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_100924_814889_A8B6FF04 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of cpuidle drivers for ARMv7 can be compile tested on this
architecture because they do not depend on mach-specific bits.  Enable
compile testing for big.LITTLE, Kirkwood, Zynq, AT91, Exynos and mvebu
cpuidle drivers.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/cpuidle/Kconfig.arm | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/cpuidle/Kconfig.arm b/drivers/cpuidle/Kconfig.arm
index a224d33dda7f..62272ecfa771 100644
--- a/drivers/cpuidle/Kconfig.arm
+++ b/drivers/cpuidle/Kconfig.arm
@@ -25,7 +25,7 @@ config ARM_PSCI_CPUIDLE
 
 config ARM_BIG_LITTLE_CPUIDLE
 	bool "Support for ARM big.LITTLE processors"
-	depends on ARCH_VEXPRESS_TC2_PM || ARCH_EXYNOS
+	depends on ARCH_VEXPRESS_TC2_PM || ARCH_EXYNOS || COMPILE_TEST
 	depends on MCPM && !ARM64
 	select ARM_CPU_SUSPEND
 	select CPU_IDLE_MULTIPLE_DRIVERS
@@ -51,13 +51,13 @@ config ARM_HIGHBANK_CPUIDLE
 
 config ARM_KIRKWOOD_CPUIDLE
 	bool "CPU Idle Driver for Marvell Kirkwood SoCs"
-	depends on MACH_KIRKWOOD && !ARM64
+	depends on (MACH_KIRKWOOD || COMPILE_TEST) && !ARM64
 	help
 	  This adds the CPU Idle driver for Marvell Kirkwood SoCs.
 
 config ARM_ZYNQ_CPUIDLE
 	bool "CPU Idle Driver for Xilinx Zynq processors"
-	depends on ARCH_ZYNQ && !ARM64
+	depends on (ARCH_ZYNQ || COMPILE_TEST) && !ARM64
 	help
 	  Select this to enable cpuidle on Xilinx Zynq processors.
 
@@ -70,19 +70,19 @@ config ARM_U8500_CPUIDLE
 config ARM_AT91_CPUIDLE
 	bool "Cpu Idle Driver for the AT91 processors"
 	default y
-	depends on ARCH_AT91 && !ARM64
+	depends on (ARCH_AT91 || COMPILE_TEST) && !ARM64
 	help
 	  Select this to enable cpuidle for AT91 processors.
 
 config ARM_EXYNOS_CPUIDLE
 	bool "Cpu Idle Driver for the Exynos processors"
-	depends on ARCH_EXYNOS && !ARM64
+	depends on (ARCH_EXYNOS || COMPILE_TEST) && !ARM64
 	select ARCH_NEEDS_CPU_IDLE_COUPLED if SMP
 	help
 	  Select this to enable cpuidle for Exynos processors.
 
 config ARM_MVEBU_V7_CPUIDLE
 	bool "CPU Idle Driver for mvebu v7 family processors"
-	depends on ARCH_MVEBU && !ARM64
+	depends on (ARCH_MVEBU || COMPILE_TEST) && !ARM64
 	help
 	  Select this to enable cpuidle on Armada 370, 38x and XP processors.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
