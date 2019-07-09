Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEA5631D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aDTMxNpGPbcU4sG8IUnQFQYSWUeJdirRR0t96mQ+mXY=; b=VL0WC+20AxAgCj2OPCbPSN6MZ+
	x27WbmcbFKvibdABXNkBy9SVdbOQrw6+ljdg9s95hBvj4aNmrAJ6AslnuxAEujwgbKt143EOKR9rh
	oXy+wUvtxzcHMe7pM/q8SghFkrJSBf09ZCkTWfXK9ZV9kWHqe5zS40tPK0OHSqUb3K0LEQ/dxr7R6
	wZd5aVI+VOj/mZ10YuFDYWucJMKxZJVm+Klhqh0xEIteGX6x7TS9Hg6nR1lh25EfLsFh5v4+UtMCl
	4Lz77K9hzIC0Fyxo4KuCiMr+6CurvybNGO47Mxr8Bo1sIehmd2htYqaBv6QWML+LP5GB11ripeR3W
	3RqThtcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkSr-0002uk-Fo; Tue, 09 Jul 2019 07:23:01 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPa-0007T2-Ft
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656770; x=1565248770;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TFYVH++ymITTvRsNe27dgjYWVA/VnBsrmCSeRpwRHtw=;
 b=kv1V60DK4fdYX3dIFnj/j/cZYAgdMKdIDnX9DtgBiJMUaIQz0YX9k0T0PC8Fx/aB
 y57TRqwI/Z9c2xqNwVxuvb9zkG6+sa8HMpZfVITwIk1ZMRYLsLXOQR/R7fnM7f88
 pgyAjqBhUtIILjSRl5ANLRr/kh3q8GOcRWfoC0EOxOk=;
X-AuditID: c39127d2-17dff70000001aee-0b-5d2440025fc4
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id BE.B0.06894.200442D5;
 Tue,  9 Jul 2019 09:19:30 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192976-309713 ;
 Tue, 9 Jul 2019 09:19:29 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 10/10] ARM: dts: imx6ull: Add support for PHYTEC
 phyBOARD-Segin with i.MX 6ULL
Date: Tue, 9 Jul 2019 09:19:27 +0200
Message-Id: <1562656767-273566-11-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:29,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:30, Serialize complete at 09.07.2019 09:19:30
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrALMWRmVeSWpSXmKPExsWyRoCBS5fJQSXWoOsjp8X8I+dYLR5e9bdY
 NXUni8Wmx9dYLbp+rWS2uLxrDpvF0usXmSweXOxisWjde4Td4u/2TSwWL7aIO3B7rJm3htFj
 x90ljB47Z91l99i0qpPNY/OSeo+N73YwefT/NfD4vEkugCOKyyYlNSezLLVI3y6BK2P1tFam
 gkceFWe3LGNrYNxn3cXIySEhYCLRPbWZpYuRi0NIYAejROOEs4wQzgVGiQdvLrCBVLEJGEks
 mNbIBGKLCERKvNv+mx2kiFlgD6PEtOvXGUESwgJxEg0X74M1sAioSEzuncIKYvMKeEqcOH2B
 EWKdnMTNc53MIDYnUPzoxV9gtpCAh8TlBdPAzpAQaGSSaPi+hh2iQUji9OKzzBMY+RYwMqxi
 FMrNTM5OLcrM1ivIqCxJTdZLSd3ECAzVwxPVL+1g7JvjcYiRiYPxEKMEB7OSCO8+d+VYId6U
 xMqq1KL8+KLSnNTiQ4zSHCxK4rwbeEvChATSE0tSs1NTC1KLYLJMHJxSDYy8d+SNrul4mMhM
 Cak42/P2cKCDe5iLVa+AtFqMgFpSloS52fIHUSWrXdtUp5uzTzerX1y8LmGxeLDjui01Wp/5
 mJW4NilEPH0mN2HW46anXN0/+ucxLBF/om7FffhhwG3958tCbvgdi/VZa79jUkPSxGfzDrG8
 OScZf1hU89Dn2npthXdL+5VYijMSDbWYi4oTAd4pPhdDAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001939_125042_CEA53D80 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In addition to the PHYTEC phyCORE-i.MX 6UL the PHYTEC phyBOARD-Segin is
also available with the PHYTEC phyCORE-i.MX 6ULL. So this adds support
for this SOM and its baseboards.

It comes in a full featured option with either NAND flash or eMMC and in
a low cost option only available with NAND flash.

The hardware specs are:

 - Full featured with NAND or eMMC:
    * i.MX 6ULL Y2
    * 512MB DDR3 memory
    * 512MB NAND flash or 4GB/8GB eMMC
    * Dual 10/100 Ethernet
    * USB Host and USB OTG
    * RS232
    * MicroSD external storage
    * Audio, RS232, I2C, SPI, CAN headers
    * Further I/O options via A/V and Expansion headers

 - Low cost with NAND:
    * i.MX 6ULL Y0
    * 256MB DDR3 memory
    * 128MB NAND flash
    * Single 10/100 Ethernet
    * USB OTG
    * RS232
    * MicroSD external storage
    * I2C
    * Further I/O options via Expansion headers

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/Makefile                         |  3 +
 arch/arm/boot/dts/imx6ull-phytec-phycore-som.dtsi  | 24 ++++++
 .../boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts  | 93 ++++++++++++++++++++++
 .../boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts  | 93 ++++++++++++++++++++++
 .../boot/dts/imx6ull-phytec-segin-lc-rdk-nand.dts  | 45 +++++++++++
 .../boot/dts/imx6ull-phytec-segin-peb-eval-01.dtsi | 19 +++++
 arch/arm/boot/dts/imx6ull-phytec-segin.dtsi        | 38 +++++++++
 7 files changed, 315 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-phycore-som.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-lc-rdk-nand.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-peb-eval-01.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 668b57c8cc57..16efd11cf20f 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -580,6 +580,9 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ull-14x14-evk.dtb \
 	imx6ull-colibri-eval-v3.dtb \
 	imx6ull-colibri-wifi-eval-v3.dtb \
+	imx6ull-phytec-segin-ff-rdk-nand.dtb \
+	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
+	imx6ull-phytec-segin-lc-rdk-nand.dtb \
 	imx6ulz-14x14-evk.dtb
 dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-cl-som-imx7.dtb \
diff --git a/arch/arm/boot/dts/imx6ull-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ull-phytec-phycore-som.dtsi
new file mode 100644
index 000000000000..56cd16e5a77f
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-phycore-som.dtsi
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+#include "imx6ul-phytec-phycore-som.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-i.MX6 ULL";
+	compatible = "phytec,imx6ull-pcl063", "fsl,imx6ull";
+};
+
+&iomuxc {
+	/delete-node/ gpioledssomgrp;
+};
+
+&iomuxc_snvs {
+	pinctrl_gpioleds_som: gpioledssomgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x0b0b0
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts b/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts
new file mode 100644
index 000000000000..9648d4ecaf58
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/dts-v1/;
+#include "imx6ull.dtsi"
+#include "imx6ull-phytec-phycore-som.dtsi"
+#include "imx6ull-phytec-segin.dtsi"
+#include "imx6ull-phytec-segin-peb-eval-01.dtsi"
+
+/ {
+	model = "PHYTEC phyBOARD-Segin i.MX6 ULL Full Featured with eMMC";
+	compatible = "phytec,imx6ull-pbacd10-emmc", "phytec,imx6ull-pbacd10",
+		     "phytec,imx6ull-pcl063","fsl,imx6ull";
+};
+
+&adc1 {
+	status = "okay";
+};
+
+&can1 {
+	status = "okay";
+};
+
+&tlv320 {
+	status = "okay";
+};
+
+&ecspi3 {
+	status = "okay";
+};
+
+&ethphy1 {
+	status = "okay";
+};
+
+&ethphy2 {
+	status = "okay";
+};
+
+&fec1 {
+	status = "okay";
+};
+
+&fec2 {
+	status = "okay";
+};
+
+&i2c_rtc {
+	status = "okay";
+};
+
+&reg_can1_en {
+	status = "okay";
+};
+
+&reg_sound_1v8 {
+	status = "okay";
+};
+
+&reg_sound_3v3 {
+	status = "okay";
+};
+
+&sai2 {
+	status = "okay";
+};
+
+&sound {
+	status = "okay";
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&usbotg1 {
+	status = "okay";
+};
+
+&usbotg2 {
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "okay";
+};
+
+&usdhc2 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts b/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts
new file mode 100644
index 000000000000..656baf846453
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/dts-v1/;
+#include "imx6ull.dtsi"
+#include "imx6ull-phytec-phycore-som.dtsi"
+#include "imx6ull-phytec-segin.dtsi"
+#include "imx6ull-phytec-segin-peb-eval-01.dtsi"
+
+/ {
+	model = "PHYTEC phyBOARD-Segin i.MX6 ULL Full Featured with NAND";
+	compatible = "phytec,imx6ull-pbacd10-nand", "phytec,imx6ull-pbacd10",
+		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
+};
+
+&adc1 {
+	status = "okay";
+};
+
+&can1 {
+	status = "okay";
+};
+
+&tlv320 {
+	status = "okay";
+};
+
+&ecspi3 {
+	status = "okay";
+};
+
+&ethphy1 {
+	status = "okay";
+};
+
+&ethphy2 {
+	status = "okay";
+};
+
+&fec1 {
+	status = "okay";
+};
+
+&fec2 {
+	status = "okay";
+};
+
+&gpmi {
+	status = "okay";
+};
+
+&i2c_rtc {
+	status = "okay";
+};
+
+&reg_can1_en {
+	status = "okay";
+};
+
+&reg_sound_1v8 {
+	status = "okay";
+};
+
+&reg_sound_3v3 {
+	status = "okay";
+};
+
+&sai2 {
+	status = "okay";
+};
+
+&sound {
+	status = "okay";
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&usbotg1 {
+	status = "okay";
+};
+
+&usbotg2 {
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin-lc-rdk-nand.dts b/arch/arm/boot/dts/imx6ull-phytec-segin-lc-rdk-nand.dts
new file mode 100644
index 000000000000..e168494e0a6d
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin-lc-rdk-nand.dts
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/dts-v1/;
+#include "imx6ull.dtsi"
+#include "imx6ull-phytec-phycore-som.dtsi"
+#include "imx6ull-phytec-segin.dtsi"
+#include "imx6ull-phytec-segin-peb-eval-01.dtsi"
+
+/ {
+	model = "PHYTEC phyBOARD-Segin i.MX6 ULL Low Cost with NAND";
+	compatible = "phytec,imx6ull-pbacd10-nand", "phytec,imx6ull-pbacd10",
+		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
+};
+
+&adc1 {
+	status = "okay";
+};
+
+&ethphy1 {
+	status = "okay";
+};
+
+&fec1 {
+	status = "okay";
+};
+
+&gpmi {
+	status = "okay";
+};
+
+&i2c_rtc {
+	status = "okay";
+};
+
+&usbotg1 {
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin-peb-eval-01.dtsi b/arch/arm/boot/dts/imx6ull-phytec-segin-peb-eval-01.dtsi
new file mode 100644
index 000000000000..ff08d95a1aa2
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin-peb-eval-01.dtsi
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+#include "imx6ul-phytec-segin-peb-eval-01.dtsi"
+
+&iomuxc {
+	/delete-node/ gpio_keysgrp;
+};
+
+&iomuxc_snvs {
+	pinctrl_gpio_keys: gpio_keysgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x79
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin.dtsi b/arch/arm/boot/dts/imx6ull-phytec-segin.dtsi
new file mode 100644
index 000000000000..c1595fc785f7
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin.dtsi
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+#include "imx6ul-phytec-segin.dtsi"
+
+/ {
+	model = "PHYTEC phyBOARD-Segin i.MX6 ULL";
+	compatible = "phytec,imx6ull-pbacd-10", "phytec,imx6ull-pcl063","fsl,imx6ull";
+};
+
+&iomuxc {
+	/delete-node/ flexcan1engrp;
+	/delete-node/ rtcintgrp;
+	/delete-node/ stmpegrp;
+};
+
+&iomuxc_snvs {
+	princtrl_flexcan1_en: flexcan1engrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x17059
+		>;
+	};
+
+	pinctrl_rtc_int: rtcintgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x17059
+		>;
+	};
+
+	pinctrl_stmpe: stmpegrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x17059
+		>;
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
