Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830671A3FA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 05:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gz7czqEOjJGMm5kVw8+PS/vH2DAWZn2/IARla6cyQg=; b=CfEWlOQtcg5HjY
	yZM6GV5yWrasa59A9GbtOHrbYFimwzbOBmHTTrxzEQ63Y3FyOrvL8bs2ok18TO9dxoQP/96SciyUG
	9hN45ZsJYhzIKqpqJZJp6y+XWxQqWkFMADdAR8y3aK9oChtyPDc05GhMnOiF7f7piE7C2ZcY79miU
	vZ4GDNEydC9bvMvPJby4LsAtIWXMSSfRP8KNSnBRJTw967QqXF2nmtBqpJhoS3b0DDmyQBisUSvQ0
	pMUgXcE0LpQYYc/5Qu9dKJvYEwoU0R0tW3aakoNDzYHSxiP7mGaNCQ7/fUm/yfwwasuDvj9k3vDdG
	LtE8Po6P9LI97VbKEYww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMklg-00073f-NO; Fri, 10 Apr 2020 03:55:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkgM-0007qb-KM
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 03:50:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 689402137B;
 Fri, 10 Apr 2020 03:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490618;
 bh=7RdBcKbcSA8txvE3ou1/hXYhwhq2DHXO8rive13W17M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ow2HXu/gfv440Yy/s0b/uopCglegvQEfX9hqciTIbKW0mCW+B2I4QImvgEIg2ez4B
 yzinylgt5DMsoJMOQeLeYePoX0Q+AE54mncWsyYobhitJ3PzA22iDIimWSA1b0E50w
 oqxYW+z1BQjCVs0n14fJAngbsJCwK1FYqkstk704=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 10/32] irqchip/versatile-fpga: Handle chained
 IRQs properly
Date: Thu,  9 Apr 2020 23:49:43 -0400
Message-Id: <20200410035005.9371-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410035005.9371-1-sashal@kernel.org>
References: <20200410035005.9371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_205018_718478_CFA9AE97 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Sungbo Eo <mans0n@gorani.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sungbo Eo <mans0n@gorani.run>

[ Upstream commit 486562da598c59e9f835b551d7cf19507de2d681 ]

Enclose the chained handler with chained_irq_{enter,exit}(), so that the
muxed interrupts get properly acked.

This patch also fixes a reboot bug on OX820 SoC, where the jiffies timer
interrupt is never acked. The kernel waits a clock tick forever in
calibrate_delay_converge(), which leads to a boot hang.

Fixes: c41b16f8c9d9 ("ARM: integrator/versatile: consolidate FPGA IRQ handling code")
Signed-off-by: Sungbo Eo <mans0n@gorani.run>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200319023448.1479701-1-mans0n@gorani.run
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/irqchip/irq-versatile-fpga.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-versatile-fpga.c b/drivers/irqchip/irq-versatile-fpga.c
index 928858dada756..70e2cfff8175f 100644
--- a/drivers/irqchip/irq-versatile-fpga.c
+++ b/drivers/irqchip/irq-versatile-fpga.c
@@ -6,6 +6,7 @@
 #include <linux/irq.h>
 #include <linux/io.h>
 #include <linux/irqchip.h>
+#include <linux/irqchip/chained_irq.h>
 #include <linux/irqchip/versatile-fpga.h>
 #include <linux/irqdomain.h>
 #include <linux/module.h>
@@ -68,12 +69,16 @@ static void fpga_irq_unmask(struct irq_data *d)
 
 static void fpga_irq_handle(struct irq_desc *desc)
 {
+	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct fpga_irq_data *f = irq_desc_get_handler_data(desc);
-	u32 status = readl(f->base + IRQ_STATUS);
+	u32 status;
+
+	chained_irq_enter(chip, desc);
 
+	status = readl(f->base + IRQ_STATUS);
 	if (status == 0) {
 		do_bad_IRQ(desc);
-		return;
+		goto out;
 	}
 
 	do {
@@ -82,6 +87,9 @@ static void fpga_irq_handle(struct irq_desc *desc)
 		status &= ~(1 << irq);
 		generic_handle_irq(irq_find_mapping(f->domain, irq));
 	} while (status);
+
+out:
+	chained_irq_exit(chip, desc);
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
