Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6D260900
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=81iTe19RtSHN0HZYwdDl76iTh/ELAwkOEeSRjaBHZ78=; b=oApsQHXI9PiC97l3rYjwaxibrv
	i8MfgkTkuK1dO2GoYqI87AteW+FpECB7bhHqzcHJSD9DLYIe39qo8oXnk8CY6x/JwW5a2orJCNvsd
	hGJnA2sbdPKocKX9gM30qupx+6GHOiDabMm9klcHYf6ZvU4n34kEyEXVd4jUkI94/QzkRXrdM2qo0
	b5O29flmk2sVumrRhFhgtvHmrnCSWMh41HMHddvnE4N0CYqnAuq6ZdJoD2dW2HraMU47F/yqY4PqD
	eeDWM+nHXNSK4rautU1EYrd+qsj7LmXuDjWArbhlnukOFCvD50277of47D7Mhh0Y+WxAsYumLHTZ+
	+W/Syu1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPvt-0002Bq-DI; Fri, 05 Jul 2019 15:15:29 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPvQ-0000mz-PW
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:15:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so4449297pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 08:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mjL8OgcUqCdXJCy0GfBuE6r63TAGGvJ9nWUjkkaFavo=;
 b=nuzK2PS76JIoq2zHczYHawZXYT1Fi/gI8aF8SQXrzrHCxKDc7WlCDzeAw9wMbAoWH7
 Th88EomCpd0XOi3JsK3j408CCRtICGs0sS/aDaNRRg6OCdkAnvDYpF36RnDijZwDKtoY
 wWhixqI3i/ME9nJO6CdFpVx4hhIfp8nIfqfdgt0BDCxewUGLCtnDc0uO5FovCukuCyXk
 6L3V2hSmUgxOm7l2o0EM12FmvFSBV061LGq6aAxwqDjTRUgdxWCnh+pgkkcRRWoRg7jt
 8UMVDWCDB2xIeAthUa6Vv8NL+IPPUKRQPbtI7ZHLBwyonmE6zy0Pxn3QzKY2A5PsYLSZ
 sn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mjL8OgcUqCdXJCy0GfBuE6r63TAGGvJ9nWUjkkaFavo=;
 b=PpHKW8C1Ryc4LGH7ZFtQLYbibNuBEThI2oytp12rfQWPVUCOH8S/YxYyqFjEvDG/S0
 YvOwWYcAwwpEknbF9X7IeywpiNR2JWOPI8OxP2kWK8kPjpbektpVrpRWblx+J8KiF+Up
 isk0u5yGPFq5ykaz1B/zZbia0qgLhiIxgJbfxHNcqq2HbYZL32TmXAnvQ2oCSxPwDFL+
 mSmgXtKdkDDrSr+H3YUeC71VBwlSeX9gcTuEqMNjQYSy68kdArvHNKV4Eh94Q2yAdTdX
 lPlo8eNyzN+MxqKiVLqJDuNiIH3Dog4zLj/aeXRLjv4rVCqtAkCqWEt7OHFKrQ4R7cxc
 ELJQ==
X-Gm-Message-State: APjAAAUHpHq9i2UzIdI4dN4LTs+B4tfFxvaBxukOGmr33TG8BGtlHr15
 F0FX3HLS2ZR33MZY6Uif0b7V
X-Google-Smtp-Source: APXvYqzEsjdYZuaprjK/zBLUAkskhOfN3XKcQCcN4ZRGquCJmmkY7bKa+rH+pMRrBZjas0P0U0PyMg==
X-Received: by 2002:a63:d415:: with SMTP id a21mr5920071pgh.229.1562339699909; 
 Fri, 05 Jul 2019 08:14:59 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:916:7317:a59d:72b6:ef7f:a938])
 by smtp.gmail.com with ESMTPSA id w3sm8248778pgl.31.2019.07.05.08.14.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 08:14:59 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH 1/5] dt-bindings: clock: Add Bitmain BM1880 SoC clock
 controller binding
Date: Fri,  5 Jul 2019 20:44:36 +0530
Message-Id: <20190705151440.20844-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081500_861752_6F83D41B 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree binding for Bitmain BM1880 SoC clock controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../bindings/clock/bitmain,bm1880-clk.txt     | 47 +++++++++++
 include/dt-bindings/clock/bm1880-clock.h      | 82 +++++++++++++++++++
 2 files changed, 129 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

diff --git a/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
new file mode 100644
index 000000000000..9c967095d430
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
@@ -0,0 +1,47 @@
+* Bitmain BM1880 Clock Controller
+
+The Bitmain BM1880 clock controler generates and supplies clock to
+various peripherals within the SoC.
+
+Required Properties:
+
+- compatible: Should be "bitmain,bm1880-clk"
+- reg :	Register address and size of PLL and SYS control domains
+- reg-names : Register domain names: "pll" and "sys"
+- clocks : Phandle of the input reference clock.
+- #clock-cells: Should be 1.
+
+Each clock is assigned an identifier, and client nodes can use this identifier
+to specify the clock which they consume.
+
+All available clocks are defined as preprocessor macros in corresponding
+dt-bindings/clock/bm1880-clock.h header and can be used in device tree sources.
+
+External clocks:
+
+The osc clock used as the input for the plls is generated outside the SoC.
+It is expected that it is defined using standard clock bindings as "osc".
+
+Example: 
+
+        clk: clock-controller@800 {
+                compatible = "bitmain,bm1880-clk";
+                reg = <0xe8 0x0c>,<0x800 0xb0>;
+                reg-names = "pll", "sys";
+                clocks = <&osc>;
+                #clock-cells = <1>;
+        };
+
+Example: UART controller node that consumes clock generated by the clock
+controller:
+
+        uart0: serial@58018000 {
+                compatible = "snps,dw-apb-uart";
+                reg = <0x0 0x58018000 0x0 0x2000>;
+                clocks = <&clk BM1880_CLK_UART_500M>;
+                         <&clk BM1880_CLK_APB_UART>;
+                clock-names = "baudclk", "apb_pclk";
+                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+                reg-shift = <2>;
+                reg-io-width = <4>;
+        };
diff --git a/include/dt-bindings/clock/bm1880-clock.h b/include/dt-bindings/clock/bm1880-clock.h
new file mode 100644
index 000000000000..764472b9a4fd
--- /dev/null
+++ b/include/dt-bindings/clock/bm1880-clock.h
@@ -0,0 +1,82 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Device Tree binding constants for Bitmain BM1880 SoC
+ *
+ * Copyright (c) 2019 Linaro Ltd.
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_BM1880_H
+#define __DT_BINDINGS_CLOCK_BM1880_H
+
+#define BM1880_CLK_OSC			0
+#define BM1880_CLK_MPLL			1
+#define BM1880_CLK_SPLL			2
+#define BM1880_CLK_FPLL			3
+#define BM1880_CLK_DDRPLL 		4
+#define BM1880_CLK_A53			5
+#define BM1880_CLK_50M_A53		6
+#define BM1880_CLK_AHB_ROM		7
+#define BM1880_CLK_AXI_SRAM		8
+#define BM1880_CLK_DDR_AXI		9
+#define BM1880_CLK_EFUSE		10
+#define BM1880_CLK_APB_EFUSE		11
+#define BM1880_CLK_AXI5_EMMC		12
+#define BM1880_CLK_EMMC			13
+#define BM1880_CLK_100K_EMMC		14
+#define BM1880_CLK_AXI5_SD		15
+#define BM1880_CLK_SD			16
+#define BM1880_CLK_100K_SD		17
+#define BM1880_CLK_500M_ETH0		18
+#define BM1880_CLK_AXI4_ETH0		19
+#define BM1880_CLK_500M_ETH1		20
+#define BM1880_CLK_AXI4_ETH1		21
+#define BM1880_CLK_AXI1_GDMA		22
+#define BM1880_CLK_APB_GPIO		23
+#define BM1880_CLK_APB_GPIO_INTR	24
+#define BM1880_CLK_GPIO_DB		25
+#define BM1880_CLK_AXI1_MINER		26
+#define BM1880_CLK_AHB_SF		27
+#define BM1880_CLK_SDMA_AXI		28
+#define BM1880_CLK_SDMA_AUD		29
+#define BM1880_CLK_APB_I2C		30
+#define BM1880_CLK_APB_WDT		31
+#define BM1880_CLK_APB_JPEG		32
+#define BM1880_CLK_JPEG_AXI		33
+#define BM1880_CLK_AXI5_NF		34
+#define BM1880_CLK_APB_NF		35
+#define BM1880_CLK_NF			36
+#define BM1880_CLK_APB_PWM		37
+#define BM1880_CLK_DIV_0_RV		38
+#define BM1880_CLK_DIV_1_RV		39
+#define BM1880_CLK_MUX_RV		40
+#define BM1880_CLK_RV			41
+#define BM1880_CLK_APB_SPI		42
+#define BM1880_CLK_TPU_AXI		43
+#define BM1880_CLK_DIV_UART_500M	44
+#define BM1880_CLK_UART_500M		45
+#define BM1880_CLK_APB_UART		46
+#define BM1880_CLK_APB_I2S		47
+#define BM1880_CLK_AXI4_USB		48
+#define BM1880_CLK_APB_USB		49
+#define BM1880_CLK_125M_USB		50
+#define BM1880_CLK_33K_USB		51
+#define BM1880_CLK_DIV_12M_USB		52
+#define BM1880_CLK_12M_USB		53
+#define BM1880_CLK_APB_VIDEO		54
+#define BM1880_CLK_VIDEO_AXI		55
+#define BM1880_CLK_VPP_AXI		56
+#define BM1880_CLK_APB_VPP		57
+#define BM1880_CLK_DIV_0_AXI1		58
+#define BM1880_CLK_DIV_1_AXI1		59
+#define BM1880_CLK_AXI1			60
+#define BM1880_CLK_AXI2			61
+#define BM1880_CLK_AXI3			62
+#define BM1880_CLK_AXI4			63
+#define BM1880_CLK_AXI5			64
+#define BM1880_CLK_DIV_0_AXI6		65
+#define BM1880_CLK_DIV_1_AXI6		66
+#define BM1880_CLK_MUX_AXI6		67
+#define BM1880_CLK_AXI6			68
+#define BM1880_NR_CLKS			69
+
+#endif /* __DT_BINDINGS_CLOCK_BM1880_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
