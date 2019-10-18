Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED84DCA01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDpK5bwziay/3BmjnH1p1bITeNiysWpG1zEfVR2u5n4=; b=LgZVk3k3cvHIKh
	bM0gdrvtSY9p5p2TJvk9skFSDypbXSjj9ye9mu5CtXL3DZhzTd7fy7GQiwD4aXVGOXiIkCJEU/peK
	DgsgprDp3It+sb5O5vlg6irw0Zr2Xl1Y4bHhX3l9SmTk8IqueWQBypqpwn6M3f0ogyQRhrBgH8Uie
	UeOCdfqtmJfR3SAPBkSSMfpHjf49MneTF+hNiECFGSnqZ4IGHceNFhJCma5x85uTNh9NGV7CkAE8N
	8SaNv0yVpoF6FlyoKwUMUrWVyOau/c/wf5iFs5OGW87fbw59ioIr/GwkYaDmChlY/1d7T8p56O9MF
	B4473cPSui+oIyK0RvEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUdH-0007q5-ND; Fri, 18 Oct 2019 15:57:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUWY-0007sw-8N
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a+h18yxcIVwgXQIucGUEl4SUZq9aFm2855gdf2ltw7s=; b=H05L34VPGfIO4KNPIkngx3K2it
 DemHMjeyKimAK6weH5awUeOPE5U/Z4SwzrSXxsdtJYNtTEiGR48LXDJXaVVwj99bOnsur5EsjP1Ez
 NNX+imGN/Oc9n4qTE9C9ZiBT4euzwN6t3qqHxR57MJT72+zbtZxR5jWR7puS15vlyKkENKNh1EBAk
 dJuErEwmlNYfXmtwmjqVVi2Jbt4K2cQPZIM1FLlIKS3ABmdPHFNRxYfG1iqpuxg7zVvGjR3P5nBiB
 mxHOggEqt9LiiAKJXPUUAzv/pYLlhwCFcYNbcqeYx1pu6DQAiUa9RCWrUBKpqPlSxPKOm5bG6XcQc
 FOYBfcTQ==;
Received: from mout.kundenserver.de ([212.227.17.13])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUP7-0002DC-UE
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:43:03 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MKbXu-1ibuFm0USC-00L1jl; Fri, 18 Oct 2019 17:42:30 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 30/46] SoC: pxa: use pdev resource for FIFO regs
Date: Fri, 18 Oct 2019 17:41:45 +0200
Message-Id: <20191018154201.1276638-30-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:JnyiR7rxqnAnO9BolIMCAtr756n0YCtxDEUDXWA0qY34R6AhKmw
 JIS6nus6XOfzi/0EFukEBpCihUFcq4KDlzoAh3G+v5xAoBL+UjfTnccuvUl2RbRgXj1CrWl
 S72O66Yd0/wThsj3sCDsF7yvfEq6ML3/xAJUucEGi/0xa3Pd5QkcWl7ryGzRO53qiiI072v
 Yx76SnTUIfT8I6fDNL54Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KidX8pZMFC8=:XCbuwKMNPuxxsgY+EWmE+8
 NYw8+N0UXRTkGdvBirUjzDp7wzwI42Dt0xuGG89pqCJhqIVDCgGakQLQ4M2x94cX5hG/APMrE
 lAh28BAwA5DMsfIqaUdOrngo8N6sSRtIUrJb18qIcpj9Jc+BrfSGgmR7bP+ln6421gg/bp4HS
 bIN92XgUWekVG+OBarxbvtNZqb3SIkBQP4bS2vtTT2QrssuiLEH3i3PafxFwP/u2njPLVHsZl
 7EwBCSJl9D5bqrAtdex6beRJLEeAPoXijoSmza/gOTBOpC9b9toPErH/fbHSoND6LWHJCnuPE
 +BhiDBEhgSqh0i8awtuhArhp1eBLUiWXwK3WV+ShQYjnbPUz9OupLUfbqNxiYc2IKWwl6SbsH
 tCRJERTbqeeFt4lS0k1wAWzm+zqp3tbQM6yhUBkikrIXdlT/416v+fZGBzIMp9bf5wu7yEvie
 hJnFHnJQ3szUkvEYbq+1fxyKmnec1ot16eGfsp941nVS3MefWLTMRsgFcjmhi+S4S+o+p3eYW
 BT+VPjAAEhgO6wsDdwK+rBNLDZC0DzyxteiVS7XS+R7cbUH2+ml/dN4kwoRwhb2NELsOj+qze
 dgdOVAK2CZzBW7MEZwv+ocrHLJ8QUnQBfq0z7OtCPd2fNNxr6F2SxYqxWOjxhHu6fq6+a7ea9
 EkNbWd7RigP1QwXwzVp8JLFKkhnY+Stlt3dkOqIvTjFCh6QT4+POSWUzu/Ln2ZQye3SjCJdVS
 Yec/pO/nUFBLF4Bhc+8KxIuswH6KaqKLsvEFqfmDF5pRYrsbFu44jnKFXnZzLTMYPGZ4ESZ1o
 7M6DYIQUZPaiO93OUq48eqrc9fnopwPT1AhWiBrjNtQOeUGLUt6BQI9JTEoEKi3Te5SgTIbd2
 xTEXU2HDMa+Fro1lEUzw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164302_035778_A265294A 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver currently takes the hardwired FIFO address from
a header file that we want to eliminate. Change it to use
the mmio resource instead and stop including the heare.

Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/pxa/pxa2xx-ac97.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/sound/soc/pxa/pxa2xx-ac97.c b/sound/soc/pxa/pxa2xx-ac97.c
index 2138106fed23..4fd97c50aa2c 100644
--- a/sound/soc/pxa/pxa2xx-ac97.c
+++ b/sound/soc/pxa/pxa2xx-ac97.c
@@ -21,10 +21,12 @@
 #include <sound/pxa2xx-lib.h>
 #include <sound/dmaengine_pcm.h>
 
-#include <mach/pxa-regs.h>
-#include <mach/regs-ac97.h>
 #include <linux/platform_data/asoc-pxa.h>
 
+#define PCDR	0x0040  /* PCM FIFO Data Register */
+#define MODR	0x0140  /* Modem FIFO Data Register */
+#define MCDR	0x0060  /* Mic-in FIFO Data Register */
+
 static void pxa2xx_ac97_warm_reset(struct ac97_controller *adrv)
 {
 	pxa2xx_ac97_try_warm_reset();
@@ -59,35 +61,30 @@ static struct ac97_controller_ops pxa2xx_ac97_ops = {
 };
 
 static struct snd_dmaengine_dai_dma_data pxa2xx_ac97_pcm_stereo_in = {
-	.addr		= __PREG(PCDR),
 	.addr_width	= DMA_SLAVE_BUSWIDTH_4_BYTES,
 	.chan_name	= "pcm_pcm_stereo_in",
 	.maxburst	= 32,
 };
 
 static struct snd_dmaengine_dai_dma_data pxa2xx_ac97_pcm_stereo_out = {
-	.addr		= __PREG(PCDR),
 	.addr_width	= DMA_SLAVE_BUSWIDTH_4_BYTES,
 	.chan_name	= "pcm_pcm_stereo_out",
 	.maxburst	= 32,
 };
 
 static struct snd_dmaengine_dai_dma_data pxa2xx_ac97_pcm_aux_mono_out = {
-	.addr		= __PREG(MODR),
 	.addr_width	= DMA_SLAVE_BUSWIDTH_2_BYTES,
 	.chan_name	= "pcm_aux_mono_out",
 	.maxburst	= 16,
 };
 
 static struct snd_dmaengine_dai_dma_data pxa2xx_ac97_pcm_aux_mono_in = {
-	.addr		= __PREG(MODR),
 	.addr_width	= DMA_SLAVE_BUSWIDTH_2_BYTES,
 	.chan_name	= "pcm_aux_mono_in",
 	.maxburst	= 16,
 };
 
 static struct snd_dmaengine_dai_dma_data pxa2xx_ac97_pcm_mic_mono_in = {
-	.addr		= __PREG(MCDR),
 	.addr_width	= DMA_SLAVE_BUSWIDTH_2_BYTES,
 	.chan_name	= "pcm_aux_mic_mono",
 	.maxburst	= 16,
@@ -225,6 +222,7 @@ static int pxa2xx_ac97_dev_probe(struct platform_device *pdev)
 	int ret;
 	struct ac97_controller *ctrl;
 	pxa2xx_audio_ops_t *pdata = pdev->dev.platform_data;
+	struct resource *regs;
 	void **codecs_pdata;
 
 	if (pdev->id != -1) {
@@ -232,6 +230,16 @@ static int pxa2xx_ac97_dev_probe(struct platform_device *pdev)
 		return -ENXIO;
 	}
 
+	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!regs)
+		return -ENXIO;
+
+	pxa2xx_ac97_pcm_stereo_in.addr = regs->start + PCDR;
+	pxa2xx_ac97_pcm_stereo_out.addr = regs->start + PCDR;
+	pxa2xx_ac97_pcm_aux_mono_out.addr = regs->start + MODR;
+	pxa2xx_ac97_pcm_aux_mono_in.addr = regs->start + MODR;
+	pxa2xx_ac97_pcm_mic_mono_in.addr = regs->start + MCDR;
+
 	ret = pxa2xx_ac97_hw_probe(pdev);
 	if (ret) {
 		dev_err(&pdev->dev, "PXA2xx AC97 hw probe error (%d)\n", ret);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
