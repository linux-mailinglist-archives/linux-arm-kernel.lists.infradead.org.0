Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0D57178E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UjMsTupRoz0zXFiW4tGpp8Es3q5yEZ4/ulkedXG+Qa0=; b=BK1
	2xGoKm8ihrHjXOITi+D3gMlCGs1z4sq3XGwOvK5ylVDMjtWCf2jgoM9lLEMzQacH0pJPqK5D3uDv4
	tHka1JkwOvQWSSeT0ArXAMSOBjKBoDTADt9TyjeipK9rDg0X1+ZG/vc0HyvqDLDdKyiDASapZ1I2V
	4CDaDIXVzBkCj5jwHSv7o1N7Cg4t3QnZQ+0ExeXuy7pnSBfjCqnNDaTjk6p/Gr5CHUxG/GwFI3sMd
	+S8CGMymGcLCruBLapilLlEhXzniPd7CLRZt+uOlteqiz5VyTbm3llhBnOfoqgXFEi5Jsj8ilbygk
	91N8ElBPbHiW0m0ONGi5B1VMYJtSxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptOx-00083W-6c; Tue, 23 Jul 2019 11:56:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hptOh-00082p-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:56:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18ACF337;
 Tue, 23 Jul 2019 04:55:59 -0700 (PDT)
Received: from approximate.arm.com. (approximate.cambridge.arm.com
 [10.1.196.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C69D3F71A;
 Tue, 23 Jul 2019 04:55:58 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [BOOTWRAPPER][PATCH] Make GICv3.1 extended ranges available to
 non-secure
Date: Tue, 23 Jul 2019 12:55:45 +0100
Message-Id: <20190723115545.1506-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_045600_050269_5EB07A4B 
X-CRM114-Status: GOOD (  11.43  )
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
Cc: Mark Rutland <mark.rutland@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we have a GICv3.1-capable system, configure the EPPI/ESPI ranges
to be accessible from the non-secure world.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 gic-v3.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/gic-v3.c b/gic-v3.c
index 476f703..4b733ba 100644
--- a/gic-v3.c
+++ b/gic-v3.c
@@ -17,6 +17,8 @@
 #define GICD_TYPER			0x4
 #define GICD_IGROUP0			0x80
 #define GICD_IGRPMOD0			0xd00
+#define GICD_IGROUPR0E			0x1000
+#define GICD_IGRPMODR0E			0x3400
 
 #define GICD_CTLR_EnableGrp0		(1 << 0)
 #define GICD_CTLR_EnableGrp1ns		(1 << 1)
@@ -57,6 +59,7 @@ void gic_secure_init_primary(void)
 		 * ChildrenAsleep to be 0.
 		 */
 		uint32_t waker = raw_readl(gicr_ptr + GICR_WAKER);
+		uint32_t regs;
 		waker &= ~GICR_WAKER_ProcessorSleep;
 		raw_writel(waker, gicr_ptr + GICR_WAKER);
 		dsb(st);
@@ -72,8 +75,11 @@ void gic_secure_init_primary(void)
 		typer = raw_readl(gicr_ptr + GICR_TYPER);
 
 		gicr_ptr += 0x10000; /* Go to SGI_Base */
-		raw_writel(~0x0, gicr_ptr + GICR_IGROUP0);
-		raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0);
+		regs = 1 + ((typer >> 27) & 0x1f);
+		for (i = 0; i < regs; i++) {
+			raw_writel(~0x0, gicr_ptr + GICR_IGROUP0 + i * 4);
+			raw_writel(0x0, gicr_ptr + GICR_IGRPMOD0 + i * 4);
+		}
 
 		/* Next redist */
 		gicr_ptr += 0x10000;
@@ -87,6 +93,10 @@ void gic_secure_init_primary(void)
 		raw_writel(~0x0, gicd_base + GICD_IGROUP0 + i * 4);
 		raw_writel(0x0, gicd_base + GICD_IGRPMOD0 + i * 4);
 	}
+	for (i = 0; i < ((typer >> 27) & GICD_TYPER_ITLineNumber); i++) {
+		raw_writel(~0x0, gicd_base + GICD_IGROUPR0E + i * 4);
+		raw_writel(0x0, gicd_base + GICD_IGRPMODR0E + i * 4);
+	}
 }
 
 void gic_secure_init(void)
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
