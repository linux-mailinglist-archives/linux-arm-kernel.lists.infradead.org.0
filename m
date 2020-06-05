Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06DB1F0315
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdOrtrIBYbI58Dy8ANTNt6WJ/jUwVfxOgwPFg9fLdx8=; b=R5MVdNf77nzTFr
	lc0p0bD/NdnzsDJIp5SbqgaIlH6wimfr+L0Y1Io3EWQlUtXNdfMpTWVCtDRayVIaS6ptT9RLZe9tC
	DuDhRkslrJHEzLvSpbOUisXntzjVw5PYy2kQAWeNlmHXdXE08b4W2VHpar7JT5H443O5WotrD6Nqx
	uvUTA5zf4YXYcxrSSq3muQoAVhgv8tuAWKROAJhajREz0HF8ttZ/si4SIlUDuKPmkHzRjFC5Fg3Lh
	5wJFZHGvjqStXRU+V1lsP7/86NLvna89i0mrW47F7fbvdcPoBa5EIx9T1XY04j0qMJxIRzCIzTpsa
	XfUHJJMSgtKoIgQSOo6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhL5y-0001l3-DK; Fri, 05 Jun 2020 22:45:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhL4P-0006Wz-Lc
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:44:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 85C4A2A51C6
Received: by jupiter.universe (Postfix, from userid 1000)
 id 33916480105; Sat,  6 Jun 2020 00:44:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: [PATCHv2 5/6] ARM: sa1100: Use GPIO descriptor for gpio-charger
Date: Sat,  6 Jun 2020 00:44:02 +0200
Message-Id: <20200605224403.181015-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200605224403.181015-1-sebastian.reichel@collabora.com>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_154413_900663_0824829F 
X-CRM114-Status: GOOD (  13.10  )
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

Due to lack of hardware this has only been compile
tested.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm/mach-sa1100/collie.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-sa1100/collie.c b/arch/arm/mach-sa1100/collie.c
index 3cc2b71e16f0..3e871a3db3b0 100644
--- a/arch/arm/mach-sa1100/collie.c
+++ b/arch/arm/mach-sa1100/collie.c
@@ -30,6 +30,7 @@
 #include <linux/gpio_keys.h>
 #include <linux/input.h>
 #include <linux/gpio.h>
+#include <linux/gpio/machine.h>
 #include <linux/power/gpio-charger.h>
 
 #include <video/sa1100fb.h>
@@ -131,6 +132,14 @@ static struct irda_platform_data collie_ir_data = {
 /*
  * Collie AC IN
  */
+static struct gpiod_lookup_table collie_charger_gpiod_table = {
+	.dev_id = "gpio-charger",
+	.table = {
+		GPIO_LOOKUP("gpio", COLLIE_GPIO_AC_IN, NULL, GPIO_ACTIVE_HIGH),
+		{},
+	},
+};
+
 static char *collie_ac_supplied_to[] = {
 	"main-battery",
 	"backup-battery",
@@ -140,7 +149,6 @@ static char *collie_ac_supplied_to[] = {
 static struct gpio_charger_platform_data collie_power_data = {
 	.name			= "charger",
 	.type			= POWER_SUPPLY_TYPE_MAINS,
-	.gpio			= COLLIE_GPIO_AC_IN,
 	.supplied_to		= collie_ac_supplied_to,
 	.num_supplicants	= ARRAY_SIZE(collie_ac_supplied_to),
 };
@@ -386,6 +394,7 @@ static void __init collie_init(void)
 
 	platform_scoop_config = &collie_pcmcia_config;
 
+	gpiod_add_lookup_table(&collie_charger_gpiod_table);
 	ret = platform_add_devices(devices, ARRAY_SIZE(devices));
 	if (ret) {
 		printk(KERN_WARNING "collie: Unable to register LoCoMo device\n");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
