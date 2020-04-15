Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2856C1A9970
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HuVQ/5+lwy7YgL5RlC7xJrxDpbAftIdpy0bMg4E6zY=; b=WagQK3kXcUfImK
	UOJbKOmjz0KraaIrFXbXix8CRMA6Kgra95bqRiRymoRwko+pAMwhqprq8OCnn76pVpH8323Y2KiMi
	QW2VVSDGEqYuE1SZKuuRTX1eVYw0nmm0DSXSzykqYa03npW80/VCcbM2hc5n3MMJwMBKVCK/qr2N8
	NhU/3tVOX4luCszb+J1tu0+rYNt7KDcz565AmS3GcrlCdLN5+V1FqJVVk5fqel0NJaLjVUEpYAV6b
	cVD8dIcUXiQIEDc3vHMXZsbYML/XM0gcC584uwTgn5wReN/7CSOH4lt0/ZE4aaDQleO8u8bb7wrGS
	o2sn1zfBcWnzOli/yh7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOehP-0002Vh-Ue; Wed, 15 Apr 2020 09:51:15 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOefD-0006UQ-Fp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:49:01 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1B46C20008;
 Wed, 15 Apr 2020 09:48:57 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 9/9] clocksource/drivers/timer-atmel-tcb: add sama5d2
 support
Date: Wed, 15 Apr 2020 11:48:26 +0200
Message-Id: <20200415094826.132562-10-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
References: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_024859_682406_F644F605 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The first divisor for the sama5d2 is actually the gclk selector. Because
the currently remaining divisors are fitting the use case, currently ensure
it is skipped.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clocksource/timer-atmel-tcb.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-atmel-tcb.c b/drivers/clocksource/timer-atmel-tcb.c
index ccb77b9cb489..e373b02d509a 100644
--- a/drivers/clocksource/timer-atmel-tcb.c
+++ b/drivers/clocksource/timer-atmel-tcb.c
@@ -359,9 +359,15 @@ static struct atmel_tcb_config tcb_sam9x5_config = {
 	.counter_width = 32,
 };
 
+static struct atmel_tcb_config tcb_sama5d2_config = {
+	.counter_width = 32,
+	.has_gclk = 1,
+};
+
 static const struct of_device_id atmel_tcb_of_match[] = {
 	{ .compatible = "atmel,at91rm9200-tcb", .data = &tcb_rm9200_config, },
 	{ .compatible = "atmel,at91sam9x5-tcb", .data = &tcb_sam9x5_config, },
+	{ .compatible = "atmel,sama5d2-tcb", .data = &tcb_sama5d2_config, },
 	{ /* sentinel */ }
 };
 
@@ -426,7 +432,10 @@ static int __init tcb_clksrc_init(struct device_node *node)
 
 	/* How fast will we be counting?  Pick something over 5 MHz.  */
 	rate = (u32) clk_get_rate(t0_clk);
-	for (i = 0; i < ARRAY_SIZE(atmel_tcb_divisors); i++) {
+	i = 0;
+	if (tc.tcb_config->has_gclk)
+		i = 1;
+	for (; i < ARRAY_SIZE(atmel_tcb_divisors); i++) {
 		unsigned divisor = atmel_tcb_divisors[i];
 		unsigned tmp;
 
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
