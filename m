Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92062F4E8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P2gjdZyUGAFoO0bc57gbU+JlYTaYC5bMm7VOj2ZJgCU=; b=BJGZA5U531PQYvpxtEwLqfILih
	WirS5F2ok+HezHS2DMWkOlU4TZQfNurCjbitioPNwvRsKYznmPBQHPMCAbWDTh2xTZdwwS5gQrzFj
	aIgsyoE0aRsxuR0wVl+Zwez5RcO9/BBW9l3FCfKm6LrG5KaJE7YbvSxUZYKZp66nErj4CudFtKHnS
	8pjA+u06zJVCGGR2MBWAnm++HDDiyt+1o8V54a+CApjd/AkT9Q+mIkfEKR83yuMe7YU4rAeZhd4bY
	9LRzFNKBkn4SFPWp1GvWq47tXW/wH/V7V3RSJI0AS5v64U9HV5zCr8VTCIupnwcV5qcMlfcHQKahj
	3+aoNWoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5U5-0007xV-E4; Fri, 08 Nov 2019 14:43:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5TT-0007br-Oc
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:42:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35203AB6;
 Fri,  8 Nov 2019 06:42:53 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 182873F719;
 Fri,  8 Nov 2019 06:42:51 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 02/17] arm: gic: Generalise function names
Date: Fri,  8 Nov 2019 14:42:25 +0000
Message-Id: <20191108144240.204202-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064255_857642_5D2CE811 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for adding functions to test SPI interrupts, generalise
some existing functions dealing with IPIs so far, since most of them
are actually generic for all kind of interrupts.
This also reformats the irq_handler() function, to later expand it
more easily.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 40 +++++++++++++++++++++-------------------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/arm/gic.c b/arm/gic.c
index 04b3337..a114009 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -135,28 +135,30 @@ static void check_ipi_sender(u32 irqstat)
 	}
 }
 
-static void check_irqnr(u32 irqnr)
+static void check_irqnr(u32 irqnr, int expected)
 {
-	if (irqnr != IPI_IRQ)
+	if (irqnr != expected)
 		bad_irq[smp_processor_id()] = irqnr;
 }
 
-static void ipi_handler(struct pt_regs *regs __unused)
+static void irq_handler(struct pt_regs *regs __unused)
 {
 	u32 irqstat = gic_read_iar();
 	u32 irqnr = gic_iar_irqnr(irqstat);
 
-	if (irqnr != GICC_INT_SPURIOUS) {
-		gic_write_eoir(irqstat);
-		smp_rmb(); /* pairs with wmb in stats_reset */
-		++acked[smp_processor_id()];
-		check_ipi_sender(irqstat);
-		check_irqnr(irqnr);
-		smp_wmb(); /* pairs with rmb in check_acked */
-	} else {
+	if (irqnr == GICC_INT_SPURIOUS) {
 		++spurious[smp_processor_id()];
 		smp_wmb();
+		return;
 	}
+
+	gic_write_eoir(irqstat);
+
+	smp_rmb(); /* pairs with wmb in stats_reset */
+	++acked[smp_processor_id()];
+	check_ipi_sender(irqstat);
+	check_irqnr(irqnr, IPI_IRQ);
+	smp_wmb(); /* pairs with rmb in check_acked */
 }
 
 static void gicv2_ipi_send_self(void)
@@ -216,20 +218,20 @@ static void ipi_test_smp(void)
 	report_prefix_pop();
 }
 
-static void ipi_enable(void)
+static void irqs_enable(void)
 {
 	gic_enable_defaults();
 #ifdef __arm__
-	install_exception_handler(EXCPTN_IRQ, ipi_handler);
+	install_exception_handler(EXCPTN_IRQ, irq_handler);
 #else
-	install_irq_handler(EL1H_IRQ, ipi_handler);
+	install_irq_handler(EL1H_IRQ, irq_handler);
 #endif
 	local_irq_enable();
 }
 
 static void ipi_send(void)
 {
-	ipi_enable();
+	irqs_enable();
 	wait_on_ready();
 	ipi_test_self();
 	ipi_test_smp();
@@ -237,9 +239,9 @@ static void ipi_send(void)
 	exit(report_summary());
 }
 
-static void ipi_recv(void)
+static void irq_recv(void)
 {
-	ipi_enable();
+	irqs_enable();
 	cpumask_set_cpu(smp_processor_id(), &ready);
 	while (1)
 		wfi();
@@ -250,7 +252,7 @@ static void ipi_test(void *data __unused)
 	if (smp_processor_id() == IPI_SENDER)
 		ipi_send();
 	else
-		ipi_recv();
+		irq_recv();
 }
 
 static struct gic gicv2 = {
@@ -285,7 +287,7 @@ static void ipi_clear_active_handler(struct pt_regs *regs __unused)
 
 		smp_rmb(); /* pairs with wmb in stats_reset */
 		++acked[smp_processor_id()];
-		check_irqnr(irqnr);
+		check_irqnr(irqnr, IPI_IRQ);
 		smp_wmb(); /* pairs with rmb in check_acked */
 	} else {
 		++spurious[smp_processor_id()];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
