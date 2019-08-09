Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C0E87655
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNZsC+vDs63tzSAbo0AtNUoQ0uPavYv6OCxGCi4b7os=; b=ggC4wuOHb4r7/E
	RMrQvVdPt/ezIKoqQZ44ePxt14K9/3fs/TguyRfPg3zu3vz4rF18gShrNuOZM9KG8ea/70Fmpr1Lu
	5xdthMuyMEJB4H8bp5Gt2mLvd7pEE2Y4EWk5SXACpFHpQ/dxoGPM4y5YQxDqWBixm5bXfuBSmTXST
	6kTvvuxQDgcqfybNx6x3aHtejtE8mo6dyUY5YUQKgYDYYeWftFb9bjib9ANtnVlXxRo5CuMKoACiu
	l37mpJN/Hbl0eJg0Fz6if64G8vl1fQ6O4q8k3TO/duZVw1uaCPRjlfYRboZrwoK+k80x4fl/p7Cd+
	gXqHxfcLdMtaabqbLEoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1Kn-0000fQ-Sn; Fri, 09 Aug 2019 09:37:18 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1H9-00040V-5m
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:33:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 711D8D63C6;
 Fri,  9 Aug 2019 11:33:29 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id K1gVfscxpXnp; Fri,  9 Aug 2019 11:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 5EA2FD63DC;
 Fri,  9 Aug 2019 11:32:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id WFlokgtFpukp; Fri,  9 Aug 2019 11:32:29 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id DBE76D63C2;
 Fri,  9 Aug 2019 11:32:21 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 15/19] ARM: mmp: add SMP support
Date: Fri,  9 Aug 2019 11:31:54 +0200
Message-Id: <20190809093158.7969-16-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809093158.7969-1-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023331_481171_A705BF21 
X-CRM114-Status: GOOD (  13.31  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Used to bring up the second core on MMP3.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/Makefile  |  3 +++
 arch/arm/mach-mmp/platsmp.c | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 arch/arm/mach-mmp/platsmp.c

diff --git a/arch/arm/mach-mmp/Makefile b/arch/arm/mach-mmp/Makefile
index 322c1c97dc900..7b3a7f979eece 100644
--- a/arch/arm/mach-mmp/Makefile
+++ b/arch/arm/mach-mmp/Makefile
@@ -22,6 +22,9 @@ ifeq ($(CONFIG_PM),y)
 obj-$(CONFIG_CPU_PXA910)	+= pm-pxa910.o
 obj-$(CONFIG_CPU_MMP2)		+= pm-mmp2.o
 endif
+ifeq ($(CONFIG_SMP),y)
+obj-$(CONFIG_MACH_MMP3_DT)	+= platsmp.o
+endif
 
 # board support
 obj-$(CONFIG_MACH_ASPENITE)	+= aspenite.o
diff --git a/arch/arm/mach-mmp/platsmp.c b/arch/arm/mach-mmp/platsmp.c
new file mode 100644
index 0000000000000..255df640b5bc1
--- /dev/null
+++ b/arch/arm/mach-mmp/platsmp.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2019 Lubomir Rintel <lkundrak@v3.sk>
+ */
+#include <linux/io.h>
+#include <asm/smp_scu.h>
+#include <asm/smp.h>
+#include "addr-map.h"
+
+#define SW_BRANCH_VIRT_ADDR	CIU_REG(0x24)
+
+static int mmp3_boot_secondary(unsigned int cpu, struct task_struct *idle)
+{
+	/*
+	 * Apparently, the boot ROM on the second core spins on this
+	 * register becoming non-zero and then jumps to the address written
+	 * there. No IPIs involved.
+	 */
+	__raw_writel(virt_to_phys(secondary_startup), SW_BRANCH_VIRT_ADDR);
+	return 0;
+}
+
+static void mmp3_smp_prepare_cpus(unsigned int max_cpus)
+{
+	scu_enable(SCU_VIRT_BASE);
+}
+
+static const struct smp_operations mmp3_smp_ops __initconst = {
+	.smp_prepare_cpus	= mmp3_smp_prepare_cpus,
+	.smp_boot_secondary	= mmp3_boot_secondary,
+};
+CPU_METHOD_OF_DECLARE(mmp3_smp, "marvell,mmp3-smp", &mmp3_smp_ops);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
