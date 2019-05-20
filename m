Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FC123AC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOQmrHgx1d0dulXT9ggjyszxoL1FwNFXy/tCinongRQ=; b=TXpUO9VAWSZaf2
	zRvbQOvcsGjR4/GGmSt63LWht2wEfqrd4W6TFjIwGtQWQzV8LuocVF20d9i78dMsQYK+/5eLtOrCG
	x4lsOqvnA8YUJqJcRRznN9QFdiY5Fi/8NHADuStedNm9FEwQ4Lnqs4PeTkjHbB8vLDJD03mD6aMUX
	NPpbk+uutdmTFJjM9qTYQvXek5cC6BrQds57IENGKbK/8nJ2eBYwpw+sqIDJQSlzmbVkJM0cUPODu
	g30wD63LyQFQo9prnYpqln/EgW425WjsuW53gb7Vy3B2hnn1k+nM4UJ4wUE0/S6GReAZVQU4tcw7s
	SBHC2RqrSuMbLmIwusQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjZH-0007nm-V6; Mon, 20 May 2019 14:47:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjZA-0007lt-TD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:47:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3woGulBQUBzAi0qKHgtmzZeUDpblfNtsGA0Nmvfd/ro=; b=rQAUJcrP3mTj1mlVWAHpWr1ewF
 qlcUR+OQoK2O8AvKMZYbQmMrpdeDDYevYT0Z5IQaQuml2Y07rPt+KC3XABp08FyuZbNcHyp9NBBQi
 MJsTPwbnSz+uFiHfFm68BS6XO29CZWMe8W4EnMwN2e4HAIa+YnY+2NdSNEKWLQtXzCPyHBUfMNZmp
 P/78d+vRUPu00tQdH59Nmmsqno6X7fFFAinUymxW/bBgqpPg4j1kB3RqRzOUzgUMPNGz8pLdRZYv8
 Bvn/mauQonjnT/5R3HGCyGPfGGESVttaCV2c8pyblGAm2gdFHLb7LgVYAff8cdrP11dPE1lQsb6nT
 6TOxysgw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:43220 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjZ0-0003OH-GR; Mon, 20 May 2019 15:46:54 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hSjYz-0000Xh-VV; Mon, 20 May 2019 15:46:54 +0100
In-Reply-To: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
References: <20190520144615.gzrztyhoncyfc5xr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/8] ARM: riscpc: replace gettimeoffset() with clocksource
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hSjYz-0000Xh-VV@rmk-PC.armlinux.org.uk>
Date: Mon, 20 May 2019 15:46:53 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074704_937527_0BD0FCC4 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the old gettimeoffset() interface (which became buggy in
several ways) with a clocksource that atomically reads the count
and status from the timer, and corrects the count as appropriate
ensuring proper resolution of time without time warping backwards.

We keep the original periodic timer non-clock event implementation
to provide the kernel with a regular source of interrupts, which
are required to keep the clocksource properly updated.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/Kconfig         |  1 -
 arch/arm/mach-rpc/time.c | 38 +++++++++++++++++++++++++-------------
 2 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9aed25a6019b..08a4915a69d2 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -528,7 +528,6 @@ config ARCH_RPC
 	select ARCH_ACORN
 	select ARCH_MAY_HAVE_PC_FDC
 	select ARCH_SPARSEMEM_ENABLE
-	select ARCH_USES_GETTIMEOFFSET
 	select CPU_SA110
 	select FIQ
 	select HAVE_IDE
diff --git a/arch/arm/mach-rpc/time.c b/arch/arm/mach-rpc/time.c
index 2689771c1d38..1c84efc9db1f 100644
--- a/arch/arm/mach-rpc/time.c
+++ b/arch/arm/mach-rpc/time.c
@@ -13,7 +13,7 @@
  *   04-Dec-1997	RMK	Updated for new arch/arm/time.c
  *   13=Jun-2004	DS	Moved to arch/arm/common b/c shared w/CLPS7500
  */
-#include <linux/timex.h>
+#include <linux/clocksource.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
@@ -27,11 +27,15 @@
 #define RPC_CLOCK_FREQ 2000000
 #define RPC_LATCH DIV_ROUND_CLOSEST(RPC_CLOCK_FREQ, HZ)
 
-static u32 ioc_timer_gettimeoffset(void)
+static u32 ioc_time;
+
+static u64 ioc_timer_read(struct clocksource *cs)
 {
 	unsigned int count1, count2, status;
-	long offset;
+	unsigned long flags;
+	u32 ticks;
 
+	local_irq_save(flags);
 	ioc_writeb (0, IOC_T0LATCH);
 	barrier ();
 	count1 = ioc_readb(IOC_T0CNTL) | (ioc_readb(IOC_T0CNTH) << 8);
@@ -41,27 +45,34 @@ static u32 ioc_timer_gettimeoffset(void)
 	ioc_writeb (0, IOC_T0LATCH);
 	barrier ();
 	count2 = ioc_readb(IOC_T0CNTL) | (ioc_readb(IOC_T0CNTH) << 8);
+	ticks = ioc_time + RPC_LATCH - count2;
+	local_irq_restore(flags);
 
-	offset = count2;
 	if (count2 < count1) {
 		/*
-		 * We have not had an interrupt between reading count1
-		 * and count2.
+		 * The timer has not reloaded between reading count1 and
+		 * count2, check whether an interrupt was actually pending.
 		 */
 		if (status & (1 << 5))
-			offset -= RPC_LATCH;
+			ticks += RPC_LATCH;
 	} else if (count2 > count1) {
 		/*
-		 * We have just had another interrupt between reading
-		 * count1 and count2.
+		 * The timer has reloaded, so count2 indicates the new
+		 * count since the wrap.  The interrupt would not have
+		 * been processed, so add the missed ticks.
 		 */
-		offset -= RPC_LATCH;
+		ticks += RPC_LATCH;
 	}
 
-	offset = (RPC_LATCH - offset) * (tick_nsec / 1000);
-	return DIV_ROUND_CLOSEST(offset, RPC_LATCH) * 1000;
+	return ticks;
 }
 
+static struct clocksource ioctime_clocksource = {
+	.read = ioc_timer_read,
+	.mask = CLOCKSOURCE_MASK(32),
+	.rating = 100,
+};
+
 void __init ioctime_init(void)
 {
 	ioc_writeb(RPC_LATCH & 255, IOC_T0LTCHL);
@@ -72,6 +83,7 @@ void __init ioctime_init(void)
 static irqreturn_t
 ioc_timer_interrupt(int irq, void *dev_id)
 {
+	ioc_time += RPC_LATCH;
 	timer_tick();
 	return IRQ_HANDLED;
 }
@@ -86,7 +98,7 @@ static struct irqaction ioc_timer_irq = {
  */
 void __init ioc_timer_init(void)
 {
-	arch_gettimeoffset = ioc_timer_gettimeoffset;
+	WARN_ON(clocksource_register_hz(&ioctime_clocksource, RPC_CLOCK_FREQ));
 	ioctime_init();
 	setup_irq(IRQ_TIMER0, &ioc_timer_irq);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
