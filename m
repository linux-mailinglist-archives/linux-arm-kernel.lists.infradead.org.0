Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF9CC3708
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EeAfz51q8ZfigrWokJ0sFMTd94TUI1CZ5JjJArfr4sQ=; b=UYQL/ZSpedXhoG
	zH47SSJCnP7jtha3OpBrVWV2dsuV7cTtAVC1Zsd6aYJQiDFCWJh1OiwDXPeR4D1/WJ6zzL1h6ywr2
	X6THUmTiXSAaz6wBqSJQI3GLMdxCU6n2mELq/FHK15B0iCwK2RjdBKCIxTx99KI8A5RMeq/dlL6iy
	7wdKzVsGC7TiyYjtfSXabeJ6IYfhxfEELgwVzkHCxjBhe1MpZ/9VX4o47Q6XKNQWr1WbQMtLezgO5
	7ATW9sFtqgcJbWaw+UbQTtHZWB80kp+OLteh1CqWOZQYJu4Q4i1VttfSj4pGp2ucx28K12DvdXuez
	g1q/sun3MJj3RMAp4C8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJ2j-0000cp-BG; Tue, 01 Oct 2019 14:22:21 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJ2X-0000WN-8G
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:22:11 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MfHIb-1hdFVk2Qsl-00gpsk; Tue, 01 Oct 2019 16:21:19 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH] ASoC: atmel: fix atmel_ssc_set_audio link failure
Date: Tue,  1 Oct 2019 16:20:55 +0200
Message-Id: <20191001142116.1172290-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:+NFFLFJ3uAstZ1v7XE2zMOHO+xPwR8CCKuSDvkVLAs/dyvEYV3F
 aaVJU2YkvLHOqLAuS7f9B4FjeRy1ETJZw1B302gdLNKywdIJI+RHoRz829Uot1Xqu5n044o
 QDcIQIsRro/+0s1ix2XUe/LSCIcgkeSVbGW7ySGKqzSalU5mdCbZOP7CNNnpJVyM5u+p3wZ
 otEMA5Wodj9hFYD6bq/gA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nYhBuPR5Iho=:ywwtGfzj2glibkVf1yv+gi
 4DmdK8oqUXYdcCXJg3dN4ao1auIJ7AoklVMPqXSk/ASTz2mL0PLYizTJwV7BjfkihoLUh6Rmv
 gRaA29X3chqm9b2h2HCkJAtzoqkI+MdFw+DFakAUqJHjwVKtaD1B5iK4vcwDQSGF3sKKK48Vn
 nBmhc5OwHOrYWL5qaHUF7W4h8K0BGDRQOtzWx0CVAkKdg/I5Xrbd814iywOfdzKxspYPuZ6zw
 41RjVQdSMCKa7rz/A0bVPGfA6Hb9ksfWfqMJK5Gmzlh8xzisujMCBPGjxkfmWxHgnjDFelVlS
 AHzS0a2B7ClTvXIlZ8Z6h9evppl4mCSjpioDFzzo9tk8yL6peEDWUbTwBABFbZ9vcO4toPwql
 4JLP5+nRC5qaeDPJhGs2ndvbNJsnRJYdQ/vN0yXQR+BFHcPvN/mg8DFevnbOJLLXDIi1o/nwK
 L6c9geQnbF9WBynAIo26Vzx9XbYDxAhLCwrSMcOfK0eFxxjaT7Igur2ZIsKKzcKGYz03lAz+h
 Drp2B/kIsjfgxR8oVoY7R3rhOKGGTaag7KkeiHTGe6Klv3B2883391qk/m6l8lfnn9YrYSfVD
 ySiKlqfnENrqraZsrxcryA4IpXnirQfUIqZPTUvookUNafdlET8LIFvPhDcGqjr+19Cb1G8Yv
 oOMefwPdLKX6oo8FyfrrobfB25WEL2laYKjxwbmjBmBOP82IZssbaHWSDFUvpH4cuaqhF2Dn+
 UZNAUt0yKZaP4fmpNMt879HOaqhwi3vk63z1kWPYXWueVrqayPKcAbKN7xl2dX2TBXiX5OxON
 xb2I1BdJnYNtZsLCKWtYjIyHK1k6DE5IutltpsdfFQecZkMafzDOFmuBQmD5PURSV2aXgh12e
 V4PLmfYOqg71TeZg6aeQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_072209_596207_184234EB 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: alsa-devel@alsa-project.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ssc audio driver can call into both pdc and dma backends.  With the
latest rework, the logic to do this in a safe way avoiding link errors
was removed, bringing back link errors that were fixed long ago in commit
061981ff8cc8 ("ASoC: atmel: properly select dma driver state") such as

sound/soc/atmel/atmel_ssc_dai.o: In function `atmel_ssc_set_audio':
atmel_ssc_dai.c:(.text+0xac): undefined reference to `atmel_pcm_pdc_platform_register'

Fix it this time using Makefile hacks and a comment to prevent this
from accidentally getting removed again rather than Kconfig hacks.

Fixes: 18291410557f ("ASoC: atmel: enable SOC_SSC_PDC and SOC_SSC_DMA in Kconfig")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/atmel/Kconfig  |  4 ++--
 sound/soc/atmel/Makefile | 10 ++++++++--
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
index f118c229ed82..25c31bf64936 100644
--- a/sound/soc/atmel/Kconfig
+++ b/sound/soc/atmel/Kconfig
@@ -10,11 +10,11 @@ config SND_ATMEL_SOC
 if SND_ATMEL_SOC
 
 config SND_ATMEL_SOC_PDC
-	tristate
+	bool
 	depends on HAS_DMA
 
 config SND_ATMEL_SOC_DMA
-	tristate
+	bool
 	select SND_SOC_GENERIC_DMAENGINE_PCM
 
 config SND_ATMEL_SOC_SSC
diff --git a/sound/soc/atmel/Makefile b/sound/soc/atmel/Makefile
index 1f6890ed3738..c7d2989791be 100644
--- a/sound/soc/atmel/Makefile
+++ b/sound/soc/atmel/Makefile
@@ -6,8 +6,14 @@ snd-soc-atmel_ssc_dai-objs := atmel_ssc_dai.o
 snd-soc-atmel-i2s-objs := atmel-i2s.o
 snd-soc-mchp-i2s-mcc-objs := mchp-i2s-mcc.o
 
-obj-$(CONFIG_SND_ATMEL_SOC_PDC) += snd-soc-atmel-pcm-pdc.o
-obj-$(CONFIG_SND_ATMEL_SOC_DMA) += snd-soc-atmel-pcm-dma.o
+# pdc and dma need to both be built-in if any user of
+# ssc is built-in.
+ifdef CONFIG_SND_ATMEL_SOC_PDC
+obj-$(CONFIG_SND_ATMEL_SOC_SSC) += snd-soc-atmel-pcm-pdc.o
+endif
+ifdef CONFIG_SND_ATMEL_SOC_DMA
+obj-$(CONFIG_SND_ATMEL_SOC_SSC) += snd-soc-atmel-pcm-dma.o
+endif
 obj-$(CONFIG_SND_ATMEL_SOC_SSC) += snd-soc-atmel_ssc_dai.o
 obj-$(CONFIG_SND_ATMEL_SOC_I2S) += snd-soc-atmel-i2s.o
 obj-$(CONFIG_SND_MCHP_SOC_I2S_MCC) += snd-soc-mchp-i2s-mcc.o
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
