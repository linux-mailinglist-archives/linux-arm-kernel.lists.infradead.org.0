Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238C81A4879
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uhu30wgAiG9ob0uWISL0gqXVVW+QfJwkP6mQWwXguYk=; b=eNdMNGmcfkIf90
	JBGA/4cYPnmYtuIal72hmMsnSJ5Y97CMu1CciNBdTq0VpEGT7taFQlVusgsixtJFK3BHs6NaMUy0U
	n40fN8RwCI2U49xYpeZpN3NGoaG7KvRcqmb3+gMsjJDzd9NvIOPc41B/DQznoF1gdU5l00m/5Buc/
	DMo6afQLC+rGAC1jjSGWD7TVgOu0ymX5fA9YykRqx7T7uJFKt9J+nF5Eztzt0+g50/3PKWcfudayA
	L5AL1lvTmxnoAPNtMd/1GmtRkGFCygpTZpc+JxWKNZ+y+xATrEHPYrFh1QuokCTQYj17e2swi1jp4
	bl4LUnJguF82aktnxptg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwVx-0004Op-Um; Fri, 10 Apr 2020 16:28:21 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwVL-0003zo-4n
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586536062; x=1618072062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=aCd7V+af5Jadl43I0vNMGaR28drNOTy1KPZ4//kZ7rU=;
 b=2H4Yv3Ob/l+lSrPjZZlvdhnJFuyxrrDCgTVySzGghNBxKtbuwnpQ3rTv
 yZ1ASDTYsCafKXX1AAzB89FEmt9JB2xaNf3l8R6Y7aRSQj7NpAvujdJqz
 qM1ZbL7U+ov7fLHLTRwl0WSqboVpwm4UA107oRKLjRLrSYEQVddzC33sh
 y6/HyASMskPaWQ0D0G5DSPTs5tkb08u4knlDTpapI/Vi3+Xtb4YN54pbP
 JDWpccjPme1EQBY4XUoi+WLvWtHC2pPtlKT0RULumX/psDDSz7uqz0+Xk
 oOkHwAC7TW8cof/1W8KLwJw+OZL0+xBJ8+h95FZHYy18CMp1EPppzspFR Q==;
IronPort-SDR: OWfhyt5f4n/UHw37sg5p75/fNqYt7vB9oATzW44DQilGwdeK0cncJhoslVhwkvc1Y2QPGHgN4X
 W1jS+BQESrFJehC02PXuZh2JuNiTsKEwvdk+1GEMQ8jnofZD79HLD2kGgEeTh0z7E3Q++Fz7Oo
 72Zotpvbvo+LIJFZwRCC9+5d2q4oQ80jXcIvY3Qh2PUCAQioKVpwh57Q1RvtsDwC2b+tuwb11x
 c4Ma6vfYYd+1BAYZq7p6R1OHuxaMnWxU7xWT3Ds1mpKPFi0iel7BZfcUGW4nz5NdOarFlpaXkZ
 U8A=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; 
   d="scan'208";a="8791187"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:27:32 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:27:43 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:27:23 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH 1/5] irqchip/atmel-aic5: add support for sam9x60 rtt fixup
Date: Fri, 10 Apr 2020 19:26:55 +0300
Message-ID: <1586536019-12348-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_092743_234318_9C405913 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for SAM9X60 RTT fixup.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/irqchip/irq-atmel-aic-common.c | 36 +++++++++++++++++++++-------------
 drivers/irqchip/irq-atmel-aic5.c       |  8 +++++++-
 2 files changed, 29 insertions(+), 15 deletions(-)

diff --git a/drivers/irqchip/irq-atmel-aic-common.c b/drivers/irqchip/irq-atmel-aic-common.c
index 072bd227b6c6..e8681133162b 100644
--- a/drivers/irqchip/irq-atmel-aic-common.c
+++ b/drivers/irqchip/irq-atmel-aic-common.c
@@ -169,21 +169,29 @@ void __init aic_common_rtt_irq_fixup(void)
 {
 	struct device_node *np;
 	void __iomem *regs;
+	static const  struct of_device_id aic_rtt_fixup_ids[] = {
+		{ .compatible = "atmel,at91sam9260-rtt", },
+		{ .compatible = "microchip,sam9x60-rtt", },
+	};
+	int i;
 
-	/*
-	 * The at91sam9263 SoC has 2 instances of the RTT block, hence we
-	 * iterate over the DT to find each occurrence.
-	 */
-	for_each_compatible_node(np, NULL, "atmel,at91sam9260-rtt") {
-		regs = of_iomap(np, 0);
-		if (!regs)
-			continue;
-
-		writel(readl(regs + AT91_RTT_MR) &
-		       ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN),
-		       regs + AT91_RTT_MR);
-
-		iounmap(regs);
+	for (i = 0; i < ARRAY_SIZE(aic_rtt_fixup_ids); i++) {
+		/*
+		 * The at91sam9263 SoC has 2 instances of the RTT block, hence
+		 * we iterate over the DT to find each occurrence.
+		 */
+		for_each_compatible_node(np, NULL,
+					 aic_rtt_fixup_ids[i].compatible) {
+			regs = of_iomap(np, 0);
+			if (!regs)
+				continue;
+
+			writel(readl(regs + AT91_RTT_MR) &
+			       ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN),
+			       regs + AT91_RTT_MR);
+
+			iounmap(regs);
+		}
 	}
 }
 
diff --git a/drivers/irqchip/irq-atmel-aic5.c b/drivers/irqchip/irq-atmel-aic5.c
index 29333497ba10..74a66cd05553 100644
--- a/drivers/irqchip/irq-atmel-aic5.c
+++ b/drivers/irqchip/irq-atmel-aic5.c
@@ -310,10 +310,16 @@ static void __init sama5d3_aic_irq_fixup(void)
 	aic_common_rtc_irq_fixup();
 }
 
+static void __init sam9x60_aic_irq_fixup(void)
+{
+	aic_common_rtc_irq_fixup();
+	aic_common_rtt_irq_fixup();
+}
+
 static const struct of_device_id aic5_irq_fixups[] __initconst = {
 	{ .compatible = "atmel,sama5d3", .data = sama5d3_aic_irq_fixup },
 	{ .compatible = "atmel,sama5d4", .data = sama5d3_aic_irq_fixup },
-	{ .compatible = "microchip,sam9x60", .data = sama5d3_aic_irq_fixup },
+	{ .compatible = "microchip,sam9x60", .data = sam9x60_aic_irq_fixup },
 	{ /* sentinel */ },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
