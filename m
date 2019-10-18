Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E11DC9D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10U0n5BLVEbEm6PNJZa5UPfXthPuyU5L7+UsdbxqoB4=; b=KcylrYoUyAInFx
	gN4BGbRbgXZuHPSxVRdVIosLwvxVysKw5VX57adllTaThM05yA7xXUuMrtEjJgnw9VRNP0mMN0uYc
	c8V+AR/yu4pBDx5i98WaA5tXttd61ZSsAiAsmYqNq9h+VGMGXHsQdeddSoXSKyI8aG/Uyr14iIUZJ
	UoUoN+eFnoe6aDYrUb44WP3xEK7BO7PfZ4XxWML0QeXa5ay5NhXFtpl2jpRPd+94ZqzFjE9Co5v3I
	4nXJMpdHyJH5hgonEcWz5T/4Dq/XueYzFFue3ByvIjhdmXS4ahD2k9cpivWetnkKh2zPC9PVb9XEo
	WV9GMNOM/dQbfS15UyIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUYZ-0002Rc-J5; Fri, 18 Oct 2019 15:52:47 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOi-00089R-P1
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:47 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MuDTn-1i2IO339BN-00udfc; Fri, 18 Oct 2019 17:42:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 32/46] ASoC: pxa: i2s: use normal MMIO accessors
Date: Fri, 18 Oct 2019 17:41:47 +0200
Message-Id: <20191018154201.1276638-32-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:8pRWu6uq3fnLWNVhGe9IAYwemFoTZzOIze0Vmw1zkUgUiQnLpI5
 eIx7dzPS2Qs7fTLTifKNCpiF8RKl1kGiXQiuxkHWV7/jDQkQgAnLXq1bIiYmuSMpjTAK4Cw
 RI7vCXdLXzmkmE9GmYctuOGrW/ya7Rz/ccyviA4P4oZkjECEXFpFoldLE8cg2yIuCbauDaF
 b52AsuD0YkBcOV1XdvW0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UBfa0LjafV8=:kBVm4ETxav94hZpT19bZy3
 bCqjAF9BFrLzfVfrwGV7NX/T8auFywunvMfIXXCb9Hj+6KXp54Y90AsuaOG/gbb3bh22kk7k4
 LLqLP+axjAtb9AlL/t1vWdm736EJ04dOuJ8NulKtHo2ysxJ6dq+yzoYVap7MZxRaRG8xqv53i
 AbL69FOs7t+Oc9yv81w9gytXZYbRGbhYR4ZR6mJptz3dQRjpIm2K6EMggH7cYGkxYiYFsyS9I
 qQ5bkM0iAnMo7+PgNdxGNzwjqcwCGSot/KPTiH7nh8QIsGnH8IRWpmLeuqkv8yD2/LWIXJOJQ
 3cYIeOxdUGOx/iPd/tLGpxXx2F6yzsAiqhV8NxNH6NzXLNjXB4OKlW4OiadYWAeVbIo6zvGlb
 +KJC1YtO62C/gKlE8a2NbuArZKkb0oHR9W+hNRSafgabg/3hatsA/2ZurHSUJNVVwjmL98Rjx
 h6oYSZwao4nX3egTjWjVoTLINbT9nFyD6NhxePP2WT5OW2QeKXkNGF2rsGpdzWv+dvfMJwMDy
 LXCLO1fePkO7qTNpUzOu/9yrovImluESl7G635nnadJfg50gU9ejwQqUrZ3pN3BTd1rF5pdkh
 JkTjia++LS2yhbwwRU0WuHtwrIsvcIko+6CvYRSGo5dHOtheRa2AdOmpAG6+F3fBoiYtkjiGq
 a9R8i+3wy0GaV1bTTdPg1g9jBxVcHt3775vbMJH8UtJqbUiFduDmkX+l8Fw+bE8VYv2DaPpGC
 hbeuK8QaScUdXsLhNHwQZfKGl0f+58rutiK0jf6N9Po+UAJO3Vc7713PYWoQgEz5SzfMm4KXm
 uxTSqCwtakTUlr1dmTJHtK1fWgBagpRKr8IjddidncIf9Flpi/LkqvalTwSBmHme5VK2WDZ3k
 MH/FvIU5Jq8FJW7pSxSA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084237_171723_014AE49D 
X-CRM114-Status: GOOD (  19.76  )
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To avoid dereferencing hardwired constant pointers from a global header
file, change the driver to use devm_platform_ioremap_resource for getting
an __iomem pointer, and then using readl/writel on that.

Each pointer dereference gets changed by a search&replace, which leads
to a few overlong lines, but seems less risky than trying to clean up
the code at the same time.

Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/pxa/pxa2xx-i2s.c | 110 +++++++++++++++++++++----------------
 1 file changed, 62 insertions(+), 48 deletions(-)

diff --git a/sound/soc/pxa/pxa2xx-i2s.c b/sound/soc/pxa/pxa2xx-i2s.c
index 583b2de897c7..e7ded1d7de9a 100644
--- a/sound/soc/pxa/pxa2xx-i2s.c
+++ b/sound/soc/pxa/pxa2xx-i2s.c
@@ -21,7 +21,6 @@
 #include <sound/pxa2xx-lib.h>
 #include <sound/dmaengine_pcm.h>
 
-#include <mach/pxa-regs.h>
 #include <linux/platform_data/asoc-pxa.h>
 
 #include "pxa2xx-i2s.h"
@@ -29,13 +28,13 @@
 /*
  * I2S Controller Register and Bit Definitions
  */
-#define SACR0		__REG(0x40400000)  /* Global Control Register */
-#define SACR1		__REG(0x40400004)  /* Serial Audio I 2 S/MSB-Justified Control Register */
-#define SASR0		__REG(0x4040000C)  /* Serial Audio I 2 S/MSB-Justified Interface and FIFO Status Register */
-#define SAIMR		__REG(0x40400014)  /* Serial Audio Interrupt Mask Register */
-#define SAICR		__REG(0x40400018)  /* Serial Audio Interrupt Clear Register */
-#define SADIV		__REG(0x40400060)  /* Audio Clock Divider Register. */
-#define SADR		__REG(0x40400080)  /* Serial Audio Data Register (TX and RX FIFO access Register). */
+#define SACR0		(0x0000)	/* Global Control Register */
+#define SACR1		(0x0004)	/* Serial Audio I 2 S/MSB-Justified Control Register */
+#define SASR0		(0x000C)	/* Serial Audio I 2 S/MSB-Justified Interface and FIFO Status Register */
+#define SAIMR		(0x0014)	/* Serial Audio Interrupt Mask Register */
+#define SAICR		(0x0018)	/* Serial Audio Interrupt Clear Register */
+#define SADIV		(0x0060)	/* Audio Clock Divider Register. */
+#define SADR		(0x0080)	/* Serial Audio Data Register (TX and RX FIFO access Register). */
 
 #define SACR0_RFTH(x)	((x) << 12)	/* Rx FIFO Interrupt or DMA Trigger Threshold */
 #define SACR0_TFTH(x)	((x) << 8)	/* Tx FIFO Interrupt or DMA Trigger Threshold */
@@ -77,16 +76,15 @@ struct pxa_i2s_port {
 static struct pxa_i2s_port pxa_i2s;
 static struct clk *clk_i2s;
 static int clk_ena = 0;
+static void __iomem *i2s_reg_base;
 
 static struct snd_dmaengine_dai_dma_data pxa2xx_i2s_pcm_stereo_out = {
-	.addr		= __PREG(SADR),
 	.addr_width	= DMA_SLAVE_BUSWIDTH_4_BYTES,
 	.chan_name	= "tx",
 	.maxburst	= 32,
 };
 
 static struct snd_dmaengine_dai_dma_data pxa2xx_i2s_pcm_stereo_in = {
-	.addr		= __PREG(SADR),
 	.addr_width	= DMA_SLAVE_BUSWIDTH_4_BYTES,
 	.chan_name	= "rx",
 	.maxburst	= 32,
@@ -102,7 +100,7 @@ static int pxa2xx_i2s_startup(struct snd_pcm_substream *substream,
 		return PTR_ERR(clk_i2s);
 
 	if (!cpu_dai->active)
-		SACR0 = 0;
+		writel(0, i2s_reg_base + SACR0);
 
 	return 0;
 }
@@ -114,7 +112,7 @@ static int pxa_i2s_wait(void)
 
 	/* flush the Rx FIFO */
 	for (i = 0; i < 16; i++)
-		SADR;
+		readl(i2s_reg_base + SADR);
 	return 0;
 }
 
@@ -174,39 +172,39 @@ static int pxa2xx_i2s_hw_params(struct snd_pcm_substream *substream,
 
 	/* is port used by another stream */
 	if (!(SACR0 & SACR0_ENB)) {
-		SACR0 = 0;
+		writel(0, i2s_reg_base + SACR0);
 		if (pxa_i2s.master)
-			SACR0 |= SACR0_BCKD;
+			writel(readl(i2s_reg_base + SACR0) | (SACR0_BCKD), i2s_reg_base + SACR0);
 
-		SACR0 |= SACR0_RFTH(14) | SACR0_TFTH(1);
-		SACR1 |= pxa_i2s.fmt;
+		writel(readl(i2s_reg_base + SACR0) | (SACR0_RFTH(14) | SACR0_TFTH(1)), i2s_reg_base + SACR0);
+		writel(readl(i2s_reg_base + SACR1) | (pxa_i2s.fmt), i2s_reg_base + SACR1);
 	}
 	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
-		SAIMR |= SAIMR_TFS;
+		writel(readl(i2s_reg_base + SAIMR) | (SAIMR_TFS), i2s_reg_base + SAIMR);
 	else
-		SAIMR |= SAIMR_RFS;
+		writel(readl(i2s_reg_base + SAIMR) | (SAIMR_RFS), i2s_reg_base + SAIMR);
 
 	switch (params_rate(params)) {
 	case 8000:
-		SADIV = 0x48;
+		writel(0x48, i2s_reg_base + SADIV);
 		break;
 	case 11025:
-		SADIV = 0x34;
+		writel(0x34, i2s_reg_base + SADIV);
 		break;
 	case 16000:
-		SADIV = 0x24;
+		writel(0x24, i2s_reg_base + SADIV);
 		break;
 	case 22050:
-		SADIV = 0x1a;
+		writel(0x1a, i2s_reg_base + SADIV);
 		break;
 	case 44100:
-		SADIV = 0xd;
+		writel(0xd, i2s_reg_base + SADIV);
 		break;
 	case 48000:
-		SADIV = 0xc;
+		writel(0xc, i2s_reg_base + SADIV);
 		break;
 	case 96000: /* not in manual and possibly slightly inaccurate */
-		SADIV = 0x6;
+		writel(0x6, i2s_reg_base + SADIV);
 		break;
 	}
 
@@ -221,10 +219,10 @@ static int pxa2xx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
 		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
-			SACR1 &= ~SACR1_DRPL;
+			writel(readl(i2s_reg_base + SACR1) & (~SACR1_DRPL), i2s_reg_base + SACR1);
 		else
-			SACR1 &= ~SACR1_DREC;
-		SACR0 |= SACR0_ENB;
+			writel(readl(i2s_reg_base + SACR1) & (~SACR1_DREC), i2s_reg_base + SACR1);
+		writel(readl(i2s_reg_base + SACR0) | (SACR0_ENB), i2s_reg_base + SACR0);
 		break;
 	case SNDRV_PCM_TRIGGER_RESUME:
 	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
@@ -243,15 +241,15 @@ static void pxa2xx_i2s_shutdown(struct snd_pcm_substream *substream,
 				struct snd_soc_dai *dai)
 {
 	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
-		SACR1 |= SACR1_DRPL;
-		SAIMR &= ~SAIMR_TFS;
+		writel(readl(i2s_reg_base + SACR1) | (SACR1_DRPL), i2s_reg_base + SACR1);
+		writel(readl(i2s_reg_base + SAIMR) & (~SAIMR_TFS), i2s_reg_base + SAIMR);
 	} else {
-		SACR1 |= SACR1_DREC;
-		SAIMR &= ~SAIMR_RFS;
+		writel(readl(i2s_reg_base + SACR1) | (SACR1_DREC), i2s_reg_base + SACR1);
+		writel(readl(i2s_reg_base + SAIMR) & (~SAIMR_RFS), i2s_reg_base + SAIMR);
 	}
 
-	if ((SACR1 & (SACR1_DREC | SACR1_DRPL)) == (SACR1_DREC | SACR1_DRPL)) {
-		SACR0 &= ~SACR0_ENB;
+	if ((readl(i2s_reg_base + SACR1) & (SACR1_DREC | SACR1_DRPL)) == (SACR1_DREC | SACR1_DRPL)) {
+		writel(readl(i2s_reg_base + SACR0) & (~SACR0_ENB), i2s_reg_base + SACR0);
 		pxa_i2s_wait();
 		if (clk_ena) {
 			clk_disable_unprepare(clk_i2s);
@@ -264,13 +262,13 @@ static void pxa2xx_i2s_shutdown(struct snd_pcm_substream *substream,
 static int pxa2xx_i2s_suspend(struct snd_soc_dai *dai)
 {
 	/* store registers */
-	pxa_i2s.sacr0 = SACR0;
-	pxa_i2s.sacr1 = SACR1;
-	pxa_i2s.saimr = SAIMR;
-	pxa_i2s.sadiv = SADIV;
+	pxa_i2s.sacr0 = readl(i2s_reg_base + SACR0);
+	pxa_i2s.sacr1 = readl(i2s_reg_base + SACR1);
+	pxa_i2s.saimr = readl(i2s_reg_base + SAIMR);
+	pxa_i2s.sadiv = readl(i2s_reg_base + SADIV);
 
 	/* deactivate link */
-	SACR0 &= ~SACR0_ENB;
+	writel(readl(i2s_reg_base + SACR0) & (~SACR0_ENB), i2s_reg_base + SACR0);
 	pxa_i2s_wait();
 	return 0;
 }
@@ -279,12 +277,12 @@ static int pxa2xx_i2s_resume(struct snd_soc_dai *dai)
 {
 	pxa_i2s_wait();
 
-	SACR0 = pxa_i2s.sacr0 & ~SACR0_ENB;
-	SACR1 = pxa_i2s.sacr1;
-	SAIMR = pxa_i2s.saimr;
-	SADIV = pxa_i2s.sadiv;
+	writel(pxa_i2s.sacr0 & ~SACR0_ENB, i2s_reg_base + SACR0);
+	writel(pxa_i2s.sacr1, i2s_reg_base + SACR1);
+	writel(pxa_i2s.saimr, i2s_reg_base + SAIMR);
+	writel(pxa_i2s.sadiv, i2s_reg_base + SADIV);
 
-	SACR0 = pxa_i2s.sacr0;
+	writel(pxa_i2s.sacr0, i2s_reg_base + SACR0);
 
 	return 0;
 }
@@ -306,12 +304,12 @@ static int pxa2xx_i2s_probe(struct snd_soc_dai *dai)
 	 * the SACR0[RST] bit must also be set and cleared to reset all
 	 * I2S controller registers.
 	 */
-	SACR0 = SACR0_RST;
-	SACR0 = 0;
+	writel(SACR0_RST, i2s_reg_base + SACR0);
+	writel(0, i2s_reg_base + SACR0);
 	/* Make sure RPL and REC are disabled */
-	SACR1 = SACR1_DRPL | SACR1_DREC;
+	writel(SACR1_DRPL | SACR1_DREC, i2s_reg_base + SACR1);
 	/* Along with FIFO servicing */
-	SAIMR &= ~(SAIMR_RFS | SAIMR_TFS);
+	writel(readl(i2s_reg_base + SAIMR) & (~(SAIMR_RFS | SAIMR_TFS)), i2s_reg_base + SAIMR);
 
 	snd_soc_dai_init_dma_data(dai, &pxa2xx_i2s_pcm_stereo_out,
 		&pxa2xx_i2s_pcm_stereo_in);
@@ -367,6 +365,22 @@ static const struct snd_soc_component_driver pxa_i2s_component = {
 
 static int pxa2xx_i2s_drv_probe(struct platform_device *pdev)
 {
+	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+
+	if (!res) {
+		dev_err(&pdev->dev, "missing MMIO resource\n");
+		return -ENXIO;
+	}
+
+	i2s_reg_base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(i2s_reg_base)) {
+		dev_err(&pdev->dev, "ioremap failed\n");
+		return PTR_ERR(i2s_reg_base);
+	}
+
+	pxa2xx_i2s_pcm_stereo_out.addr = res->start + SADR;
+	pxa2xx_i2s_pcm_stereo_in.addr = res->start + SADR;
+
 	return devm_snd_soc_register_component(&pdev->dev, &pxa_i2s_component,
 					       &pxa_i2s_dai, 1);
 }
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
