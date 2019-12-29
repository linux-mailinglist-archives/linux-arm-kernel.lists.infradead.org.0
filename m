Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8BE12C752
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 19:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wDf0jmOlFHB6Zg97qH0NLJYildQyR3olz0oxZ99yYrk=; b=sfm8dMgKkKixsd6gXhVhU7wR01
	gVweYCtGDY3Q6xiJHu68N013yHU5zr1JhycrRyHaz8mYqk0fwAO1cs1yhAjoFvr+x4gJRXUU3Nz82
	G2HA03b+MpAqK2wi7vJHY+mxzyWHoq3Gqi54ckOuyQ3zTRSzsbTALKoXPtRtIQPMf+D5q7y70ulW/
	2lPBm5HUukrZwtdSW2iq/2j3BIfWcTsu/3xKzcKeG7vB4cyaHDsRmR2bZeicm8Hb5xKWn0Ew6TE0R
	zdSc0ko4ZjqCE101Ew0JbeuJWVIKjl0zVQzbjcsxPyiusdydhuiwla0beqeJa3JdTNLkLnpsqjm1i
	sjbKHT6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ild0h-00085q-Px; Sun, 29 Dec 2019 18:09:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ild0J-0007uw-89
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 18:09:28 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70560222C2;
 Sun, 29 Dec 2019 18:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577642966;
 bh=+YBS7n7jqJ53S6HvX93BfgZRfoAttIJ+SIElGBLSgqM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uMgwPoibTPvXMuBnLasQwLeJludmN8WbGDEYxBWxxnh0U6rfIf1l/FTZyhAcMB23c
 kDdi/LXORjlV7nRi8wYZhjc3QkRJzJn2u5rEXoEN3hGw07unFOx4hpQDUtK56XXsnb
 B+2XHtCEwb47/eSsX21hJrZ+L/Q0LdGjKxpIZxh8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] cpuidle: arm: Enable compile testing for some of drivers
Date: Sun, 29 Dec 2019 19:09:12 +0100
Message-Id: <20191229180912.17100-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229180912.17100-1-krzk@kernel.org>
References: <20191229180912.17100-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_100927_355466_8D6B90AA 
X-CRM114-Status: GOOD (  10.86  )
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
