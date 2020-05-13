Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052101D142D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYyDh9MYGjt0nmzGYC2S2yLJJSW68j9mIkK2Qh89OM0=; b=bU5wru69NaE2hJ
	PDCPw4YCQf8Ahf7BwJjV/1+XML0jEMrdMJBHNNxwOpufmr8QcWFMuZcr10qLHcenaWjO9DUhcE9W/
	QtvYajuH2VVLpmukNtW+RPiucDC4JrmSAHiCPOeDNg/RGg6iE5sqn4NipUG3eNhW8nOJ3wJgnwSrS
	IzTBWsBO6adcK4KodGhAjA16HqQpsEdtMYn2uvpDCRnEg3GZdJ8KFLW6BgWsxPgrUimMd/0sqiINH
	t4P2PBDr7zTpLKhs45waiVpDG77coD134cbVzL7mojXIrCg/5mU0RL+biAiDi70mTsWtLXUWEt8qP
	CURpoOOekl/UfeqFoheQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrAI-0000Uv-CB; Wed, 13 May 2020 13:11:14 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr8F-0004cd-2J
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:09:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589375346; x=1620911346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V1OANcDGi3Zb91vsck9iJpexMcTamnhCI2LiIcyTydQ=;
 b=c2EhIPZr/YfmMOQVG/+7EYwm02ivP1CkcsgkP3ZUKgUXuDZ/5C2atORb
 ZCUv1Yl0H9/J5YMjObOnIE46eOdHmSzpKNxVUArv8g/l+JSoyIl5geKdT
 OgHAccC9n5IMOTn47JKKqU+SNa5UwD04EwK9hSCc4AjGxdQC21qwT+NoV
 Mn73QCx1/wET/P+pRsVcdo+QOou1x6UvYXw5ThPsTbPz/rlN5dwVBdOq/
 +JZfpV/dGhSLTuwBfvUER5N8Ncgh2Gt6qTetTWuIx7yZ+COzGqvYKZ972
 OTmvs9XjDksNx6znxxW9Kr9xBQcYBgZKA3lZHod3WI3lrhJqyb1tmn3aW A==;
IronPort-SDR: +6yZhiMfqJQ38vJrskCsDMyrAr18DNmhZ3317VdPR7QUzEaMe4qimJp20CkWP8Bj9mzJCC42Q3
 CVr3uFHSqn/rfsSuhh/f7GADhQ7TNdN64qyaGiUp5diAs3V6ZmkLA3VGgxPMNRL57HPCxcPgHy
 AGXKL6ZD33hHcCI0zLk9MgkT9sM/sD7LJMTTa3sUNxa3PmGyn1X712gZao6FOAbRIwLTJhacxO
 d1fS7k0335S56Tan42EQEHuwZViwJJET6rY7jMwwSYWh/cMfPj1mLNUqIrmWPE9Xcktq/MWl9V
 jvs=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76497730"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:09:05 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:09:06 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:09:01 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Sebastian Reichel <sre@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 4/5] power: reset: ocelot: Add support for reset switch on
 load time
Date: Wed, 13 May 2020 15:08:41 +0200
Message-ID: <20200513130842.24847-5-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513130842.24847-1-lars.povlsen@microchip.com>
References: <20200513130842.24847-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060907_142631_2219A7EB 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add support for resetting the networking switch core at
reset driver load time. It is useful in order to bring the switch core
in a known state after a reboot or after a bootloader may have been
using the switch for network access.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/power/reset/ocelot-reset.c | 40 ++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/power/reset/ocelot-reset.c b/drivers/power/reset/ocelot-reset.c
index f74e1dbb4ba36..a203c42e99d42 100644
--- a/drivers/power/reset/ocelot-reset.c
+++ b/drivers/power/reset/ocelot-reset.c
@@ -29,6 +29,7 @@ struct ocelot_reset_context {
 	struct notifier_block restart_handler;
 };
 
+#define SOFT_SWC_RST  BIT(1)
 #define SOFT_CHIP_RST BIT(0)
 
 #define ICPU_CFG_CPU_SYSTEM_CTRL_GENERAL_CTRL	0x24
@@ -37,6 +38,32 @@ struct ocelot_reset_context {
 #define IF_SI_OWNER_SIBM			1
 #define IF_SI_OWNER_SIMC			2
 
+static int ocelot_switch_core_reset(const struct ocelot_reset_context *ctx)
+{
+
+	const char *driver = "ocelot-reset";
+	int timeout;
+
+	pr_notice("%s: Resetting Switch Core\n", driver);
+
+	/* Make sure the core is PROTECTED from reset */
+	regmap_update_bits(ctx->cpu_ctrl, ctx->props->protect_reg,
+			   ctx->props->vcore_protect,
+			   ctx->props->vcore_protect);
+
+	writel(SOFT_SWC_RST, ctx->base);
+	for (timeout = 0; timeout < 100; timeout++) {
+		if ((readl(ctx->base) & SOFT_SWC_RST) == 0) {
+			pr_debug("%s: Switch Core Reset complete.\n", driver);
+			return 0;
+		}
+		udelay(1);
+	}
+
+	pr_warn("%s: Switch Core Reset timeout!\n", driver);
+	return -ENXIO;
+}
+
 static int ocelot_restart_handle(struct notifier_block *this,
 				 unsigned long mode, void *cmd)
 {
@@ -66,7 +93,6 @@ static int ocelot_reset_probe(struct platform_device *pdev)
 {
 	struct ocelot_reset_context *ctx;
 	struct resource *res;
-
 	struct device *dev = &pdev->dev;
 	int err;
 
@@ -87,6 +113,11 @@ static int ocelot_reset_probe(struct platform_device *pdev)
 		return PTR_ERR(ctx->cpu_ctrl);
 	}
 
+	/* Optionally, call switch reset function */
+	if (of_property_read_bool(pdev->dev.of_node,
+				  "microchip,reset-switch-core"))
+		ocelot_switch_core_reset(ctx);
+
 	ctx->restart_handler.notifier_call = ocelot_restart_handle;
 	ctx->restart_handler.priority = 192;
 	err = register_restart_handler(&ctx->restart_handler);
@@ -128,4 +159,9 @@ static struct platform_driver ocelot_reset_driver = {
 		.of_match_table = ocelot_reset_of_match,
 	},
 };
-builtin_platform_driver(ocelot_reset_driver);
+
+static int __init reset_init(void)
+{
+	return platform_driver_register(&ocelot_reset_driver);
+}
+postcore_initcall(reset_init);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
