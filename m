Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB88187645
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bW0AYszz8Xhb5UO97cVLnk5kjNq/a+aDI6caRQ6Qr1U=; b=Vn0z/azIqho0ux
	4lSXTQPdF8wmbrDQNF+aDGUH0+BiROuCZnp3n2XoXu715xD1IW0X1BmveQmZHXE9CpnG9NWK6F5j0
	JDZYogJ/5H9Chbyi3ENbYyweLyyHgQrWe0UKSHY81aD3Kih2DbB8CYX0j0rK2WmieEmFROe1kCkpM
	07yXrFamAbREk+LatssSeIEWM+sDYVtijXvMapppnHKKRL5d7eaehtCJd9V247KJgdm3/aV14sP/W
	EDwfZqVu47CFkGkfm+d8uq79vw/JK/jlpgq8Oe8K7o17ZxMYInytHv9dcdNrX79YEQOP0aOSwwhp8
	DzShS63H2bNwuZXv3+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1IT-00057q-VD; Fri, 09 Aug 2019 09:34:54 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1Gn-0003ci-G0
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:33:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 1463AD63C5;
 Fri,  9 Aug 2019 11:33:07 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id INB1BAhD0YMU; Fri,  9 Aug 2019 11:32:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id A1066D63CE;
 Fri,  9 Aug 2019 11:32:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id t41b6dnic8-d; Fri,  9 Aug 2019 11:32:14 +0200 (CEST)
Received: from furthur.local (ip-37-188-137-236.eurotel.cz [37.188.137.236])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 8A6FBD63C2;
 Fri,  9 Aug 2019 11:32:12 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 05/19] irqchip/mmp: do not use of_address_to_resource() to get
 mux regs
Date: Fri,  9 Aug 2019 11:31:44 +0200
Message-Id: <20190809093158.7969-6-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809093158.7969-1-lkundrak@v3.sk>
References: <20190809093158.7969-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023309_951881_64572866 
X-CRM114-Status: GOOD (  12.60  )
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
 drivers/irqchip/irq-mmp.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/irqchip/irq-mmp.c b/drivers/irqchip/irq-mmp.c
index 14618dc0bd396..af9cba4a51c2e 100644
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
@@ -438,18 +438,20 @@ static int __init mmp2_mux_of_init(struct device_node *node,
 		pr_err("Not found mrvl,intc-nr-irqs property\n");
 		return -EINVAL;
 	}
-	ret = of_address_to_resource(node, 0, &res);
+
+	/*
+	 * For historical reasonsm, the "regs" property of the
+	 * mrvl,mmp2-mux-intc is not a regular * "regs" property containing
+	 * addresses on the parent bus, but offsets from the intc's base.
+	 * That is why we can't use of_address_to_resource() here.
+	 */
+	ret = of_property_read_u32_array(node, "reg", reg, ARRAY_SIZE(reg));
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
