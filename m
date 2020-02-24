Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B380116B050
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e31Fvm/CLSU6qFH3P7WBTci0lWEA8Yh+pmyW1jcmyAM=; b=F9GSR3AW29Ith6JQrdT9iTxbDr
	eH3thCWooIY9j5MNwuW+0OeHuyJlxJtgFO8y8BrQXY4TuDcyC6CIDgoeHFTISyjO3EMk8WQ+vlu1g
	7E/E0RS6SYsqmbv53mb5ENnX3pZlLeCHYprhqMl9+g1C+NNwFLTLep/ikgZDQ3DqMwh/Hr94AhKHb
	Jjau7/UB8vUnfksKN4JHrwycOTzj+AmiL/MH2Xq3EjaSj3LX71WQpIQR8vOISe4jPAKC5l4bPHpW5
	2aquDTDuoNKb5bOAVBM+gAllgHwuJAL6vQp7zTW8sHWCkIQ+vVSt7PMl4S/uu6n7tDB/XzO6mDLrt
	SBTWCcqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JTm-0002KC-FU; Mon, 24 Feb 2020 19:33:22 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JSo-0001NQ-6m
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:32:23 +0000
Received: by mail-qk1-x743.google.com with SMTP id o28so9718748qkj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 11:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Mafr+Oo2QCTVtk6QZ89+dJVFjIceGXxuGriFd3SGe7k=;
 b=K9qD1whfKDISXeEwyFZaLxcvknDsz7MSMTcYsTMSqSXBbzkaPj3OFD8wSCcTwgr6bN
 f2sjBEyiHECNYc/OPm5t17UZNbFRgP5tQh/JG761VFtHuW8cOrYPWrNYfyz7r7LGBuH2
 +DRWtLEdy8Ir1zInLx7Cpyqpl7HOjeUbsPRXActez+b9IdAC28f2MYxb7M2GBK+eI7jh
 HrYcQ5P3O9vTyz+omdq9FONoD4Amk7QWpTAOoY8P450cNKmS/qZFiKEyNqkxJUMf+Itb
 KI09X1huPjoFDeHCtZGK9MdimOjVo2phlwc5WMIq/YDRj1cRFmUoE9F3G3X71hJhFm+4
 ed+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Mafr+Oo2QCTVtk6QZ89+dJVFjIceGXxuGriFd3SGe7k=;
 b=p5VwfQr2liwL55v+JxrR1zOZBX/FM4L5+AKmeHSHgcQZQSnzdw/9cl29YpjUoExRW3
 8tIO/Lk8U3Rcu3ZP4SPHUeLvnz743EpGpK7tsxOk/uAR5aEzdjzE1UIwiL3ZuHj1em1D
 mwteLFvsRIVRwMw95Q6VotOgOjo7Y0l96AarA+Vas4KfcSronjZSw0oeTLkQtfKQFOhb
 +nyhtR8NuxgkJKByT+ZXXa0A8jQwQkUtC1NIPmKC1Tq+ctDN6aHMavTJhkDmHt1d3piD
 WidI1TE260KBOMhrddnluhpvRzRkpGuAVQlQG9xX+4tROf9l739Qh2b8bHfPaq+FEQn3
 BMqA==
X-Gm-Message-State: APjAAAXFhXXL27357k34fgH05R84GZyT+ic0y870OIGb0ei3uS1KTaqK
 qhWHDiMSf2Ahfqk5r9jZFXk=
X-Google-Smtp-Source: APXvYqwhi4VYQr/XVtD6QZcD8NbnyiiwDBYOMHS50EJ+jxv7Xtnd7aff3CNJNrBAC32+5VfLrBgvvQ==
X-Received: by 2002:a37:6cc1:: with SMTP id h184mr49723632qkc.96.1582572740468; 
 Mon, 24 Feb 2020 11:32:20 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb::2])
 by smtp.gmail.com with ESMTPSA id g2sm6182497qkb.27.2020.02.24.11.32.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 11:32:19 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 5/6] ARM: dts: imx6ul-pico: Add support for the dwarf baseboard
Date: Mon, 24 Feb 2020 16:31:59 -0300
Message-Id: <20200224193200.2773-5-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200224193200.2773-1-festevam@gmail.com>
References: <20200224193200.2773-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_113222_292428_D5928C34 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

Add support for the imx6ul pico board with dwarf baseboard combination.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/arm/fsl.yaml          |  1 +
 arch/arm/boot/dts/Makefile                    |  1 +
 arch/arm/boot/dts/imx6ul-pico-dwarf.dts       | 52 +++++++++++++++++++
 3 files changed, 54 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-pico-dwarf.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 70cec470916c..7aa11c55cc09 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -225,6 +225,7 @@ properties:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
               - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
+              - technexion,imx6ul-pico-dwarf   # TechNexion i.MX6UL Pico-Dwarf
               - technexion,imx6ul-pico-hobbit  # TechNexion i.MX6UL Pico-Hobbit
               - technexion,imx6ul-pico-pi      # TechNexion i.MX6UL Pico-Pi
           - const: fsl,imx6ul
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index f401809c8123..6eb53d78a946 100644
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
index 000000000000..3edd60f46d37
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
