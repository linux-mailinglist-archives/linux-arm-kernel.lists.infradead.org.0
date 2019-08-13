Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721B48BE6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=10l65czFeAcNLUhLt+vP+fT3cc2wsMEXcb0/zLeuybQ=; b=jXWFLmhODsFYWKpi6d2vLULVA6
	0mS5zKl6ViEelgsWNjJeE9GoV1zSbJLiu9y2ORYZuzH1SowI5gSKG5OoY4XWrRzdHUI/ai9CAVOmz
	lew8IZDNrxcSTc+Zryj4t6SSg1H4JlBsb+8iqhViPFlXoRtULFBud2zUWVhqAApWQLnePRiRztTX3
	ZoUTrvSeyP0ggxCQYJh3JPGQ5Gjri4F62aJ6Pa+EqLX93acsTsIGQpKmh9RnsX5/VO5/sblty82lr
	Q/0Z0c/gj/ng3tY5NWozFlVRHf4p5qZzwAJwSYr32VyEvrZ0NM0n67w6XdZdgFaX9oMrFCEaeMX1z
	YH2/2Mrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZc7-0004qt-J3; Tue, 13 Aug 2019 16:25:35 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXo-0008NB-8f; Tue, 13 Aug 2019 16:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713262;
 bh=p/SSnJeKxjXEaPbgC1CRpaN/K2ZQCUsvDyxx2Jvj4LU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=HGAaxH8n+e7hjJX8rYPnrfAYFN9v1a8uXAQdpTqSX+B3oIe92oIT0lQNtZOC0bbZ6
 osB9q80c9C4UrMmMvsK4pD7+QJyBeh0g8e9laFstPo9i568112uFV6V2mOodK/YiiR
 9/+aSEvO792a9jPSobxidWgTLHD8bKamJJYvbcHs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MWRVh-1hmDWI3vqN-00XpC3; Tue, 13 Aug 2019 18:21:02 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 11/13] ARM: bcm: Add support for BCM2711 SoC
Date: Tue, 13 Aug 2019 18:20:46 +0200
Message-Id: <1565713248-4906-12-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:dFIO1Y73cHhYByVqZYoc8TOkFxlgLtwZRXUHniPN7XlD/XNDCa9
 m9n9eNR6vODXNafG+h/DHp03ptu6IxHcGydxEQy/wryeqZsi4u6jdkz1cQTivz330HgDDJI
 TBmr7tX87emKd7Y3zMfLh51QJDwfHg4zrQe62z6+LJrEnP0MFjm36rnyRYFaZYXaDnE2SVL
 8HWa/+fzafFnulyKmpoig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5bicyWtCMlw=:K09yliheb9ZgWexnnYrLqO
 w14DFkCZl3Jl6qEhRe1SXZ9kvnvJBXA7a3pnuuyb8vRd15wQY0/ZElmPf92kW+TYjDb4EH1uK
 rpGtSDqZrJtKK70+JjEtipknm8/walVHJcIhe/ubR6JIRWsRKMEcPKIhBHPgZTpt0ppU9Exg8
 8lwJbX5bH/RpdhA1iy/Yf1w9fVDtQYbrxMlQqPlaBAUfd7YjbT4BJN7lkz8ulbcA+LJdzZw2w
 WRaMomdoAYnapFyochF/DyjkBn8H0KUPnARk3ljtM11uUJFwqL2hSOjEIsCQKQLycznuJkFaZ
 Q9pjqf6Xg9SdbHcwpKLGeUZ9sJSe6+0Pd3J1KxcJZKvrE+CwoG9sNUoS6RLzG8uaeMqnsmQgj
 5Aoe4K5U0QX0M+k4ntqPKztN/q0yg4gQ7qrT4IJ6IZCSNmmhebU7YK6MlJNASWRdPrzzQzTLY
 aCsuxh3Jj6SIaTC/XP2ezo1GNj4HepZs6C+VmvN/weoe2j2aDZM4i2GPI9AcBz3gebnNSLzvf
 eSzBkwBTXdPeU46WM5jpjaWCe9iMy0FpX+IfxybNc1PdstUIJZamnc8DEoz474RvXI95GFMZl
 kz/yPu2qEVPav1iEaLFdjCLAH+px7NELlQ3CvTR0+Hf5ee8uWOTwXdZwp1uQ2uMDToyO6mhll
 xZn4IVObC2lQP0C9cRU3yJu9KtFcFe6bnkmitGLCIUmE+NqSggCrxYQE40uQKwr61Wyk5VmfY
 r5PE+3C5ePOo6CreeC6+flGDbek4SVOUYxUs82XuVO4v3vIpB2F/RkA+MFqrOVMZNcJUwS54x
 cDEKUxHpq1bEIex1e3P2uzrglvuarDvgGkoKB8o/8CfX9wMZQEviJVV4P3R9sPM6HSwtdSLBv
 U4ypMvw5HrTgyWNVu3fYFJ8iZcBbJhFR0a5ysabz7WnzraZL7OcRK3keL5szS6TRF62Yx2X6T
 z/qBaKCfQZEyYIRJTY7ou8E6NRksSk5B1G32WZeXP2MYX5TDIRTIzXuvqJzSsi6D3KXAZHPud
 nIIsdhKai+uDWdNv5eEwrHxs8StxVNv3WaQodOHV3dU3bB+6RIcbCh1KZMEmqSElG90wo0432
 omFL21MjsjTGj/X95forwjUjhxAkP0zWgnQoaDEwTWZ/NFF8Qg3C5aMQg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092108_596317_DAD51194 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the BCM2711 to ARCH_BCM2835, but use new machine board code
because of the differences.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/mach-bcm/Kconfig   |  3 ++-
 arch/arm/mach-bcm/Makefile  |  3 ++-
 arch/arm/mach-bcm/bcm2711.c | 22 ++++++++++++++++++++++
 3 files changed, 26 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-bcm/bcm2711.c

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index 5e5f1fa..39bcbea 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -161,6 +161,7 @@ config ARCH_BCM2835
 	select GPIOLIB
 	select ARM_AMBA
 	select ARM_ERRATA_411920 if ARCH_MULTI_V6
+	select ARM_GIC if ARCH_MULTI_V7
 	select ARM_TIMER_SP804
 	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
 	select TIMER_OF
@@ -169,7 +170,7 @@ config ARCH_BCM2835
 	select PINCTRL_BCM2835
 	select MFD_CORE
 	help
-	  This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
+	  This enables support for the Broadcom BCM2711 and BCM283x SoCs.
 	  This SoC is used in the Raspberry Pi and Roku 2 devices.

 config ARCH_BCM_53573
diff --git a/arch/arm/mach-bcm/Makefile b/arch/arm/mach-bcm/Makefile
index b59c813..7baa8c9 100644
--- a/arch/arm/mach-bcm/Makefile
+++ b/arch/arm/mach-bcm/Makefile
@@ -42,8 +42,9 @@ obj-$(CONFIG_ARCH_BCM_MOBILE_L2_CACHE) += kona_l2_cache.o
 obj-$(CONFIG_ARCH_BCM_MOBILE_SMC) += bcm_kona_smc.o

 # BCM2835
-obj-$(CONFIG_ARCH_BCM2835)	+= board_bcm2835.o
 ifeq ($(CONFIG_ARCH_BCM2835),y)
+obj-y				+= board_bcm2835.o
+obj-y				+= bcm2711.o
 ifeq ($(CONFIG_ARM),y)
 obj-$(CONFIG_SMP)		+= platsmp.o
 endif
diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
new file mode 100644
index 0000000..1fa15b4
--- /dev/null
+++ b/arch/arm/mach-bcm/bcm2711.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Stefan Wahren
+ */
+
+#include <linux/of_address.h>
+
+#include <asm/mach/arch.h>
+
+#include "platsmp.h"
+
+static const char * const bcm2711_compat[] = {
+#ifdef CONFIG_ARCH_MULTI_V7
+	"brcm,bcm2711",
+#endif
+};
+
+DT_MACHINE_START(BCM2711, "BCM2711")
+	.dma_zone_size	= SZ_1G,
+	.dt_compat = bcm2711_compat,
+	.smp = smp_ops(bcm2836_smp_ops),
+MACHINE_END
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
