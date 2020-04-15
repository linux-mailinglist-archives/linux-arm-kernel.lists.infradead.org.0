Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586BC1A9A83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2g3hwHc+xwmD3TBYMAoYCO5k1IioCx6hhczVSijXdy8=; b=lOYLdk3gJGapQ+
	gd6ykekVmVACs70LZ4q75I3SVUdQ1ra2n+J5p8Sdtr9F3yvk0nIwB1hVAREw9wAqpPmNYMzSwQwt4
	owGBaB6/RRZk4i8/WrJUUC2gcSqAvOUh7TsShR0a2kDn4R/TjqMByBwX1R0l6ESV5N80SdpZzJnyN
	VARTYPUlkiez8UWyyoONdTf+hwzRXDmrvQdaLjFJMT2mBb6UBHhxmr9Hn9l0sUJ9Iqk9+aXyHlcuA
	0ZeFvAidTikjDYxH6soGGnkm195bPIBC27UmGTwKbOT09cWWTg0rbhZIMmXhgftygp4coJjtnVcGX
	rsk5pHLV6QfVNl5ZhW9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfL1-00023p-LL; Wed, 15 Apr 2020 10:32:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfKX-0001o7-JQ; Wed, 15 Apr 2020 10:31:43 +0000
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08F3F21556;
 Wed, 15 Apr 2020 10:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586946701;
 bh=aPW4KRSGSSAnFhhCuHdHUZN+HF5qz+C0gR4w9+NHse8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yy7qummi8cpw2FCdAYWjxFJ6hZdfnpswJIXD1oGI1K9cEOMF38I2fmN4zPxcU6Yvz
 7qR+MWX/Q8DfiUFJZ+bcc3VsZTtQRBXqsLUT1rPxM+cxElp8JUWSoWNmNUvgpWWxBd
 Ywa6KJfBvTgo5d7CZKmkUESD3ynNQ6LRnTJg5QXU=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jOfKV-006gMN-8X; Wed, 15 Apr 2020 12:31:39 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH v2 5/6] media: cec: rename CEC platform drivers config options
Date: Wed, 15 Apr 2020 12:31:36 +0200
Message-Id: <ff1274d6cba94f769660e535e23d6b6d41b4e31e.1586946605.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1586946605.git.mchehab+huawei@kernel.org>
References: <cover.1586946605.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_033141_677059_89B0CC3A 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Kukjin Kim <kgene@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-amlogic@lists.infradead.org,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most CEC platform drivers are using VIDEO_*_CEC pattern, some with
an _HDMI extension too.

Well, they're not related to V4L2 support, and we don't really
need those big config names. So drop VIDEO_* from them, remove
_HDMI (if present) and move CEC to the start.

This way, all platform driver options are now CEC_<driver>.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 arch/arm/configs/exynos_defconfig           |  2 +-
 arch/arm/configs/multi_v7_defconfig         |  2 +-
 drivers/media/cec/platform/Kconfig          | 22 ++++++++++-----------
 drivers/media/cec/platform/Makefile         | 16 +++++++--------
 drivers/media/cec/platform/cros-ec/Makefile |  2 +-
 drivers/media/cec/platform/meson/Makefile   |  4 ++--
 drivers/media/cec/platform/s5p/Makefile     |  2 +-
 drivers/media/cec/platform/seco/Makefile    |  2 +-
 drivers/media/cec/platform/seco/seco-cec.c  |  2 +-
 drivers/media/cec/platform/sti/Makefile     |  2 +-
 drivers/media/cec/platform/stm32/Makefile   |  2 +-
 drivers/media/cec/platform/tegra/Makefile   |  2 +-
 12 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index 3c3a00fc71f6..2c779ac13270 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -207,7 +207,7 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_V4L_TEST_DRIVERS=y
 CONFIG_VIDEO_VIVID=m
 CONFIG_CEC_PLATFORM_DRIVERS=y
-CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
+CONFIG_CEC_SAMSUNG_S5P=m
 # CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set
 CONFIG_VIDEO_S5K6A3=m
 CONFIG_VIDEO_S5C73M3=m
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index f8e45351c3f9..9c86b1ab2f1d 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -638,7 +638,7 @@ CONFIG_VIDEO_RENESAS_VSP1=m
 CONFIG_V4L_TEST_DRIVERS=y
 CONFIG_VIDEO_VIVID=m
 CONFIG_CEC_PLATFORM_DRIVERS=y
-CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
+CONFIG_CEC_SAMSUNG_S5P=m
 CONFIG_VIDEO_ADV7180=m
 CONFIG_VIDEO_ML86V7667=m
 CONFIG_IMX_IPUV3_CORE=m
diff --git a/drivers/media/cec/platform/Kconfig b/drivers/media/cec/platform/Kconfig
index 6a8bb8b68344..2c4dd7401dd8 100644
--- a/drivers/media/cec/platform/Kconfig
+++ b/drivers/media/cec/platform/Kconfig
@@ -2,7 +2,7 @@
 #
 # Platform drivers
 
-config VIDEO_CROS_EC_CEC
+config CEC_CROS_EC
 	tristate "ChromeOS EC CEC driver"
 	depends on CROS_EC
 	select CEC_CORE
@@ -14,7 +14,7 @@ config VIDEO_CROS_EC_CEC
 	  The CEC bus is present in the HDMI connector and enables communication
 	  between compatible devices.
 
-config VIDEO_MESON_AO_CEC
+config CEC_MESON_AO
 	tristate "Amlogic Meson AO CEC driver"
 	depends on ARCH_MESON || COMPILE_TEST
 	select CEC_CORE
@@ -24,7 +24,7 @@ config VIDEO_MESON_AO_CEC
 	  generic CEC framework interface.
 	  CEC bus is present in the HDMI connector and enables communication
 
-config VIDEO_MESON_G12A_AO_CEC
+config CEC_MESON_G12A_AO
 	tristate "Amlogic Meson G12A AO CEC driver"
 	depends on ARCH_MESON || COMPILE_TEST
 	depends on COMMON_CLK && OF
@@ -52,7 +52,7 @@ config CEC_GPIO
 	  The CEC bus is present in the HDMI connector and enables communication
 	  between compatible devices.
 
-config VIDEO_SAMSUNG_S5P_CEC
+config CEC_SAMSUNG_S5P
 	tristate "Samsung S5P CEC driver"
 	depends on ARCH_EXYNOS || COMPILE_TEST
 	select CEC_CORE
@@ -63,7 +63,7 @@ config VIDEO_SAMSUNG_S5P_CEC
 	  CEC bus is present in the HDMI connector and enables communication
 	  between compatible devices.
 
-config VIDEO_STI_HDMI_CEC
+config CEC_STI
 	tristate "STMicroelectronics STiH4xx HDMI CEC driver"
 	depends on ARCH_STI || COMPILE_TEST
 	select CEC_CORE
@@ -74,7 +74,7 @@ config VIDEO_STI_HDMI_CEC
 	  CEC bus is present in the HDMI connector and enables communication
 	  between compatible devices.
 
-config VIDEO_STM32_HDMI_CEC
+config CEC_STM32
 	tristate "STMicroelectronics STM32 HDMI CEC driver"
 	depends on ARCH_STM32 || COMPILE_TEST
 	select REGMAP
@@ -86,7 +86,7 @@ config VIDEO_STM32_HDMI_CEC
 	  CEC bus is present in the HDMI connector and enables communication
 	  between compatible devices.
 
-config VIDEO_TEGRA_HDMI_CEC
+config CEC_TEGRA
 	tristate "Tegra HDMI CEC driver"
 	depends on ARCH_TEGRA || COMPILE_TEST
 	select CEC_CORE
@@ -97,7 +97,7 @@ config VIDEO_TEGRA_HDMI_CEC
 	  The CEC bus is present in the HDMI connector and enables communication
 	  between compatible devices.
 
-config VIDEO_SECO_CEC
+config CEC_SECO
 	tristate "SECO Boards HDMI CEC driver"
 	depends on (X86 || IA64) || COMPILE_TEST
 	select PCI
@@ -110,10 +110,10 @@ config VIDEO_SECO_CEC
 	  CEC bus is present in the HDMI connector and enables communication
 	  between compatible devices.
 
-config VIDEO_SECO_RC
+config CEC_SECO_RC
 	bool "SECO Boards IR RC5 support"
-	depends on VIDEO_SECO_CEC
-	depends on RC_CORE=y || RC_CORE = VIDEO_SECO_CEC
+	depends on CEC_SECO
+	depends on RC_CORE=y || RC_CORE = CEC_SECO
 	help
 	  If you say yes here you will get support for the
 	  SECO Boards Consumer-IR in seco-cec driver.
diff --git a/drivers/media/cec/platform/Makefile b/drivers/media/cec/platform/Makefile
index e5fb5d383e5c..3a947159b25a 100644
--- a/drivers/media/cec/platform/Makefile
+++ b/drivers/media/cec/platform/Makefile
@@ -3,12 +3,12 @@
 # Makefile for the CEC platform device drivers.
 #
 
-obj-$(CONFIG_CEC_GPIO)			+= cec-gpio/
-
-obj-$(CONFIG_VIDEO_CROS_EC_CEC)		+= cros-ec/
-obj-$(CONFIG_VIDEO_MESON_AO_CEC)	+= meson/
-obj-$(CONFIG_VIDEO_SAMSUNG_S5P_CEC)	+= s5p/
-obj-$(CONFIG_VIDEO_SECO_CEC)		+= seco/
-obj-$(CONFIG_VIDEO_STI_HDMI_CEC)	+= sti/
-obj-$(CONFIG_VIDEO_TEGRA_HDMI_CEC)	+= tegra/
+# Please keep it in alphabetic order
+obj-$(CONFIG_CEC_CROS_EC)	+= cros-ec/
+obj-$(CONFIG_CEC_GPIO)		+= cec-gpio/
+obj-$(CONFIG_CEC_MESON_AO)	+= meson/
+obj-$(CONFIG_CEC_SAMSUNG_S5P)	+= s5p/
+obj-$(CONFIG_CEC_SECO)		+= seco/
+obj-$(CONFIG_CEC_STI)		+= sti/
+obj-$(CONFIG_CEC_TEGRA)		+= tegra/
 
diff --git a/drivers/media/cec/platform/cros-ec/Makefile b/drivers/media/cec/platform/cros-ec/Makefile
index 2615cdc6e227..d7e3511078ef 100644
--- a/drivers/media/cec/platform/cros-ec/Makefile
+++ b/drivers/media/cec/platform/cros-ec/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO_CROS_EC_CEC) += cros-ec-cec.o
+obj-$(CONFIG_CEC_CROS_EC) += cros-ec-cec.o
diff --git a/drivers/media/cec/platform/meson/Makefile b/drivers/media/cec/platform/meson/Makefile
index 6bf728addbf8..34fc5d444d0e 100644
--- a/drivers/media/cec/platform/meson/Makefile
+++ b/drivers/media/cec/platform/meson/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO_MESON_AO_CEC)	+= ao-cec.o
-obj-$(CONFIG_VIDEO_MESON_G12A_AO_CEC)	+= ao-cec-g12a.o
+obj-$(CONFIG_CEC_MESON_AO)	+= ao-cec.o
+obj-$(CONFIG_CEC_MESON_G12A_AO)	+= ao-cec-g12a.o
diff --git a/drivers/media/cec/platform/s5p/Makefile b/drivers/media/cec/platform/s5p/Makefile
index bd0103b91bee..92bf7b8557c5 100644
--- a/drivers/media/cec/platform/s5p/Makefile
+++ b/drivers/media/cec/platform/s5p/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO_SAMSUNG_S5P_CEC)	+= s5p-cec.o
+obj-$(CONFIG_CEC_SAMSUNG_S5P)	+= s5p-cec.o
 s5p-cec-y += s5p_cec.o exynos_hdmi_cecctrl.o
diff --git a/drivers/media/cec/platform/seco/Makefile b/drivers/media/cec/platform/seco/Makefile
index 79fde6947ff2..aa1ca8ccdb8b 100644
--- a/drivers/media/cec/platform/seco/Makefile
+++ b/drivers/media/cec/platform/seco/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO_SECO_CEC) += seco-cec.o
+obj-$(CONFIG_CEC_SECO) += seco-cec.o
diff --git a/drivers/media/cec/platform/seco/seco-cec.c b/drivers/media/cec/platform/seco/seco-cec.c
index 2ff62a488b27..075dd79beb6f 100644
--- a/drivers/media/cec/platform/seco/seco-cec.c
+++ b/drivers/media/cec/platform/seco/seco-cec.c
@@ -343,7 +343,7 @@ static const struct cec_adap_ops secocec_cec_adap_ops = {
 	.adap_transmit = secocec_adap_transmit,
 };
 
-#ifdef CONFIG_VIDEO_SECO_RC
+#ifdef CONFIG_CEC_SECO_RC
 static int secocec_ir_probe(void *priv)
 {
 	struct secocec_data *cec = priv;
diff --git a/drivers/media/cec/platform/sti/Makefile b/drivers/media/cec/platform/sti/Makefile
index d0c6b4ae94d6..26ec5ba1c633 100644
--- a/drivers/media/cec/platform/sti/Makefile
+++ b/drivers/media/cec/platform/sti/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO_STI_HDMI_CEC) += stih-cec.o
+obj-$(CONFIG_CEC_STI) += stih-cec.o
diff --git a/drivers/media/cec/platform/stm32/Makefile b/drivers/media/cec/platform/stm32/Makefile
index 5c89dbce0f67..b7597a00befa 100644
--- a/drivers/media/cec/platform/stm32/Makefile
+++ b/drivers/media/cec/platform/stm32/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO_STM32_HDMI_CEC) += stm32-cec.o
+obj-$(CONFIG_CEC_STM32) += stm32-cec.o
diff --git a/drivers/media/cec/platform/tegra/Makefile b/drivers/media/cec/platform/tegra/Makefile
index 97e57c7493c0..275d1c019d49 100644
--- a/drivers/media/cec/platform/tegra/Makefile
+++ b/drivers/media/cec/platform/tegra/Makefile
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_VIDEO_TEGRA_HDMI_CEC)	+= tegra_cec.o
+obj-$(CONFIG_CEC_TEGRA)	+= tegra_cec.o
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
