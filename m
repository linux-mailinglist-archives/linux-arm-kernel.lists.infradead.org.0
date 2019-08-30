Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B366A4029
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WdU9oxbnTbF3LDCc+i1qrw90DTtSXT29N7c0huiqpR0=; b=ftxmCusPC/5QAq
	SbFylkdlHucy70ZkVTNRPffUZyFb+XUDPU68TG+yDgi6Sf5rmNqCrIlRgxw1exC5qHRfgGShkxoTX
	2Gz0brtyooChq8X4fz+xffrvy4jds4klER5GcePKWp9kZr3ysAT3vxjGD8k5yZg2YkRFkvxOs7ETG
	V1V1LWGEE9zd0+4YPhxbqzUq1OV1tnRqJkQi2rNHI4Fgheufhm7/deH1TjlrIZK9caBebx3DfsHNI
	01zh3ckA9BR5kSqvU1sadG4IF5Pb5nn/N0qHin5qpBsrRZcwR8LcnaSlJ2PwNB6lK4kV2NTia1a1t
	LSzAPy4xz4NkdqE9Krgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3p6P-0002UR-IS; Fri, 30 Aug 2019 22:10:41 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3p4T-0008Ie-OC
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:08:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E227ED8801;
 Sat, 31 Aug 2019 00:08:39 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id b4Sn4zkpKYvK; Sat, 31 Aug 2019 00:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id D5063D87EB;
 Sat, 31 Aug 2019 00:07:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wxZjFVremg4k; Sat, 31 Aug 2019 00:07:55 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 39EF0D87EA;
 Sat, 31 Aug 2019 00:07:51 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: "To : Olof Johansson" <olof@lixom.net>
Subject: [PATCH v3 08/16] ARM: mmp: map the PGU as well
Date: Sat, 31 Aug 2019 00:07:35 +0200
Message-Id: <20190830220743.439670-9-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190830220743.439670-1-lkundrak@v3.sk>
References: <20190830220743.439670-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_150842_295282_206C9E68 
X-CRM114-Status: GOOD (  11.31  )
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

The MMP2 and later includes a system control unit in this area. We'll need
that to initialize the secondary core on MMP3.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/addr-map.h |  7 +++++++
 arch/arm/mach-mmp/common.c   | 15 +++++++++++++++
 arch/arm/mach-mmp/common.h   |  1 +
 arch/arm/mach-mmp/mmp2-dt.c  |  2 +-
 4 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-mmp/addr-map.h b/arch/arm/mach-mmp/addr-map.h
index 25edf6a92276e..3dc2f0b0ecba5 100644
--- a/arch/arm/mach-mmp/addr-map.h
+++ b/arch/arm/mach-mmp/addr-map.h
@@ -20,6 +20,10 @@
 #define AXI_VIRT_BASE		IOMEM(0xfe200000)
 #define AXI_PHYS_SIZE		0x00200000
 
+#define PGU_PHYS_BASE		0xe0000000
+#define PGU_VIRT_BASE		IOMEM(0xfe400000)
+#define PGU_PHYS_SIZE		0x00100000
+
 /* Static Memory Controller - Chip Select 0 and 1 */
 #define SMC_CS0_PHYS_BASE	0x80000000
 #define SMC_CS0_PHYS_SIZE	0x10000000
@@ -38,4 +42,7 @@
 #define CIU_VIRT_BASE		(AXI_VIRT_BASE + 0x82c00)
 #define CIU_REG(x)		(CIU_VIRT_BASE + (x))
 
+#define SCU_VIRT_BASE		(PGU_VIRT_BASE)
+#define SCU_REG(x)		(SCU_VIRT_BASE + (x))
+
 #endif /* __ASM_MACH_ADDR_MAP_H */
diff --git a/arch/arm/mach-mmp/common.c b/arch/arm/mach-mmp/common.c
index 6684abc7708bd..2ee08c78e8bc9 100644
--- a/arch/arm/mach-mmp/common.c
+++ b/arch/arm/mach-mmp/common.c
@@ -36,6 +36,15 @@ static struct map_desc standard_io_desc[] __initdata = {
 	},
 };
 
+static struct map_desc mmp2_io_desc[] __initdata = {
+	{
+		.pfn		= __phys_to_pfn(PGU_PHYS_BASE),
+		.virtual	= (unsigned long)PGU_VIRT_BASE,
+		.length		= PGU_PHYS_SIZE,
+		.type		= MT_DEVICE,
+	},
+};
+
 void __init mmp_map_io(void)
 {
 	iotable_init(standard_io_desc, ARRAY_SIZE(standard_io_desc));
@@ -44,6 +53,12 @@ void __init mmp_map_io(void)
 	mmp_chip_id = __raw_readl(MMP_CHIPID);
 }
 
+void __init mmp2_map_io(void)
+{
+	mmp_map_io();
+	iotable_init(mmp2_io_desc, ARRAY_SIZE(mmp2_io_desc));
+}
+
 void mmp_restart(enum reboot_mode mode, const char *cmd)
 {
 	soft_restart(0);
diff --git a/arch/arm/mach-mmp/common.h b/arch/arm/mach-mmp/common.h
index 483b8b6d3005a..ed56b3f15b45e 100644
--- a/arch/arm/mach-mmp/common.h
+++ b/arch/arm/mach-mmp/common.h
@@ -5,4 +5,5 @@
 extern void mmp_timer_init(int irq, unsigned long rate);
 
 extern void __init mmp_map_io(void);
+extern void __init mmp2_map_io(void);
 extern void mmp_restart(enum reboot_mode, const char *);
diff --git a/arch/arm/mach-mmp/mmp2-dt.c b/arch/arm/mach-mmp/mmp2-dt.c
index 305a9daba6d68..8eec881191f4b 100644
--- a/arch/arm/mach-mmp/mmp2-dt.c
+++ b/arch/arm/mach-mmp/mmp2-dt.c
@@ -33,7 +33,7 @@ static const char *const mmp2_dt_board_compat[] __initconst = {
 };
 
 DT_MACHINE_START(MMP2_DT, "Marvell MMP2 (Device Tree Support)")
-	.map_io		= mmp_map_io,
+	.map_io		= mmp2_map_io,
 	.init_time	= mmp_init_time,
 	.dt_compat	= mmp2_dt_board_compat,
 MACHINE_END
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
