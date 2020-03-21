Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A4C18E19E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 14:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CPxo/MXL3Nlv00XjydAUPmH3kigE0JDK7j9lQDisY4E=; b=UG9gj0Lh1T4Q7p
	Gyz5jDGul+janYhn/ZnXdVxsmjR3HyWyp6+61DKHgrHK/HoUDEPiLKaF7T0K3F2I23NBp5HU2zFl3
	eTeRf58Uvp+Y9pWLD8Q2LpE9T9ak2C6PeBLot2S2WhUmN9IUBEGoFcV8uN3y0+rmOgXJ4kCJl+pl0
	WD5XsDDJTpOjhSe8Yb9v8AwYocRIkyEQHM/GsIBuSbwqT9J0Ijmr+TDF+VGlp2weqzA90YiiY+6wb
	lGReVXFyMamaMmlaC+3zU0TfW/6uOQlwfDA1Tm/x3eY93B9Kmi0J5up1zwn6PKj/sJobXClDtE+Z0
	pTvh+B0UWYNySISuYwWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFeMv-000571-3X; Sat, 21 Mar 2020 13:40:53 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFeMl-00055s-NR
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 13:40:46 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 48l1xJ4ySSzKpBh;
 Sat, 21 Mar 2020 14:40:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1584798035;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6gUTnyBd+wF4DcNE7R2+NzsCS2Cnj7qei4GbwrUoBsU=;
 b=Wp7XIFjG6vsHM2RFsi/R75ByN0PxJkmTChTRZvcA+95nlBCKmnP4g7OSuMA+ZS2VpR+ISZ
 7Atuz113Kb5RaHrkzhR61DmpN+ggZqWjOdqQZdgV7ChSvSJCaao6aWwFLXWBSQLt5WL9yX
 gBV+5eHxP880JVPNiKZqrJ05hmDGThEySDr/3gRb9RQABUoqYt9FMZB5uneBp//M2o5SUg
 OGI+qnmtISB7gtviyrw37VajKO7QRZgjsf2e7TkOv0zsfphv4E/+4HGsW7rvenPcSqIbg8
 iEffaHuAVBQMe6o7j+iDeT5+PcvCKryZAAOEvSY1YxqFy9j+btbl7H1FzQjrNQ==
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id Gpg7pxJw-UWe; Sat, 21 Mar 2020 14:40:33 +0100 (CET)
From: Sungbo Eo <mans0n@gorani.run>
To: linux-oxnas@groups.io, Linus Walleij <linus.walleij@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] irqchip/versatile-fpga: Apply clear-mask earlier
Date: Sat, 21 Mar 2020 22:38:42 +0900
Message-Id: <20200321133842.2408823-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_064044_059746_58DD8503 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.252 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sungbo Eo <mans0n@gorani.run>, Daniel Golle <daniel@makrotopia.org>,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clear its own IRQs before the parent IRQ get enabled, so that the
remaining IRQs do not accidentally interrupt the parent IRQ controller.

This patch also fixes a reboot bug on OX820 SoC, where the remaining
rps-timer IRQ raises a GIC interrupt that is left pending. After that,
the rps-timer IRQ is cleared during driver initialization, and there's
no IRQ left in rps-irq when local_irq_enable() is called, which evokes
an error message "unexpected IRQ trap".

Fixes: bdd272cbb97a ("irqchip: versatile FPGA: support cascaded interrupts from DT")
Signed-off-by: Sungbo Eo <mans0n@gorani.run>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Daniel Golle <daniel@makrotopia.org>
---
 drivers/irqchip/irq-versatile-fpga.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-versatile-fpga.c b/drivers/irqchip/irq-versatile-fpga.c
index 70e2cfff8175..f1386733d3bc 100644
--- a/drivers/irqchip/irq-versatile-fpga.c
+++ b/drivers/irqchip/irq-versatile-fpga.c
@@ -212,6 +212,9 @@ int __init fpga_irq_of_init(struct device_node *node,
 	if (of_property_read_u32(node, "valid-mask", &valid_mask))
 		valid_mask = 0;
 
+	writel(clear_mask, base + IRQ_ENABLE_CLEAR);
+	writel(clear_mask, base + FIQ_ENABLE_CLEAR);
+
 	/* Some chips are cascaded from a parent IRQ */
 	parent_irq = irq_of_parse_and_map(node, 0);
 	if (!parent_irq) {
@@ -221,9 +224,6 @@ int __init fpga_irq_of_init(struct device_node *node,
 
 	fpga_irq_init(base, node->name, 0, parent_irq, valid_mask, node);
 
-	writel(clear_mask, base + IRQ_ENABLE_CLEAR);
-	writel(clear_mask, base + FIQ_ENABLE_CLEAR);
-
 	/*
 	 * On Versatile AB/PB, some secondary interrupts have a direct
 	 * pass-thru to the primary controller for IRQs 20 and 22-31 which need
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
