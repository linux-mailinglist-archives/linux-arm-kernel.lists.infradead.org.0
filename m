Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24D616B04B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gaVhoAZvsbUnq4S8U/EQqAv4A70Q4IuLz2cWmfcC5bM=; b=M6i8dGGZM595Xx89sYdMx103J+
	4k2XuGoqxUTEDHhO7bdAdsyOmLanWfr/y0YBV70nuxVDxA/lighcwPK1ZVBh3PiGF94xmfSoAjhg7
	5ZdwhHmHCGZH5m1r6+USbhaHntwMciIlZk6JAibqyd/TwHK+V6vScLgKxjzOPORA0nl1rdpCEKxxU
	OpbCO5ieqSOymTeA6y5kHlaEPBcDRmYXfDifMGauuTop7soyd968W2oqlB1ygtUXJsypYAlWQctJj
	RfIZ9DNfhDNItREfb0iIejKMlt95UvV22q+/VFQ9Gpe7y3lfhdI0DxsQrKSb9ObNjUut5D838E6Hs
	KzGRBeag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JTB-0001PE-0y; Mon, 24 Feb 2020 19:32:45 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JSf-0001Fd-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:32:15 +0000
Received: by mail-qt1-x842.google.com with SMTP id j23so7341601qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 11:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HUqSnpvTiE+ijTtZntWm2LE0h5zqza8ni/pcodmR7cE=;
 b=uz2pf6y3Pj+mp+nGW36cVi0RIVtm+dROc0c7UgTnj5HHImnAgP4B0F6ubyHA3o3aX+
 CBi8nGpTAGG3INulS2oAn0KTvGKnXvYQuTFUNdnK5KzvxxaeMF+RJo5qoTBfyrA3juHP
 TcamhatBOkBz216gwzFLm1nsPDvCS1pPH5eGez7Y2CWO/Q3IkVPVW4LyK27eWRssomYh
 t7oA/5eSn2rnM/sHgQuOH81qYxhFWTikDb6F2ID9fcZz8S5Cn9uf+PnZgH+3cBGqNygv
 7K+CkTmTzK1Gwcm6F0c5/a/A0mB/KVzRFPAaJB/RhM8wK3WBGiQHI7ZWujRf0XjJXy6B
 /IcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HUqSnpvTiE+ijTtZntWm2LE0h5zqza8ni/pcodmR7cE=;
 b=bbzjKFu5lR9GVy798KR25/D4AugU2ca1KFWc950mX7NqSqE1VpsIV6KqiJrL758zT0
 HI6gkPk/uH8Gw0zXfnlj6czFxlUYoYlq58Z/0RckKgdKfBfOKE9HLjN5Kku9/ctrbmCt
 kiXByeEaaAUkAHotW1UstgoANekE+4Tk38vrRpa3tlzzGM0nQiuODcnNYJdBeKTlseox
 jxCNmnvbs54kZ7bjvUnrVOpOjEH4KQNF7V659/gvHAr4kxX5TG0RZwPYGMgXgG+mJ1ru
 dCCiPeq9YPnAmHdzYak9YoGfH3zzkv8pNTHemkVLZvj3FuKF1EVV4ESARmUtYIY4n2x9
 r0YA==
X-Gm-Message-State: APjAAAXduSuFZfzsdz894OVvb4z/PLEaUyeNUAEnXf1TwRrcul18TSiz
 tW4LG54Rsaxp/friK9JLeVQ=
X-Google-Smtp-Source: APXvYqypKI9DyXImhQO4ZXzY5R8YIznL6jBZn2xX/sKdyxy5t8X5DCx8JHOYYhrMRBb7hazPHkF9Mg==
X-Received: by 2002:aed:3242:: with SMTP id y60mr48391936qtd.254.1582572732507; 
 Mon, 24 Feb 2020 11:32:12 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::2])
 by smtp.gmail.com with ESMTPSA id g2sm6182497qkb.27.2020.02.24.11.32.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 11:32:11 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/6] ARM: dts: imx7d-pico: Add support for the dwarf baseboard
Date: Mon, 24 Feb 2020 16:31:56 -0300
Message-Id: <20200224193200.2773-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224193200.2773-1-festevam@gmail.com>
References: <20200224193200.2773-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113213_778576_60DAF5C7 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>,
 otavio@ossystems.com.br, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the imx7d pico board with dwarf baseboard combination.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/arm/fsl.yaml          |  1 +
 arch/arm/boot/dts/Makefile                    |  1 +
 arch/arm/boot/dts/imx7d-pico-dwarf.dts        | 87 +++++++++++++++++++
 3 files changed, 89 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-pico-dwarf.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index bad56df60f87..098aee4930a0 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -286,6 +286,7 @@ properties:
               - fsl,imx7d-sdb             # i.MX7 SabreSD Board
               - fsl,imx7d-sdb-reva        # i.MX7 SabreSD Rev-A Board
               - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
+              - technexion,imx7d-pico-dwarf   # TechNexion i.MX7D Pico-Dwarf
               - technexion,imx7d-pico-hobbit  # TechNexion i.MX7D Pico-Hobbit
               - technexion,imx7d-pico-pi      # TechNexion i.MX7D Pico-Pi
               - toradex,colibri-imx7d                   # Colibri iMX7 Dual Module
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 732933318a61..888eaa8b1f92 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -615,6 +615,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-mba7.dtb \
 	imx7d-meerkat96.dtb \
 	imx7d-nitrogen7.dtb \
+	imx7d-pico-dwarf.dtb \
 	imx7d-pico-hobbit.dtb \
 	imx7d-pico-pi.dtb \
 	imx7d-sbc-imx7.dtb \
diff --git a/arch/arm/boot/dts/imx7d-pico-dwarf.dts b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
new file mode 100644
index 000000000000..ff734936b77b
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+//
+// Copyright 2015 Technexion Ltd.
+//
+// Author: Wig Cheng  <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+/dts-v1/;
+
+#include "imx7d-pico.dtsi"
+/ {
+	model = "TechNexion PICO-IMX7D and DWARF baseboard";
+	compatible = "technexion,imx7d-pico-dwarf", "fsl,imx7d";
+
+	sound {
+		compatible = "fsl,imx-audio-sgtl5000";
+		model = "imx7d-sgtl5000";
+		audio-cpu = <&sai1>;
+		audio-codec = <&sgtl5000>;
+		audio-routing =
+			"LINE_IN", "Line In Jack",
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+	};
+
+	sys_mclk: clock-sys-mclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24576000>;
+	};
+};
+
+&i2c1 {
+	clock_frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	sgtl5000: codec@a {
+		reg = <0x0a>;
+		compatible = "fsl,sgtl5000";
+		clocks = <&sys_mclk>;
+		VDDA-supply = <&reg_2p5v>;
+		VDDIO-supply = <&reg_3p3v>;
+	};
+
+	pressure-sensor@60 {
+		compatible = "fsl,mpl3115";
+		reg = <0x60>;
+	};
+};
+
+&i2c4 {
+	clock_frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pca9554: io-expander@25 {
+		compatible = "nxp,pca9554";
+		gpio-controller;
+		#gpio-cells = <2>;
+		#interrupt-cells = <2>;
+		reg = <0x25>;
+	};
+
+	touchscreen@38 {
+		compatible = "edt,edt-ft5x06";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touchscreen>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&pca9554 4 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <800>;
+		touchscreen-size-y = <480>;
+	};
+};
+
+&iomuxc {
+	pinctrl_touchscreen: touchscreengrp {
+		fsl,pins = <
+			MX7D_PAD_EPDC_DATA13__GPIO2_IO13	0x14
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
