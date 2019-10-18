Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A42EDC954
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:48:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfpuhjK23iLkJnK1jHGUi2PcQNoLSVa5FmqCWkiQSJU=; b=XO8GmdiGkgOaKr
	6JqQwBv39bsHFEEMKCyWpWw5tlnZR39uyYFwo0ZoSBmH6QA5AykByKUtqJ60q3oV0IP70BeqDvjNk
	uAQns0A9nryvNNYd0A/PLYF6m9AeUSMyeGgQEMdl+CRb8xgcMr0XKkeXfoF0kJPDyHp3IB+mHVSpW
	3/bcxrsXgcNNsSeua25jWFs4EaQbee7+vUUF7S+4AvAUOH3Xw8NkOyNMq8yeNnZmqCRb4DE+B2d6E
	Yz0xFcT/7vo+N1743Bs9f7juLGnbI7MILEhoTvEPGlLcCfLIpu7foNsBZgQqGybXjfSJf3qbjjvtx
	T2x1RhFlIWixbitQj7TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUTv-0004wZ-9T; Fri, 18 Oct 2019 15:47:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOm-0008D6-U9
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5BeXtn8rcjlUDgHsb8acK8FXOMPCiGH/IebdqCxSg8M=; b=wmwK6IOaoMFo9YYla6TCUiz8d5
 2//qFdfTu2TbzbbHx6Y/lFfIJW5TQ+uEmOSO2OsArsh/Lh4zovnaKYbHKMAUaqIRkd9YKUBXsrFS/
 ZTDIG4atyHbPWxzktkfkZWTgOvWW2Of0OHL4GMrjTBM8sQCza6CyhlUYgStjUMCMk9yEOAOSPUwD1
 gf9mxOQzGRr15fsv0stvPC/lpZnqrhArYfHQu1V1h3z0m0x+1SfJe3SB++WeuMkEvyY/gUkVHkxnj
 LiJZIxLvyQ+bleMZXNpojwj4q/EOxwaM/kzuFPh25jyB4T4n46xw84+BKGJP+Ebw30VoIGO4LrRU/
 SwuWcdNA==;
Received: from mout.kundenserver.de ([217.72.192.73])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOi-0007Wp-IW
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:38 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M7JrG-1iOl7h3IKK-007k2b; Fri, 18 Oct 2019 17:42:29 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 29/46] Input: touchscreen: use wrapper for pxa2xx ac97
 registers
Date: Fri, 18 Oct 2019 17:41:44 +0200
Message-Id: <20191018154201.1276638-29-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:MK8JfTnTg0lPFTWmTXYVConFc6n0BBIQ8G+iv99wHsjwJ8GpckN
 WfS0UdxIaZu/fxc1H/6LNUOHWpL2xSEFPQ6W03NM1LBrLN0j3TAEBNOHC9Ak+SZFqB5Np5P
 cBv2685GglbI1t+P7kdvgbtFLL2aNQrwh/zUXcMSx23AYaxPMjFkmPfUeQEIBlSR8jJStci
 PJterFpo7iLKTqstnNT4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GJMqnt/pGVA=:EKxLIgmzbmMu61TQSTosuf
 gnVEJX0ztxVdyO4z7UFQ2x/wfcms3eF5wz06LFuo1kgZhPHx0v9J3kUVmEbt/IFOZHFMcTrzV
 qxC7UEJMWIoxlDcv6rkIjvr1xYK4eJ8HIaD0Mvh0V3trgZaVQdjJOftHvkgAQ/rFUjEyqmjrn
 l3zaJN9jvJcbxjPkZIDS1SKiqgdQ6FQAQY4+s1qHIJ5fW5yLZ/bCzxn8M3cfKIIMcuFO1x0Em
 9F74udBauIflN4XgL/mxj8HGSI2srkKNrDdfO/rmrA+FPUr1ERAVhAzhqxOglKChpDdqPi7kV
 J+AqwsBF1idqsMZ7cApARQJl2Bz07q2+Cqql6vcV4A7x5oGw+y2nO5/mMrBgoyXqNjsyeZPde
 VuRWY/PFkcCDyLjfFjCZESP9ggl9st3BNn5kEwRz8VS+PElmOelJfyxZyKWsGFDfy56jmYE1d
 pCZG4geuaF7c+LEd08mmWO8rvfr2aOBFjSgPsw63Lg08tWx4OtK7miLsohhN+jIs7petifzUt
 OgqjwpfdZgh8JM/+ztp1y1zGQzsS0nUyGyjud91BA0Sx4f2vD/qUToiGpv/dEC/YOB95uu4yq
 i4BOkEYfAu1q0mgvm8uSrbTtiMMVXtibbi5CiTwm0WVxGgrlUVkUAdqyit+bYTVAyh0MuFvxK
 B3x6QLwtp8rHSJO3LDDC8F+i3Yfpzb3w3HswLBcyyMHlHA7YhedHARB0+T4OnQp5O4dIEUz/+
 lR/iB+chX7WlzQIkNTGRS739Zf/oUV7ixTwduxprShyU+CkUtPqmazK6GhRpwxI/qkICcmnce
 QUfTdBWtkKyuIaknQt8IYi+FxwID9nB/IoSMUxX0rNUI5GE/bMQ0Sc8mS0MLhXyBx8t92xXTs
 DkSH6kM4PoyPDWgHlHsw==
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To avoid a dependency on the pxa platform header files with
hardcoded registers, change the driver to call a wrapper
in the pxa2xx-ac97-lib that encapsulates all the other
ac97 stuff.

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/input/touchscreen/Kconfig            |  2 ++
 drivers/input/touchscreen/mainstone-wm97xx.c | 16 ++++++++--------
 drivers/input/touchscreen/zylonite-wm97xx.c  | 12 ++++++------
 include/sound/pxa2xx-lib.h                   |  4 ++++
 sound/arm/pxa2xx-ac97-lib.c                  | 12 ++++++++++++
 5 files changed, 32 insertions(+), 14 deletions(-)

diff --git a/drivers/input/touchscreen/Kconfig b/drivers/input/touchscreen/Kconfig
index 46ad9090493b..c60199550d89 100644
--- a/drivers/input/touchscreen/Kconfig
+++ b/drivers/input/touchscreen/Kconfig
@@ -848,6 +848,7 @@ config TOUCHSCREEN_WM9713
 config TOUCHSCREEN_WM97XX_MAINSTONE
 	tristate "WM97xx Mainstone/Palm accelerated touch"
 	depends on TOUCHSCREEN_WM97XX && ARCH_PXA
+	depends on SND_PXA2XX_LIB_AC97
 	help
 	  Say Y here for support for streaming mode with WM97xx touchscreens
 	  on Mainstone, Palm Tungsten T5, TX and LifeDrive systems.
@@ -860,6 +861,7 @@ config TOUCHSCREEN_WM97XX_MAINSTONE
 config TOUCHSCREEN_WM97XX_ZYLONITE
 	tristate "Zylonite accelerated touch"
 	depends on TOUCHSCREEN_WM97XX && MACH_ZYLONITE
+	depends on SND_PXA2XX_LIB_AC97
 	select TOUCHSCREEN_WM9713
 	help
 	  Say Y here for support for streaming mode with the touchscreen
diff --git a/drivers/input/touchscreen/mainstone-wm97xx.c b/drivers/input/touchscreen/mainstone-wm97xx.c
index 940d3c92b1f8..8f6fe68f1f99 100644
--- a/drivers/input/touchscreen/mainstone-wm97xx.c
+++ b/drivers/input/touchscreen/mainstone-wm97xx.c
@@ -28,7 +28,7 @@
 #include <linux/soc/pxa/cpu.h>
 #include <linux/wm97xx.h>
 
-#include <mach/regs-ac97.h>
+#include <sound/pxa2xx-lib.h>
 
 #include <asm/mach-types.h>
 
@@ -104,11 +104,11 @@ static void wm97xx_acc_pen_up(struct wm97xx *wm)
 	msleep(1);
 
 	if (cpu_is_pxa27x()) {
-		while (MISR & (1 << 2))
-			MODR;
+		while (pxa2xx_ac97_read_misr() & (1 << 2))
+			pxa2xx_ac97_read_modr();
 	} else if (cpu_is_pxa3xx()) {
 		for (count = 0; count < 16; count++)
-			MODR;
+			pxa2xx_ac97_read_modr();
 	}
 }
 
@@ -130,7 +130,7 @@ static int wm97xx_acc_pen_down(struct wm97xx *wm)
 		return RC_PENUP;
 	}
 
-	x = MODR;
+	x = pxa2xx_ac97_read_modr();
 	if (x == last) {
 		tries++;
 		return RC_AGAIN;
@@ -138,10 +138,10 @@ static int wm97xx_acc_pen_down(struct wm97xx *wm)
 	last = x;
 	do {
 		if (reads)
-			x = MODR;
-		y = MODR;
+			x = pxa2xx_ac97_read_modr();
+		y = pxa2xx_ac97_read_modr();
 		if (pressure)
-			p = MODR;
+			p = pxa2xx_ac97_read_modr();
 
 		dev_dbg(wm->dev, "Raw coordinates: x=%x, y=%x, p=%x\n",
 			x, y, p);
diff --git a/drivers/input/touchscreen/zylonite-wm97xx.c b/drivers/input/touchscreen/zylonite-wm97xx.c
index cabdd6e3c6f8..ed7eae638713 100644
--- a/drivers/input/touchscreen/zylonite-wm97xx.c
+++ b/drivers/input/touchscreen/zylonite-wm97xx.c
@@ -24,7 +24,7 @@
 #include <linux/soc/pxa/cpu.h>
 #include <linux/wm97xx.h>
 
-#include <mach/regs-ac97.h>
+#include <sound/pxa2xx-lib.h>
 
 struct continuous {
 	u16 id;    /* codec id */
@@ -79,7 +79,7 @@ static void wm97xx_acc_pen_up(struct wm97xx *wm)
 	msleep(1);
 
 	for (i = 0; i < 16; i++)
-		MODR;
+		pxa2xx_ac97_read_modr();
 }
 
 static int wm97xx_acc_pen_down(struct wm97xx *wm)
@@ -100,7 +100,7 @@ static int wm97xx_acc_pen_down(struct wm97xx *wm)
 		return RC_PENUP;
 	}
 
-	x = MODR;
+	x = pxa2xx_ac97_read_modr();
 	if (x == last) {
 		tries++;
 		return RC_AGAIN;
@@ -108,10 +108,10 @@ static int wm97xx_acc_pen_down(struct wm97xx *wm)
 	last = x;
 	do {
 		if (reads)
-			x = MODR;
-		y = MODR;
+			x = pxa2xx_ac97_read_modr();
+		y = pxa2xx_ac97_read_modr();
 		if (pressure)
-			p = MODR;
+			p = pxa2xx_ac97_read_modr();
 
 		dev_dbg(wm->dev, "Raw coordinates: x=%x, y=%x, p=%x\n",
 			x, y, p);
diff --git a/include/sound/pxa2xx-lib.h b/include/sound/pxa2xx-lib.h
index 6758fc12fa84..79c32a8f4c91 100644
--- a/include/sound/pxa2xx-lib.h
+++ b/include/sound/pxa2xx-lib.h
@@ -41,4 +41,8 @@ extern int pxa2xx_ac97_hw_resume(void);
 extern int pxa2xx_ac97_hw_probe(struct platform_device *dev);
 extern void pxa2xx_ac97_hw_remove(struct platform_device *dev);
 
+/* modem registers, used by touchscreen driver */
+u32 pxa2xx_ac97_read_modr(void);
+u32 pxa2xx_ac97_read_misr(void);
+
 #endif
diff --git a/sound/arm/pxa2xx-ac97-lib.c b/sound/arm/pxa2xx-ac97-lib.c
index 8c79d224f03b..572b73d73762 100644
--- a/sound/arm/pxa2xx-ac97-lib.c
+++ b/sound/arm/pxa2xx-ac97-lib.c
@@ -428,6 +428,18 @@ void pxa2xx_ac97_hw_remove(struct platform_device *dev)
 }
 EXPORT_SYMBOL_GPL(pxa2xx_ac97_hw_remove);
 
+u32 pxa2xx_ac97_read_modr(void)
+{
+	return MODR;
+}
+EXPORT_SYMBOL_GPL(pxa2xx_ac97_read_modr);
+
+u32 pxa2xx_ac97_read_misr(void)
+{
+	return MISR;
+}
+EXPORT_SYMBOL_GPL(pxa2xx_ac97_read_misr);
+
 MODULE_AUTHOR("Nicolas Pitre");
 MODULE_DESCRIPTION("Intel/Marvell PXA sound library");
 MODULE_LICENSE("GPL");
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
