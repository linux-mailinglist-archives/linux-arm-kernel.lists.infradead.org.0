Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B1B1805DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:09:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O8Gg1fcDJIV8ib6I4BT7R3LzDkUdXrehK5UEY//kY8g=; b=YeGH4uPHfXHNKFFOoqwaWaExgp
	fym+SqJvDEN25w93K9mE9eFgaflg8c0g5rFFTUFs0rtg/TfJTJsToTnUALVYtpivdDIk7LQkmYH8A
	T29rpj2nM8//n19TXUn+r/v/fT6rorkjzeTAx9Q8Y5NRoFNDamaJpvDXdCpuVAy3ItUgJ8oGF9FGd
	JXglpPHuR9O+wv0WYJ9KOO17OZGjZY++P9eLYdaqyi9jNvXWuanV/gy58zkeoLh7Kapw0+ILqa02Q
	u88DGO8s6X4/sFq/JUE1NPelYYn00p9NkmUehBLxnwWiaSZ6PzivTz6WMFyWuaDY4m57fwzqT9v3+
	zL4jzRWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjJj-0000oa-1w; Tue, 10 Mar 2020 18:09:23 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjJ2-0000Qm-Dx
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:08:42 +0000
Received: by mail-qk1-x741.google.com with SMTP id p62so13678928qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 11:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Bnd+dV97Of1gzlLSXuML0/e/DO8s77XB3KGyM9X9Y78=;
 b=q+ar7slh9UUin4VNa0tQmCpbNTemq39L5IHKC84JTVR3nZVOwMMm2Ac7FnlSj81YLB
 a/naKkWCewRYQx/0Bq7WjMkWteQ2UimBpMAZeXZfnLk6Ck/hGVHzoCrS0sASZ7eFCgxg
 CX3NX3l78UJDQ7Z835Qxb3aELpXfsOeKJgZlIzCMJHqFXbP7s50dRhFBXkPBF29IUJ6i
 cIH4rNbexEptClgn9Xf862u4C5TFDNij0rznf8J5cuIP1eacpxqaNdXYt3Xboo5nVA9w
 eP+Js3L7Kv7S2mrTM8XPrWWS1+asPUW9uWDqbma+dMSTTkHOpohvF/Y+nWP7zjry+nUr
 iUFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Bnd+dV97Of1gzlLSXuML0/e/DO8s77XB3KGyM9X9Y78=;
 b=XVDn04ODMdIqXQMUKNqbqH1kUpQMjyOIRYgbBgm3Gw1bgllk6dvEMaE9JyIl7ecUw1
 NtWyrZBBoNxf3uYk4xpHoK1PBPHT0f28ugVT2BJ5iLNZ+eBk/+HeFHH7F2kjkbDzfXzH
 bzgD+HmaF2x14e24Wp3LsWmdqHUZbmwNIMA5+2r1BTxA3vUTTG5iS3vPtbxSd1FJ2WNV
 VH0KY0QopbafxtbyWyOs+mxlQlHecvCI++a6WVA0BxEHJ6ODza4gzytECYKCxDT6tB3u
 GtDcB1r9GkQau92bs9LGzYqzBUK3X8wyFgC5pQ0nn9eIoH0Kspz5ytaX2615TwtyPlef
 2QZw==
X-Gm-Message-State: ANhLgQ2l2ND5M33Pb2zHceTADNUiM12siVARk1j7uGhABXVmRDtPfq+z
 Wx1WsxF1T0qpM99+0knpJEo=
X-Google-Smtp-Source: ADFU+vvEmO075gFXxYZT46n3yw54rkxtqO3eJ3ClbukU3dn1bolj+MSAfJhnnbOiAYIe5o5xtdR5vg==
X-Received: by 2002:a37:6cc7:: with SMTP id
 h190mr21402942qkc.358.1583863718547; 
 Tue, 10 Mar 2020 11:08:38 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id 127sm17848821qkj.97.2020.03.10.11.08.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:08:37 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 3/5] ARM: dts: imx7d-pico: Add support for the nymph
 baseboard
Date: Tue, 10 Mar 2020 15:08:23 -0300
Message-Id: <20200310180825.10111-3-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310180825.10111-1-festevam@gmail.com>
References: <20200310180825.10111-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_110840_579084_EBE9CE65 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

Add support for the imx7d pico board with nymph baseboard combination.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Use audio-codec as the codec node name

 arch/arm/boot/dts/Makefile             |  1 +
 arch/arm/boot/dts/imx7d-pico-nymph.dts | 84 ++++++++++++++++++++++++++
 2 files changed, 85 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-pico-nymph.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 38a71988ac2a..c46416725a63 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -619,6 +619,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-nitrogen7.dtb \
 	imx7d-pico-dwarf.dtb \
 	imx7d-pico-hobbit.dtb \
+	imx7d-pico-nymph.dtb \
 	imx7d-pico-pi.dtb \
 	imx7d-sbc-imx7.dtb \
 	imx7d-sdb.dtb \
diff --git a/arch/arm/boot/dts/imx7d-pico-nymph.dts b/arch/arm/boot/dts/imx7d-pico-nymph.dts
new file mode 100644
index 000000000000..104a85254adb
--- /dev/null
+++ b/arch/arm/boot/dts/imx7d-pico-nymph.dts
@@ -0,0 +1,84 @@
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
+	model = "TechNexion PICO-IMX7 and NYMPH baseboard";
+	compatible = "technexion,imx7d-pico-nymph", "fsl,imx7d";
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		led {
+			label = "gpio-led";
+			gpios = <&gpio2 13 GPIO_ACTIVE_HIGH>;
+		};
+	};
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
+	adc@52 {
+		compatible = "ti,adc081c";
+		reg = <0x52>;
+		vref-supply = <&reg_2p5v>;
+	};
+};
+
+&i2c2 {
+	clock_frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	rtc@68 {
+		compatible = "dallas,ds1337";
+		reg = <0x68>;
+	};
+};
+
+&iomuxc {
+	pinctrl_gpio_leds: gpioledsgrp {
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
