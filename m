Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91FEAD786
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKjzbykzJcYXbctqGR8utMMEHKPhb/MxxdWE/QQCnHs=; b=O9CGpPG2v0T3iU
	Yjv6ixFpyzVIWHAW8eJWrrPpGMKMhWgBsGvYjB35hkFFkHqoqToc7FLlm8ItQS3SzymwBSpMkuDhn
	mvND1YayGvjQuu5ivzR9ggCibF9KEcqzelguhBdRFctQI5dP6TVkMum6Oc2gzEfqh2yz+0Jj64n7f
	xUc5PMhQK3fE+Yg7KtysPj/fVJAyR74rLruvCjywL3rtz34YZyuOXI0RU2mL4Cc54itQcwyRjEs54
	jclPCHAwsxxiUecMnzzM8YOso/jp3ZJcdlf4n6wMRT8e7v+u0kFyM3BCvqj5YQARXfbE69c7bUC0O
	mPfl6s7GXYgRcoPPlEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7HQ3-00041U-Hp; Mon, 09 Sep 2019 11:01:15 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7HPw-00040d-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:01:10 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 9xll3BMS+TMUyqo+IYQ9PebZVty6ukX2OAoxO7O6xicbl+ZItOjg9+xK32hgPRww+4CeHuqp6M
 dboQhy1wz01CBmDyKuuDZ6aJvUJ0KMl8iY6XRuVGFvkzWScW/0J+r4NOlInlW82eW+whZbfI3e
 HUreJqRNcu48WCwHAdSWgdYjBJ9qcsfeDxtxscz5sJLCveh5gx5WIf2DnP/l5bJGb919gWYnEe
 tVGzwUJRtt19ya4oXbrMoglSXd8rIPXjV5xn6BwZRbI8CB1/EgzDOHXanoUdhJj7sp1rRTYFKr
 0Ww=
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="49728710"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Sep 2019 04:00:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Sep 2019 04:00:42 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 9 Sep 2019 04:00:38 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <tglx@linutronix.de>, <jason@lakedaemon.net>, <maz@kernel.org>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH] irqchip/atmel-aic5: add support for sam9x60 irqchip
Date: Mon, 9 Sep 2019 14:00:35 +0300
Message-ID: <1568026835-6646-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_040109_010342_A9C309C3 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>

Add support for SAM9X60 irqchip.

Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
[claudiu.beznea@microchip.com: update aic5_irq_fixups[], update
 documentation]
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 .../devicetree/bindings/interrupt-controller/atmel,aic.txt     |  7 +++++--
 drivers/irqchip/irq-atmel-aic5.c                               | 10 ++++++++++
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt b/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt
index f4c5d34c4111..7079d44bf3ba 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt
@@ -1,8 +1,11 @@
 * Advanced Interrupt Controller (AIC)
 
 Required properties:
-- compatible: Should be "atmel,<chip>-aic"
-  <chip> can be "at91rm9200", "sama5d2", "sama5d3" or "sama5d4"
+- compatible: Should be:
+    - "atmel,<chip>-aic" where  <chip> can be "at91rm9200", "sama5d2",
+      "sama5d3" or "sama5d4"
+    - "microchip,<chip>-aic" where <chip> can be "sam9x60"
+
 - interrupt-controller: Identifies the node as an interrupt controller.
 - #interrupt-cells: The number of cells to define the interrupts. It should be 3.
   The first cell is the IRQ number (aka "Peripheral IDentifier" on datasheet).
diff --git a/drivers/irqchip/irq-atmel-aic5.c b/drivers/irqchip/irq-atmel-aic5.c
index 6acad2ea0fb3..29333497ba10 100644
--- a/drivers/irqchip/irq-atmel-aic5.c
+++ b/drivers/irqchip/irq-atmel-aic5.c
@@ -313,6 +313,7 @@ static void __init sama5d3_aic_irq_fixup(void)
 static const struct of_device_id aic5_irq_fixups[] __initconst = {
 	{ .compatible = "atmel,sama5d3", .data = sama5d3_aic_irq_fixup },
 	{ .compatible = "atmel,sama5d4", .data = sama5d3_aic_irq_fixup },
+	{ .compatible = "microchip,sam9x60", .data = sama5d3_aic_irq_fixup },
 	{ /* sentinel */ },
 };
 
@@ -390,3 +391,12 @@ static int __init sama5d4_aic5_of_init(struct device_node *node,
 	return aic5_of_init(node, parent, NR_SAMA5D4_IRQS);
 }
 IRQCHIP_DECLARE(sama5d4_aic5, "atmel,sama5d4-aic", sama5d4_aic5_of_init);
+
+#define NR_SAM9X60_IRQS		50
+
+static int __init sam9x60_aic5_of_init(struct device_node *node,
+				       struct device_node *parent)
+{
+	return aic5_of_init(node, parent, NR_SAM9X60_IRQS);
+}
+IRQCHIP_DECLARE(sam9x60_aic5, "microchip,sam9x60-aic", sam9x60_aic5_of_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
