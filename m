Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741E61D142A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nUG4FlU8z3YA3AYg1DXFT2EAW+rNNOiF3XrkBM1AlE=; b=C9SFFb+I3Ty2TF
	lLoWBWgWxnlce46LA5K2/mw5YsR3JYBjTU8XEjDkUvZV7uWPe306LvsZyvwyBxKjlyEMcCftMnLtB
	9WOMgviX7ol6EpVaRxLmbNMpj9Usc3uEqpwdf1PENeICbWuUgng43WJ328qM8w2XaPCmqTDbSYu4h
	Tqh9/ZZFy3bcA3FHIQ3XM8d32rV58Fyq+P/18zdOar2HIqIB7LdZ7R/qcIavz/GpBL1Fu5L8oviry
	OJMXXYTLxXx+P9qCdA2K6V5YS7ENNrQxGOrl9fL4vdr5a/EXVcEDnN31ke4eZlDnO3ZUgrHb35ui0
	BrolROiZok1XK+jDDyQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr9p-0008Rw-Rh; Wed, 13 May 2020 13:10:45 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr8B-0004cd-TZ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:09:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589375343; x=1620911343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EVZAXO1o0L53j6vhD0cm7z0bP8p6Ac07Mbyf5NtalMA=;
 b=RzwrM/w0dGjyXEj3c8RCQdc07Xy9wwwVj8w86OWAT5fMqbHDFpTYSdJs
 XiVEQhOoL6NY2q9Lp1SlidyIbQggM97lXO809bhbk301YzNNJsXPsub/O
 QbewvtGKLtaSddlKCbiP2HU0fr4kcGt9DOZ11sZ3YiH7wZyTwQcPaHk4X
 VssFMqH420h/TPqjXJkF88B7AWKY05B+JXc5F24kjRFQxyk2hIDRVUEDA
 TIacWGrbdoWInkWA3+AAgdXQUwxoUHmHYxmOFxd1B2eF204GI4SKI5K4A
 46lyThBIH0/bhVnMtI75IPtmNbOsOKOsqlKjev4k8rFWjWi9axL/rTcYp g==;
IronPort-SDR: Iaa2ZR9ylS9Tayj7EHHnyzAzRlCNlrf3R0bjVebGT6XxXfVlplPSISWXgmaRT4sdb0M2TJ7vUv
 ID/3pk3BOERFDrvkoykbBd092szXPaqF5KFfTewm2dNz/XQsUB/nw2Y2vuAwdTG7X/49K5ccg7
 xfcsJeFp0/7BOglHqe+jJ1d+3AGSjeWxTz9h4tlANigLLFQafCknXMz6VK1qT7aYPCLLWwsaqc
 UYWfU5kine1EOq5MJpj83RDpP8ttjyIpRBK2D5zIqXSO4hHw1riKiRra9jbDw9qINq4LYBHPUg
 Qc4=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76497710"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:08:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:09:02 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:08:57 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Sebastian Reichel <sre@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 2/5] power: reset: ocelot: Add support for Sparx5
Date: Wed, 13 May 2020 15:08:39 +0200
Message-ID: <20200513130842.24847-3-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513130842.24847-1-lars.povlsen@microchip.com>
References: <20200513130842.24847-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060904_028052_F49ADECF 
X-CRM114-Status: GOOD (  14.59  )
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

This adds reset support for Sparx5 in the ocelot-reset driver.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/power/reset/Kconfig        |  3 +-
 drivers/power/reset/ocelot-reset.c | 55 +++++++++++++++++++++++-------
 2 files changed, 44 insertions(+), 14 deletions(-)

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 8903803020805..9ecafbf9e64a6 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -118,10 +118,9 @@ config POWER_RESET_QCOM_PON
 
 config POWER_RESET_OCELOT_RESET
 	bool "Microsemi Ocelot reset driver"
-	depends on MSCC_OCELOT || COMPILE_TEST
 	select MFD_SYSCON
 	help
-	  This driver supports restart for Microsemi Ocelot SoC.
+	  This driver supports restart for Microsemi Ocelot SoC and similar.
 
 config POWER_RESET_PIIX4_POWEROFF
 	tristate "Intel PIIX4 power-off driver"
diff --git a/drivers/power/reset/ocelot-reset.c b/drivers/power/reset/ocelot-reset.c
index 419952c61fd01..f74e1dbb4ba36 100644
--- a/drivers/power/reset/ocelot-reset.c
+++ b/drivers/power/reset/ocelot-reset.c
@@ -15,15 +15,20 @@
 #include <linux/reboot.h>
 #include <linux/regmap.h>
 
+struct reset_props {
+	const char *syscon;
+	u32 protect_reg;
+	u32 vcore_protect;
+	u32 if_si_owner_bit;
+};
+
 struct ocelot_reset_context {
 	void __iomem *base;
 	struct regmap *cpu_ctrl;
+	const struct reset_props *props;
 	struct notifier_block restart_handler;
 };
 
-#define ICPU_CFG_CPU_SYSTEM_CTRL_RESET 0x20
-#define CORE_RST_PROTECT BIT(2)
-
 #define SOFT_CHIP_RST BIT(0)
 
 #define ICPU_CFG_CPU_SYSTEM_CTRL_GENERAL_CTRL	0x24
@@ -31,7 +36,6 @@ struct ocelot_reset_context {
 #define IF_SI_OWNER_SISL			0
 #define IF_SI_OWNER_SIBM			1
 #define IF_SI_OWNER_SIMC			2
-#define IF_SI_OWNER_OFFSET			4
 
 static int ocelot_restart_handle(struct notifier_block *this,
 				 unsigned long mode, void *cmd)
@@ -39,15 +43,18 @@ static int ocelot_restart_handle(struct notifier_block *this,
 	struct ocelot_reset_context *ctx = container_of(this, struct
 							ocelot_reset_context,
 							restart_handler);
+	u32 if_si_owner_bit = ctx->props->if_si_owner_bit;
 
 	/* Make sure the core is not protected from reset */
-	regmap_update_bits(ctx->cpu_ctrl, ICPU_CFG_CPU_SYSTEM_CTRL_RESET,
-			   CORE_RST_PROTECT, 0);
+	regmap_update_bits(ctx->cpu_ctrl, ctx->props->protect_reg,
+			   ctx->props->vcore_protect, 0);
 
 	/* Make the SI back to boot mode */
 	regmap_update_bits(ctx->cpu_ctrl, ICPU_CFG_CPU_SYSTEM_CTRL_GENERAL_CTRL,
-			   IF_SI_OWNER_MASK << IF_SI_OWNER_OFFSET,
-			   IF_SI_OWNER_SIBM << IF_SI_OWNER_OFFSET);
+			   IF_SI_OWNER_MASK << if_si_owner_bit,
+			   IF_SI_OWNER_SIBM << if_si_owner_bit);
+
+	pr_emerg("Resetting SoC\n");
 
 	writel(SOFT_CHIP_RST, ctx->base);
 
@@ -72,9 +79,13 @@ static int ocelot_reset_probe(struct platform_device *pdev)
 	if (IS_ERR(ctx->base))
 		return PTR_ERR(ctx->base);
 
-	ctx->cpu_ctrl = syscon_regmap_lookup_by_compatible("mscc,ocelot-cpu-syscon");
-	if (IS_ERR(ctx->cpu_ctrl))
+	ctx->props = device_get_match_data(dev);
+
+	ctx->cpu_ctrl = syscon_regmap_lookup_by_compatible(ctx->props->syscon);
+	if (IS_ERR(ctx->cpu_ctrl)) {
+		dev_err(dev, "No syscon map: %s\n", ctx->props->syscon);
 		return PTR_ERR(ctx->cpu_ctrl);
+	}
 
 	ctx->restart_handler.notifier_call = ocelot_restart_handle;
 	ctx->restart_handler.priority = 192;
@@ -85,9 +96,29 @@ static int ocelot_reset_probe(struct platform_device *pdev)
 	return err;
 }
 
+static const struct reset_props reset_props_ocelot = {
+	.syscon		 = "mscc,ocelot-cpu-syscon",
+	.protect_reg     = 0x20,
+	.vcore_protect   = BIT(2),
+	.if_si_owner_bit = 4,
+};
+
+static const struct reset_props reset_props_sparx5 = {
+	.syscon		 = "microchip,sparx5-cpu-syscon",
+	.protect_reg     = 0x84,
+	.vcore_protect   = BIT(10),
+	.if_si_owner_bit = 6,
+};
+
 static const struct of_device_id ocelot_reset_of_match[] = {
-	{ .compatible = "mscc,ocelot-chip-reset" },
-	{}
+	{
+		.compatible = "mscc,ocelot-chip-reset",
+		.data = &reset_props_ocelot
+	}, {
+		.compatible = "microchip,sparx5-chip-reset",
+		.data = &reset_props_sparx5
+	},
+	{ /*sentinel*/ }
 };
 
 static struct platform_driver ocelot_reset_driver = {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
