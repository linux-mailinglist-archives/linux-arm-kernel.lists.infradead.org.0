Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86577DC956
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k5p6RgR32CBu2BgQ3zEV92MccuN6vFSEkBNdakeAaI=; b=rbWOmKEYjSL4Wo
	BM+7syjw2CM/c7QN9fJmVYQZSFZLC0Dg0cUfYOOUB9e7/quLWsqxik/cIugM0jeOgIE6KkFEaChd9
	3hTJyHrJBn8pRODpoDtVQkHR19dn5Dn1RH36EmwhvGKKsV9ERQZepsZJPjlYkRjuV9bJIrvLwUBMu
	4r1csE9n+gciK6XlgGDAAaeJxKcQp3LiqRr/DkmDIDXUOlX+OJLyvApdhDCJvS7KSjnb86C9c7Owg
	S6Vw5vsHMrTCezavFumn7TMsOWVPj1I0pQZ9yCaDspF+Dpcl+nSkVUc5yVjqOJP4VskNtDK9rgq1Q
	4WAuhtufb6gWEsPyjtmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUUD-0005DJ-3s; Fri, 18 Oct 2019 15:48:17 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOe-00087A-GZ
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:40 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mysa4-1i8cRr1njm-00vzeJ; Fri, 18 Oct 2019 17:42:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 28/46] input: touchscreen: mainstone: sync with zylonite driver
Date: Fri, 18 Oct 2019 17:41:43 +0200
Message-Id: <20191018154201.1276638-28-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:saH5kjlynqqUDVkNub5Ma1XPk99l3/V8Shfn2TYRSAgJ+P8L2B6
 BW8X/SikVvaOq1ChVLPL+Of+XJoeTLZrZY6UpRMW6ZDaHWB1H67j0yTBW4Nn+QKik7OfK0s
 BRLFMQTIUi8MD4xWkYicAIqu9TTHjaw4cO810QTUsevOMSakQjKerNMLBoqT+m4COuEiotF
 xKold953kpPZEF6py6DGg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VFZafkCMpQc=:TSB0QPeWSMmMsc+ju761Lc
 Aor1M1UlkuWqzyCepVKJRWMw6mjhUcLJ2ch5cAT+HfnrQ/zaGA7ES5Vtn5PKgc0+DRabL2tin
 tfO/ctOrIlsDUU0yqo5657VddgJy+LR/yXRHlILuJCdtdAl2P+Vbp8rL9+fJDRgyLaFh2+WDr
 o0eE1bzfjJ623IfYpCSXIWN2WE9n/pLpb5DyCyMEXNpMixLRmoZvP9zzSGN4co2mFb8+qnZVP
 R5Nc9M+GsZZ2UZJmqiyZXjggRwrGFGWSSL65TlviYwrPh3eCL+XG5DdhwRovgpTKaMjXQuI4o
 E0okqEkx2EQncIF5Ah3i9+aAPiwLivXaa8RvIr9XYrDLqWoqhvvYdf2lvUnCf5ZwheHKtq8HY
 mJJAnncRKYt/YdyhxqNdlknDNgF4cKjzQIipD5FDYo6USfkma9BcCsSGOmn1Xka9auBrZ42N9
 i1XEjPsXdOLDyLlpstrB7ehWCL0fop5tCKMZ6Pz8tbplQuhOhFaqD4V8nBatCUwxqdFZIsclM
 FB215AW8DvS4J7rMi5UFJzKV9qT6uvWX9g5DBuMo9Ppdr4oZA8WvQMH44goj8QqTGAysuU8aS
 7dn4p/d6ldtNR9hYXFQ6SUbXyk1zox88b4Leg4swSNkYzaEIDdUF3vNN6PDCrJA7XfR+BVJkk
 rLJuUXTLn/bCaVYDKfSPUSoCHLCxyjfH5xiwKpvMYkcLqsS/Yj+EXgkGaN7pd4lTJJTwyysMK
 O265YIQ46ZkZpv8v97d5kYuNd8rjVPcmwKh8MMjrQl8Hdg0xG8I0oCpQtDvQ2genFLTEhtaye
 emngIGpWB17R2Lvv7SzpHy2ghJVH4vhbzk4xjaB+NMm+rvziRDl5mOpUHgxHWNSQuwu+67tR4
 fBf7nvAQTI1eTA35d6Yw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084232_895803_1E77FD13 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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

The two drivers are almost identical and can work on a variety
of hardware in principle. The mainstone driver supports additional
hardware, and the zylonite driver has a few cleanup patches.

Sync the two by adding the zylonite changes into the mainstone
one, and checking for the zylonite board to order to keep the
default behavior (interrupt enabled) there.

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/input/touchscreen/mainstone-wm97xx.c | 59 ++++++++++----------
 1 file changed, 31 insertions(+), 28 deletions(-)

diff --git a/drivers/input/touchscreen/mainstone-wm97xx.c b/drivers/input/touchscreen/mainstone-wm97xx.c
index 618c80847d9f..940d3c92b1f8 100644
--- a/drivers/input/touchscreen/mainstone-wm97xx.c
+++ b/drivers/input/touchscreen/mainstone-wm97xx.c
@@ -24,9 +24,9 @@
 #include <linux/gpio/consumer.h>
 #include <linux/irq.h>
 #include <linux/interrupt.h>
-#include <linux/wm97xx.h>
 #include <linux/io.h>
-#include <linux/gpio.h>
+#include <linux/soc/pxa/cpu.h>
+#include <linux/wm97xx.h>
 
 #include <mach/regs-ac97.h>
 
@@ -42,23 +42,22 @@ struct continuous {
 #define WM_READS(sp) ((sp / HZ) + 1)
 
 static const struct continuous cinfo[] = {
-	{WM9705_ID2, 0, WM_READS(94), 94},
-	{WM9705_ID2, 1, WM_READS(188), 188},
-	{WM9705_ID2, 2, WM_READS(375), 375},
-	{WM9705_ID2, 3, WM_READS(750), 750},
-	{WM9712_ID2, 0, WM_READS(94), 94},
-	{WM9712_ID2, 1, WM_READS(188), 188},
-	{WM9712_ID2, 2, WM_READS(375), 375},
-	{WM9712_ID2, 3, WM_READS(750), 750},
-	{WM9713_ID2, 0, WM_READS(94), 94},
-	{WM9713_ID2, 1, WM_READS(120), 120},
-	{WM9713_ID2, 2, WM_READS(154), 154},
-	{WM9713_ID2, 3, WM_READS(188), 188},
+	{ WM9705_ID2, 0, WM_READS(94),  94  },
+	{ WM9705_ID2, 1, WM_READS(188), 188 },
+	{ WM9705_ID2, 2, WM_READS(375), 375 },
+	{ WM9705_ID2, 3, WM_READS(750), 750 },
+	{ WM9712_ID2, 0, WM_READS(94),  94  },
+	{ WM9712_ID2, 1, WM_READS(188), 188 },
+	{ WM9712_ID2, 2, WM_READS(375), 375 },
+	{ WM9712_ID2, 3, WM_READS(750), 750 },
+	{ WM9713_ID2, 0, WM_READS(94),  94  },
+	{ WM9713_ID2, 1, WM_READS(120), 120 },
+	{ WM9713_ID2, 2, WM_READS(154), 154 },
+	{ WM9713_ID2, 3, WM_READS(188), 188 },
 };
 
 /* continuous speed index */
 static int sp_idx;
-static u16 last, tries;
 static struct gpio_desc *gpiod_irq;
 
 /*
@@ -102,7 +101,7 @@ static void wm97xx_acc_pen_up(struct wm97xx *wm)
 {
 	unsigned int count;
 
-	schedule_timeout_uninterruptible(1);
+	msleep(1);
 
 	if (cpu_is_pxa27x()) {
 		while (MISR & (1 << 2))
@@ -117,13 +116,14 @@ static int wm97xx_acc_pen_down(struct wm97xx *wm)
 {
 	u16 x, y, p = 0x100 | WM97XX_ADCSEL_PRES;
 	int reads = 0;
+	static u16 last, tries;
 
 	/* When the AC97 queue has been drained we need to allow time
 	 * to buffer up samples otherwise we end up spinning polling
 	 * for samples.  The controller can't have a suitably low
 	 * threshold set to use the notifications it gives.
 	 */
-	schedule_timeout_uninterruptible(1);
+	msleep(1);
 
 	if (tries > 5) {
 		tries = 0;
@@ -193,6 +193,8 @@ static int wm97xx_acc_startup(struct wm97xx *wm)
 		/* There is some obscure mutant of WM9712 interbred with WM9713
 		 * used on Palm HW */
 		wm->variant = WM97xx_WM1613;
+	} else if (machine_is_zylonite()) {
+		pen_int = 1;
 	}
 
 	if (pen_int) {
@@ -253,13 +255,13 @@ static void wm97xx_irq_enable(struct wm97xx *wm, int enable)
 }
 
 static struct wm97xx_mach_ops mainstone_mach_ops = {
-	.acc_enabled = 1,
-	.acc_pen_up = wm97xx_acc_pen_up,
-	.acc_pen_down = wm97xx_acc_pen_down,
-	.acc_startup = wm97xx_acc_startup,
-	.acc_shutdown = wm97xx_acc_shutdown,
-	.irq_enable = wm97xx_irq_enable,
-	.irq_gpio = WM97XX_GPIO_2,
+	.acc_enabled	= 1,
+	.acc_pen_up	= wm97xx_acc_pen_up,
+	.acc_pen_down	= wm97xx_acc_pen_down,
+	.acc_startup	= wm97xx_acc_startup,
+	.acc_shutdown	= wm97xx_acc_shutdown,
+	.irq_enable	= wm97xx_irq_enable,
+	.irq_gpio	= WM97XX_GPIO_2,
 };
 
 static int mainstone_wm97xx_probe(struct platform_device *pdev)
@@ -274,14 +276,15 @@ static int mainstone_wm97xx_remove(struct platform_device *pdev)
 	struct wm97xx *wm = platform_get_drvdata(pdev);
 
 	wm97xx_unregister_mach_ops(wm);
+
 	return 0;
 }
 
 static struct platform_driver mainstone_wm97xx_driver = {
-	.probe = mainstone_wm97xx_probe,
-	.remove = mainstone_wm97xx_remove,
-	.driver = {
-		.name = "wm97xx-touch",
+	.probe	= mainstone_wm97xx_probe,
+	.remove	= mainstone_wm97xx_remove,
+	.driver	= {
+		.name	= "wm97xx-touch",
 	},
 };
 module_platform_driver(mainstone_wm97xx_driver);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
