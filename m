Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2831DC9C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZtIuUAZuPXHQDSzKX2/DrH3BoPG+PnJ/o+zQ+RWVP8=; b=BN3yVFQLRUCcV7
	figQAgj5A7xc/ikLLAIXL/1Nnorpfzc2n4QEF3Ut3VZzUkkVLxFlDjCXXA2yESEZtj4W/LYtODOBJ
	kkkJjRNrlfSpqdn0JWGfSZ2RWFZV0mjZY/MAl2CACSb6m5m+G9DP4ckJ/kT6pjt1mQPxsJwZQiK1I
	mRFtsvq66Q+8p/PZpkH82vTmmKGGpv03DdSFLHI7NaeUxnayZEi+mhe9HuXUWgohj/tPoRmjRbFpa
	o+j3qI0QPmpnapskUZwfyqEE4aTvWrhcGn5iF5zhX68SEkMcQy8jJ9bBQ61PkjJ8r+m8L97rq3MgR
	LorQdZyeFiPlhrAVEwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUXz-0001xa-VE; Fri, 18 Oct 2019 15:52:11 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOa-00082i-Qn; Fri, 18 Oct 2019 15:42:35 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N33AR-1htWxG247x-013P60; Fri, 18 Oct 2019 17:42:23 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 11/46] ARM: pxa: cmx270: use platform device for nand
Date: Fri, 18 Oct 2019 17:41:26 +0200
Message-Id: <20191018154201.1276638-11-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:AbuR27vzvwqTV64dzM3JZRxK8+Uh7OaKfpyn+sIT526ScJjmzmK
 JIJ7LTt+coUJgOsnQwlmCuxVOTtwZTHIFaEmlH7gkm/oxGXEWGKHiHSSjwxG05JZ9zmCL2f
 nyZ9BJcO99q/LJ6sLR9iDukJXjZznJhvvPK3Q+fjryuiX+0vktVBhsBkwCHvAEsxvI5YUOm
 Sz3dS9H0qPVlK5FG3CjoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l2PtyoVwGKc=:+0UEgTT2WSPL5NZ6La/kPz
 DHmB450niREfEPyFYAmQeTXByU0r3y2AE91V1gd21WSqwlhgnuOR1J0ph5In0M1ZrAvR+HN18
 UjDM5XG4d+1SoYl+AMm7duwpjCH9Qh9FigBmRXr2zzSlAWObwWI2GBiWhRf0svOpiLnFJipOm
 wnhQoVDcOnbCYFFNjxR+vlA8/Uqi8LDRXsFU62jSQNDck7MAbwe0UAkjeKzoQZ+uXHFn1fbw3
 ebVXOSacNAHlioTZgCEOOiALKXl2rkyuhf5aOl/R/iyEC1T+yM4YrfdrhR/JCxxUYWcUBJRG4
 PaoQpkISkiKX2VJDMLvXy84shXMYREoDOYZoVAgRnBd2rQv6kMQYhdxrOcwjGKP122/1ZDPSQ
 wxuP3rvoP7eu6MQD4YUOrUTteACUg6X4sbqgseaE2cP3+RYbVKjNScT/C99qd1bLJJS1it8Ea
 NUDBqPBIIgAP+nZurYQEhlLtWQJKDNFbTiZp6TuyBBSbI9MLb2M/ICKcxddt2AbTaJBvT4V8Z
 U5CECnKrQ2LotmlpizOTtf1xNJn7To3sYvMXDJ5GBhbOqjlfxLgg2nsMcRGtFtLl9Y2AZ2Mq8
 EBDiZ+14CfRIAEY/rmMpMJnr5fzDP4wyN/06P6mUUagvOIKsHdSLoRQuWCUPdXYrPlW5t0iBW
 AzXkE9Lee68P3GxF01Dy3/d7cNPHSADY1NRiEf1GyRKb5RI01eREEliDC5tzHHakmKlh+3jb1
 TeWeMUHBxXIsCgqgjqsTTH4hNC/Pm9kGFBdx2YngifU3fYK4xsL1x0luFLt591VEJarvlod1b
 Fm6SpJWE7rXJxCkPIrtdyMeudmH2lWJnKoN+1qkAdWGdzSOhAmJvFdFZPcMVagyGjFMK08tV6
 bwZe2eB6qhQFuQjQ1rTg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084229_414919_49AE54A5 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver traditionally hardcodes the MMIO register address and
the GPIO numbers from data defined in platform header files.

To make it indepdendent of that, use a memory resource for the
registers, and a gpio lookup table to replace the gpio numbers.

Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/cm-x270.c        | 25 +++++++++
 drivers/mtd/nand/raw/cmx270_nand.c | 88 +++++++++++-------------------
 2 files changed, 56 insertions(+), 57 deletions(-)

diff --git a/arch/arm/mach-pxa/cm-x270.c b/arch/arm/mach-pxa/cm-x270.c
index 9baad11314f2..6d80400d8887 100644
--- a/arch/arm/mach-pxa/cm-x270.c
+++ b/arch/arm/mach-pxa/cm-x270.c
@@ -40,6 +40,10 @@
 #define GPIO19_WLAN_STRAP	(19)
 #define GPIO102_WLAN_RST	(102)
 
+/* NAND GPIOS */
+#define GPIO_NAND_CS		(11)
+#define GPIO_NAND_RB		(89)
+
 static unsigned long cmx270_pin_config[] = {
 	/* AC'97 */
 	GPIO28_AC97_BITCLK,
@@ -403,6 +407,26 @@ static void __init cmx270_init_spi(void)
 static inline void cmx270_init_spi(void) {}
 #endif
 
+static struct gpiod_lookup_table cmx270_nand_gpio_table = {
+	.dev_id = "cmx270-nand",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa", GPIO_NAND_CS, "cs", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("gpio-pxa", GPIO_NAND_RB, "rb", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
+static struct resource cmx270_nand_resources[] __initdata = {
+	DEFINE_RES_MEM(PXA_CS1_PHYS, 12),
+};
+
+static void __init cmx270_init_nand(void)
+{
+	platform_device_register_simple("cmx270-nand", -1,
+					cmx270_nand_resources, 1);
+	gpiod_add_lookup_table(&cmx270_nand_gpio_table);
+}
+
 void __init cmx270_init(void)
 {
 	pxa2xx_mfp_config(ARRAY_AND_SIZE(cmx270_pin_config));
@@ -416,4 +440,5 @@ void __init cmx270_init(void)
 	cmx270_init_ohci();
 	cmx270_init_2700G();
 	cmx270_init_spi();
+	cmx270_init_nand();
 }
diff --git a/drivers/mtd/nand/raw/cmx270_nand.c b/drivers/mtd/nand/raw/cmx270_nand.c
index 7af3d0bdcdb8..31cb20858c46 100644
--- a/drivers/mtd/nand/raw/cmx270_nand.c
+++ b/drivers/mtd/nand/raw/cmx270_nand.c
@@ -15,18 +15,17 @@
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/partitions.h>
 #include <linux/slab.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/soc/pxa/cpu.h>
+#include <linux/platform_device.h>
 
 #include <asm/io.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/addr-map.h>
-
-#define GPIO_NAND_CS	(11)
-#define GPIO_NAND_RB	(89)
+static struct gpio_desc *gpiod_nand_cs;
+static struct gpio_desc *gpiod_nand_rb;
 
 /* MTD structure for CM-X270 board */
 static struct mtd_info *cmx270_nand_mtd;
@@ -70,14 +69,14 @@ static void cmx270_read_buf(struct nand_chip *this, u_char *buf, int len)
 
 static inline void nand_cs_on(void)
 {
-	gpio_set_value(GPIO_NAND_CS, 0);
+	gpiod_set_value(gpiod_nand_cs, 0);
 }
 
 static void nand_cs_off(void)
 {
 	dsb();
 
-	gpio_set_value(GPIO_NAND_CS, 1);
+	gpiod_set_value(gpiod_nand_cs, 1);
 }
 
 /*
@@ -120,48 +119,41 @@ static int cmx270_device_ready(struct nand_chip *this)
 {
 	dsb();
 
-	return (gpio_get_value(GPIO_NAND_RB));
+	return (gpiod_get_value(gpiod_nand_rb));
 }
 
 /*
  * Main initialization routine
  */
-static int __init cmx270_init(void)
+static int cmx270_probe(struct platform_device *pdev)
 {
 	struct nand_chip *this;
+	struct device *dev = &pdev->dev;
 	int ret;
 
-	if (!(machine_is_armcore() && cpu_is_pxa27x()))
-		return -ENODEV;
-
-	ret = gpio_request(GPIO_NAND_CS, "NAND CS");
+	gpiod_nand_cs = devm_gpiod_get(dev, "cs", GPIOD_OUT_HIGH);
+	ret = PTR_ERR_OR_ZERO(gpiod_nand_cs);
 	if (ret) {
 		pr_warn("CM-X270: failed to request NAND CS gpio\n");
 		return ret;
 	}
 
-	gpio_direction_output(GPIO_NAND_CS, 1);
-
-	ret = gpio_request(GPIO_NAND_RB, "NAND R/B");
+	gpiod_nand_rb = devm_gpiod_get(dev, "rb", GPIOD_IN);
+	ret = PTR_ERR_OR_ZERO(gpiod_nand_rb);
 	if (ret) {
 		pr_warn("CM-X270: failed to request NAND R/B gpio\n");
-		goto err_gpio_request;
+		return ret;
 	}
 
-	gpio_direction_input(GPIO_NAND_RB);
-
 	/* Allocate memory for MTD device structure and private data */
-	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
-	if (!this) {
-		ret = -ENOMEM;
-		goto err_kzalloc;
-	}
+	this = devm_kzalloc(dev, sizeof(struct nand_chip), GFP_KERNEL);
+	if (!this)
+		return -ENOMEM;
 
-	cmx270_nand_io = ioremap(PXA_CS1_PHYS, 12);
+	cmx270_nand_io = devm_platform_ioremap_resource(pdev, 0);
 	if (!cmx270_nand_io) {
 		pr_debug("Unable to ioremap NAND device\n");
-		ret = -EINVAL;
-		goto err_ioremap;
+		return -EINVAL;
 	}
 
 	cmx270_nand_mtd = nand_to_mtd(this);
@@ -189,48 +181,30 @@ static int __init cmx270_init(void)
 	ret = nand_scan(this, 1);
 	if (ret) {
 		pr_notice("No NAND device\n");
-		goto err_scan;
+		return ret;
 	}
 
 	/* Register the partitions */
-	ret = mtd_device_register(cmx270_nand_mtd, partition_info,
-				  NUM_PARTITIONS);
-	if (ret)
-		goto err_scan;
-
-	/* Return happy */
-	return 0;
-
-err_scan:
-	iounmap(cmx270_nand_io);
-err_ioremap:
-	kfree(this);
-err_kzalloc:
-	gpio_free(GPIO_NAND_RB);
-err_gpio_request:
-	gpio_free(GPIO_NAND_CS);
-
-	return ret;
-
+	return mtd_device_register(cmx270_nand_mtd, partition_info,
+				   NUM_PARTITIONS);
 }
-module_init(cmx270_init);
 
 /*
  * Clean up routine
  */
-static void __exit cmx270_cleanup(void)
+static int cmx270_remove(struct platform_device *pdev)
 {
-	/* Release resources, unregister device */
 	nand_release(mtd_to_nand(cmx270_nand_mtd));
 
-	gpio_free(GPIO_NAND_RB);
-	gpio_free(GPIO_NAND_CS);
-
-	iounmap(cmx270_nand_io);
-
-	kfree(mtd_to_nand(cmx270_nand_mtd));
+	return 0;
 }
-module_exit(cmx270_cleanup);
+
+static struct platform_driver cmx270_nand_driver = {
+	.driver.name = "cmx270-nand",
+	.probe = cmx270_probe,
+	.remove = cmx270_remove,
+};
+module_platform_driver(cmx270_nand_driver);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Mike Rapoport <mike@compulab.co.il>");
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
