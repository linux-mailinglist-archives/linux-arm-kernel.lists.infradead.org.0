Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A22C1805DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IUrDadk1XT6/YQgCsEBO+6drqRnE0WFgVxUBYtTWY1g=; b=k61+a+GTYPAxgFkJ1lW85+tIXe
	c3tBZIrUzY/YSRt+ZyAZAoLoFp/j/IsvF/a/MLq6JeB8W07qJnicI7TcJf3iY/jByVcVIyeReAFAP
	0/lOnmhF2i/o0O8CabDUVjE0WSO5njLM42aPUQ83CECPFbL1eIBAQByKQzL404wHqaiN7gR2xtxcy
	y+aJkUIFAjxRc4ZXl4tGE1TxD2fDrY1TqWygsQX7c+MREaqyur7vhaGR+jngUqOCxvZRtzxMsmg2R
	rWS05gvzNSOPeA51B9Jw63Du0tc+B5h5AmruvwXPVE3oHsAiEagsNx/m2CnLae91awewSlm7Oe8DQ
	jfoJHkMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjJR-0000W4-DS; Tue, 10 Mar 2020 18:09:05 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjIy-0000MB-Qp
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:08:38 +0000
Received: by mail-qk1-x744.google.com with SMTP id e11so13609338qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 11:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MAwiIeVOcnoMYt3o32Tzb8UHM7XHKlcBrRbJnonZbrc=;
 b=vXTPk45r/waYQvFQgOKwzBSHAL9zHE46iO890ebFvG+9LCfJi6R1+fOauXE8VMTLKJ
 2HkiliowpPB9edJM4y0GqQiVYQWny6XzRi8Z6jxofD23h/ZzdPFrWSvGjmkKvc/xe0ab
 6ap/OvAz3nnv8QeeaXuV/B8Ak3rv8MLD8wRt0EA5n3dzCqhC9QlafiMAwic1g6UJ5IgJ
 /96wt7TQDaqRMwrxEzW3x2DBEsC0CyaT8wkB+L4/yBIN1VyW0f8AQvEVY9m2GbMINwK4
 k/xR2fC1e/yAvJiOuQOdtHi3O9jNSEDARM2px1TU12Us3SOKLLb61rD+S9s2iihs0f+5
 iWCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MAwiIeVOcnoMYt3o32Tzb8UHM7XHKlcBrRbJnonZbrc=;
 b=JPqBBO3hakUs/EAk0wgGI6/Xe9ErEXwJKDZW5n4QXyqcs8YDQ1YKOQlStcW0i5QcXq
 EOYxrBvJE0z3aJLBk+EasqSj7PRXhKHpDFH3RmbMdlMoXbgpiHDDS6mgx9pT25eG40Y3
 vXWcryQBF1iwX0xXIpgHehAg4nVSDJ8IOfqZ1FpknGDNXUWgwur7BtqxBt75igivAAjh
 IZPJodyy70nrrm20aikl/1rlJbGxu2ESX/5+fbVRMlJPgHf/2OtWO/z872L68NWETflW
 EkLTMz0rfOt+1DawAT2nS5y0HwhyMK4MSKTP2FdPd7kkjYrePZX+SHgirJfWdhuzGGZs
 Ma+Q==
X-Gm-Message-State: ANhLgQ1YqiM7RPvBgb71tHK8FAkH4U1KLARZYE/DmBV8aLUNasXbQmGP
 sTMukY5bMsLA2eq5yaDtJ3I=
X-Google-Smtp-Source: ADFU+vtHvDDPVh4+vaatEZehwcpoGE/VhOPXZuUGJCaIYY8nsgPQBYdZ4HFQo8bq+aUzrPWJwtrOMA==
X-Received: by 2002:a37:27c1:: with SMTP id n184mr20361283qkn.67.1583863715150; 
 Tue, 10 Mar 2020 11:08:35 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id 127sm17848821qkj.97.2020.03.10.11.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:08:34 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 2/5] ARM: dts: imx7d-pico: Add support for the dwarf
 baseboard
Date: Tue, 10 Mar 2020 15:08:22 -0300
Message-Id: <20200310180825.10111-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310180825.10111-1-festevam@gmail.com>
References: <20200310180825.10111-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_110836_885630_AA6C7A6B 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 otavio.salvador@ossystems.com.br, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the imx7d pico board with dwarf baseboard combination.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Use audio-codec as the codec node name

 arch/arm/boot/dts/Makefile             |  1 +
 arch/arm/boot/dts/imx7d-pico-dwarf.dts | 87 ++++++++++++++++++++++++++
 2 files changed, 88 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-pico-dwarf.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 566c6d1cfc46..38a71988ac2a 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -617,6 +617,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-mba7.dtb \
 	imx7d-meerkat96.dtb \
 	imx7d-nitrogen7.dtb \
+	imx7d-pico-dwarf.dtb \
 	imx7d-pico-hobbit.dtb \
 	imx7d-pico-pi.dtb \
 	imx7d-sbc-imx7.dtb \
diff --git a/arch/arm/boot/dts/imx7d-pico-dwarf.dts b/arch/arm/boot/dts/imx7d-pico-dwarf.dts
new file mode 100644
index 000000000000..5162fe227d1e
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
+	sgtl5000: audio-codec@a {
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
