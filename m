Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1453F21442
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EICBDhb4sfP+Xb5z/35txzPytEO3L0Ue/7fBFyGCUOM=; b=M0WmYWeCRug0ErfbjQwL7xnfx3
	XirDRcYhjsKvL4sOqakiphxO87CulzP6GPJSLACyWnsYZcSyHiTJucL6mAKW51+X1ZMJqSnrPSy5L
	iTIAvoYCYZGmnvEc5dIpcdy0bRPo6OSMTtZPTJnBiD5yylaciHwdDi+o2WtV1rCYF4P2qMrDo8qME
	kKeAJPeuVuGw18okgR11KAnvVJTBow4JesQ+O+f/Esv4xzp354kyt86I+OFyL1ftfm6MEYqi/kB8k
	brHxyFL6IbX+QBk47ItLgz6gxCaE7fB91qbUZqHQuDXKyGL+eGQ5fnOqVVonD5/iuUM0gfDHMjTtc
	43JMwPxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXJY-0006zj-9Q; Fri, 17 May 2019 07:30:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXJB-0006lf-En
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:29:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so5925490wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 00:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+oz0ExQmfBYv8R4mlYrUHTuO1a02VEe96wQN1rbY0ZQ=;
 b=Dq8ZucWGNbyUuXRyomyu3MAXrzZIHT7vs02iARkETaIW+aA9YpU6/jWpD7rcz61q48
 uZ02A+by+tLqB3MgL5JQzFNyQxPU2mvCQ+RMkHayEy6TyFnQjAddPCUcj6BDcGHd1iZz
 hPlWPzlpgPJC8cVVii8DNbD2/pyW57WvpxFHYCNThZqJDaErWL6EoKOO9R8ErhguMSFL
 KaQpEMkbqUN4LnZ9A0LEciel4GabIv3wDrzOny9Bbp/0Jq/FZJuLPspEdcKK/0lLu8FN
 WYkDrF9+3SHFQW7rmgrGQ3KbY+BApuA38yBkeh5o1qbhrjoKRmVer2zpu/0SfYwQw5Fc
 PIiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+oz0ExQmfBYv8R4mlYrUHTuO1a02VEe96wQN1rbY0ZQ=;
 b=tHdJH9fi0V/GyrnsKJD53U7EQV4gLro9Chf7iFDzzs5rjs0u4dWkJL9dUhlbNrcWgX
 cNe1SM5v/mouGkFVIgYyXRUFSQABrp/AwLUe2ycB8sElR7smM7o90bbMk+6Q55WC+x4y
 i0TsXIJqUv8nMLS8qsgfN574DqtA26ntecC5WN0HH/4KUl6B7pqAKxKlK3F/BKgM/xTd
 9a2ea6Zun+hmL6/c4mWb1rkkJ4wAzCGJjTaHXtOKNFy0vjYmdEJv6y65wEtDgJnCIfvb
 oCG3SNhZ5CCqwklvNXB4LA8Ths+sUmzlVcBXtYniPs2Z2TqFXz9hyzG2J5hCoPoGXP8Y
 1NEA==
X-Gm-Message-State: APjAAAVAzSDSJ0yNvjTmpEALiSDUY4s46FyxudbQQiDj0jxGoPxOPcG9
 hB8YNP9PBpN+GEB0VQTNl1PIufOwfz0=
X-Google-Smtp-Source: APXvYqyyOguQeBOfL9T/TH7hYA7iLBdBPjyJ3SjvAoNt+kxap2frCQpu/Jwqx3yZ0U96dcdZqZnphw==
X-Received: by 2002:adf:e908:: with SMTP id f8mr1970653wrm.124.1558078175692; 
 Fri, 17 May 2019 00:29:35 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id j190sm9102752wmb.19.2019.05.17.00.29.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 00:29:35 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: add basic DTS for i.MX8QM
Date: Fri, 17 May 2019 09:18:12 +0200
Message-Id: <20190517071813.26674-4-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190517071813.26674-1-oliver.graute@gmail.com>
References: <20190517071813.26674-1-oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_002937_840784_3C5D92A8 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 oliver.graute@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 Oliver Graute <oliver.graute@kococonnector.com>, l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Oliver Graute <oliver.graute@kococonnector.com>

added dtsi file for imx8 Quad Max CPU

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 153 ++++++++++++++++++++++
 1 file changed, 153 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
new file mode 100644
index 000000000000..9e0ad3ae3745
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2018 NXP
+ * Copyright 2019 Oliver Graute <oliver.graute@kococonnector.com>
+ */
+
+#include <dt-bindings/clock/imx8-clock.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pinctrl/pads-imx8qm.h>
+#include "fsl-imx8qm-device.dtsi"
+
+/ {
+	compatible = "fsl,imx8qm";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc3;
+		serial0 = &lpuart0;
+	};
+
+	cpus {
+		A53_0 {
+			operating-points = <
+				1200000	   0
+				1104000	   0
+				900000	   0
+				600000	   0
+			>;
+			clocks = <&clk IMX8QM_A53_DIV>;
+			clock-latency = <61036>;
+			#cooling-cells = <2>;
+		};
+
+		A72_0 {
+			operating-points = <
+				1596000	   0
+				1296000	   0
+				1056000	   0
+				600000     0
+			>;
+			clocks = <&clk IMX8QM_A72_DIV>;
+			clock-latency = <61036>;
+			#cooling-cells = <2>;
+		};
+
+	};
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x80000000 0 0x40000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		decoder_boot: decoder_boot@0x84000000 {
+			no-map;
+			reg = <0 0x84000000 0 0x2000000>;
+		};
+		encoder_boot: encoder_boot@0x86000000 {
+			no-map;
+			reg = <0 0x86000000 0 0x400000>;
+		};
+		rpmsg_reserved: rpmsg@0x90000000 {
+			no-map;
+			reg = <0 0x90000000 0 0x400000>;
+		};
+
+		decoder_rpc: decoder_rpc@0x90400000 {
+			no-map;
+			reg = <0 0x90400000 0 0x200000>;
+		};
+		encoder_rpc: encoder_rpc@0x90600000 {
+			no-map;
+			reg = <0 0x90600000 0 0x200000>;
+		};
+		dsp_reserved: dsp@0x92400000 {
+			no-map;
+			reg = <0 0x92400000 0 0x2000000>;
+		};
+
+		/* global autoconfigured region for contiguous allocations */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0 0x3c000000>;
+			alloc-ranges = <0 0x96000000 0 0x3c000000>;
+			linux,cma-default;
+		};
+
+	};
+
+	gic: interrupt-controller@51a00000 {
+		compatible = "arm,gic-v3";
+		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
+		      <0x0 0x51b00000 0 0xC0000>, /* GICR */
+		      <0x0 0x52000000 0 0x2000>,  /* GICC */
+		      <0x0 0x52010000 0 0x1000>,  /* GICH */
+		      <0x0 0x52020000 0 0x20000>; /* GICV */
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		interrupts = <GIC_PPI 9
+			(GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
+		interrupt-parent = <&gic>;
+	};
+
+	clk: clk {
+		compatible = "fsl,imx8qm-clk";
+		#clock-cells = <1>;
+	};
+
+	iomuxc: iomuxc {
+		compatible = "fsl,imx8qm-iomuxc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+		clock-frequency = <8000000>;
+		interrupt-parent = <&gic>;
+	};
+
+	smmu: iommu@51400000 {
+		compatible = "arm,mmu-500";
+		interrupt-parent = <&gic>;
+		reg = <0 0x51400000 0 0x40000>;
+		#global-interrupts = <1>;
+		#iommu-cells = <2>;
+		interrupts = <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>;
+	};
+
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
