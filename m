Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B81B19124A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 20:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0RrtS8JXAYnBk/sAmNgZvznU2YdBh4DN5DZEwvdgDfw=; b=joPhx+G44bAK4lxZ2SdsFQ3RFQ
	0O7kn79D7dOUocU4W9THltYYuzTAKgICLCEUFYQllFlSWdeYmiUpIXQuv9HCdazUnjr8OHRNGtDFy
	uyDtcgDdQDsnGFmSQL/9RiqWn7CNaXmxX2+eHA0eJZb6pRyCOqZYbt4CKmFG+I6e43eGQUEP4Vo7k
	LrhYt1yzGvQIsEdVWZcsrd+8x9mpazNY1MKKBrwzUGGTVTivDwOH9ZsDhjweBARcRdCTg6l8GJe+R
	4PnLUIysyMoGYCCe5CQu0iRe+WpP6h1ztxeiV0OBIyb7ZmueSHlSQ0AEcOV/bpG592oiyTRDQlv8L
	g1JWaUNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz3Za-0001fC-2U; Sat, 17 Aug 2019 18:37:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz3Z7-0001V5-CV
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 18:36:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id o70so4808295pfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 11:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hn5wSwGbfV1ASKyLdnZBx4wD4svsXsjBYVfQupeV/uk=;
 b=mTFdpglV1XCrnX4v6GdHyklH4I6FWazbCF2q3yIZTX7zkzdu+heV9b4EnakjJCv8CA
 Xml/FdAUBvt33eL/9HRxPnegF59Ez3OYOlrGrdvUF+E5pJ3+B/fqILgk1PZLGVaT2y8i
 QorAGjENqYzTucRPyVdu9ISJjCMAVs7qZ1FUZQO9v86tvus4LPQd+9lPzqO2Zhz0taLX
 zJdwV1zHEBZQeoTtc5Xdga1pPX4N+LOjcAV7r1tXpa4L3+ENuAE6AjyzRxm/7AkhcwN/
 SPJVPj6YZdyxVh5GlnvA+vqgXqjiiSm1tg+BWMrqgxTuEi0DAI07vQdSfQWBOtkSfVFn
 +U0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hn5wSwGbfV1ASKyLdnZBx4wD4svsXsjBYVfQupeV/uk=;
 b=RMuLel95c2cXa9ugzI1azQD1CBKf6o8TgAJWRlk5ch91Rmvr23XfM+CkBDHzc8OYWI
 FnqBcDqGH12Yzexgheicwbr/YFKFeCzODP6Wh+aIhKV2QlfpEBkNqtW70wcyTsQMpvqC
 Db2NYMhAeqx3O0eyRAx4xt9MAyE7oBBGTja6eZCBrOrEMw0p7uRPWNrZ01/4fXEVr+Aq
 /kULUZT6fh98AGE9i14pDFr4qCP095lMhE1mGPUNUCXVU+KhAPh6N1K8aO/a1sZoWgbq
 APkZiwnINlIcGnDPAwO+Mp7Kwkf6u8gytvV5FDgyTRNpEm1bqqagrbuvLPIINxFqyOjT
 dNQA==
X-Gm-Message-State: APjAAAWart3AHRtO2whLQ5QFiqToUaxCcYB97XNruE1kGsDq2SdKfwgb
 2OB1qS9fpk3chX2pgkG0Jytt
X-Google-Smtp-Source: APXvYqz7HOelwDjtmIcI/PRv0Sd5cOQooEFcTY/fW1d0rj2v0FQQcAowjpZp6w10tWJJxT4hIy2T9Q==
X-Received: by 2002:a17:90a:77c9:: with SMTP id
 e9mr12399635pjs.141.1566066996491; 
 Sat, 17 Aug 2019 11:36:36 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.36.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 11:36:35 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v2 1/7] dt-bindings: clock: Add devicetree binding for BM1880
 SoC
Date: Sun, 18 Aug 2019 00:06:08 +0530
Message-Id: <20190817183614.8429-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
References: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_113637_615181_83B5744A 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add YAML devicetree binding for Bitmain BM1880 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../bindings/clock/bitmain,bm1880-clk.yaml    | 83 +++++++++++++++++++
 include/dt-bindings/clock/bm1880-clock.h      | 82 ++++++++++++++++++
 2 files changed, 165 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 create mode 100644 include/dt-bindings/clock/bm1880-clock.h

diff --git a/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
new file mode 100644
index 000000000000..a457f996287d
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bindings/clock/bitmain,bm1880-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bitmain BM1880 Clock Controller
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+description: |
+  The Bitmain BM1880 clock controller generates and supplies clock to
+  various peripherals within the SoC.
+
+  This binding uses common clock bindings
+  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - bitmain,bm1880-clk
+
+  reg:
+    minItems: 2
+    maxItems: 2
+    items:
+      - description: pll registers
+      - description: system registers
+
+  reg-names:
+    items:
+      - const: pll
+      - const: sys
+
+  clocks:
+    maxItems: 1
+    description: Phandle of the input reference clock
+
+  clock-names:
+    maxItems: 1
+    items:
+      - const: osc
+
+  '#clock-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - '#clock-cells'
+
+examples:
+  # Clock controller node:
+  - |
+    clk: clock-controller@e8 {
+        compatible = "bitmain,bm1880-clk";
+        reg = <0xe8 0x0c>, <0x800 0xb0>;
+        reg-names = "pll", "sys";
+        clocks = <&osc>;
+        clock-names = "osc";
+        #clock-cells = <1>;
+    };
+
+  # Example UART controller node that consumes clock generated by the clock controller:
+  - |
+    uart0: serial@58018000 {
+         compatible = "snps,dw-apb-uart";
+         reg = <0x0 0x58018000 0x0 0x2000>;
+         clocks = <&clk BM1880_CLK_UART_500M>;
+                  <&clk BM1880_CLK_APB_UART>;
+         clock-names = "baudclk", "apb_pclk";
+         interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+         reg-shift = <2>;
+         reg-io-width = <4>;
+    };
+
+...
diff --git a/include/dt-bindings/clock/bm1880-clock.h b/include/dt-bindings/clock/bm1880-clock.h
new file mode 100644
index 000000000000..895646d66b07
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
+#define BM1880_CLK_DDRPLL		4
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
