Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD19186D28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:34:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S0/+ZcsknOMolN+rhmdFyinMNRDaWzxE8VCGKeka+9Y=; b=EqCbCBYygWyFaUZN2JEk8Zk3Jh
	FCiY9oHPa0weaXMyGf3QOpy4nOyQV2ZIXmYwK/1DFCkgyoexT4on814G+5vQyAxvpNVdnIkM+49eI
	tZkD65wp+7AAkw8/Ma/MI2gkHg+4cMKy/ngGfIt43PjPicnhIyQUooGVJHJxDmmfRSfA1aqdBs5do
	4WL91RTVmFwp+Q+4O68eDubtf850scjDnMTtINb0sqTiTKx20kd5tkhZZ/N4eEH+zB4EBjU4N+oBa
	NifjAKD5SmI/VubMl8f7T4oMmzzZ/9KPccuY3TciATRRDZCeLT2Mi43S93oyu5yqugQ4qWwTegG0M
	X5yjkGxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqov-0006K3-83; Mon, 16 Mar 2020 14:34:21 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqoZ-0006Bc-Pu
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:34:01 +0000
Received: by mail-lf1-x141.google.com with SMTP id u26so2003314lfu.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 07:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZDDZumFM4GKkqmise65KcQNrnejQ1Q6C9mhu8+xXRqI=;
 b=AWG2bc+5Ee9obty+kw+QqJmaHXD0x6LGBAzcB3LeMs18u7WkxgnQW7Y4GrtHYDcNM0
 sefnHSJFaVkgZCWU85q+68eOtFB62Jd/P0u99x41+Fje0fVG8/8EBwEhfFEGkLHddt9n
 AGYTx1Zr5Oj5gYTX9I7DNlH/Wj4A3mD9qq2XkH8jtLsJwZ29gRfgS2Q+cpTM/WgFaT82
 FLkO32mTGfRVq7nrfG1zcOeV9REmaD5g+6SlBu5a+/LRxUW/ZVPjMOrr1bE5g2SA7uA1
 ym1ihLtMN+YsU28hNyTDzbewt5pJXlFkoIbSEVEUSYqvD768nslMn4YjNEGzRwqnvpWf
 NwGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZDDZumFM4GKkqmise65KcQNrnejQ1Q6C9mhu8+xXRqI=;
 b=OYGscliWc1kFVx0J4w3VnIuEG/1Ua+sSm8nMOZILHjvOXcHzL0sQfFdI6GB7FgLaqw
 e3Pg6DkDkUGMwoWFa+44VEtaYzD7yyyeE9hklKNqS+BE3Gx6Pt+7NAk8DNvtv2hxBs1O
 8NNRZmfEsyVLWN5C2lobPRAyOT5MEr7eMox1iQUc//babzLfebJg02XzlFdlaFKWLj5i
 tNALrmJMGvNDvyl1qyeyNqecUigDjVlnTg1n+MB8sG9Cxj6RbEa0DSZDRNkotwrAPLiN
 jzIG2VDOvunubdU0GO0rCmn97XxJ5N9RcuhqEysqPnMbdkGuP001Vds+2Hk+6lFhA5vb
 PHMQ==
X-Gm-Message-State: ANhLgQ0JL3hj6JBfdPSeb8LcAuVX8lpjOT8YnDaEDvZmJc4X69svtvYO
 zC8P8dfduNMabHVa2aoDrcIT0cYl3/g=
X-Google-Smtp-Source: ADFU+vtEH3/gPLBV77T2Pvsxla+YknqaQV9OQHTagfl/9rf11cs5Qj8lXizAXfYMF8h9Iem5++ETMA==
X-Received: by 2002:a19:4350:: with SMTP id m16mr9059395lfj.67.1584369233381; 
 Mon, 16 Mar 2020 07:33:53 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id k14sm16045lfg.96.2020.03.16.07.33.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Mar 2020 07:33:52 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/2] ARM: dts: colibri: introduce device trees with UHS-I
 support
Date: Mon, 16 Mar 2020 16:33:45 +0200
Message-Id: <20200316143345.30823-2-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200316143345.30823-1-igor.opaniuk@gmail.com>
References: <20200316143345.30823-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_073359_840217_839EA361 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

1. Introduce dtsi with overlay configuration for enabling UHS-I
for Colibri iMX6S/DL V1.1x re-design.
2. Introduce new dts for the Colibri iMX6S/DL V1.1x
on Colibri Evaluation Carrier Board V3.x. However, disable 1.8V for
the Colibri Evaluation Board since this carrier board has 3.3V pull-ups on.
3. Provide proper configuration for VGEN3, which allows that rail to
be automatically switched to 1.8 volts for proper UHS-I operation mode.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

v5:
- Fix copyright/licensing [Shawn Guo]
- Don't enable 1.8V by default, as some carrier boards have 3.3V pull-ups,
  which leads to [  164.058099] mmc0: error -110 whilst initialising SD
  card errors. [Marcel Ziswiler]
- Change hierarchy: move SD-card properties to the module level device
  tree include (to explicitly state that these properties relate to module,
  not carrier board) + people can easily include it in their custom
  carrier board device trees.

v4:
- Document Colibri iMX6S/DL V1.1x re-design devicetree binding [Shawn Guo]
- wakeup-source property fix [Shawn Guo]

v3:
- change hierarchy according to Marco's suggestions [Marco Felsch]
- adjust compatible string adding v1.1 [Stefan Agner]

v2:
- rework hierarchy of dts files, and a separate dtsi for Colibri
  iMX6S/DL V1.1x re-design, where UHS-I was added [Marcel Ziswiler]
- add comments about vgen3 power rail [Marcel Ziswiler]
- fix other minor issues, addressing Marcel's comments. [Marcel Ziswiler]

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/imx6dl-colibri-v1_1-eval-v3.dts  | 31 +++++++++++++
 .../boot/dts/imx6qdl-colibri-v1_1-uhs.dtsi    | 44 +++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 11 ++++-
 4 files changed, 86 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-colibri-v1_1-uhs.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d6546d2676b9..97da51be1de6 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -412,6 +412,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-aristainetos2_4.dtb \
 	imx6dl-aristainetos2_7.dtb \
 	imx6dl-colibri-eval-v3.dtb \
+	imx6dl-colibri-v1_1-eval-v3.dtb \
 	imx6dl-cubox-i.dtb \
 	imx6dl-cubox-i-emmc-som-v15.dtb \
 	imx6dl-cubox-i-som-v15.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
new file mode 100644
index 000000000000..223275f028f1
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright 2020 Toradex
+ */
+
+/dts-v1/;
+
+#include "imx6dl-colibri-eval-v3.dts"
+#include "imx6qdl-colibri-v1_1-uhs.dtsi"
+
+/ {
+	model = "Toradex Colibri iMX6DL/S V1.1 on Colibri Evaluation Board V3";
+	compatible = "toradex,colibri_imx6dl-v1_1-eval-v3",
+		     "toradex,colibri_imx6dl-v1_1",
+		     "toradex,colibri_imx6dl-eval-v3",
+		     "toradex,colibri_imx6dl",
+		     "fsl,imx6dl";
+};
+
+/* Colibri MMC */
+&usdhc1 {
+	status = "okay";
+	/*
+	 * Please make sure your carrier board does not pull-up any of
+	 * the MMC/SD signals to 3.3 volt before attempting to activate
+	 * UHS-I support.
+	 * To let signaling voltage be changed to 1.8V, please
+	 * delete no-1-8-v property (example below):
+	 * /delete-property/no-1-8-v;
+	 */
+};
diff --git a/arch/arm/boot/dts/imx6qdl-colibri-v1_1-uhs.dtsi b/arch/arm/boot/dts/imx6qdl-colibri-v1_1-uhs.dtsi
new file mode 100644
index 000000000000..7672fbfc29be
--- /dev/null
+++ b/arch/arm/boot/dts/imx6qdl-colibri-v1_1-uhs.dtsi
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright 2020 Toradex
+ */
+
+&iomuxc {
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170b1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100b1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170b1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170b1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170b1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170b1
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170f1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100f1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170f1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170f1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170f1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170f1
+		>;
+	};
+};
+
+/* Colibri MMC */
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_mmc_cd>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_mmc_cd>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_mmc_cd>;
+	vmmc-supply = <&reg_module_3v3>;
+	vqmmc-supply = <&vgen3_reg>;
+	wakeup-source;
+	keep-power-in-suspend;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+};
diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index d03dff23863d..e85a41e84fd4 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -229,7 +229,16 @@
 				regulator-always-on;
 			};
 
-			/* vgen3: unused */
+			/*
+			 * +V3.3_1.8_SD1 coming off VGEN3 and supplying
+			 * the i.MX 6 NVCC_SD1.
+			 */
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
 
 			vgen4_reg: vgen4 {
 				regulator-min-microvolt = <1800000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
