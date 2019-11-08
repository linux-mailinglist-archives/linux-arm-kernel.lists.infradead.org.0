Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727FBF4EA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uM44xZ5xjZ25Ce08A2FfhEZRri3UJSwGCWX4NmqKzQ8=; b=RWzBe7zklWsDAkl4q6Zq8sNauL
	RZnA054TbYYwOkYkVm+XUe3Ogcen/GMYefVDsBEUmssyx/UavaT8N+EhYWcFLY7BD5bhJjyvNYu4O
	EulM4mYH4NYgJot6uBRo6/PFHb2APAMez09wVC+BLgwZLIjoJ0hVKeXG6Qj3fhxj7qGwYLzXux2Cb
	7nlLfDJnMF1XhNAv+sPxVNZbrQfH2eL/dd3nDQPpcW7TKpsXeyJZs4AjRRv177NgW8fC0SwZmwtUS
	jYRKg+xCvGZzWiirIr8zMajIS1t0330TSKWtJbM5nrdHkaKakWiZgDBrz43+7QdUuoo2s7Kng5s+8
	/EOn2ghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Xn-00046v-Iz; Fri, 08 Nov 2019 14:47:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5Ti-0007eC-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:43:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B9147A7;
 Fri,  8 Nov 2019 06:43:10 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D3A13F719;
 Fri,  8 Nov 2019 06:43:09 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 15/17] arm: gic: Provide FIQ handler
Date: Fri,  8 Nov 2019 14:42:38 +0000
Message-Id: <20191108144240.204202-16-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064310_787353_C9748785 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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

When configuring an interrupt as Group 0, we can ask the GIC to deliver
them as a FIQ. For this we need a separate exception handler.

Provide this to be used later.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arm/gic.c b/arm/gic.c
index c68b5b5..6756850 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -178,6 +178,30 @@ static void irq_handler(struct pt_regs *regs __unused)
 	smp_wmb(); /* pairs with rmb in check_acked */
 }
 
+static inline void fiq_handler(struct pt_regs *regs __unused)
+{
+	u32 irqstat = gic_read_iar(0);
+	u32 irqnr = gic_iar_irqnr(irqstat);
+
+	if (irqnr == GICC_INT_SPURIOUS) {
+		++spurious[smp_processor_id()];
+		smp_wmb();
+		return;
+	}
+
+	gic_write_eoir(irqstat, 0);
+
+	smp_rmb(); /* pairs with wmb in stats_reset */
+	++acked[smp_processor_id()];
+	if (irqnr < GIC_NR_PRIVATE_IRQS) {
+		check_ipi_sender(irqstat);
+		check_irqnr(irqnr, IPI_IRQ);
+	} else {
+		check_irqnr(irqnr, SPI_IRQ);
+	}
+	smp_wmb(); /* pairs with rmb in check_acked */
+}
+
 static void gicv2_ipi_send_self(void)
 {
 	writel(2 << 24 | IPI_IRQ, gicv2_dist_base() + GICD_SGIR);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
