Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D82A1805DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lg9c98VUBFVnlfXlboQv/UvZ4ERjYJLiswoCX2J9JRY=; b=a6EcX/FLulE/rXA/NKMkbumZS0
	ZS1/FE14Trf6zXbO2YS8ZX4IDcnq1ff4YWcWCVAxLOLi/FNTgrJHkb6GJbLADugOFmCX7hNsAh8Ru
	Sc7GnjRUl1JZpz/G6XFGBpO7kwEPmaSSU9DAwk+bum96jrG60qkZaFYotSSoGlG4mSNdTl+CxHvn+
	PAwess4ROJr9dlTLjrP9w2oZ9x3qHn4UMUjBR0JVqSdZ4Jama/ujNk/04pODW0qyTX2V4/JIe2ZDm
	GUDQDxy+k4wNozkfeVQwXqO7m5rU1pMvpDoPbKLCU2vvq7Jb84QK5LvbAqoFIWil3br9fJP8Zvzwi
	PdjTdD3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjJz-0001Dq-8V; Tue, 10 Mar 2020 18:09:39 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjJ5-0000Uj-S0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 18:08:45 +0000
Received: by mail-qv1-xf41.google.com with SMTP id l17so555252qvu.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 11:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HVlUjwmBfQ/bJDemOmKbR+CIRVB4PM1YQlpjhiqC0yI=;
 b=mKk1CUnChfgQdYp2wwysfFZV+QQCIO46Xxhd6LtCYUycreMsgI6kh0M3iSQ2nljhTh
 oDFC+fdOWjeC90U/scpKtZ9nOL+BAMjpkDHRDwyg6S5fvsFt7zgR6TzNHmRXOlHGocsq
 F44z2iokOdAaPf1rYTW2rI2s5CQNEc8eKHbDjQGMEHmAt9gQRQlSKG/X/waOn7oPtSW2
 zHZdh1WzI2KmLrDuVA5RnEjaSPNNn8eIPNS4hRp9l79EWIfLcq34R9KaCISd0irFb5DG
 hSLFA7XHIQKCdhKI3ZugntF85vDdqNntOYhOEOAAzHRnM3YUQoN6xV55qfO14IcUfYP0
 MUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HVlUjwmBfQ/bJDemOmKbR+CIRVB4PM1YQlpjhiqC0yI=;
 b=p2gkT32rUCrSncDBSWBU17RdCcYXcTxct0QaIBDxWLu+0llBCWhoiB7JGFwbSlmWCG
 rMCK1bLw5CFIr4WDHjGfmSLZPl0QETqvNlpFcJjmE2Uz+XPwCVJxIweMOjo4a58oZ4QF
 C6hTtAYB3IVR5e8EcMnIlNkzVBT2AmlXwX1rJPYrFQBxWoHpSZoLHRSkKAV8FZaVRlIx
 Iv1vidn2nw1v5iHhCyGYSr4mrD+TOjFO1LRIcVJdKOCU659LL5a3zhnwA2V+0dr7rQgv
 flVdYIZOlgTWGVsK/jPz0qr0bdxMRgd91tBFMs1SDzon+hIVTcz+jnfLZtEgVpB8b6am
 ymKg==
X-Gm-Message-State: ANhLgQ280lqKrwVsWZK7IBbPFn76B8+QyHECis3FqmMYHA/+zKjGzGjT
 sYZ3x6yxQZpe6r5tuptm2Z8=
X-Google-Smtp-Source: ADFU+vsB8ljBbtjiA3BQiIaPALFcdACXvwIoHAq0ZSsjFQYHgKbS+YJhzL+9PwXvQ2zLCwkCGvlcCw==
X-Received: by 2002:a0c:eccb:: with SMTP id o11mr10535111qvq.129.1583863721657; 
 Tue, 10 Mar 2020 11:08:41 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id 127sm17848821qkj.97.2020.03.10.11.08.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:08:40 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 4/5] ARM: dts: imx6ul-pico: Add support for the dwarf
 baseboard
Date: Tue, 10 Mar 2020 15:08:24 -0300
Message-Id: <20200310180825.10111-4-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310180825.10111-1-festevam@gmail.com>
References: <20200310180825.10111-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_110843_914807_03EE0349 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
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

Add support for the imx6ul pico board with dwarf baseboard combination.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Use audio-codec as the codec node name

 arch/arm/boot/dts/Makefile              |  1 +
 arch/arm/boot/dts/imx6ul-pico-dwarf.dts | 52 +++++++++++++++++++++++++
 2 files changed, 53 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-pico-dwarf.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index c46416725a63..4b1759f2cb9b 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -594,6 +594,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ul-kontron-n6310-s-43.dtb \
 	imx6ul-liteboard.dtb \
 	imx6ul-opos6uldev.dtb \
+	imx6ul-pico-dwarf.dtb \
 	imx6ul-pico-hobbit.dtb \
 	imx6ul-pico-pi.dtb \
 	imx6ul-phytec-segin-ff-rdk-nand.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-pico-dwarf.dts b/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
new file mode 100644
index 000000000000..162dc259edc8
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+//
+// Copyright 2015 Technexion Ltd.
+//
+// Author: Wig Cheng  <wig.cheng@technexion.com>
+//	   Richard Hu <richard.hu@technexion.com>
+//	   Tapani Utriainen <tapani@technexion.com>
+/dts-v1/;
+
+#include "imx6ul-pico.dtsi"
+/ {
+	model = "TechNexion PICO-IMX6UL and DWARF baseboard";
+	compatible = "technexion,imx6ul-pico-dwarf", "fsl,imx6ul";
+
+	sound {
+		compatible = "fsl,imx-audio-sgtl5000";
+		model = "imx6ul-sgtl5000";
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
+&i2c2 {
+	clock_frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
