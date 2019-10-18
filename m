Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FD8DC94A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJowE3ol/oIxoA+gbVBilczgPiw4TMdPWOHdliE4sVA=; b=C4CejyxMmzUagE
	m4lhcJGD6UVFrMVOOPoCj7YFFdQ7JPKYRZpkXuaiQNRqU46AJXNRd4Ihd9Nc1sHN8vojiJxtcEQSZ
	6ZNhlmB/vz6rE8O5jGp39PXf+HF1HJtFjXB2v8UjQauTeXnrszuq6R+i9jmjJVhZlujxdmG13dM2E
	JEbxR6yyBQ0L5MMElrH4ZQxvz4n/hJ5jFLE8INsm3RU0ocK+xaxbPDJqYw8bu75/Qz3tha3wN/54r
	xB6GNqNvIuJqaZ78xxLYxh+1Cu/hgVRAvXoXcqw6Oo/LLYYauS5K/OCUheX07uhBSKK0jVvIi3dH3
	9bERRhwkc6p/o2kRVjVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUTV-0004Qq-Vo; Fri, 18 Oct 2019 15:47:33 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOc-00083p-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:36 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M3UdI-1iM2cm1zbW-000bi3; Fri, 18 Oct 2019 17:42:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 10/46] ARM: pxa: pxa2xx-ac97-lib: use IRQ resource
Date: Fri, 18 Oct 2019 17:41:25 +0200
Message-Id: <20191018154201.1276638-10-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ohXLc/rKHD3S0qlftz4r0qHFku7fe6p+1ct87Kb4VLl6S2fZF1V
 iGCq0WFspg+WijCvfLITNxSD/Wxoicw6WYyOj7Oew32wHt9rtFM4cZbUl6MFjgYnwS5aJwp
 gnY12Cf8fZ+beQoQBVvDnqYITrRIeU3MnbcDHDCb+osw0wruJFcEWNYc2htFYZdifop/Ijr
 aNUEF2uzfNwNBWZqoHDhQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+5ta5rdfDEU=:cAi+iWvuqWj7bT0cLJh0d1
 jB20bnFKegpC31k2ZLI5eH2UfPsYMwACCYdEORmmXOTWhJBllOslDxD5IeNy+5EtV6boYIiSP
 Qu9ToTNhpEJXM186zH94RpSoLPZiMHcUj3GKtnwz2aiT9BFJ9NgAYaDAkOpkUc1jlAPOAA+H7
 2iCKyaoty5fBW8UdvHKcCeH4z0hfqedBTSw3W4bUKxQfJEeH9Vigmy/4yo1X3WGSGlnMrR9Us
 ttTz1f2JSaE8kYijcS0cS1efCLs/Vo8un5yKvAmkMZ7cDw6gQ1MRhK6JcKYOtZ5Ekvpd1lWu2
 yma6lMIoGokc1yM5OGkD7iTDad1OkLlmb/ck0x/LdO292YGQxl4xOXL70mVapMLmESVKA5A1r
 LQmBDtotsjbz/HZBG/k1OZW8via4xXJxYWp8WYCXE1qXgqndM6TH4eClXYABy0l9ZMOMK7z1W
 QxnWBrQycoErlG5xd9fmY3jRqmAZcj+ys3XfBproU8Q01bTZV6keemePaXoIYdmSKInqpbHkF
 zAuNiGGyqPogbvRTigFf+m34Ua3iCpKxsRltBbC8KG8YLZNRxRYxxfzmZ8yEC6nntxdgiuxkS
 pEKrz6cf3856i9E2Cyhq4XGMutylHcn+0PzSY2nyNWAtNrAHI6WmpuRJ2doI1fRSeFYAaTaiM
 3fnUu+4xerpLucJ3i5bDuo+23x3B1/QvCkGzic/i6D3+mLjygLuvxPEkVX7+XTqt5QShkxMxU
 lvOghBI8NsW5Q+0YKNM3V5FdMbW+N7wiNumgVoiXhXxRBDMW3Xl6TMZN9eZ2OlUNZTyXPHCw2
 H/5NdjtQYgnr1D78grhXvf4QML7HDCJqyezKQ/2w7BCE0OaK50xmO58vNIqmBH0ob8Cce7Jgg
 Zdt5GCT5KmIRVpERms6w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084230_848597_8E74E552 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Linus Walleij <linus.walleij@linaro.org>, alsa-devel@alsa-project.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pxa2xx-ac97-lib code is the last driver to use mach/irqs.h
for PXA. Almost everything already passes the interrupt as
a resource, so use it from there.

The one exception is the mxm8x10 machine, which apparently has
a resource-less device. Replacing it with the correct one
enables the driver here as well.

Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/mxm8x10.c |  8 ++------
 sound/arm/pxa2xx-ac97-lib.c | 10 +++++++---
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-pxa/mxm8x10.c b/arch/arm/mach-pxa/mxm8x10.c
index fde386f6cffe..35546b59c88e 100644
--- a/arch/arm/mach-pxa/mxm8x10.c
+++ b/arch/arm/mach-pxa/mxm8x10.c
@@ -26,6 +26,7 @@
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
+#include <linux/platform_data/asoc-pxa.h>
 #include "pxa320.h"
 
 #include "mxm8x10.h"
@@ -356,14 +357,9 @@ void __init mxm_8x10_usb_host_init(void)
 	pxa_set_ohci_info(&mxm_8x10_ohci_platform_data);
 }
 
-/* AC97 Sound Support */
-static struct platform_device mxm_8x10_ac97_device = {
-	.name = "pxa2xx-ac97"
-};
-
 void __init mxm_8x10_ac97_init(void)
 {
-	platform_device_register(&mxm_8x10_ac97_device);
+	pxa_set_ac97_info(NULL);
 }
 
 /* NAND flash Support */
diff --git a/sound/arm/pxa2xx-ac97-lib.c b/sound/arm/pxa2xx-ac97-lib.c
index 9b5c1f0f8998..8c79d224f03b 100644
--- a/sound/arm/pxa2xx-ac97-lib.c
+++ b/sound/arm/pxa2xx-ac97-lib.c
@@ -21,7 +21,6 @@
 
 #include <sound/pxa2xx-lib.h>
 
-#include <mach/irqs.h>
 #include <mach/regs-ac97.h>
 #include <linux/platform_data/asoc-pxa.h>
 
@@ -319,6 +318,7 @@ EXPORT_SYMBOL_GPL(pxa2xx_ac97_hw_resume);
 int pxa2xx_ac97_hw_probe(struct platform_device *dev)
 {
 	int ret;
+	int irq;
 	pxa2xx_audio_ops_t *pdata = dev->dev.platform_data;
 
 	if (pdata) {
@@ -387,7 +387,11 @@ int pxa2xx_ac97_hw_probe(struct platform_device *dev)
 	if (ret)
 		goto err_clk2;
 
-	ret = request_irq(IRQ_AC97, pxa2xx_ac97_irq, 0, "AC97", NULL);
+	irq = platform_get_irq(dev, 0);
+	if (!irq)
+		goto err_irq;
+
+	ret = request_irq(irq, pxa2xx_ac97_irq, 0, "AC97", NULL);
 	if (ret < 0)
 		goto err_irq;
 
@@ -413,7 +417,7 @@ void pxa2xx_ac97_hw_remove(struct platform_device *dev)
 	if (cpu_is_pxa27x())
 		gpio_free(reset_gpio);
 	GCR |= GCR_ACLINK_OFF;
-	free_irq(IRQ_AC97, NULL);
+	free_irq(platform_get_irq(dev, 0), NULL);
 	if (ac97conf_clk) {
 		clk_put(ac97conf_clk);
 		ac97conf_clk = NULL;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
