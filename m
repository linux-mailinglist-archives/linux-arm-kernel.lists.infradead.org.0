Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB678104902
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 04:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=T53mW9uW/BqodiG7OTapZ3vlIY/HRJlBRPoTQFD0I/A=; b=tMu
	JbpYf1NdoYpxmTs3hlSOJXTDsv761muagguynsw4YwoEYTQMeStClUlLxPJ+rbUMVNtunYSJJrYwH
	kZJB7Ji5PTkO2GlX/dFBzHqQgcWQVYXk94txT4svu/5H9/ZyyZ9E2rG0OtcaA2H7PttYHjLFC9Y5a
	Ugudoh54Yfehibv69UM29HJv36fSAjK9UPfRCnLi/U9YKW79AmWXYyI/upBf4FKNEUz0YDouVbxH0
	/qHtTjFk+BrpFCcCQUE7pY5Zzp3R4V51/aBnDSmYumxd6YDnGkOVrr+HlMOvNdA+OSTZgTJqVnrII
	ZO3uuipwtNkiQzJC3WTEiwMu2KFi6bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXd0c-0002n6-1B; Thu, 21 Nov 2019 03:19:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXd0P-0002mD-E0
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 03:19:42 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C8FB20721;
 Thu, 21 Nov 2019 03:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574306381;
 bh=lchu/KX2vsWxSi8jH1B3g1xn82G2zo0dqdm09ot22HI=;
 h=From:To:Cc:Subject:Date:From;
 b=1qFijktoYtNuoo2iHnx0rqjpGJjP02Yc5gPd+CW1iSG9vJLkQYbMTxMELAFtjhFPG
 w2BhV+09JwK9X0A29WfnOZ5EbM/ylnO/95HH8edvu+yi/g6OUYQbS8pukMHE42X3Ku
 h7ChmHewCd8fa5hjE1wV1MeRWjc8TZ7yLp5QvXAs=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] media: Fix Kconfig indentation
Date: Thu, 21 Nov 2019 04:19:37 +0100
Message-Id: <1574306377-30120-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_191941_510850_26BF406C 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Fix also 7-space and tab+1 space indentation issues.
---
 drivers/media/Kconfig                     |  6 +--
 drivers/media/platform/Kconfig            | 74 +++++++++++++++----------------
 drivers/media/platform/exynos4-is/Kconfig |  2 +-
 drivers/media/radio/si470x/Kconfig        |  4 +-
 4 files changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/media/Kconfig b/drivers/media/Kconfig
index b36a41332867..9dfea5c4b6ab 100644
--- a/drivers/media/Kconfig
+++ b/drivers/media/Kconfig
@@ -208,9 +208,9 @@ config MEDIA_SUBDRV_AUTOSELECT
 	  If unsure say Y.
 
 config MEDIA_HIDE_ANCILLARY_SUBDRV
-        bool
-        depends on MEDIA_SUBDRV_AUTOSELECT && !COMPILE_TEST && !EXPERT
-        default y
+	bool
+	depends on MEDIA_SUBDRV_AUTOSELECT && !COMPILE_TEST && !EXPERT
+	default y
 
 config MEDIA_ATTACH
 	bool
diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index e84f35d3a68e..cd977dfb1da2 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -610,49 +610,49 @@ config CEC_GPIO
 	  between compatible devices.
 
 config VIDEO_SAMSUNG_S5P_CEC
-       tristate "Samsung S5P CEC driver"
-       depends on ARCH_EXYNOS || COMPILE_TEST
-       select CEC_CORE
-       select CEC_NOTIFIER
-       help
-	 This is a driver for Samsung S5P HDMI CEC interface. It uses the
-	 generic CEC framework interface.
-	 CEC bus is present in the HDMI connector and enables communication
-	 between compatible devices.
+	tristate "Samsung S5P CEC driver"
+	depends on ARCH_EXYNOS || COMPILE_TEST
+	select CEC_CORE
+	select CEC_NOTIFIER
+	help
+	  This is a driver for Samsung S5P HDMI CEC interface. It uses the
+	  generic CEC framework interface.
+	  CEC bus is present in the HDMI connector and enables communication
+	  between compatible devices.
 
 config VIDEO_STI_HDMI_CEC
-       tristate "STMicroelectronics STiH4xx HDMI CEC driver"
-       depends on ARCH_STI || COMPILE_TEST
-       select CEC_CORE
-       select CEC_NOTIFIER
-       help
-	 This is a driver for STIH4xx HDMI CEC interface. It uses the
-	 generic CEC framework interface.
-	 CEC bus is present in the HDMI connector and enables communication
-	 between compatible devices.
+	tristate "STMicroelectronics STiH4xx HDMI CEC driver"
+	depends on ARCH_STI || COMPILE_TEST
+	select CEC_CORE
+	select CEC_NOTIFIER
+	help
+	  This is a driver for STIH4xx HDMI CEC interface. It uses the
+	  generic CEC framework interface.
+	  CEC bus is present in the HDMI connector and enables communication
+	  between compatible devices.
 
 config VIDEO_STM32_HDMI_CEC
-       tristate "STMicroelectronics STM32 HDMI CEC driver"
-       depends on ARCH_STM32 || COMPILE_TEST
-       select REGMAP
-       select REGMAP_MMIO
-       select CEC_CORE
-       help
-	 This is a driver for STM32 interface. It uses the
-	 generic CEC framework interface.
-	 CEC bus is present in the HDMI connector and enables communication
-	 between compatible devices.
+	tristate "STMicroelectronics STM32 HDMI CEC driver"
+	depends on ARCH_STM32 || COMPILE_TEST
+	select REGMAP
+	select REGMAP_MMIO
+	select CEC_CORE
+	help
+	  This is a driver for STM32 interface. It uses the
+	  generic CEC framework interface.
+	  CEC bus is present in the HDMI connector and enables communication
+	  between compatible devices.
 
 config VIDEO_TEGRA_HDMI_CEC
-       tristate "Tegra HDMI CEC driver"
-       depends on ARCH_TEGRA || COMPILE_TEST
-       select CEC_CORE
-       select CEC_NOTIFIER
-       help
-	 This is a driver for the Tegra HDMI CEC interface. It uses the
-	 generic CEC framework interface.
-	 The CEC bus is present in the HDMI connector and enables communication
-	 between compatible devices.
+	tristate "Tegra HDMI CEC driver"
+	depends on ARCH_TEGRA || COMPILE_TEST
+	select CEC_CORE
+	select CEC_NOTIFIER
+	help
+	  This is a driver for the Tegra HDMI CEC interface. It uses the
+	  generic CEC framework interface.
+	  The CEC bus is present in the HDMI connector and enables communication
+	  between compatible devices.
 
 config VIDEO_SECO_CEC
 	tristate "SECO Boards HDMI CEC driver"
diff --git a/drivers/media/platform/exynos4-is/Kconfig b/drivers/media/platform/exynos4-is/Kconfig
index 989cb34f19b1..be4effcbfe7b 100644
--- a/drivers/media/platform/exynos4-is/Kconfig
+++ b/drivers/media/platform/exynos4-is/Kconfig
@@ -13,7 +13,7 @@ config VIDEO_SAMSUNG_EXYNOS4_IS
 if VIDEO_SAMSUNG_EXYNOS4_IS
 
 config VIDEO_EXYNOS4_IS_COMMON
-       tristate
+	tristate
 
 config VIDEO_S5P_FIMC
 	tristate "S5P/EXYNOS4 FIMC/CAMIF camera interface driver"
diff --git a/drivers/media/radio/si470x/Kconfig b/drivers/media/radio/si470x/Kconfig
index 537f8e1601f3..a1ba8bc54b62 100644
--- a/drivers/media/radio/si470x/Kconfig
+++ b/drivers/media/radio/si470x/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config RADIO_SI470X
-        tristate "Silicon Labs Si470x FM Radio Receiver support"
-        depends on VIDEO_V4L2
+	tristate "Silicon Labs Si470x FM Radio Receiver support"
+	depends on VIDEO_V4L2
 	help
 	  This is a driver for devices with the Silicon Labs SI470x
 	  chip (either via USB or I2C buses).
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
