Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE601D136C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iI8AFAHcd/MXU5Tnkt7xAjk9jqQCWUQQaJ5emQuGM8=; b=jvhU6SpujQxzLM
	Xo4KTTFEbJjlrgDdagxzFD5cdD+6CNoprCfbBvmePr0SGCJWcb7zEP1gxGXqssUdOV58eAGZ+FibI
	g0nsnZ3uunwoP8m9nmFBba0+1QoXBSnJzAXokBio1GNsURBn75+zsnJVfAb2DMkr2d5HUyCJk82al
	s5cMeMvDT2PBW9LrLaMkqA7NrBXsTLHREQahEaglW/mRIP88llBWj+AG5gvYcRvG7sYmIi3N3XUmd
	MP5DJWFqd73dFTeJTjSRR4+Y8agvGwaXymEuKu7ex3YrWEjdnGShRzIBZdDWqgQikD78S/LlIap+t
	PvZ3CFsxenhozD4+OIiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqw3-0001Y9-Ec; Wed, 13 May 2020 12:56:31 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqvg-0001QK-J5
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374568; x=1620910568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tWUrw/osLjvb/c0rlAloWSn6upuy4DQgjffgP9JdqBU=;
 b=gjrNPak5xh0dzqyHE4CO8zYtHJuHCRxHve+svQD700dq2W6398EfT6MZ
 5X+3van8eabVEwD1w9SeAaq9/lSdf8qkuUa3u1R2J21T+0teIXEL8UE9y
 OxLXp98wd+oRTajDxqFwHrYAYs5GfPHEIL7wZ6GOX1K/9zTJePEdE6m2c
 pSlj5Pn/ODGmrz2FAz1Hc1kUa8YwbH3k1ljXQw8n0MKVDTHFWJl7lQlVq
 j1Q7HhhRBPXe44upTqb8c8BOB3DILY33A4Cfjg7id3p+w3+vS898eJyll
 svyZwxbwWz9CiLYpfFN8k5VwjPnUMLn49PIeenhZpqPjlY46JdA3rVYiX g==;
IronPort-SDR: 5GHqSiFtKgWIC8va82L+s6NuvHwV62gTUokLdXnoPAjLf5/HA5uwPqmcP00xXoVlF0HErxDLTG
 9aLm3xM6vdtFRug26VdhIpctNXmcVVZ/IfHQL43hxYe3FijQxx6p+g6diKrDY4WJgjxUgydAmQ
 m1Rkuu5XoerHhbojxsEY/QGTsPcpUhhDi77/5WeWsgE46h+bjosOvGqQ5RhOXeMnwdPTysupA4
 c0QvLKjHNmh1h0HP1r6VIPqUZxvZK64FulwW5Z3tR5rtef98cJW0byFBlYHWJehBKrOStYPJ0E
 scM=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79436238"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:56:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:56:08 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:02 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 01/14] pinctrl: ocelot: Should register GPIO's even if not irq
 controller
Date: Wed, 13 May 2020 14:55:19 +0200
Message-ID: <20200513125532.24585-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055608_652960_0BF563AA 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the situation where the GPIO controller is not used as an
interrupt controller as well.

Previously, the driver would silently fail to register even the
GPIO's. With this change, the driver will only register as an
interrupt controller if a parent interrupt is provided.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/pinctrl/pinctrl-ocelot.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-ocelot.c b/drivers/pinctrl/pinctrl-ocelot.c
index ed8eac6c14944..d4ac65b1efc0b 100644
--- a/drivers/pinctrl/pinctrl-ocelot.c
+++ b/drivers/pinctrl/pinctrl-ocelot.c
@@ -751,21 +751,21 @@ static int ocelot_gpiochip_register(struct platform_device *pdev,
 	gc->of_node = info->dev->of_node;
 	gc->label = "ocelot-gpio";
 
-	irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
-	if (irq <= 0)
-		return irq;
-
-	girq = &gc->irq;
-	girq->chip = &ocelot_irqchip;
-	girq->parent_handler = ocelot_irq_handler;
-	girq->num_parents = 1;
-	girq->parents = devm_kcalloc(&pdev->dev, 1, sizeof(*girq->parents),
-				     GFP_KERNEL);
-	if (!girq->parents)
-		return -ENOMEM;
-	girq->parents[0] = irq;
-	girq->default_type = IRQ_TYPE_NONE;
-	girq->handler = handle_edge_irq;
+	irq = irq_of_parse_and_map(gc->of_node, 0);
+	if (irq) {
+		girq = &gc->irq;
+		girq->chip = &ocelot_irqchip;
+		girq->parent_handler = ocelot_irq_handler;
+		girq->num_parents = 1;
+		girq->parents = devm_kcalloc(&pdev->dev, 1,
+					     sizeof(*girq->parents),
+					     GFP_KERNEL);
+		if (!girq->parents)
+			return -ENOMEM;
+		girq->parents[0] = irq;
+		girq->default_type = IRQ_TYPE_NONE;
+		girq->handler = handle_edge_irq;
+	}
 
 	ret = devm_gpiochip_add_data(&pdev->dev, gc, info);
 	if (ret)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
