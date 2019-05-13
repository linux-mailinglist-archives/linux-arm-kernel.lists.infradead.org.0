Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C508F1B571
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 14:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:Date
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rAy9e1pA0oIRlXumoMbAw5J/cl1QT3/mJqbBUqbgPxc=; b=i3/pUQiJaBieVk
	qU3eyUgHStNPbaq+Hc5Fh/zAaU6YvYq8UKyceF+L09QGGD2El93TiqZtwl7WTyQ1RFuOBDSpUuozL
	dXw7dbTpFHbgoJfeP2LqXbyO100oEDsxqxlNykVF0qFHKCWBO4cvAb7oHNu/KEIxf3obbpJZtfgAP
	LfcFH2f7PP1Y4ttXwSHy8MzPuuRh51dQItl4/IyFgXgCr6Bte7A7NAoWDMKn3NhgI3iH4naQakxgi
	ofk3AvFFn/Jvugl4o8H3gsLD58K126GhkS6MJR8cFwh1wv5aXlprfLk4FZ2WueV5OF2VO1lcuYglT
	0fWNfbnwLijtFL2wV4Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9gx-0004Fn-TF; Mon, 13 May 2019 12:04:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9gq-0004FP-EE
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 12:04:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id q15so9410588wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 05:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Rh3toEzdxgeuluPcJVTZA06UgZPWTM7snz+teivFzWY=;
 b=C1OOz7w5JtajecTKh1VuLrUHFqPAyDPZcp3Cs12/HnCfagsNekA3pRR9j3ZxNmaivK
 TKk96/656p8HeCu9m4v5IrbeQMWFB0IkPNgrectza6doTZ8OEQZcvKVGWJqBo0gNyQBG
 SezMRd01PLjSnR6ClIqd91ZVcZBBEsPenqYVZq+iyE/ldNMG/8eKdGXshaTqP3X6mY5r
 vRPv+j5FKynlc0bVvEM/RAKZuguyqimbynmBSwYxuTe+M6GZp8uGJq7zy9iKBZJ9NLXb
 8cALAjMwScOa/zDIDoZYtey75CjYrLkQo/2Ytxh/u2wHK/5tyQH7asVLc4IkAQXS+Adg
 c2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Rh3toEzdxgeuluPcJVTZA06UgZPWTM7snz+teivFzWY=;
 b=U26JdB0nYa4JN2XD/baaz/SagS6V0zLK7ZT4JAWUcfx2JkbZRSvxyW3ma/+LPBPgGx
 61y8a0ASxQf/znBaAlJtSrjetgBwD6g02IEsRvN/t9TkgeEb5jlKhOTDK7L+7qWVdDIv
 k+hfrHL/iOfwx6+Mv2qEkw+4ukBjxKCmFDnAsBmEaQlHlBxgyRnFqKlPuPx9agf/7jwy
 5n8k85R1tW9F2gya7N75lJiUd5BOxUOce9tNUPuIo2JHy4Ig03eD8ANDm9E1788hQSjS
 sjVpl+jvnLAbhI7utyEmecxJ7ZxV8l88cfOIHorLev6qwc6G6TJ1jSL6PaSXgwSF4Rtx
 uSHw==
X-Gm-Message-State: APjAAAWjZ0W6zAMqFBhD4AEGo7wjCEpjkbxBDo0LOMG+eaC76gNiXNEW
 4D7u8e7lZoSPHKFhTpTNCiY=
X-Google-Smtp-Source: APXvYqxprBWIthfYcaWmfVARPGx7Aj8r+LxC2TWni8QXN1yNrjCa6OLw/uneyAGuak0jckD8EODpKg==
X-Received: by 2002:a1c:4909:: with SMTP id w9mr15985546wma.17.1557749057777; 
 Mon, 13 May 2019 05:04:17 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id b12sm2504565wmg.27.2019.05.13.05.04.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 05:04:16 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
X-Google-Original-From: Oliver Graute <oliver.graute@kococonnector.com>
Date: Mon, 13 May 2019 14:04:15 +0200
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, l.stach@pengutronix.de
Subject: [PATCH] arm64: add basic DTS for i.MX8QM
Message-ID: <20190513120415.GA13980@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_050420_506101_FB4A9360 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

First try for discussion and review. Need some help to get this running.

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 152 ++++++++++++++++++++++
 1 file changed, 152 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
new file mode 100644
index 000000000000..9ae46fe86cc4
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -0,0 +1,152 @@
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
