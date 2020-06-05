Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E831F02FE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPdVWDEMGtiFRtCEMmjtR/AFpxklufj6jKDPA2CVfZ4=; b=WE0bR51ib14w8X
	PigwVYw/UglRzBFBxjUb67vBIPB/O+HnmD3CnGrM0nDjZM5eE8M90osy+dq1azN4wRXainnAxDmOr
	GOHr1Y2x8I52dEe+AiEN5PpE5xymKtzu+7cps0kF45NwqcUBhoYhmU/BVqnTEpKyrFvpZF5/RVg0P
	FtSOB7GGSBvPw0eBcohjtYZlaIV45trxd8WluA4/dxbKl47MC0bpkYsjzs0LX9SDDsnoYyRUUM5ZV
	65prnXTxtyRB0eekFz2Sm22AfqhycOWICwrjBm1y6ZpELeA8VbOq7xb235SuV2TmZXIP8BMEAjT66
	MOs3/r7sP4bnF4z15Yfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhL52-0006y5-Hb; Fri, 05 Jun 2020 22:44:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhL4N-0006VS-1L
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:44:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 44DFA2A51AB
Received: by jupiter.universe (Postfix, from userid 1000)
 id 308C2480104; Sat,  6 Jun 2020 00:44:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: [PATCHv2 4/6] ARM: pxa: Use GPIO descriptor for gpio-charger
Date: Sat,  6 Jun 2020 00:44:01 +0200
Message-Id: <20200605224403.181015-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200605224403.181015-1-sebastian.reichel@collabora.com>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_154411_207118_1C92F967 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide AC detect GPIO via gpiod table instead of
legacy platform data so that legacy GPIO support
can be removed from the driver.

Also remove useless IRQ resource, which is not
used by the driver.

Due to lack of hardware this has only been compile
tested.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm/mach-pxa/tosa.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-pxa/tosa.c b/arch/arm/mach-pxa/tosa.c
index 3d2c108e911e..e4da2b4c5055 100644
--- a/arch/arm/mach-pxa/tosa.c
+++ b/arch/arm/mach-pxa/tosa.c
@@ -369,6 +369,14 @@ static struct pxaficp_platform_data tosa_ficp_platform_data = {
 /*
  * Tosa AC IN
  */
+static struct gpiod_lookup_table tosa_charger_gpiod_table = {
+	.dev_id = "gpio-charger",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa", TOSA_GPIO_AC_IN, NULL, GPIO_ACTIVE_LOW),
+		{},
+	},
+};
+
 static char *tosa_ac_supplied_to[] = {
 	"main-battery",
 	"backup-battery",
@@ -378,29 +386,14 @@ static char *tosa_ac_supplied_to[] = {
 static struct gpio_charger_platform_data tosa_power_data = {
 	.name			= "charger",
 	.type			= POWER_SUPPLY_TYPE_MAINS,
-	.gpio			= TOSA_GPIO_AC_IN,
-	.gpio_active_low	= 1,
 	.supplied_to		= tosa_ac_supplied_to,
 	.num_supplicants	= ARRAY_SIZE(tosa_ac_supplied_to),
 };
 
-static struct resource tosa_power_resource[] = {
-	{
-		.name		= "ac",
-		.start		= PXA_GPIO_TO_IRQ(TOSA_GPIO_AC_IN),
-		.end		= PXA_GPIO_TO_IRQ(TOSA_GPIO_AC_IN),
-		.flags		= IORESOURCE_IRQ |
-				  IORESOURCE_IRQ_HIGHEDGE |
-				  IORESOURCE_IRQ_LOWEDGE,
-	},
-};
-
 static struct platform_device tosa_power_device = {
 	.name			= "gpio-charger",
 	.id			= -1,
 	.dev.platform_data	= &tosa_power_data,
-	.resource		= tosa_power_resource,
-	.num_resources		= ARRAY_SIZE(tosa_power_resource),
 };
 
 /*
@@ -950,6 +943,7 @@ static void __init tosa_init(void)
 
 	clk_add_alias("CLK_CK3P6MI", tc6393xb_device.name, "GPIO11_CLK", NULL);
 
+	gpiod_add_lookup_table(&tosa_charger_gpiod_table);
 	gpiod_add_lookup_table(&tosa_udc_gpiod_table);
 	platform_add_devices(devices, ARRAY_SIZE(devices));
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
