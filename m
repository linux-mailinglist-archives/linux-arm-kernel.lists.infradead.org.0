Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6003F10490F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 04:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2QP4u825GJOxDizWNvH8wemM92QDnk0H6nHHmdhIGvk=; b=hhA
	rWq6O7Z+L+gc27zfsk71lEuafjtIihkjPyW3o2tNE0B89ZSp6JWVDJlTh0hM7FCLPgOkai19hy+Tl
	PQ3r21hkX0mEJNlcVRjDU8VUHU8PRl9emOHLHkb7N4jcr7CuReuNMkUT5XVxKmqFJPAfC6DHCRgqX
	vcwSTshePjljBureZBd+M31kvoLDUSY0j8bK4lxCiXRWRzkQMRM+QPWwibEaN/WF2u9QfDf5x/ipJ
	UHNPqLYmq13/wYQzE1QVnCAfGr09sqYBspXAaq4UDxllrbqT9Itlj9vfXd6u9qDythSNYS+RgmHpd
	8BOQtD/wW8LZxU0ToQdcM9z7KjG6tAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXd12-00031j-4x; Thu, 21 Nov 2019 03:20:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXd0V-0002q3-NV
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 03:19:49 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8C1A208A3;
 Thu, 21 Nov 2019 03:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574306387;
 bh=LSzFWPpsVO+DHMVTB1mAdrxBaXS9PyPnO6OGbCDZ6n0=;
 h=From:To:Cc:Subject:Date:From;
 b=jiF6umi+XcgpJlFZE8vEjUctCZj2HQWnz9Sy8ndxleVr2m/4yCtQEgB7M1+o/oNEN
 ccZP47LhIHcpySVlkZc6yl8aZgRYhf2bPtrtmqTWAAgtdbZtkVCEs0+fcffnMrNDfz
 DiqkNnfdHY81g9j3ZbdT+xnb2RVUdf8AZAVB5XMc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] pinctrl: Fix Kconfig indentation
Date: Thu, 21 Nov 2019 04:19:41 +0100
Message-Id: <1574306382-32516-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_191947_848086_B690DD1D 
X-CRM114-Status: GOOD (  12.16  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, Fabio Estevam <festevam@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-gpio@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Gregory Clement <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
 drivers/pinctrl/Kconfig           | 18 ++++----
 drivers/pinctrl/freescale/Kconfig | 12 ++---
 drivers/pinctrl/mvebu/Kconfig     | 10 ++---
 drivers/pinctrl/qcom/Kconfig      | 92 +++++++++++++++++++--------------------
 4 files changed, 66 insertions(+), 66 deletions(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index b372419d61f2..25b6c830f2f1 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -32,15 +32,15 @@ config DEBUG_PINCTRL
 	  Say Y here to add some extra checks and diagnostics to PINCTRL calls.
 
 config PINCTRL_ARTPEC6
-        bool "Axis ARTPEC-6 pin controller driver"
-        depends on MACH_ARTPEC6
-        select PINMUX
-        select GENERIC_PINCONF
-        help
-          This is the driver for the Axis ARTPEC-6 pin controller. This driver
-          supports pin function multiplexing as well as pin bias and drive
-          strength configuration. Device tree integration instructions can be
-          found in Documentation/devicetree/bindings/pinctrl/axis,artpec6-pinctrl.txt
+	bool "Axis ARTPEC-6 pin controller driver"
+	depends on MACH_ARTPEC6
+	select PINMUX
+	select GENERIC_PINCONF
+	help
+	  This is the driver for the Axis ARTPEC-6 pin controller. This driver
+	  supports pin function multiplexing as well as pin bias and drive
+	  strength configuration. Device tree integration instructions can be
+	  found in Documentation/devicetree/bindings/pinctrl/axis,artpec6-pinctrl.txt
 
 config PINCTRL_AS3722
 	tristate "Pinctrl and GPIO driver for ams AS3722 PMIC"
diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index 5f4058033ec6..3ea9ce3e0cd9 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -39,12 +39,12 @@ config PINCTRL_IMX27
 
 
 config PINCTRL_IMX25
-        bool "IMX25 pinctrl driver"
-        depends on OF
-        depends on SOC_IMX25
-        select PINCTRL_IMX
-        help
-          Say Y here to enable the imx25 pinctrl driver
+	bool "IMX25 pinctrl driver"
+	depends on OF
+	depends on SOC_IMX25
+	select PINCTRL_IMX
+	help
+	  Say Y here to enable the imx25 pinctrl driver
 
 config PINCTRL_IMX35
 	bool "IMX35 pinctrl driver"
diff --git a/drivers/pinctrl/mvebu/Kconfig b/drivers/pinctrl/mvebu/Kconfig
index d69c25798871..0d12894d3ee1 100644
--- a/drivers/pinctrl/mvebu/Kconfig
+++ b/drivers/pinctrl/mvebu/Kconfig
@@ -46,8 +46,8 @@ config PINCTRL_ORION
 	select PINCTRL_MVEBU
 
 config PINCTRL_ARMADA_37XX
-       bool
-       select GENERIC_PINCONF
-       select MFD_SYSCON
-       select PINCONF
-       select PINMUX
+	bool
+	select GENERIC_PINCONF
+	select MFD_SYSCON
+	select PINCONF
+	select PINMUX
diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
index 4f5645245b06..811af2f81c39 100644
--- a/drivers/pinctrl/qcom/Kconfig
+++ b/drivers/pinctrl/qcom/Kconfig
@@ -142,33 +142,33 @@ config PINCTRL_QDF2XXX
 	  Qualcomm Technologies QDF2xxx SOCs.
 
 config PINCTRL_QCOM_SPMI_PMIC
-       tristate "Qualcomm SPMI PMIC pin controller driver"
-       depends on GPIOLIB && OF && SPMI
-       select REGMAP_SPMI
-       select PINMUX
-       select PINCONF
-       select GENERIC_PINCONF
-       select GPIOLIB_IRQCHIP
-       select IRQ_DOMAIN_HIERARCHY
-       help
-         This is the pinctrl, pinmux, pinconf and gpiolib driver for the
-         Qualcomm GPIO and MPP blocks found in the Qualcomm PMIC's chips,
-         which are using SPMI for communication with SoC. Example PMIC's
-         devices are pm8841, pm8941 and pma8084.
+	tristate "Qualcomm SPMI PMIC pin controller driver"
+	depends on GPIOLIB && OF && SPMI
+	select REGMAP_SPMI
+	select PINMUX
+	select PINCONF
+	select GENERIC_PINCONF
+	select GPIOLIB_IRQCHIP
+	select IRQ_DOMAIN_HIERARCHY
+	help
+	 This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	 Qualcomm GPIO and MPP blocks found in the Qualcomm PMIC's chips,
+	 which are using SPMI for communication with SoC. Example PMIC's
+	 devices are pm8841, pm8941 and pma8084.
 
 config PINCTRL_QCOM_SSBI_PMIC
-       tristate "Qualcomm SSBI PMIC pin controller driver"
-       depends on GPIOLIB && OF
-       select PINMUX
-       select PINCONF
-       select GENERIC_PINCONF
-       select GPIOLIB_IRQCHIP
-       select IRQ_DOMAIN_HIERARCHY
-       help
-         This is the pinctrl, pinmux, pinconf and gpiolib driver for the
-         Qualcomm GPIO and MPP blocks found in the Qualcomm PMIC's chips,
-         which are using SSBI for communication with SoC. Example PMIC's
-         devices are pm8058 and pm8921.
+	tristate "Qualcomm SSBI PMIC pin controller driver"
+	depends on GPIOLIB && OF
+	select PINMUX
+	select PINCONF
+	select GENERIC_PINCONF
+	select GPIOLIB_IRQCHIP
+	select IRQ_DOMAIN_HIERARCHY
+	help
+	 This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	 Qualcomm GPIO and MPP blocks found in the Qualcomm PMIC's chips,
+	 which are using SSBI for communication with SoC. Example PMIC's
+	 devices are pm8058 and pm8921.
 
 config PINCTRL_SC7180
 	tristate "Qualcomm Technologies Inc SC7180 pin controller driver"
@@ -180,30 +180,30 @@ config PINCTRL_SC7180
 	  Technologies Inc SC7180 platform.
 
 config PINCTRL_SDM660
-       tristate "Qualcomm Technologies Inc SDM660 pin controller driver"
-       depends on GPIOLIB && OF
-       select PINCTRL_MSM
-       help
-         This is the pinctrl, pinmux, pinconf and gpiolib driver for the
-         Qualcomm Technologies Inc TLMM block found on the Qualcomm
-         Technologies Inc SDM660 platform.
+	tristate "Qualcomm Technologies Inc SDM660 pin controller driver"
+	depends on GPIOLIB && OF
+	select PINCTRL_MSM
+	help
+	 This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	 Qualcomm Technologies Inc TLMM block found on the Qualcomm
+	 Technologies Inc SDM660 platform.
 
 config PINCTRL_SDM845
-       tristate "Qualcomm Technologies Inc SDM845 pin controller driver"
-       depends on GPIOLIB && (OF || ACPI)
-       select PINCTRL_MSM
-       help
-         This is the pinctrl, pinmux, pinconf and gpiolib driver for the
-         Qualcomm Technologies Inc TLMM block found on the Qualcomm
-         Technologies Inc SDM845 platform.
+	tristate "Qualcomm Technologies Inc SDM845 pin controller driver"
+	depends on GPIOLIB && (OF || ACPI)
+	select PINCTRL_MSM
+	help
+	 This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	 Qualcomm Technologies Inc TLMM block found on the Qualcomm
+	 Technologies Inc SDM845 platform.
 
 config PINCTRL_SM8150
-       tristate "Qualcomm Technologies Inc SM8150 pin controller driver"
-       depends on GPIOLIB && OF
-       select PINCTRL_MSM
-       help
-         This is the pinctrl, pinmux, pinconf and gpiolib driver for the
-         Qualcomm Technologies Inc TLMM block found on the Qualcomm
-         Technologies Inc SM8150 platform.
+	tristate "Qualcomm Technologies Inc SM8150 pin controller driver"
+	depends on GPIOLIB && OF
+	select PINCTRL_MSM
+	help
+	 This is the pinctrl, pinmux, pinconf and gpiolib driver for the
+	 Qualcomm Technologies Inc TLMM block found on the Qualcomm
+	 Technologies Inc SM8150 platform.
 
 endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
