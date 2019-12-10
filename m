Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1DD119125
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Qo3GglREORwg4oq8SS0b1HXbMyEA94TPQ0k2xmHXo8=; b=r0+rBfd3UHm1iI
	4lztMErIcAc2Mq51vVrSDt1yw7doHEsGe3Y91Y1WxWvubmg6OYhZDSLqvmQAowlv6JmfRk5pDjdEQ
	DNFsH2Qc+kSGFlM5Vj0DgkUJqu/9LZQYTuZmeNkRWnCWBcXA6zR7ZnB7fbZQKuvBHDvQ+yAvzHk7O
	VoyoWpRtp9z9lF2/ebo1nCE0iISWH2dhk3Wc1AuQQYNyvPk9lOjMsQ1Ti+7co2uUs6TVBR1AOTteM
	XW3wteTGfgyRBQKSlVkip+Mi+UJr1ux5bKYX4I619xMKjgBwpCe3azyjLdWkzXxuDlMaGx7bvlq7Q
	yu/V39QAXtDytX5I5VsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielbM-0006tH-3j; Tue, 10 Dec 2019 19:55:20 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielaz-0006rh-JH; Tue, 10 Dec 2019 19:54:59 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MBmDy-1iSdZE09bI-00CCMA; Tue, 10 Dec 2019 20:53:44 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] ASoC: rt5677: add SPI_MASTER dependency
Date: Tue, 10 Dec 2019 20:52:26 +0100
Message-Id: <20191210195333.648018-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:FRkHOOKgb97GU78DRa4WO6ybtXkwJBdydEWXHFH0XK6ebufL9xV
 1EnlNmOIxy2m4DJZpwOSZDYe6VdSkLHIYTkUdRCdxb96bn4+i9aM5HDbv8Y7m7upSqX0g+4
 aZ7pxvErgtXqj88QUP5vZlUGYWZsThHweb+iyAH57kzxC10soq23IhgctvcW1mAt5mudX0M
 ofu4B2dzMSXFkyVJqr7fA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aRxDfmwkuqQ=:Q5kIO/JyMKhASOEVpBGr79
 mltKx8dNXZy5JN2a10gY5qm3kf02KQ8QYkK/4v3cAdAbmccyzL4DXyE+PKfOKw6YenitwI12c
 8YbdnsOQ8CJRf8p4rEWHGUvRObVYsyum+gwXLcv7ROZGJT3/G/YCUikha20/xZ/QOXlfAzyia
 7c+O9S7Q5eND46EM3BY8MWxHHnw6vvaouoJcBvalhn6utMA4Xdyu6sQ8klBKG/OgtzUIK/5f5
 dgV1/mPcAfVkiDLHIOYY33Pv7BbxGikgB3SDFPgfExtJQj9YatmVAE8kJpv7eYxwqZEW9xR2U
 wUG2rEBAkKiD8Wfob5x3p4BZ7vIWifgoOi5pHHimENGsOT+B3UybUI5RUND6zaquO3rBi8evu
 rYtEPAxqZ5pKX8o/t6h14iPnoO/9+X619xrMLQmZMHVYg1lXfFU/da7NavX81GHaMC7DXR8lW
 yVoDxUCfei6PWs8RaBl7o7ewBIyGnUE4uocUG3rbI/SlP78kYT6tpS4PtTKHZQMiv7NbGvII1
 8/SzVaX+qN+X55J8eYxyg/eCefYiWim8pCMOjrJPOTeNSnV6RCH3iEeHZS48oGJvCIvexLTjY
 tVeasw/P6N94yIWtOgt5S1yqSEgIg0TJvze3ZruHI+ks3QwRINk3gVegkpgUvEBcd4IxFI2yl
 QDOUbechDBC9C1VkFW5voYcKksms6yCQrIFWzOrWWLxhO5Ahg3fDkwe272NzdQXH0pRQrq9nC
 OehoDnS0YYCsMz/8ALLgfgBpT9+mK0KV3838L/HVcBGhGfNBCXig+a9eqoEyQQ6SqIU83x0IQ
 C6Kx99oKCbEHzZkvBlwpEoLaMYnbY5DOCCrIY1KjWrOLqhhrYUQFyfH0Lmn7+kt/a+MbIJtvw
 QFiozHF88wZ3H1Nwewdw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_115457_929470_C2526438 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Jonathan Hunter <jonathanh@nvidia.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Cezary Rojewski <cezary.rojewski@intel.com>, linux-tegra@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Jie Yang <yang.jie@linux.intel.com>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 alsa-devel@alsa-project.org, Ben Zhang <benzh@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Curtis Malainey <cujomalainey@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_SPI is disabled, the newly added code for the DSP
firmware loading fails to link:

ERROR: "rt5677_spi_hotword_detected" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!
ERROR: "rt5677_spi_write" [sound/soc/codecs/snd-soc-rt5677.ko] undefined!

Add a dependency to prevent this configuration.

Note: the does not work with the DT probing, as there is no binding
for the SPI half of the driver, but nothing seems to be using that
with the mainline kernel anyway.

Fixes: 461c623270e4 ("ASoC: rt5677: Load firmware via SPI using delayed work")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/codecs/Kconfig       | 1 +
 sound/soc/intel/boards/Kconfig | 1 +
 sound/soc/mediatek/Kconfig     | 2 +-
 sound/soc/tegra/Kconfig        | 2 +-
 4 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 71b7286d14f2..8e9c461a84f8 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -1047,6 +1047,7 @@ config SND_SOC_RT5670
 
 config SND_SOC_RT5677
 	tristate
+	depends on SPI_MASTER
 	select REGMAP_I2C
 	select REGMAP_IRQ
 
diff --git a/sound/soc/intel/boards/Kconfig b/sound/soc/intel/boards/Kconfig
index ef20316e83d1..da7f9111f3d3 100644
--- a/sound/soc/intel/boards/Kconfig
+++ b/sound/soc/intel/boards/Kconfig
@@ -34,6 +34,7 @@ if SND_SOC_INTEL_HASWELL || SND_SOC_SOF_BROADWELL
 config SND_SOC_INTEL_BDW_RT5677_MACH
 	tristate "Broadwell with RT5677 codec"
 	depends on I2C
+	depends on SPI_MASTER
 	depends on I2C_DESIGNWARE_PLATFORM || COMPILE_TEST
 	depends on GPIOLIB || COMPILE_TEST
 	depends on X86_INTEL_LPSS || COMPILE_TEST
diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index a656d2014127..4699787c93ed 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -97,7 +97,7 @@ config SND_SOC_MT8173_RT5650_RT5514
 
 config SND_SOC_MT8173_RT5650_RT5676
 	tristate "ASoC Audio driver for MT8173 with RT5650 RT5676 codecs"
-	depends on SND_SOC_MT8173 && I2C
+	depends on SND_SOC_MT8173 && I2C && SPI_MASTER
 	select SND_SOC_RT5645
 	select SND_SOC_RT5677
 	select SND_SOC_HDMI_CODEC
diff --git a/sound/soc/tegra/Kconfig b/sound/soc/tegra/Kconfig
index addadc827b91..df36e84c0116 100644
--- a/sound/soc/tegra/Kconfig
+++ b/sound/soc/tegra/Kconfig
@@ -122,7 +122,7 @@ config SND_SOC_TEGRA_MAX98090
 
 config SND_SOC_TEGRA_RT5677
 	tristate "SoC Audio support for Tegra boards using a RT5677 codec"
-	depends on SND_SOC_TEGRA && I2C && GPIOLIB
+	depends on SND_SOC_TEGRA && I2C && GPIOLIB && SPI_MASTER
 	select SND_SOC_RT5677
 	help
 	  Say Y or M here if you want to add support for SoC audio on Tegra
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
