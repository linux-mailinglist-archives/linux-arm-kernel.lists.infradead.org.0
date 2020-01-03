Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E3C12FB6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:14:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kbo4+6aT2joMY50S8u4+27ktXk94yWrmSWbCp3JNgHg=; b=AlrFYdevEClPmSDnAiPniPRdy7
	EWOXeIqG5d6Q/2hsgR/RNbDeui/Z6w7RcLDlkVDkLMolvHtauUc/Kh6wRWrydNxCCAX/JVXRhoT8P
	Zu9T47ZHTYhyzvx2/oKg+FZbn9VlfzQaW1cGkC7cbXI1aVmttltWAxdvziqUxbnb4OxLBHuZhSBcS
	oRWSAoNK/juEIPQ2tsuMOKda/eOMJBl1+JtYY/QKJ5m8dsWLKULa92AOaI+QJXzCAYndhtVyQkbi3
	8N56eVO7JFOsMvQzhw/EGwxK0RZJPYulKgHvPofZyqWl3S/AjX0rRRUMiRX+EmwGq6J2HQBDcBK82
	CzL3R5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQWg-0002qJ-FA; Fri, 03 Jan 2020 17:14:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQV5-0001Pt-SU
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:12:42 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BB6320866;
 Fri,  3 Jan 2020 17:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071559;
 bh=YExA720C2zKhWsisoqLbN/UbWLsHxMgSyDoDzqvYOYk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mxsRs5JSRASe0LR8ZJjnkZ/nhak9Ww7c3pgSwMgZ7h5DePeHBXgztz8Mtw/EUuYew
 dSzvY8/DtzFqNGLErbcqiAjEibf9J1Trqn0XPfleVmuVlesSqmsPJDJmO0x45vPVZ6
 hSoGxVr40Hf6/jJpHMFSMjCs7hp6Kb/XSsXzP25U=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 09/19] phy: exynos: Rename Exynos to lowercase
Date: Fri,  3 Jan 2020 18:11:21 +0100
Message-Id: <20200103171131.9900-10-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103171131.9900-1-krzk@kernel.org>
References: <20200103171131.9900-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_091239_999481_B9FBC71B 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, linux-samsung-soc@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kamil Debski <kamil@wypas.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Richard Fontana <rfontana@redhat.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Exynos"
name.

"EXYNOS" is not an abbreviation but a regular trademarked name.
Therefore it should be written with lowercase letters starting with
capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/phy/samsung-phy.txt | 6 +++---
 drivers/phy/allwinner/phy-sun4i-usb.c                 | 2 +-
 drivers/phy/samsung/Kconfig                           | 8 ++++----
 drivers/phy/samsung/phy-exynos-dp-video.c             | 4 ++--
 drivers/phy/samsung/phy-exynos-mipi-video.c           | 4 ++--
 drivers/phy/samsung/phy-exynos-pcie.c                 | 2 +-
 drivers/phy/samsung/phy-exynos5-usbdrd.c              | 6 +++---
 drivers/phy/samsung/phy-samsung-usb2.c                | 2 +-
 8 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 1c40ccd40ce4..7510830a79bd 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC series MIPI CSIS/DSIM DPHY
+Samsung S5P/Exynos SoC series MIPI CSIS/DSIM DPHY
 -------------------------------------------------
 
 Required properties:
@@ -27,7 +27,7 @@ the PHY specifier identifies the PHY and its meaning is as follows:
 supports additional fifth PHY:
   4 - MIPI CSIS 2.
 
-Samsung EXYNOS SoC series Display Port PHY
+Samsung Exynos SoC series Display Port PHY
 -------------------------------------------------
 
 Required properties:
@@ -38,7 +38,7 @@ Required properties:
 		      control pmu registers for power isolation.
 - #phy-cells : from the generic PHY bindings, must be 0;
 
-Samsung S5P/EXYNOS SoC series USB PHY
+Samsung S5P/Exynos SoC series USB PHY
 -------------------------------------------------
 
 Required properties:
diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index 856927382248..7e09ad6a0b42 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -7,7 +7,7 @@
  * Based on code from
  * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
  *
- * Modelled after: Samsung S5P/EXYNOS SoC series MIPI CSIS/DSIM DPHY driver
+ * Modelled after: Samsung S5P/Exynos SoC series MIPI CSIS/DSIM DPHY driver
  * Copyright (C) 2013 Samsung Electronics Co., Ltd.
  * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
  */
diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 290a6c70f570..3b39bec101b2 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -3,23 +3,23 @@
 # Phy drivers for Samsung platforms
 #
 config PHY_EXYNOS_DP_VIDEO
-	tristate "EXYNOS SoC series Display Port PHY driver"
+	tristate "Exynos SoC series Display Port PHY driver"
 	depends on OF
 	depends on ARCH_EXYNOS || COMPILE_TEST
 	default ARCH_EXYNOS
 	select GENERIC_PHY
 	help
-	  Support for Display Port PHY found on Samsung EXYNOS SoCs.
+	  Support for Display Port PHY found on Samsung Exynos SoCs.
 
 config PHY_EXYNOS_MIPI_VIDEO
-	tristate "S5P/EXYNOS SoC series MIPI CSI-2/DSI PHY driver"
+	tristate "S5P/Exynos SoC series MIPI CSI-2/DSI PHY driver"
 	depends on HAS_IOMEM
 	depends on ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
 	select GENERIC_PHY
 	default y if ARCH_S5PV210 || ARCH_EXYNOS
 	help
 	  Support for MIPI CSI-2 and MIPI DSI DPHY found on Samsung S5P
-	  and EXYNOS SoCs.
+	  and Exynos SoCs.
 
 config PHY_EXYNOS_PCIE
 	bool "Exynos PCIe PHY driver"
diff --git a/drivers/phy/samsung/phy-exynos-dp-video.c b/drivers/phy/samsung/phy-exynos-dp-video.c
index 6c607df1dc9a..2b670ef91deb 100644
--- a/drivers/phy/samsung/phy-exynos-dp-video.c
+++ b/drivers/phy/samsung/phy-exynos-dp-video.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Samsung EXYNOS SoC series Display Port PHY driver
+ * Samsung Exynos SoC series Display Port PHY driver
  *
  * Copyright (C) 2013 Samsung Electronics Co., Ltd.
  * Author: Jingoo Han <jg1.han@samsung.com>
@@ -115,5 +115,5 @@ static struct platform_driver exynos_dp_video_phy_driver = {
 module_platform_driver(exynos_dp_video_phy_driver);
 
 MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
-MODULE_DESCRIPTION("Samsung EXYNOS SoC DP PHY driver");
+MODULE_DESCRIPTION("Samsung Exynos SoC DP PHY driver");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/samsung/phy-exynos-mipi-video.c b/drivers/phy/samsung/phy-exynos-mipi-video.c
index bb51195f189f..c1df1ef3ee3c 100644
--- a/drivers/phy/samsung/phy-exynos-mipi-video.c
+++ b/drivers/phy/samsung/phy-exynos-mipi-video.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Samsung S5P/EXYNOS SoC series MIPI CSIS/DSIM DPHY driver
+ * Samsung S5P/Exynos SoC series MIPI CSIS/DSIM DPHY driver
  *
  * Copyright (C) 2013,2016 Samsung Electronics Co., Ltd.
  * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
@@ -364,6 +364,6 @@ static struct platform_driver exynos_mipi_video_phy_driver = {
 };
 module_platform_driver(exynos_mipi_video_phy_driver);
 
-MODULE_DESCRIPTION("Samsung S5P/EXYNOS SoC MIPI CSI-2/DSI PHY driver");
+MODULE_DESCRIPTION("Samsung S5P/Exynos SoC MIPI CSI-2/DSI PHY driver");
 MODULE_AUTHOR("Sylwester Nawrocki <s.nawrocki@samsung.com>");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/phy/samsung/phy-exynos-pcie.c b/drivers/phy/samsung/phy-exynos-pcie.c
index 659e7ae0a6cf..7e28b1aea0d1 100644
--- a/drivers/phy/samsung/phy-exynos-pcie.c
+++ b/drivers/phy/samsung/phy-exynos-pcie.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Samsung EXYNOS SoC series PCIe PHY driver
+ * Samsung Exynos SoC series PCIe PHY driver
  *
  * Phy provider for PCIe controller on Exynos SoC series
  *
diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index e510732afb8b..eb06ce9f748f 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Samsung EXYNOS5 SoC series USB DRD PHY driver
+ * Samsung Exynos5 SoC series USB DRD PHY driver
  *
  * Phy provider for USB 3.0 DRD controller on Exynos5 SoC series
  *
@@ -33,7 +33,7 @@
 #define EXYNOS5_FSEL_24MHZ		0x5
 #define EXYNOS5_FSEL_50MHZ		0x7
 
-/* EXYNOS5: USB 3.0 DRD PHY registers */
+/* Exynos5: USB 3.0 DRD PHY registers */
 #define EXYNOS5_DRD_LINKSYSTEM			0x04
 
 #define LINKSYSTEM_FLADJ_MASK			(0x3f << 1)
@@ -958,7 +958,7 @@ static struct platform_driver exynos5_usb3drd_phy = {
 };
 
 module_platform_driver(exynos5_usb3drd_phy);
-MODULE_DESCRIPTION("Samsung EXYNOS5 SoCs USB 3.0 DRD controller PHY driver");
+MODULE_DESCRIPTION("Samsung Exynos5 SoCs USB 3.0 DRD controller PHY driver");
 MODULE_AUTHOR("Vivek Gautam <gautam.vivek@samsung.com>");
 MODULE_LICENSE("GPL v2");
 MODULE_ALIAS("platform:exynos5_usb3drd_phy");
diff --git a/drivers/phy/samsung/phy-samsung-usb2.c b/drivers/phy/samsung/phy-samsung-usb2.c
index 090aa02e02de..a3ed3ff04690 100644
--- a/drivers/phy/samsung/phy-samsung-usb2.c
+++ b/drivers/phy/samsung/phy-samsung-usb2.c
@@ -255,7 +255,7 @@ static struct platform_driver samsung_usb2_phy_driver = {
 };
 
 module_platform_driver(samsung_usb2_phy_driver);
-MODULE_DESCRIPTION("Samsung S5P/EXYNOS SoC USB PHY driver");
+MODULE_DESCRIPTION("Samsung S5P/Exynos SoC USB PHY driver");
 MODULE_AUTHOR("Kamil Debski <k.debski@samsung.com>");
 MODULE_LICENSE("GPL v2");
 MODULE_ALIAS("platform:samsung-usb2-phy");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
