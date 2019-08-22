Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AE598F79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DOstMHJs4o2R4uIsmugP/xL5iGpWDymKrJXOkSRkKw=; b=cHiy6zgPqBe1ge
	bD032fXk34Z8/PzhaYUhVSgfQ4H2UQhYws5ZUEWotcjI1x9IDuvHUAK0GNmZUrmG6XmrJAKZOqANY
	2tZ5HTDeBywG/6K2oJqDQwbXmlwLnV1AYvxVazuxBYV48Wl1PkkGCjx0b7ZGZ8EOY1F+NFD4Uaz6R
	TeaN1zuO0h+NqZ6jtiC86+ymihT+xgk3NXeGfFGUQ3x45qnxIY4p1zpC0FhPiUcDoNFL1fd/qW5QM
	PK48dhOvq0deuw2bK1yXl/kFkJte2mF4y1cKQk9UbzgZnlntg09INJbugNeLOn6VDS1FOU4yKAKlA
	AsuN03DKaVZDvrgonGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jWf-00021U-G0; Thu, 22 Aug 2019 09:37:01 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jTr-0006s8-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:34:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 25C83D7566;
 Thu, 22 Aug 2019 11:34:05 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 6-wbMKNKNzso; Thu, 22 Aug 2019 11:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id AC4ABD7563;
 Thu, 22 Aug 2019 11:33:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nx1hdKMA8KVp; Thu, 22 Aug 2019 11:27:28 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 331B1D755C;
 Thu, 22 Aug 2019 11:26:48 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 06/20] irqchip/mmp: do not use of_address_to_resource() to
 get mux regs
Date: Thu, 22 Aug 2019 11:26:29 +0200
Message-Id: <20190822092643.593488-7-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023407_586540_69639076 
X-CRM114-Status: GOOD (  14.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Pavel Machek <pavel@ucw.cz>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "regs" property of the "mrvl,mmp2-mux-intc" devices are silly. They
are offsets from intc's base, not addresses on the parent bus. At this
point it probably can't be fixed.

On an OLPC XO-1.75 machine, the muxes are children of the intc, not the
axi bus, and thus of_address_to_resource() won't work. We should treat
the values as mere integers as opposed to bus addresses.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Acked-by: Pavel Machek <pavel@ucw.cz>

---
Changes since v4 of "MMP platform fixes" set:
- Add a comment, as suggested by Pavel

Changes since v1:
- Fix up typoes in the comment
- Do not allow the regs property be larger than the bindings document.

 drivers/irqchip/irq-mmp.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
index 14618dc0bd396..e41e47ab71d3b 100644
--- a/drivers/irqchip/irq-mmp.c
+++ b/drivers/irqchip/irq-mmp.c
@@ -424,9 +424,9 @@ IRQCHIP_DECLARE(mmp2_intc, "mrvl,mmp2-intc", mmp2_of_init);
 static int __init mmp2_mux_of_init(struct device_node *node,
 				   struct device_node *parent)
 {
-	struct resource res;
 	int i, ret, irq, j = 0;
 	u32 nr_irqs, mfp_irq;
+	u32 reg[4];
 
 	if (!parent)
 		return -ENODEV;
@@ -438,18 +438,22 @@ static int __init mmp2_mux_of_init(struct device_node *node,
 		pr_err("Not found mrvl,intc-nr-irqs property\n");
 		return -EINVAL;
 	}
-	ret = of_address_to_resource(node, 0, &res);
+
+	/*
+	 * For historical reasons, the "regs" property of the
+	 * mrvl,mmp2-mux-intc is not a regular "regs" property containing
+	 * addresses on the parent bus, but offsets from the intc's base.
+	 * That is why we can't use of_address_to_resource() here.
+	 */
+	ret = of_property_read_variable_u32_array(node, "reg", reg,
+						  ARRAY_SIZE(reg),
+						  ARRAY_SIZE(reg));
 	if (ret < 0) {
 		pr_err("Not found reg property\n");
 		return -EINVAL;
 	}
-	icu_data[i].reg_status = mmp_icu_base + res.start;
-	ret = of_address_to_resource(node, 1, &res);
-	if (ret < 0) {
-		pr_err("Not found reg property\n");
-		return -EINVAL;
-	}
-	icu_data[i].reg_mask = mmp_icu_base + res.start;
+	icu_data[i].reg_status = mmp_icu_base + reg[0];
+	icu_data[i].reg_mask = mmp_icu_base + reg[2];
 	icu_data[i].cascade_irq = irq_of_parse_and_map(node, 0);
 	if (!icu_data[i].cascade_irq)
 		return -EINVAL;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
