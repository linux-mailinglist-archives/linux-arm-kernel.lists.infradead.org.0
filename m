Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3490A402F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dx/LWikZIpv//hRWcR9iiZQzRoWosvmU/g93O+TQhfI=; b=resioZJcTFvvyN
	tQyZtsf9akONfuYcuRFM/AknyNb/AiGdvDXZfTvLsARmjvzznFohjxlwMA53+nmFLVRQW8fV7M4wW
	XjcaGnZ9vuGVkIAJ6dh94ocQfcLMBiKXFZVVRs4QJtjhUJV+WvCGc6MZP5/baqxN4gUCSCJZD0Cyb
	gco5x3beRslPYtVeJ+I6gFY867GiG3CXXJCWgFInCQVVGpB4lUfyOcLc45MZYjcDnq8xcDaD3n7sN
	2d3fvw7ax0QCGcRsARSToF40d0ridUQbcjSAQ2Sv3fqtqSohcc2fjg7W9TWVPXLfI1rb8GPbcEPRe
	fpU1PeEzIrtKFp4ba93A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3p7X-0003Ze-TM; Fri, 30 Aug 2019 22:11:51 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3p4m-00008a-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:09:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id CCA92D8808;
 Sat, 31 Aug 2019 00:08:58 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id UjwqMr34hL8Q; Sat, 31 Aug 2019 00:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 000D2D87EF;
 Sat, 31 Aug 2019 00:08:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id KuOF9qKz-Zny; Sat, 31 Aug 2019 00:08:03 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 8626BD87F0;
 Sat, 31 Aug 2019 00:07:52 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: "To : Olof Johansson" <olof@lixom.net>
Subject: [PATCH v3 12/16] ARM: mmp: add SMP support
Date: Sat, 31 Aug 2019 00:07:39 +0200
Message-Id: <20190830220743.439670-13-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190830220743.439670-1-lkundrak@v3.sk>
References: <20190830220743.439670-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_150900_968140_2EA0A543 
X-CRM114-Status: GOOD (  13.10  )
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
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Used to bring up the second core on MMP3.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

---
Changes since v2:
- Wrap secondary_startup with __pa_symbol(), instead of
  SW_BRANCH_VIRT_ADDR.

Changes since v1:
- Wrap SW_BRANCH_VIRT_ADDR with __pa_symbol()

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
index 0000000000000..c99405469bb4b
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
+	__raw_writel(__pa_symbol(secondary_startup), SW_BRANCH_VIRT_ADDR);
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
