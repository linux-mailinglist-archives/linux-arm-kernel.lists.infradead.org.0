Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FD1D321E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LY+BIwnWvTCYBlF1H3XTvUgFLnyeUC/nTFV4xW9c8aw=; b=EM8RFYdSacPlN0
	5Zw78wpOUOHwPQxwLZhS6ul1e/PZ6/PiX4IQxE2zOv5BwWZEIBkswxI19+oJQhCXJH2bhZE6KVYas
	kWCRb8IRYzfobStm6hAmvQAcTTeDJ8k7QHPl0RM6Su73Cutyiz8oegtZCQpByagaXZ/Skq1xxcpo+
	ZdZ16J8W03DnIN0nFxuLB8KBzcUoG+AKlKK8SvaNKKPsYfo6DTUxPi54X/Grd4jf5yDxJnnTRU+FB
	4ZLDn3FJhlEVWAIoyZV2hyROJkGMqXtxfNpseRPLuLw08FBFZvSVZ1HLMPr5UfutKM4ls2Ww71dPV
	Oe99kaWdshWlTA6Zqmog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf6a-0002JN-NG; Thu, 10 Oct 2019 20:32:12 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf6P-0002J1-6q
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:32:02 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M7NaW-1iAwvS3qYe-007hQ6; Thu, 10 Oct 2019 22:31:59 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 04/36] usb: gadget: s3c-hsudc: remove platform header
 dependency
Date: Thu, 10 Oct 2019 22:29:48 +0200
Message-Id: <20191010203043.1241612-4-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:gBYTvSDyXkD66KPU2oG2uSqWCzyZ+9MjOjjxZ7K1N8Jdtu5VAm9
 uBzrgOaZe47hxTJxPzxfWHiIy8u8IzO8gV3LN31u/Mqjy7tZzaSLxGgnqoVKuPXVg+B9ijX
 7uUylmjPbZZ8xFBX62B8oZxkFcyv1U72ayUgQ7JNqWG8QE9yRihdJHWcmaZf1EWLj6XiOa4
 YePja6N9Vkc5nD00s37Cw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ta5J2cCemyk=:WC7a/cOxyD9j1Hsk7CU2BR
 c8Bcn5Ut8kEPonusAYC4tFsN8m7KP8vLaNaKNq1AiT1/Nb/mkE6wX5QsfGTLFSlP4U7aGQ5aj
 fb0CLfLMkKIVVbrAi4tZWR+d2JagUt8UA1qtKFQntU2ahzSdIxE0bzsoiA6jfJ4Edh9ND3oXE
 hItiPa5woepT9kql4/kAqrFg5Ljzjtnx+IHl8uXx2TjneZfSBrQ+AAgRJcjiDVvngJQo6Avs8
 Ugz2+YFPMgRmc2AOsP2YkrwJEcmFJAfNTDbEo6TTFOFsJhKVQuJ1JI19mVOUpgzeZkIE1obwG
 6I0Tmem3DvqCNBm3BE1kVa4XrNqAmeKSxBX9m0gFMq44g1pia38XPBtOXARWkuCf1sh8KaS7Z
 +Ywc2ZWyu4IYS6aPinB5ybTc7a/V+hzmAKc2Sl4cp+Fcd8tYe8rQ+id9A6sKt99j4Sdm5bmDh
 94Zqm3uGjvegg/hM9dlScH8JxxcxD4YhXuHQZun5BaAVAQShPtiIEbPc6MIYBX1mro06iCwJQ
 Jlg0wQzS/u9C5DQDIUvIX8UYU+KVOZIswLRFKWQ+ESPBZaX2QSZ7szyac3KuKTyJE0XYxpLXv
 wgcR3MGIwhTYn1aDWI9Rxdh7lZJehyoxFUDoKlomUlZhw+lY5INuM24qrjYL/56BlSP1Raljt
 nHAttXZK2y03Se8Sp8QxslircyBig3045s2XS56DExqvaNJ4/6qI30UGSV21AWVo7MPOuPZao
 W2sW8RBcoMKKD4zaBTARDqx4/Wpnf66KuOVY4Hi2Hb6IVBJg1t7fusc0hG984/sZsToIBhbOh
 BhjM1YF5FJe0Bjhp+GM0oq4V3QyzcGRzbRuoTMKIbHTHTDTRXiqqu2gBRFRalsFzlwhXaJBLg
 gyCntWSDfESeaa0IVhqw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133201_542443_4FFAD375 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no real phy driver, so s3c-hsudc just pokes the registers
itself. Improve this a little by making it a platform data callback
like we do for gpios.

There is only one board using this driver, and it's unlikely
that another would be added, so this is a minimal workaround.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../include/mach/regs-s3c2443-clock.h         | 49 +++++++++++++++++
 arch/arm/plat-samsung/devs.c                  |  3 +
 drivers/usb/gadget/udc/s3c-hsudc.c            | 55 ++-----------------
 include/linux/platform_data/s3c-hsudc.h       |  2 +
 4 files changed, 58 insertions(+), 51 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
index 6bf924612b06..682759549e63 100644
--- a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
+++ b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
@@ -10,6 +10,8 @@
 #ifndef __ASM_ARM_REGS_S3C2443_CLOCK
 #define __ASM_ARM_REGS_S3C2443_CLOCK
 
+#include <linux/delay.h>
+
 #define S3C2443_CLKREG(x)		((x) + S3C24XX_VA_CLKPWR)
 
 #define S3C2443_PLLCON_MDIVSHIFT	16
@@ -184,5 +186,52 @@ s3c2443_get_epll(unsigned int pllval, unsigned int baseclk)
 	return (unsigned int)fvco;
 }
 
+static inline void s3c_hsudc_init_phy(void)
+{
+	u32 cfg;
+
+	cfg = readl(S3C2443_PWRCFG) | S3C2443_PWRCFG_USBPHY;
+	writel(cfg, S3C2443_PWRCFG);
+
+	cfg = readl(S3C2443_URSTCON);
+	cfg |= (S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
+	writel(cfg, S3C2443_URSTCON);
+	mdelay(1);
+
+	cfg = readl(S3C2443_URSTCON);
+	cfg &= ~(S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
+	writel(cfg, S3C2443_URSTCON);
+
+	cfg = readl(S3C2443_PHYCTRL);
+	cfg &= ~(S3C2443_PHYCTRL_CLKSEL | S3C2443_PHYCTRL_DSPORT);
+	cfg |= (S3C2443_PHYCTRL_EXTCLK | S3C2443_PHYCTRL_PLLSEL);
+	writel(cfg, S3C2443_PHYCTRL);
+
+	cfg = readl(S3C2443_PHYPWR);
+	cfg &= ~(S3C2443_PHYPWR_FSUSPEND | S3C2443_PHYPWR_PLL_PWRDN |
+		S3C2443_PHYPWR_XO_ON | S3C2443_PHYPWR_PLL_REFCLK |
+		S3C2443_PHYPWR_ANALOG_PD);
+	cfg |= S3C2443_PHYPWR_COMMON_ON;
+	writel(cfg, S3C2443_PHYPWR);
+
+	cfg = readl(S3C2443_UCLKCON);
+	cfg |= (S3C2443_UCLKCON_DETECT_VBUS | S3C2443_UCLKCON_FUNC_CLKEN |
+		S3C2443_UCLKCON_TCLKEN);
+	writel(cfg, S3C2443_UCLKCON);
+}
+
+static inline void s3c_hsudc_uninit_phy(void)
+{
+	u32 cfg;
+
+	cfg = readl(S3C2443_PWRCFG) & ~S3C2443_PWRCFG_USBPHY;
+	writel(cfg, S3C2443_PWRCFG);
+
+	writel(S3C2443_PHYPWR_FSUSPEND, S3C2443_PHYPWR);
+
+	cfg = readl(S3C2443_UCLKCON) & ~S3C2443_UCLKCON_FUNC_CLKEN;
+	writel(cfg, S3C2443_UCLKCON);
+}
+
 #endif /*  __ASM_ARM_REGS_S3C2443_CLOCK */
 
diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
index 1d1fa068d228..6e4c1cb07104 100644
--- a/arch/arm/plat-samsung/devs.c
+++ b/arch/arm/plat-samsung/devs.c
@@ -40,6 +40,7 @@
 #include <mach/dma.h>
 #include <mach/irqs.h>
 #include <mach/map.h>
+#include <mach/regs-s3c2443-clock.h>
 
 #include <plat/cpu.h>
 #include <plat/devs.h>
@@ -1038,6 +1039,8 @@ struct platform_device s3c_device_usb_hsudc = {
 void __init s3c24xx_hsudc_set_platdata(struct s3c24xx_hsudc_platdata *pd)
 {
 	s3c_set_platdata(pd, sizeof(*pd), &s3c_device_usb_hsudc);
+	pd->phy_init = s3c_hsudc_init_phy;
+	pd->phy_uninit = s3c_hsudc_uninit_phy;
 }
 #endif /* CONFIG_PLAT_S3C24XX */
 
diff --git a/drivers/usb/gadget/udc/s3c-hsudc.c b/drivers/usb/gadget/udc/s3c-hsudc.c
index 858993c73442..d482cbb4bb4d 100644
--- a/drivers/usb/gadget/udc/s3c-hsudc.c
+++ b/drivers/usb/gadget/udc/s3c-hsudc.c
@@ -30,8 +30,6 @@
 #include <linux/regulator/consumer.h>
 #include <linux/pm_runtime.h>
 
-#include <mach/regs-s3c2443-clock.h>
-
 #define S3C_HSUDC_REG(x)	(x)
 
 /* Non-Indexed Registers */
@@ -186,53 +184,6 @@ static inline void __orr32(void __iomem *ptr, u32 val)
 	writel(readl(ptr) | val, ptr);
 }
 
-static void s3c_hsudc_init_phy(void)
-{
-	u32 cfg;
-
-	cfg = readl(S3C2443_PWRCFG) | S3C2443_PWRCFG_USBPHY;
-	writel(cfg, S3C2443_PWRCFG);
-
-	cfg = readl(S3C2443_URSTCON);
-	cfg |= (S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
-	writel(cfg, S3C2443_URSTCON);
-	mdelay(1);
-
-	cfg = readl(S3C2443_URSTCON);
-	cfg &= ~(S3C2443_URSTCON_FUNCRST | S3C2443_URSTCON_PHYRST);
-	writel(cfg, S3C2443_URSTCON);
-
-	cfg = readl(S3C2443_PHYCTRL);
-	cfg &= ~(S3C2443_PHYCTRL_CLKSEL | S3C2443_PHYCTRL_DSPORT);
-	cfg |= (S3C2443_PHYCTRL_EXTCLK | S3C2443_PHYCTRL_PLLSEL);
-	writel(cfg, S3C2443_PHYCTRL);
-
-	cfg = readl(S3C2443_PHYPWR);
-	cfg &= ~(S3C2443_PHYPWR_FSUSPEND | S3C2443_PHYPWR_PLL_PWRDN |
-		S3C2443_PHYPWR_XO_ON | S3C2443_PHYPWR_PLL_REFCLK |
-		S3C2443_PHYPWR_ANALOG_PD);
-	cfg |= S3C2443_PHYPWR_COMMON_ON;
-	writel(cfg, S3C2443_PHYPWR);
-
-	cfg = readl(S3C2443_UCLKCON);
-	cfg |= (S3C2443_UCLKCON_DETECT_VBUS | S3C2443_UCLKCON_FUNC_CLKEN |
-		S3C2443_UCLKCON_TCLKEN);
-	writel(cfg, S3C2443_UCLKCON);
-}
-
-static void s3c_hsudc_uninit_phy(void)
-{
-	u32 cfg;
-
-	cfg = readl(S3C2443_PWRCFG) & ~S3C2443_PWRCFG_USBPHY;
-	writel(cfg, S3C2443_PWRCFG);
-
-	writel(S3C2443_PHYPWR_FSUSPEND, S3C2443_PHYPWR);
-
-	cfg = readl(S3C2443_UCLKCON) & ~S3C2443_UCLKCON_FUNC_CLKEN;
-	writel(cfg, S3C2443_UCLKCON);
-}
-
 /**
  * s3c_hsudc_complete_request - Complete a transfer request.
  * @hsep: Endpoint to which the request belongs.
@@ -1188,7 +1139,8 @@ static int s3c_hsudc_start(struct usb_gadget *gadget,
 
 	pm_runtime_get_sync(hsudc->dev);
 
-	s3c_hsudc_init_phy();
+	if (hsudc->pd->phy_init)
+		hsudc->pd->gpio_init();
 	if (hsudc->pd->gpio_init)
 		hsudc->pd->gpio_init();
 
@@ -1210,7 +1162,8 @@ static int s3c_hsudc_stop(struct usb_gadget *gadget)
 
 	spin_lock_irqsave(&hsudc->lock, flags);
 	hsudc->gadget.speed = USB_SPEED_UNKNOWN;
-	s3c_hsudc_uninit_phy();
+	if (hsudc->pd->phy_uninit)
+		hsudc->pd->phy_uninit();
 
 	pm_runtime_put(hsudc->dev);
 
diff --git a/include/linux/platform_data/s3c-hsudc.h b/include/linux/platform_data/s3c-hsudc.h
index 4dc9b8760166..a170939832d5 100644
--- a/include/linux/platform_data/s3c-hsudc.h
+++ b/include/linux/platform_data/s3c-hsudc.h
@@ -26,6 +26,8 @@ struct s3c24xx_hsudc_platdata {
 	unsigned int	epnum;
 	void		(*gpio_init)(void);
 	void		(*gpio_uninit)(void);
+	void		(*phy_init)(void);
+	void		(*phy_uninit)(void);
 };
 
 #endif	/* __LINUX_USB_S3C_HSUDC_H */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
