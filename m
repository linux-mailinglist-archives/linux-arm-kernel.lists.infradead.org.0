Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E26F4E94
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hx1mIc1BRuUcKA0SJUTqRoFvuWy+8iRptlT4mLp2bSg=; b=qhsAcGTF3q3PwyNiuqRtjnOKdy
	TbSRRR/wWUt5zUIKzME75oiqyJ6jTdA27wONi8ntmftN3mK0Am1LcTvliYbUhXGNSW/u5NSVNXdb0
	7X3tx7zFBTocP/JbPny0WB8qtQGWvXwlQ4uBNNxaSkZyhl8Wf8sQhg5RafGr7+j4uJEQnFlsqf2dR
	10ESizGvQma5VJxqRJdA6CHv2rwmxKCIm0azYKE11PNnNjgCEh2mtPXRuFZZ2LherrkMNxR6YdPCW
	KNYMtq2O6BCLlWh633G5uI2B9mXbWLPNiLs2SkgxSBIJCntoeaaljFywenM+5IohpVTa14656OKyA
	JLA6MVUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5V0-0000Q8-FI; Fri, 08 Nov 2019 14:44:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5TW-0007eC-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:42:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35BC7DA7;
 Fri,  8 Nov 2019 06:42:57 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 187D13F719;
 Fri,  8 Nov 2019 06:42:55 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 05/17] arm: gic: Prepare IRQ handler for
 handling SPIs
Date: Fri,  8 Nov 2019 14:42:28 +0000
Message-Id: <20191108144240.204202-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064258_187866_FC2A5056 
X-CRM114-Status: GOOD (  11.35  )
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

So far our IRQ handler routine checks that the received IRQ is actually
the one SGI (IPI) that we are using for our testing.

To make the IRQ testing routine more versatile, also allow the IRQ to be
one test SPI (shared interrupt).
We use the penultimate IRQ of the first SPI group for that purpose.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arm/gic.c b/arm/gic.c
index eca9188..c909668 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -23,6 +23,7 @@
 
 #define IPI_SENDER	1
 #define IPI_IRQ		1
+#define SPI_IRQ		(GIC_FIRST_SPI + 30)
 
 struct gic {
 	struct {
@@ -162,8 +163,12 @@ static void irq_handler(struct pt_regs *regs __unused)
 
 	smp_rmb(); /* pairs with wmb in stats_reset */
 	++acked[smp_processor_id()];
-	check_ipi_sender(irqstat);
-	check_irqnr(irqnr, IPI_IRQ);
+	if (irqnr < GIC_NR_PRIVATE_IRQS) {
+		check_ipi_sender(irqstat);
+		check_irqnr(irqnr, IPI_IRQ);
+	} else {
+		check_irqnr(irqnr, SPI_IRQ);
+	}
 	smp_wmb(); /* pairs with rmb in check_acked */
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
