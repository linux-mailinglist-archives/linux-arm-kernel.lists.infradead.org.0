Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E01EDC961
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AA7fx2Cw+9lM0BKeGShcJcAGmuJRMh+u1be/TEsqmKo=; b=sK6lKvYFgt3tDO
	3Imh13S9flu1VaJkclqUjV5g+rndUPk/lJrGDa4inbOxeokEsvwVKBPzTB1RFJuZoMs/4jgHQ0WP6
	G8meI/al6o2h0VsL9KFkryBAgbfSZsOef6OTsEf9U1VMKDbQxim7gs1gyNXs4LrHGxdidYsOBzEGw
	JWzQYU49EtnrVr6JFxNyAB2k/+0NDOnSKpcepSoo4ec8ZSf39PmFOqj+8QbGp8gsU4PcbTwX/47jt
	9o2k3iZAAfU+6vfNMd1+R3sr/CfWnkx47KdhgECAy0T3Ly7uoKdf6fDNuRSriov0sCImhkBPpAYf4
	MaCFj/YdGOOpy/iIGaEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUVR-0006Ri-Rp; Fri, 18 Oct 2019 15:49:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOn-0008D7-4d
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pjseM7Dov4UjSFDs5i23iefOB0TMd3moD1BoRjXn6h4=; b=2SuU/b8FgDNTAczh4wd0yYnbnQ
 bbFVBwLwd/Bo36ZsBvEq0z/eSfP+JkuhUQj8xiT989yOMnFDTiHcZEgb9hq7+nekkRlUtwaqFFTUz
 sYCBCwPbYgWsnMcZ3R3wGjDsVYymCFbimCsuCUth7Wid9DjsPYS5dmlK0CFHrt503b5yLq/OhGvwc
 qaKvsCnnG8mlKSdzDx1muf+NtEnE950UxAZtPyDnwrpsfSoshhITyCvExFOREkm6RhRcp6fiO0qVA
 H/nj9AHhTUhsQ/pLwP1v8jEZSmcKmXG4JZexex4DuO8Nz+HyCHY05Y3TG37T2xaCABRVroNkebg/J
 GpbBI0zQ==;
Received: from mout.kundenserver.de ([217.72.192.73])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOi-0007Wd-I7
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:38 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mlf8e-1hdwQw37Za-00ihx9; Fri, 18 Oct 2019 17:42:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 26/46] ARM: pxa: zylonite: use gpio lookup instead mfp header
Date: Fri, 18 Oct 2019 17:41:41 +0200
Message-Id: <20191018154201.1276638-26-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:EPfdFNGMYkktAwTtVc77ZjC/u3+lzwkn9SfHHkjQqYryFRSRDgF
 ri+bw6JPu+6gMo4DnAnJHKHZxaOMUZE7fUrMhZLetVePjkAUj1l08PDhNNqpub0rXxy9ZIP
 kGrI7wefjbcBNTpWWnidB0pxWkI2vq9r/vFR6V1x6HZvcgFWnJOLgNRsvIoeDU+CMs6flyt
 bDifXaf0KF1O25W114BLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zs4SFYr2g24=:7WTzUVql3CseAxe0/QSQDE
 gaNZ1GlSN/EhKzBBHWyD/qddqOLolS3uJr7QWAX67KsRrXMl137vRbHdxknp11Ve5GcqHqsI8
 xfmNMAwp7hayjyMXdLvpszJgqi3mXvzlcYInHR3sq5CanCrjSfvtMz/42XvbfI1hp89jDVrKu
 CgmIBsqEIR97kdemRZfhhCioetk79pDst+AnD4dyo9arPLh9srxokuiZ+2HVc241WHzxZJdrU
 mrxelO1vt/DQIFmlLMm66LIA5mBC8SGCag++URIvgc4ZpeVuEg0LQeX+0kUG6v7g09qz50NZX
 a1X/mIVEvue6HDGqVRfBadPbi73ht3oqA6ZMxrwhypCD2yv4P/9BioJREoXYn0FFh9GHdAqbh
 yx0j9eUGEr14ZauY537Cy1IWlMAJ0iI+VQntT6n1YjJnhngxQk2rRRV6H5vV7vL6CPHI1aEf9
 R3jCmKT/9iUOYXH3nrZVmzMUgsdz5NJR3cR6cNuj7cQVqlqNErmqgTSQbokeArTdZg+EdD0di
 fjIx1FA7ar5p/JZQpnGeUJDT21jd4zKAYb5qIBz/67ILp+QpXRfQP1yIWzS0ql3WeQT1UIvDE
 C8bjPDvsvWKElhEuyZxtrQMWzftgPhmDjhiGlL9ci2XmL2Fvd4lqYc1GJbEFpibMIY07vFr7u
 RH1Wiuex8tT/ldcucr4+KCV0rCrsWiOhv/QIg/RpiHLYjg2Qzzb7/xrm40sgXIRI3gU1nPeE2
 /nALa08zOEDAZTfvqvWbQ4dqJmTtKBFob2CSPURZdAGi6r5KobsmwfwHH320EgNBsGfbyfM03
 I+R5EeD2TCQIHA7ivxYVLr9mWpVdsJ0YZUQvORAs0fvC0yIpnqAVEE64zjB98NWtd8K32OemS
 sqRvKGMvPiv3DK5nRzsg==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mach/mfp.h header is only used by this one driver
for hardcoded gpio numbers. Change that to use a lookup
table instead.

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/zylonite.c                | 31 +++++++++++++++++++++
 drivers/input/touchscreen/zylonite-wm97xx.c | 20 +++++++------
 2 files changed, 42 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-pxa/zylonite.c b/arch/arm/mach-pxa/zylonite.c
index e3ae45f444d5..d6c0e8866e18 100644
--- a/arch/arm/mach-pxa/zylonite.c
+++ b/arch/arm/mach-pxa/zylonite.c
@@ -32,6 +32,7 @@
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/keypad-pxa27x.h>
 #include <linux/platform_data/mtd-nand-pxa3xx.h>
+#include <mach/mfp.h>
 
 #include "devices.h"
 #include "generic.h"
@@ -426,6 +427,35 @@ static void __init zylonite_init_ohci(void)
 static inline void zylonite_init_ohci(void) {}
 #endif /* CONFIG_USB_OHCI_HCD || CONFIG_USB_OHCI_HCD_MODULE */
 
+static struct gpiod_lookup_table zylonite_wm97xx_touch_gpio15_table = {
+	.dev_id = "wm97xx-touch.0",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa", mfp_to_gpio(MFP_PIN_GPIO15),
+			    "touch", GPIO_ACTIVE_LOW),
+		{ },
+	},
+};
+
+static struct gpiod_lookup_table zylonite_wm97xx_touch_gpio26_table = {
+	.dev_id = "wm97xx-touch.0",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa", mfp_to_gpio(MFP_PIN_GPIO26),
+			    "touch", GPIO_ACTIVE_LOW),
+		{ },
+	},
+};
+
+static void __init zylonite_init_wm97xx_touch(void)
+{
+	if (!IS_ENABLED(CONFIG_TOUCHSCREEN_WM97XX_ZYLONITE))
+		return;
+
+	if (cpu_is_pxa320())
+		gpiod_add_lookup_table(&zylonite_wm97xx_touch_gpio15_table);
+	else
+		gpiod_add_lookup_table(&zylonite_wm97xx_touch_gpio26_table);
+}
+
 static void __init zylonite_init(void)
 {
 	pxa_set_ffuart_info(NULL);
@@ -451,6 +481,7 @@ static void __init zylonite_init(void)
 	zylonite_init_nand();
 	zylonite_init_leds();
 	zylonite_init_ohci();
+	zylonite_init_wm97xx_touch();
 }
 
 MACHINE_START(ZYLONITE, "PXA3xx Platform Development Kit (aka Zylonite)")
diff --git a/drivers/input/touchscreen/zylonite-wm97xx.c b/drivers/input/touchscreen/zylonite-wm97xx.c
index f57bdf083188..cabdd6e3c6f8 100644
--- a/drivers/input/touchscreen/zylonite-wm97xx.c
+++ b/drivers/input/touchscreen/zylonite-wm97xx.c
@@ -17,14 +17,13 @@
 #include <linux/moduleparam.h>
 #include <linux/kernel.h>
 #include <linux/delay.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/irq.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/soc/pxa/cpu.h>
 #include <linux/wm97xx.h>
 
-#include <mach/mfp.h>
 #include <mach/regs-ac97.h>
 
 struct continuous {
@@ -181,14 +180,17 @@ static struct wm97xx_mach_ops zylonite_mach_ops = {
 static int zylonite_wm97xx_probe(struct platform_device *pdev)
 {
 	struct wm97xx *wm = platform_get_drvdata(pdev);
-	int gpio_touch_irq;
-
-	if (cpu_is_pxa320())
-		gpio_touch_irq = mfp_to_gpio(MFP_PIN_GPIO15);
-	else
-		gpio_touch_irq = mfp_to_gpio(MFP_PIN_GPIO26);
+	struct gpio_desc *gpio_touch_irq;
+	int err;
+
+	gpio_touch_irq = devm_gpiod_get(&pdev->dev, "touch", GPIOD_IN);
+	err = PTR_ERR_OR_ZERO(gpio_touch_irq);
+	if (err) {
+		dev_err(&pdev->dev, "Cannot get irq gpio: %d\n", err);
+		return err;
+	}
 
-	wm->pen_irq = gpio_to_irq(gpio_touch_irq);
+	wm->pen_irq = gpiod_to_irq(gpio_touch_irq);
 	irq_set_irq_type(wm->pen_irq, IRQ_TYPE_EDGE_BOTH);
 
 	wm97xx_config_gpio(wm, WM97XX_GPIO_13, WM97XX_GPIO_IN,
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
